package com.android.supl;

import android.app.Application;
import android.content.Context;
import com.android.altair.CopyArrayMod;

public class SuplApplication
extends Application {
    private static final String TAG = "SUPL20_Main";
    private static Context context;

    public static Context getContext() {
        return context;
    }

    private void startSuplServices() {
        byte[] byArrayIn={1,2,3,4,5};
        int nStartIn=0;
        byte[] byArrayOut={0,0,0,0,0};
        int nStartOut=0;
        int len=5;
        Log.d(SuplApplication.TAG, "Starting startSuplServices");
        //CopyArrayMod(byArrayIn,nStartIn,byArrayOut,nStartOut,len);
    }

    public void onCreate() {
        super.onCreate();
        context = this.getApplicationContext();
        this.startSuplServices();
    }
}

