package com.android.supl;

import android.app.Application;
import android.content.Context;



/*
 * Illegal identifiers - consider using --renameillegalidents true
 */
public class SuplApplication
extends Application {
    private static final String TAG = "SUPL20_Main";
    private static Context context;

    public static Context getContext() {
        return context;
    }

    private void startSuplServices() {
        new Thread(){

            @Override
            public void run() {
                Log.d(SuplApplication.TAG, "Starting scm service");
            }
        }.start();
    }

    public void onCreate() {
        super.onCreate();
        Log.d(TAG, "Starting supl application");
        context = this.getApplicationContext();
        this.startSuplServices();
    }
}

