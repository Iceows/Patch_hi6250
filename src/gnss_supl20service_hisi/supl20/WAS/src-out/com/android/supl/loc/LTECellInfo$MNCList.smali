.class public Lcom/android/supl/loc/LTECellInfo$MNCList;
.super Ljava/lang/Object;
.source "LTECellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/LTECellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MNCList"
.end annotation


# instance fields
.field private ucRefMNC:[C

.field private ucRefMNCcnt:S


# direct methods
.method public constructor <init>([C)V
    .registers 3
    .param p1, "usRefMNC"    # [C

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNC:[C

    .line 234
    iget-object v0, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNC:[C

    if-eqz v0, :cond_10

    .line 235
    iget-object v0, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNC:[C

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    .line 240
    :goto_f
    return-void

    .line 237
    :cond_10
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    goto :goto_f
.end method


# virtual methods
.method public getMncListInfo()[B
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 243
    const/4 v2, 0x0

    .line 244
    .local v2, "iOffset":I
    const/4 v3, 0x1

    .line 245
    .local v3, "iSize":I
    const/4 v0, 0x0

    .line 246
    .local v0, "bData":[B
    iget-short v4, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    if-lez v4, :cond_26

    .line 247
    iget-short v4, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v4, 0x1

    .line 248
    new-array v0, v3, [B

    .line 249
    .local v0, "bData":[B
    iget-short v4, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 250
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    iget-short v4, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    if-ge v1, v4, :cond_2c

    .line 251
    iget-object v4, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNC:[C

    aget-char v4, v4, v1

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v2

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 254
    .end local v1    # "i":I
    .local v0, "bData":[B
    :cond_26
    new-array v0, v3, [B

    .line 255
    .local v0, "bData":[B
    invoke-static {v0, v2, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 257
    :cond_2c
    return-object v0
.end method
