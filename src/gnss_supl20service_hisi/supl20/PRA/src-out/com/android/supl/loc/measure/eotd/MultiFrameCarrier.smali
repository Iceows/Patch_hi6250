.class public Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;
.super Ljava/lang/Object;
.source "MultiFrameCarrier.java"


# instance fields
.field public ucMultiFrameOffset:S

.field public usBCCHCarrier:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMultiFrameCarrier()[B
    .registers 5

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "iOffset":I
    const/4 v2, 0x3

    .line 53
    .local v2, "iSize":I
    new-array v0, v2, [B

    .line 54
    .local v0, "bData":[B
    iget v3, p0, Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;->usBCCHCarrier:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 55
    iget-short v3, p0, Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;->ucMultiFrameOffset:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 56
    return-object v0
.end method
