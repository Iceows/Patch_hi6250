.class public Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;
.super Ljava/lang/Object;
.source "BSIC_Carrier.java"


# instance fields
.field public cBsic:S

.field public usCarrier:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBSIC_Carrier()[B
    .locals 4

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "iOffset":I
    const/4 v2, 0x3

    .line 54
    .local v2, "iSize":I
    new-array v0, v2, [B

    .line 55
    .local v0, "bData":[B
    iget v3, p0, Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;->usCarrier:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 56
    iget-short v3, p0, Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;->cBsic:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 57
    return-object v0
.end method
