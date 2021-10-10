/*
 * Decompiled with CFR 0.151.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.android.supl;

import java.text.SimpleDateFormat;

public class Log {
    private static final String SPACE = " ";
    private static SimpleDateFormat sdf = null;

    static {
        Log.init();
    }

    public static int d(String string, String string2) {
        return android.util.Log.d((String)string, (String)string2);
    }

    public static int d(String string, String string2, Throwable throwable) {
        return android.util.Log.d((String)string, (String)string2, (Throwable)throwable);
    }

    public static int e(String string, String string2) {
        return android.util.Log.e((String)string, (String)string2);
    }

    public static int e(String string, String string2, Throwable throwable) {
        return android.util.Log.e((String)string, (String)string2, (Throwable)throwable);
    }

    public static int i(String string, String string2) {
        return android.util.Log.i((String)string, (String)string2);
    }

    public static int i(String string, String string2, Throwable throwable) {
        return android.util.Log.i((String)string, (String)string2, (Throwable)throwable);
    }

    public static void init() {
        sdf = new SimpleDateFormat("dd-MM hh:mm:ss zzz");
    }

    public static int println(int n, String string, String string2) {
        return android.util.Log.println((int)n, (String)string, (String)string2);
    }

    public static int v(String string, String string2) {
        return android.util.Log.i((String)string, (String)string2);
    }

    public static int v(String string, String string2, Throwable throwable) {
        return android.util.Log.i((String)string, (String)string2, (Throwable)throwable);
    }

    public static int w(String string, String string2) {
        return android.util.Log.w((String)string, (String)string2);
    }

    public static int w(String string, String string2, Throwable throwable) {
        return android.util.Log.w((String)string, (String)string2, (Throwable)throwable);
    }

    public static int w(String string, Throwable throwable) {
        return android.util.Log.w((String)string, (Throwable)throwable);
    }
}

