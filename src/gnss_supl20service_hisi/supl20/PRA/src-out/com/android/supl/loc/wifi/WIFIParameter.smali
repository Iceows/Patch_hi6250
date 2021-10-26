.class public Lcom/android/supl/loc/wifi/WIFIParameter;
.super Ljava/lang/Object;
.source "WIFIParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;,
        Lcom/android/supl/loc/wifi/WIFIParameter$RTD;,
        Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;
    }
.end annotation


# static fields
.field private static final WLAN802_11A:I = 0x0

.field private static final WLAN802_11B:I = 0x1

.field private static final WLAN802_11G:I = 0x2


# instance fields
.field public bIsAPAGInfoPresent:Z

.field public bIsAPCFreqInfpPresent:Z

.field public bIsAPDeviceTypeInfoPresent:Z

.field public bIsAPRTDInfoPresent:Z

.field public bIsAPReportedLocationPresent:Z

.field public bIsAPSSInfoPresent:Z

.field public bIsAPStoNInfoPresent:Z

.field public bIsAPTPInfoPresent:Z

.field public bIsSetAGInfoPresent:Z

.field public bIsSetSigStrengthInfoPresent:Z

.field public bIsSetStoNInfoPresent:Z

.field public bIsSetTranPowerInfoPresent:Z

.field public eAPDeviceType:S

.field public sAPAG:S

.field public sAPSS:S

.field public sAPStoN:S

.field public sAPTP:S

.field public sSetAG:S

.field public sSetSigStrength:S

.field public sSetStoN:S

.field public sSetTransPower:S

.field public stAPMACadd:Lcom/android/supl/loc/BitString;

.field public stAPRTD:Lcom/android/supl/loc/wifi/WIFIParameter$RTD;

.field public stReportedLocation:Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;

.field public ucAPCFreq:S


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "stMACAddress"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPTPInfoPresent:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPAGInfoPresent:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPStoNInfoPresent:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPDeviceTypeInfoPresent:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPSSInfoPresent:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPCFreqInfpPresent:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPRTDInfoPresent:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetTranPowerInfoPresent:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetAGInfoPresent:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetStoNInfoPresent:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetSigStrengthInfoPresent:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPReportedLocationPresent:Z

    .line 101
    new-instance v0, Lcom/android/supl/loc/BitString;

    invoke-direct {v0, p1}, Lcom/android/supl/loc/BitString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPMACadd:Lcom/android/supl/loc/BitString;

    .line 102
    return-void
.end method


# virtual methods
.method public getScanWIFIParameterInfo(Z)[B
    .registers 12
    .param p1, "isServer"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 233
    const/4 v5, 0x0

    .line 234
    .local v5, "iOffset":I
    const/4 v6, 0x0

    .line 235
    .local v6, "iSize":I
    const/16 v7, 0x7d5

    new-array v1, v7, [B

    .line 236
    .local v1, "bData":[B
    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPMACadd:Lcom/android/supl/loc/BitString;

    invoke-virtual {v7}, Lcom/android/supl/loc/BitString;->getBitStringInfo()[B

    move-result-object v0

    .line 238
    .local v0, "bAPMACadd":[B
    if-eqz p1, :cond_102

    move v7, v8

    :goto_11
    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 239
    const/4 v6, 0x4

    .line 241
    array-length v7, v0

    invoke-static {v0, v9, v1, v5, v7}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 242
    array-length v7, v0

    add-int/2addr v5, v7

    .line 243
    array-length v7, v0

    add-int/lit8 v6, v7, 0x4

    .line 244
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPTPInfoPresent:Z

    if-eqz v7, :cond_105

    .line 245
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 246
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPTP:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 247
    add-int/lit8 v6, v6, 0x6

    .line 252
    :goto_2f
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPAGInfoPresent:Z

    if-eqz v7, :cond_10d

    .line 253
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 254
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPAG:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 255
    add-int/lit8 v6, v6, 0x6

    .line 260
    :goto_3f
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPStoNInfoPresent:Z

    if-eqz v7, :cond_115

    .line 261
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 262
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPStoN:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 263
    add-int/lit8 v6, v6, 0x6

    .line 268
    :goto_4f
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPDeviceTypeInfoPresent:Z

    if-eqz v7, :cond_11d

    .line 269
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 270
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->eAPDeviceType:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 271
    add-int/lit8 v6, v6, 0x8

    .line 276
    :goto_5f
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPSSInfoPresent:Z

    if-eqz v7, :cond_125

    .line 277
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 278
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPSS:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 279
    add-int/lit8 v6, v6, 0x6

    .line 284
    :goto_6f
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPCFreqInfpPresent:Z

    if-eqz v7, :cond_12d

    .line 285
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 286
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->ucAPCFreq:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v5

    .line 287
    add-int/lit8 v6, v6, 0x5

    .line 292
    :goto_7f
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPRTDInfoPresent:Z

    if-eqz v7, :cond_135

    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPRTD:Lcom/android/supl/loc/wifi/WIFIParameter$RTD;

    if-eqz v7, :cond_135

    .line 293
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 294
    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPRTD:Lcom/android/supl/loc/wifi/WIFIParameter$RTD;

    invoke-virtual {v7}, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->getRTDInfo()[B

    move-result-object v3

    .line 295
    .local v3, "bstAPRTD":[B
    array-length v7, v3

    invoke-static {v3, v9, v1, v5, v7}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 296
    array-length v7, v3

    add-int/2addr v5, v7

    .line 297
    array-length v7, v3

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    .line 302
    .end local v3    # "bstAPRTD":[B
    :goto_9b
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetTranPowerInfoPresent:Z

    if-eqz v7, :cond_13d

    .line 303
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 304
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetTransPower:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 305
    add-int/lit8 v6, v6, 0x6

    .line 310
    :goto_ab
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetAGInfoPresent:Z

    if-eqz v7, :cond_145

    .line 311
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 312
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetAG:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 313
    add-int/lit8 v6, v6, 0x6

    .line 318
    :goto_bb
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetStoNInfoPresent:Z

    if-eqz v7, :cond_14d

    .line 319
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 320
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetStoN:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 321
    add-int/lit8 v6, v6, 0x6

    .line 326
    :goto_cb
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetSigStrengthInfoPresent:Z

    if-eqz v7, :cond_155

    .line 327
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 328
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetSigStrength:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 329
    add-int/lit8 v6, v6, 0x6

    .line 335
    :goto_db
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPReportedLocationPresent:Z

    if-eqz v7, :cond_15c

    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stReportedLocation:Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;

    if-eqz v7, :cond_15c

    .line 336
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 337
    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stReportedLocation:Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;

    invoke-virtual {v7}, Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;->getReportedLocationInfo()[B

    move-result-object v4

    .line 338
    .local v4, "bstReportedLoc":[B
    array-length v7, v4

    invoke-static {v4, v9, v1, v5, v7}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 339
    array-length v7, v4

    add-int/2addr v5, v7

    .line 340
    array-length v7, v4

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    .line 346
    .end local v4    # "bstReportedLoc":[B
    :goto_f7
    if-eq v5, v6, :cond_163

    .line 347
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "WIFIParameter length error"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    :goto_101
    return-object v1

    :cond_102
    move v7, v9

    .line 238
    goto/16 :goto_11

    .line 249
    :cond_105
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 250
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_2f

    .line 257
    :cond_10d
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 258
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_3f

    .line 265
    :cond_115
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 266
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_4f

    .line 273
    :cond_11d
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 274
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_5f

    .line 281
    :cond_125
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 282
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_6f

    .line 289
    :cond_12d
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 290
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_7f

    .line 299
    :cond_135
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 300
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_9b

    .line 307
    :cond_13d
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 308
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_ab

    .line 315
    :cond_145
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 316
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_bb

    .line 323
    :cond_14d
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 324
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_cb

    .line 331
    :cond_155
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 332
    add-int/lit8 v6, v6, 0x4

    goto :goto_db

    .line 342
    :cond_15c
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 343
    add-int/lit8 v6, v6, 0x4

    goto :goto_f7

    .line 349
    :cond_163
    new-array v2, v6, [B

    .line 350
    .local v2, "bTemp":[B
    invoke-static {v1, v9, v2, v9, v6}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 351
    move-object v1, v2

    goto :goto_101
.end method

.method public getWIFIParameterInfo()[B
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 105
    const/4 v5, 0x0

    .line 106
    .local v5, "iOffset":I
    const/4 v6, 0x0

    .line 107
    .local v6, "iSize":I
    const/16 v7, 0x7d5

    new-array v1, v7, [B

    .line 108
    .local v1, "bData":[B
    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPMACadd:Lcom/android/supl/loc/BitString;

    invoke-virtual {v7}, Lcom/android/supl/loc/BitString;->getBitStringInfo()[B

    move-result-object v0

    .line 111
    .local v0, "bAPMACadd":[B
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v5

    .line 112
    const/4 v6, 0x1

    .line 113
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 114
    add-int/lit8 v6, v6, 0x4

    .line 116
    array-length v7, v0

    invoke-static {v0, v8, v1, v5, v7}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 117
    array-length v7, v0

    add-int/2addr v5, v7

    .line 118
    array-length v7, v0

    add-int/lit8 v6, v7, 0x5

    .line 119
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPTPInfoPresent:Z

    if-eqz v7, :cond_105

    .line 120
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 121
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPTP:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 122
    add-int/lit8 v6, v6, 0x6

    .line 127
    :goto_32
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPAGInfoPresent:Z

    if-eqz v7, :cond_10d

    .line 128
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 129
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPAG:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 130
    add-int/lit8 v6, v6, 0x6

    .line 135
    :goto_42
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPStoNInfoPresent:Z

    if-eqz v7, :cond_115

    .line 136
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 137
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPStoN:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 138
    add-int/lit8 v6, v6, 0x6

    .line 143
    :goto_52
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPDeviceTypeInfoPresent:Z

    if-eqz v7, :cond_11d

    .line 144
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 145
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->eAPDeviceType:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 146
    add-int/lit8 v6, v6, 0x8

    .line 151
    :goto_62
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPSSInfoPresent:Z

    if-eqz v7, :cond_125

    .line 152
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 153
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPSS:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 154
    add-int/lit8 v6, v6, 0x6

    .line 159
    :goto_72
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPCFreqInfpPresent:Z

    if-eqz v7, :cond_12d

    .line 160
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 161
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->ucAPCFreq:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v5

    .line 162
    add-int/lit8 v6, v6, 0x5

    .line 167
    :goto_82
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPRTDInfoPresent:Z

    if-eqz v7, :cond_135

    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPRTD:Lcom/android/supl/loc/wifi/WIFIParameter$RTD;

    if-eqz v7, :cond_135

    .line 168
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 169
    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPRTD:Lcom/android/supl/loc/wifi/WIFIParameter$RTD;

    invoke-virtual {v7}, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->getRTDInfo()[B

    move-result-object v3

    .line 170
    .local v3, "bstAPRTD":[B
    array-length v7, v3

    invoke-static {v3, v8, v1, v5, v7}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 171
    array-length v7, v3

    add-int/2addr v5, v7

    .line 172
    array-length v7, v3

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    .line 177
    .end local v3    # "bstAPRTD":[B
    :goto_9e
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetTranPowerInfoPresent:Z

    if-eqz v7, :cond_13d

    .line 178
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 179
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetTransPower:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 180
    add-int/lit8 v6, v6, 0x6

    .line 186
    :goto_ae
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetAGInfoPresent:Z

    if-eqz v7, :cond_145

    .line 187
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 188
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetAG:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 189
    add-int/lit8 v6, v6, 0x6

    .line 194
    :goto_be
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetStoNInfoPresent:Z

    if-eqz v7, :cond_14d

    .line 195
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 196
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetStoN:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 197
    add-int/lit8 v6, v6, 0x6

    .line 202
    :goto_ce
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetSigStrengthInfoPresent:Z

    if-eqz v7, :cond_155

    .line 203
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 204
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetSigStrength:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 205
    add-int/lit8 v6, v6, 0x6

    .line 211
    :goto_de
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPReportedLocationPresent:Z

    if-eqz v7, :cond_15c

    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stReportedLocation:Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;

    if-eqz v7, :cond_15c

    .line 212
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 213
    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stReportedLocation:Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;

    invoke-virtual {v7}, Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;->getReportedLocationInfo()[B

    move-result-object v4

    .line 214
    .local v4, "bstReportedLoc":[B
    array-length v7, v4

    invoke-static {v4, v8, v1, v5, v7}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 215
    array-length v7, v4

    add-int/2addr v5, v7

    .line 216
    array-length v7, v4

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    .line 222
    .end local v4    # "bstReportedLoc":[B
    :goto_fa
    if-eq v5, v6, :cond_163

    .line 223
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "WIFIParameter length error"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    :goto_104
    return-object v1

    .line 124
    :cond_105
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 125
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_32

    .line 132
    :cond_10d
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 133
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_42

    .line 140
    :cond_115
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 141
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_52

    .line 148
    :cond_11d
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 149
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_62

    .line 156
    :cond_125
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 157
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_72

    .line 164
    :cond_12d
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 165
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_82

    .line 174
    :cond_135
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 175
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_9e

    .line 183
    :cond_13d
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 184
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_ae

    .line 191
    :cond_145
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 192
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_be

    .line 199
    :cond_14d
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 200
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_ce

    .line 207
    :cond_155
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 208
    add-int/lit8 v6, v6, 0x4

    goto :goto_de

    .line 218
    :cond_15c
    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 219
    add-int/lit8 v6, v6, 0x4

    goto :goto_fa

    .line 225
    :cond_163
    new-array v2, v6, [B

    .line 226
    .local v2, "bTemp":[B
    invoke-static {v1, v8, v2, v8, v6}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 227
    move-object v1, v2

    goto :goto_104
.end method
