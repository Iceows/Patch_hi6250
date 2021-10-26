.class public Lcom/android/supl/loc/wifi/WIFIParameter;
.super Ljava/lang/Object;
.source "WIFIParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/loc/wifi/WIFIParameter$RTD;,
        Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;,
        Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;
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
    .locals 1
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

    .line 100
    return-void
.end method


# virtual methods
.method public getScanWIFIParameterInfo(Z)[B
    .locals 13
    .param p1, "isServer"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 233
    const/4 v5, 0x0

    .line 235
    .local v5, "iOffset":I
    const/16 v7, 0x7d5

    new-array v1, v7, [B

    .line 236
    .local v1, "bData":[B
    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPMACadd:Lcom/android/supl/loc/BitString;

    invoke-virtual {v7}, Lcom/android/supl/loc/BitString;->getBitStringInfo()[B

    move-result-object v0

    .line 238
    .local v0, "bAPMACadd":[B
    if-eqz p1, :cond_0

    move v7, v8

    :goto_0
    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 239
    const/4 v6, 0x4

    .line 240
    .local v6, "iSize":I
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MAC Address"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    iget-object v12, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPMACadd:Lcom/android/supl/loc/BitString;

    iget-object v12, v12, Lcom/android/supl/loc/BitString;->ucBuffer:[B

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    array-length v7, v0

    invoke-static {v0, v9, v1, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 242
    array-length v7, v0

    add-int/2addr v5, v7

    .line 243
    array-length v7, v0

    add-int/lit8 v6, v7, 0x4

    .line 244
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPTPInfoPresent:Z

    if-eqz v7, :cond_1

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
    :goto_1
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPAGInfoPresent:Z

    if-eqz v7, :cond_2

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
    :goto_2
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPStoNInfoPresent:Z

    if-eqz v7, :cond_3

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
    :goto_3
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPDeviceTypeInfoPresent:Z

    if-eqz v7, :cond_4

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
    :goto_4
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPSSInfoPresent:Z

    if-eqz v7, :cond_5

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
    :goto_5
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPCFreqInfpPresent:Z

    if-eqz v7, :cond_6

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
    :goto_6
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPRTDInfoPresent:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPRTD:Lcom/android/supl/loc/wifi/WIFIParameter$RTD;

    if-eqz v7, :cond_7

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

    invoke-static {v3, v9, v1, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 296
    array-length v7, v3

    add-int/2addr v5, v7

    .line 297
    array-length v7, v3

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    .line 302
    .end local v3    # "bstAPRTD":[B
    :goto_7
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetTranPowerInfoPresent:Z

    if-eqz v7, :cond_8

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
    :goto_8
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetAGInfoPresent:Z

    if-eqz v7, :cond_9

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
    :goto_9
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetStoNInfoPresent:Z

    if-eqz v7, :cond_a

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
    :goto_a
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetSigStrengthInfoPresent:Z

    if-eqz v7, :cond_b

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
    :goto_b
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPReportedLocationPresent:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stReportedLocation:Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;

    if-eqz v7, :cond_c

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

    invoke-static {v4, v9, v1, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 339
    array-length v7, v4

    add-int/2addr v5, v7

    .line 340
    array-length v7, v4

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    .line 346
    .end local v4    # "bstReportedLoc":[B
    :goto_c
    if-eq v5, v6, :cond_d

    .line 347
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "WIFIParameter length error"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    :goto_d
    return-object v1

    .end local v6    # "iSize":I
    :cond_0
    move v7, v9

    .line 238
    goto/16 :goto_0

    .line 249
    .restart local v6    # "iSize":I
    :cond_1
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 250
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_1

    .line 257
    :cond_2
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 258
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_2

    .line 265
    :cond_3
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 266
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_3

    .line 273
    :cond_4
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 274
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_4

    .line 281
    :cond_5
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 282
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_5

    .line 289
    :cond_6
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 290
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_6

    .line 299
    :cond_7
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 300
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_7

    .line 307
    :cond_8
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 308
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_8

    .line 315
    :cond_9
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 316
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_9

    .line 323
    :cond_a
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 324
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_a

    .line 331
    :cond_b
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 332
    add-int/lit8 v6, v6, 0x4

    goto :goto_b

    .line 342
    :cond_c
    invoke-static {v1, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 343
    add-int/lit8 v6, v6, 0x4

    goto :goto_c

    .line 349
    :cond_d
    new-array v2, v6, [B

    .line 350
    .local v2, "bTemp":[B
    invoke-static {v1, v9, v2, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 351
    move-object v1, v2

    goto :goto_d
.end method

.method public getWIFIParameterInfo()[B
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 105
    const/4 v5, 0x0

    .line 107
    .local v5, "iOffset":I
    const/16 v7, 0x7d5

    new-array v1, v7, [B

    .line 108
    .local v1, "bData":[B
    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPMACadd:Lcom/android/supl/loc/BitString;

    invoke-virtual {v7}, Lcom/android/supl/loc/BitString;->getBitStringInfo()[B

    move-result-object v0

    .line 111
    .local v0, "bAPMACadd":[B
    invoke-static {v1, v5, v12}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v5

    .line 112
    const/4 v6, 0x1

    .line 113
    .local v6, "iSize":I
    invoke-static {v1, v5, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 114
    add-int/lit8 v6, v6, 0x4

    .line 115
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MAC Address"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPMACadd:Lcom/android/supl/loc/BitString;

    iget-object v10, v10, Lcom/android/supl/loc/BitString;->ucBuffer:[B

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    array-length v7, v0

    invoke-static {v0, v11, v1, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 117
    array-length v7, v0

    add-int/2addr v5, v7

    .line 118
    array-length v7, v0

    add-int/lit8 v6, v7, 0x5

    .line 119
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPTPInfoPresent:Z

    if-eqz v7, :cond_0

    .line 120
    invoke-static {v1, v5, v12}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 121
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPTP:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 122
    add-int/lit8 v6, v6, 0x6

    .line 127
    :goto_0
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPAGInfoPresent:Z

    if-eqz v7, :cond_1

    .line 128
    invoke-static {v1, v5, v12}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 129
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPAG:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 130
    add-int/lit8 v6, v6, 0x6

    .line 135
    :goto_1
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPStoNInfoPresent:Z

    if-eqz v7, :cond_2

    .line 136
    invoke-static {v1, v5, v12}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 137
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPStoN:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 138
    add-int/lit8 v6, v6, 0x6

    .line 143
    :goto_2
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPDeviceTypeInfoPresent:Z

    if-eqz v7, :cond_3

    .line 144
    invoke-static {v1, v5, v12}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 145
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->eAPDeviceType:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 146
    add-int/lit8 v6, v6, 0x8

    .line 151
    :goto_3
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPSSInfoPresent:Z

    if-eqz v7, :cond_4

    .line 152
    invoke-static {v1, v5, v12}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 153
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sAPSS:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 154
    add-int/lit8 v6, v6, 0x6

    .line 159
    :goto_4
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPCFreqInfpPresent:Z

    if-eqz v7, :cond_5

    .line 160
    invoke-static {v1, v5, v12}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 161
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->ucAPCFreq:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v5

    .line 162
    add-int/lit8 v6, v6, 0x5

    .line 167
    :goto_5
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPRTDInfoPresent:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPRTD:Lcom/android/supl/loc/wifi/WIFIParameter$RTD;

    if-eqz v7, :cond_6

    .line 168
    invoke-static {v1, v5, v12}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 169
    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stAPRTD:Lcom/android/supl/loc/wifi/WIFIParameter$RTD;

    invoke-virtual {v7}, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->getRTDInfo()[B

    move-result-object v3

    .line 170
    .local v3, "bstAPRTD":[B
    array-length v7, v3

    invoke-static {v3, v11, v1, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 171
    array-length v7, v3

    add-int/2addr v5, v7

    .line 172
    array-length v7, v3

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    .line 177
    .end local v3    # "bstAPRTD":[B
    :goto_6
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetTranPowerInfoPresent:Z

    if-eqz v7, :cond_7

    .line 178
    invoke-static {v1, v5, v12}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 179
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetTransPower:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 180
    add-int/lit8 v6, v6, 0x6

    .line 186
    :goto_7
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetAGInfoPresent:Z

    if-eqz v7, :cond_8

    .line 187
    invoke-static {v1, v5, v12}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 188
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetAG:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 189
    add-int/lit8 v6, v6, 0x6

    .line 194
    :goto_8
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetStoNInfoPresent:Z

    if-eqz v7, :cond_9

    .line 195
    invoke-static {v1, v5, v12}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 196
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetStoN:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 197
    add-int/lit8 v6, v6, 0x6

    .line 202
    :goto_9
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsSetSigStrengthInfoPresent:Z

    if-eqz v7, :cond_a

    .line 203
    invoke-static {v1, v5, v12}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 204
    iget-short v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->sSetSigStrength:S

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 205
    add-int/lit8 v6, v6, 0x6

    .line 211
    :goto_a
    iget-boolean v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->bIsAPReportedLocationPresent:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stReportedLocation:Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;

    if-eqz v7, :cond_b

    .line 212
    invoke-static {v1, v5, v12}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 213
    iget-object v7, p0, Lcom/android/supl/loc/wifi/WIFIParameter;->stReportedLocation:Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;

    invoke-virtual {v7}, Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;->getReportedLocationInfo()[B

    move-result-object v4

    .line 214
    .local v4, "bstReportedLoc":[B
    array-length v7, v4

    invoke-static {v4, v11, v1, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 215
    array-length v7, v4

    add-int/2addr v5, v7

    .line 216
    array-length v7, v4

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    .line 222
    .end local v4    # "bstReportedLoc":[B
    :goto_b
    if-eq v5, v6, :cond_c

    .line 223
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "WIFIParameter length error"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    :goto_c
    return-object v1

    .line 124
    :cond_0
    invoke-static {v1, v5, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 125
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_0

    .line 132
    :cond_1
    invoke-static {v1, v5, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 133
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_1

    .line 140
    :cond_2
    invoke-static {v1, v5, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 141
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_2

    .line 148
    :cond_3
    invoke-static {v1, v5, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 149
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_3

    .line 156
    :cond_4
    invoke-static {v1, v5, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 157
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_4

    .line 164
    :cond_5
    invoke-static {v1, v5, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 165
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_5

    .line 174
    :cond_6
    invoke-static {v1, v5, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 175
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_6

    .line 183
    :cond_7
    invoke-static {v1, v5, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 184
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_7

    .line 191
    :cond_8
    invoke-static {v1, v5, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 192
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_8

    .line 199
    :cond_9
    invoke-static {v1, v5, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 200
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_9

    .line 207
    :cond_a
    invoke-static {v1, v5, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 208
    add-int/lit8 v6, v6, 0x4

    goto :goto_a

    .line 218
    :cond_b
    invoke-static {v1, v5, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 219
    add-int/lit8 v6, v6, 0x4

    goto :goto_b

    .line 225
    :cond_c
    new-array v2, v6, [B

    .line 226
    .local v2, "bTemp":[B
    invoke-static {v1, v11, v2, v11, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 227
    move-object v1, v2

    goto :goto_c
.end method
