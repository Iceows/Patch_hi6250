package com.android.altair;

import com.android.supl.Log;

public class CopyArrayMod {
    private static final String TAG = "SUPL20_COPY";

    public static void CopyArray(byte[] byArrayIn, int nStartIn, byte[] byArrayOut, int nStartOut, int len) {

        Log.d(CopyArrayMod.TAG, "Altair hijack CopyArray len-startin-startout : " + String.valueOf(len) + "-" + String.valueOf(nStartIn) + "-" + String.valueOf(nStartOut));
        Log.d(CopyArrayMod.TAG, "    byArrayIn len : " + String.valueOf(byArrayIn.length) + " - " +  "byArrayout len : " + String.valueOf(byArrayOut.length));
        for (int i = 0; i < len; i++)
        {
            byArrayOut[i+nStartOut] = byArrayIn[i+nStartIn];
            //System.out.println("  - Array " + i + ": " + byArrayOut[i+nStartOut] );
        }

    }

}
