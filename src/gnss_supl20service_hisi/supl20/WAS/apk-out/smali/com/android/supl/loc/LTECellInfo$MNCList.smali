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
    .locals 1
    .param p1, "usRefMNC"    # [C

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNC:[C

    .line 217
    iget-object v0, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNC:[C

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNC:[C

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    .line 215
    :goto_0
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    goto :goto_0
.end method


# virtual methods
.method public getMncListInfo()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, "iOffset":I
    const/4 v3, 0x1

    .line 228
    .local v3, "iSize":I
    const/4 v0, 0x0

    .line 229
    .local v0, "bData":[B
    iget-short v4, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    if-lez v4, :cond_0

    .line 230
    iget-short v4, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v4, 0x1

    .line 231
    new-array v0, v3, [B

    .line 232
    .local v0, "bData":[B
    iget-short v4, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-short v4, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNCcnt:S

    if-ge v1, v4, :cond_1

    .line 234
    iget-object v4, p0, Lcom/android/supl/loc/LTECellInfo$MNCList;->ucRefMNC:[C

    aget-char v4, v4, v1

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v2

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "i":I
    .local v0, "bData":[B
    :cond_0
    new-array v0, v3, [B

    .line 238
    .local v0, "bData":[B
    invoke-static {v0, v2, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 240
    :cond_1
    return-object v0
.end method
