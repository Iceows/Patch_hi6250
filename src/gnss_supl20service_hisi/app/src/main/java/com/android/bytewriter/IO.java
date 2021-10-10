/*
 * IO.java modify version by Iceows for Android 11
 */
package com.android.bytewriter;

import com.android.supl.Log;


public class IO {
    private static final String TAG = "SUPL20_IO";

    public static void CopyArray(byte[] byArrayIn, int nStartIn, byte[] byArrayOut, int nStartOut, int len) {

        Log.d(IO.TAG, "Iceows hijack CopyArray len : " + String.valueOf(len));
        for (int i = 0; i < len; i++)
        {
            byArrayOut[i+nStartOut] = byArrayIn[i+nStartIn];
            //System.out.println("  - Array " + i + ": " + byArrayOut[i+nStartOut] );
        }

    }

    public static int get1(byte[] byArray, int n) {
        int n2 = 0;
        int n3 = 0;
        while (n3 < 1) {
            int n4;
            int n5 = n4 = byArray[n];
            if (n4 < 0) {
                n5 = n4 + 256;
            }
            n2 = (n2 << 8) + n5;
            ++n3;
            ++n;
        }
        return n2;
    }

    public static int get2(byte[] byArray, int n) {
        int n2 = 0;
        int n3 = 0;
        while (n3 < 2) {
            int n4;
            int n5 = n4 = byArray[n];
            if (n4 < 0) {
                n5 = n4 + 256;
            }
            n2 = (n2 << 8) + n5;
            ++n3;
            ++n;
        }
        return n2;
    }

    public static int get2r(byte[] byArray, int n) {
        int n2 = 0;
        int n3 = 1;
        while (n3 >= 0) {
            int n4;
            int n5 = n4 = byArray[n + n3];
            if (n4 < 0) {
                n5 = n4 + 256;
            }
            n2 = (n2 << 8) + n5;
            --n3;
        }
        return n2;
    }

    public static int get3(byte[] byArray, int n) {
        int n2 = 0;
        int n3 = 0;
        while (n3 < 3) {
            int n4;
            int n5 = n4 = byArray[n];
            if (n4 < 0) {
                n5 = n4 + 256;
            }
            n2 = (n2 << 8) + n5;
            ++n3;
            ++n;
        }
        return n2;
    }

    public static int get4(byte[] byArray, int n) {
        int n2 = 0;
        int n3 = 0;
        while (n3 < 4) {
            int n4;
            int n5 = n4 = byArray[n];
            if (n4 < 0) {
                n5 = n4 + 256;
            }
            n2 = (n2 << 8) + n5;
            ++n3;
            ++n;
        }
        return n2;
    }

    public static int get4l(byte[] byArray, int n) {
        int n2 = 0;
        int n3 = 3;
        while (n3 >= 0) {
            int n4;
            int n5 = n4 = byArray[n + n3];
            if (n4 < 0) {
                n5 = n4 + 256;
            }
            n2 = (n2 << 8) + n5;
            --n3;
        }
        return n2;
    }

    public static int get4r(byte[] byArray, int n) {
        int n2 = 0;
        int n3 = 3;
        while (n3 >= 0) {
            int n4;
            int n5 = n4 = byArray[n + n3];
            if (n4 < 0) {
                n5 = n4 + 256;
            }
            n2 = (n2 << 8) + n5;
            --n3;
        }
        return n2;
    }

    public static long get8(byte[] byArray, int n) {
        long l = 0L;
        int n2 = 0;
        while (n2 < 8) {
            long l2;
            long l3 = l2 = (long)byArray[n];
            if (l2 < 0L) {
                l3 = l2 + 256L;
            }
            l = (l << 8) + l3;
            ++n2;
            ++n;
        }
        return l;
    }

    public static long get8l(byte[] byArray, int n) {
        long l = 0L;
        int n2 = 7;
        while (n2 >= 0) {
            long l2;
            long l3 = l2 = (long)byArray[n + n2];
            if (l2 < 0L) {
                l3 = l2 + 256L;
            }
            l = (l << 8) + l3;
            --n2;
        }
        return l;
    }

    public static long get8r(byte[] byArray, int n) {
        long l = 0L;
        int n2 = 7;
        while (n2 >= 0) {
            long l2;
            long l3 = l2 = (long)byArray[n + n2];
            if (l2 < 0L) {
                l3 = l2 + 256L;
            }
            l = (l << 8) + l3;
            --n2;
        }
        return l;
    }

    public static int put1(byte[] byArray, int n, int n2) {
        byArray[n] = (byte)n2;
        return n + 1;
    }

    public static int put2(byte[] byArray, int n, int n2) {
        int n3 = n + 1;
        byArray[n] = (byte)(n2 >> 8);
        byArray[n3] = (byte)(n2 & 0xFF);
        return n3 + 1;
    }

    public static int put3(byte[] byArray, int n, int n2) {
        int n3 = n + 1;
        byArray[n] = (byte)(n2 >> 16 & 0xFF);
        n = n3 + 1;
        byArray[n3] = (byte)(n2 >> 8 & 0xFF);
        byArray[n] = (byte)(n2 & 0xFF);
        return n + 1;
    }

    public static int put4(byte[] byArray, int n, int n2) {
        int n3 = n + 1;
        byArray[n] = (byte)(n2 >> 24);
        n = n3 + 1;
        byArray[n3] = (byte)(n2 >> 16 & 0xFF);
        n3 = n + 1;
        byArray[n] = (byte)(n2 >> 8 & 0xFF);
        byArray[n3] = (byte)(n2 & 0xFF);
        return n3 + 1;
    }

    public static int put5(byte[] byArray, int n, long l) {
        int n2 = n + 1;
        byArray[n] = (byte)(l >> 32 & 0xFFL);
        int n3 = n2 + 1;
        byArray[n2] = (byte)(l >> 24 & 0xFFL);
        n = n3 + 1;
        byArray[n3] = (byte)(l >> 16 & 0xFFL);
        n3 = n + 1;
        byArray[n] = (byte)(l >> 8 & 0xFFL);
        byArray[n3] = (byte)(l & 0xFFL);
        return n3 + 1;
    }

    public static int put8(byte[] byArray, int n, long l) {
        int n2 = n + 1;
        byArray[n] = (byte)(l >> 56 & 0xFFL);
        int n3 = n2 + 1;
        byArray[n2] = (byte)(l >> 48 & 0xFFL);
        n = n3 + 1;
        byArray[n3] = (byte)(l >> 40 & 0xFFL);
        n3 = n + 1;
        byArray[n] = (byte)(l >> 32 & 0xFFL);
        n = n3 + 1;
        byArray[n3] = (byte)(l >> 24 & 0xFFL);
        n3 = n + 1;
        byArray[n] = (byte)(l >> 16 & 0xFFL);
        n = n3 + 1;
        byArray[n3] = (byte)(l >> 8 & 0xFFL);
        byArray[n] = (byte)(l & 0xFFL);
        return n + 1;
    }
}

