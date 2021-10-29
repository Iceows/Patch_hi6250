#!/sbin/sh
# Copyright VillainROM 2011. All Rights Reserved
# Edited later numerous times by dwitherell - but none of this would
# have been possible without the initial conceptual and scripting framework
# that was set up by VillianROM.

# The idea here is to go through all files in /system/app and priv-app and framework
# and before doing the patching grab all the to-be-modified files and zip 
# them up for a one-time flashable "undo"

	BB=/sdcard/vrtheme/busybox

	# Set some flags depending on what copied over
	if [ -d /sdcard/vrtheme/system/app ]; then
	  sysapp=1
	else
	  sysapp=0
	fi
	if [ -d /sdcard/vrtheme/system/priv-app ]; then
	  privapp=1
	else
	  privapp=0
	fi
	if [ -d /sdcard/vrtheme/system/framework ]; then
	  framework=1
	else
	  framework=0
	fi
	if [ -d /sdcard/vrtheme/apply/system ]; then
	  backup=1
	else
	  backup=0
	fi

	# Prep things stemming from /system/app
	if [ "$sysapp" -eq "1" ]; then
	  $BB echo "Preparing /system/app/ files"
	  cd /sdcard/vrtheme/system/app/
	  for f in *
	  do
		if [ -d "/system/app/$f" ] && [ ! -L "/system/app/$f" ] && [ -f "/system/app/$f/$f.apk" ]; then
		  $BB echo "Processing $f"
		  $BB mkdir -p /sdcard/vrtheme/apply/system/app/$f
		  $BB cp /system/app/$f/$f.apk /sdcard/vrtheme/apply/system/app/$f/
		  if [ -f "/sdcard/vrtheme/apply/system/app/$f/$f.apk" ]; then
			$BB echo "... $f copied"
		  else
			$BB echo "... Error copying $f"
		  fi
		else
		  $BB echo "Could not find apk for $f"
		fi
	  done
	  $BB echo "Done checking system apps"
	else
	  $BB echo "No /system/app/ files found"
	fi

	# Repeat above for /system/priv-app now
	if [ "$privapp" -eq "1" ]; then
	  $BB echo "Preparing /system/priv-app/ files"
	  cd /sdcard/vrtheme/system/priv-app/
	  for f in *
	  do
		if [ -d "/system/priv-app/$f" ] && [ ! -L "/system/priv-app/$f" ] && [ -f "/system/priv-app/$f/$f.apk" ]; then
		  $BB echo "Processing $f"
		  $BB mkdir -p /sdcard/vrtheme/apply/system/priv-app/$f
		  $BB cp /system/priv-app/$f/$f.apk /sdcard/vrtheme/apply/system/priv-app/$f/
		  if [ -f "/sdcard/vrtheme/apply/system/priv-app/$f/$f.apk" ]; then
			$BB echo "... $f copied"
		  else
			$BB echo "... Error copying $f"
		  fi
		else
		  $BB echo "Could not find apk for $f"
		fi
	  done
	  $BB echo "Done checking system priv-apps"
	else
	  $BB echo "No /system/priv-app/ files found"
	fi

	# Repeat above for /system/framework now
	if [ "$framework" -eq "1" ]; then
	  $BB mkdir -p /sdcard/vrtheme/apply/system/framework
	  $BB echo "Preparing /system/framework files"
	  cd /sdcard/vrtheme/system/framework
	  for f in *.apk
	  do
		$BB echo "Processing $f"
		$BB cp /system/framework/$f /sdcard/vrtheme/apply/system/framework/
		if [ -f "/sdcard/vrtheme/apply/system/framework/$f/$f.apk" ]; then
		  $BB echo "... $f copied"
		else
		  $BB echo "... Error copying $f"
		fi
	  done
	  $BB echo "Done checking framework apks"
	else
	  $BB echo "No /system/framework/ files found"
	fi

	# Ok, before doing much else, we should zip up and move the
	# flashable backup somewhere and name it something
	if [ "$sysapp" -eq "1" ] || [ "$privapp" -eq "1" ] || [ "$framework" -eq "1" ] || [ "$backup" -eq "1" ]; then
	  $BB echo "Preparing backup flashable zip"
	  if [ -d /sdcard/vrthemeundo ]; then
		$BB echo "Deleting old undo zip"
		$BB rm /sdcard/vrthemeundo/UndoLastvrtheme.zip
	  else
		$BB echo "Making vrthemeundo directory"
		$BB mkdir -p /sdcard/vrthemeundo
	  fi
	  cd /sdcard/vrtheme/apply/
	  /sdcard/vrtheme/zip -r /sdcard/vrthemeundo/UndoLastvrtheme *
	  if [ -f "/sdcard/vrthemeundo/UndoLastvrtheme.zip" ]; then
		$BB echo "Flashable zip complete"
	  else
		$BB echo "Error creating flashable zip"
	  fi
	else
	  $BB echo "Nothing to backup... skipping"
	fi

	# Now to process the patches - first /system/app
	if [ "$sysapp" -eq "1" ]; then
	  cd /sdcard/vrtheme/apply/system/app/
	  for f in *
	  do
		if [ -d "/sdcard/vrtheme/apply/system/app/$f" ] && [ ! -L "/sdcard/vrtheme/apply/system/app/$f" ] && [ -f "/sdcard/vrtheme/apply/system/app/$f/$f.apk" ]; then 
		  $BB echo "Working on $f"
		  cd /sdcard/vrtheme/system/app/$f/$f.apk
		  /sdcard/vrtheme/zip -rn .png:.arsc:.ogg:.jpg:.wav /sdcard/vrtheme/apply/system/app/$f/$f.apk *
		else
		  $BB echo "Couldn't find $f..."
		fi
	  done
	  $BB echo "Patched system app files"
	fi

	# Then /system/priv-app
	if [ "$privapp" -eq "1" ]; then
	  cd /sdcard/vrtheme/apply/system/priv-app/
	  for f in *
	  do
		if [ -d "/sdcard/vrtheme/apply/system/priv-app/$f" ] && [ ! -L "/sdcard/vrtheme/apply/system/priv-app/$f" ] && [ -f "/sdcard/vrtheme/apply/system/priv-app/$f/$f.apk" ]; then 
		  $BB echo "Working on $f"
		  cd /sdcard/vrtheme/system/priv-app/$f/$f.apk
		  /sdcard/vrtheme/zip -rn .png:.arsc:.ogg:.jpg:.wav /sdcard/vrtheme/apply/system/priv-app/$f/$f.apk *
		else
		  $BB echo "Couldn't find $f..."
		fi
	  done
	  $BB echo "Patched system priv-app files"
	fi

	# Then /system/framework
	if [ "$framework" -eq "1" ]; then
	  cd /sdcard/vrtheme/apply/system/framework
	  for f in *.apk
	  do
		$BB echo "Working on $f"
		cd /sdcard/vrtheme/system/framework/$f/
		/sdcard/vrtheme/zip -rn .png:.arsc:.ogg:.jpg:.wav /sdcard/vrtheme/apply/system/framework/$f *
	  done
	  $BB echo "Patched framework files"
	fi

	# Now zipalign the modified apks
	# for /system/app
	#if [ "$sysapp" -eq "1" ]; then
	#  cd /sdcard/vrtheme/apply/system/app/
	#  busybox mkdir aligned
	#  for f in *.apk
	#  do
	#    echo "Zipaligning $f"
	#    /sdcard/vrtheme/zipalign -f 4 $f ./aligned/$f
	#  done
	#fi
	# for /system/priv-app
	#if [ "$privapp" -eq "1" ]; then
	#  cd /sdcard/vrtheme/apply/system/priv-app/
	#  busybox mkdir aligned
	#  for f in *.apk
	#  do
	#    echo "Zipaligning $f"
	#    /sdcard/vrtheme/zipalign -f 4 $f ./aligned/$f
	#  done
	#fi

	# Move each new app back to its original location
	# ... in /system/app
	if [ "$sysapp" -eq "1" ]; then
	#  cd /sdcard/vrtheme/apply/system/app/aligned/
	  cd /sdcard/vrtheme/apply/system/app/
	  for f in *
	  do
		if [ -d "/sdcard/vrtheme/apply/system/app/$f" ] && [ ! -L "/sdcard/vrtheme/apply/system/app/$f" ] && [ -f "/sdcard/vrtheme/apply/system/app/$f/$f.apk" ]; then 
		  $BB echo "Copying $f to /system/app"
		  $BB cp $f/$f.apk /system/app/$f/
		else
		  $BB echo "Couldn't move $f"
		fi
	  done
	fi
	# ... in /system/priv-app
	if [ "$privapp" -eq "1" ]; then
	#  cd /sdcard/vrtheme/apply/system/priv-app/aligned/
	  cd /sdcard/vrtheme/apply/system/priv-app/
	  for f in *
	  do
		if [ -d "/sdcard/vrtheme/apply/system/priv-app/$f" ] && [ ! -L "/sdcard/vrtheme/apply/system/priv-app/$f" ] && [ -f "/sdcard/vrtheme/apply/system/priv-app/$f/$f.apk" ]; then 
		  $BB echo "Copying $f to /system/priv-app"
		  $BB cp $f/$f.apk /system/priv-app/$f/
		else
		  $BB echo "Couldn't move $f"
		fi
	  done
	fi

	if [ "$framework" -eq "1" ]; then
	#  cd /sdcard/vrtheme/apply/system/priv-app/aligned/
	  cd /sdcard/vrtheme/apply/system/framework
		$BB cp *.apk /system/framework/
	fi

	# While some call me a douche, I thought a modified credit line would be ok :)
	$BB echo "Done - and all thanks for the vrtheme setup"
	$BB echo "should be directed towards the folks behind VillainROM!"

    exit 0;
