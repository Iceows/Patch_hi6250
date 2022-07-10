#!/sbin/sh

	# Prepare data storage
	rm -rf /data/*;
		
	mkdir /data/media;
	mkdir /data/media/0;
	chown media_rw:media_rw /data/media;
	chown media_rw:media_rw /data/media/0;
	chcon -v u:object_r:media_rw_data_file:s0 /data/media;	
	chcon -v u:object_r:media_rw_data_file:s0 /data/media/0;	
	
	# Prepare all data/misc folder
	mkdir /data/misc;
	chown system:misc /data/misc;
	chcon -v u:object_r:system_data_file:s0 /data/misc;

	mkdir /data/misc_ce;
	mkdir /data/misc_ce/0;
	chown system:misc /data/misc_ce;
	chown system:misc /data/misc_ce/0;
	chcon -v u:object_r:system_data_file:s0 /data/misc_ce;
	chcon -v u:object_r:system_data_file:s0 /data/misc_ce/0;
	
	mkdir /data/misc_de;
	mkdir /data/misc_de/0;
	chown system:misc /data/misc_de;
	chown system:misc /data/misc_de/0;
	chcon -v u:object_r:system_data_file:s0 /data/misc_de;	
	chcon -v u:object_r:system_data_file:s0 /data/misc_de/0;

	
	# Prepare all data/vendor folder	
	mkdir /data/vendor;
	chown system:system /data/vendor;
	chcon -v u:object_r:vendor_data_file:s0 /data/vendor;
	
	mkdir /data/vendor_de;
	mkdir /data/vendor_de/0;
	chown system:system /data/vendor_de;
	chown system:system /data/vendor_de/0;
	chcon -v u:object_r:vendor_data_file:s0 /data/vendor_de;
	chcon -v u:object_r:vendor_data_file:s0 /data/vendor_de/0;
	
	mkdir /data/vendor_ce;
	mkdir /data/vendor_ce/0;
	chown system:system /data/vendor_ce;
	chown system:system /data/vendor_ce/0;
	chcon -v u:object_r:vendor_data_file:s0 /data/vendor_ce;
	chcon -v u:object_r:vendor_data_file:s0 /data/vendor_ce/0;
	
	# Prepare all data/system folder	
	mkdir /data/system_de;	
	mkdir /data/system_de/0;
	chown system:system /data/system_de;
	chown system:system /data/system_de/0;
	chcon -v u:object_r:system_data_file:s0 /data/system_de;
	chcon -v u:object_r:system_data_file:s0 /data/system_de/0;		
	
	mkdir /data/system_ce;	
	mkdir /data/system_ce/0;
	chown system:system /data/system_ce;
	chown system:system /data/system_ce/0;
	chcon -v u:object_r:system_data_file:s0 /data/system_ce;
	chcon -v u:object_r:system_data_file:s0 /data/system_ce/0;	
	
	# Prepare all data/user folder
	mkdir /data/user_de;	
	mkdir /data/user_de/0;
	chown system:system /data/user_de;
	chown system:system /data/user_de/0;
	chcon -v u:object_r:system_data_file:s0 /data/user_de;
	chcon -v u:object_r:system_data_file:s0 /data/user_de/0;		
	
	mkdir /data/user_ce;	
	mkdir /data/user_ce/0;
	chown system:system /data/user_ce;
	chown system:system /data/user_ce/0;
	chcon -v u:object_r:system_data_file:s0 /data/user_ce;
	chcon -v u:object_r:system_data_file:s0 /data/user_ce/0;	
	

    exit 0;
