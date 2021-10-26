.class public Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
.super Ljava/lang/Object;
.source "LTECellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/LTECellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlmnIdentity"
.end annotation


# instance fields
.field private bIsMCCPresent:Z

.field private stMCC:Lcom/android/supl/loc/LTECellInfo$MCC_LIST;

.field private stMNC:Lcom/android/supl/loc/LTECellInfo$MNCList;


# direct methods
.method public constructor <init>(ZLcom/android/supl/loc/LTECellInfo$MCC_LIST;Lcom/android/supl/loc/LTECellInfo$MNCList;)V
    .registers 6
    .param p1, "bIsMCCPresent"    # Z
    .param p2, "stMCC"    # Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    .param p3, "stMNC"    # Lcom/android/supl/loc/LTECellInfo$MNCList;

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    if-nez p3, :cond_e

    .line 253
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "MNCList should not null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_e
    if-eqz p1, :cond_1b

    if-nez p2, :cond_1b

    .line 257
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "MCC_LIST should not null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1b
    iput-boolean p1, p0, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;->bIsMCCPresent:Z

    .line 260
    iput-object p2, p0, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;->stMCC:Lcom/android/supl/loc/LTECellInfo$MCC_LIST;

    .line 261
    iput-object p3, p0, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;->stMNC:Lcom/android/supl/loc/LTECellInfo$MNCList;

    .line 251
    return-void
.end method


# virtual methods
.method public getPLMNIdentityInfo()[B
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 265
    const/4 v4, 0x0

    .line 266
    .local v4, "iOffset":I
    const/4 v5, 0x4

    .line 267
    .local v5, "iSize":I
    const/4 v1, 0x0

    .line 268
    .local v1, "bstMCC":[C
    iget-boolean v6, p0, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;->bIsMCCPresent:Z

    if-eqz v6, :cond_13

    .line 269
    iget-object v6, p0, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;->stMCC:Lcom/android/supl/loc/LTECellInfo$MCC_LIST;

    invoke-virtual {v6}, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;->getMccListInfo()[C

    move-result-object v1

    .line 270
    .local v1, "bstMCC":[C
    array-length v6, v1

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v5, v6, 0x4

    .line 272
    .end local v1    # "bstMCC":[C
    :cond_13
    iget-object v6, p0, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;->stMNC:Lcom/android/supl/loc/LTECellInfo$MNCList;

    invoke-virtual {v6}, Lcom/android/supl/loc/LTECellInfo$MNCList;->getMncListInfo()[B

    move-result-object v2

    .line 273
    .local v2, "bstMNC":[B
    array-length v6, v2

    add-int/2addr v5, v6

    .line 274
    new-array v0, v5, [B

    .line 275
    .local v0, "bData":[B
    iget-boolean v6, p0, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;->bIsMCCPresent:Z

    if-eqz v6, :cond_33

    .line 276
    const/4 v6, 0x1

    invoke-static {v0, v4, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 277
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_27
    array-length v6, v1

    if-ge v3, v6, :cond_37

    .line 278
    aget-char v6, v1, v3

    invoke-static {v0, v4, v6}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v4

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 282
    .end local v3    # "i":I
    :cond_33
    invoke-static {v0, v4, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 284
    :cond_37
    array-length v6, v2

    invoke-static {v2, v7, v0, v4, v6}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 285
    array-length v6, v2

    add-int/2addr v4, v6

    .line 286
    if-eq v5, v4, :cond_48

    .line 287
    const-string/jumbo v6, "LTECEllInfo"

    const-string/jumbo v7, "PLMNIdentity length error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_48
    return-object v0
.end method
