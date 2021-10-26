.class public Lcom/android/supl/loc/measure/eotd/OTDMeas;
.super Ljava/lang/Object;
.source "OTDMeas.java"


# instance fields
.field public eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

.field public ucNborTimeSlot:S

.field public usOTDValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOTDMeas()[B
    .locals 6

    .prologue
    .line 52
    const/4 v3, 0x3

    .line 53
    .local v3, "iSize":I
    const/4 v2, 0x0

    .line 54
    .local v2, "iOffset":I
    const/4 v1, 0x0

    .line 55
    .local v1, "beotsQuality":[B
    iget-object v4, p0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    if-eqz v4, :cond_0

    .line 56
    iget-object v4, p0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    invoke-virtual {v4}, Lcom/android/supl/loc/measure/eotd/EOTDQuality;->getEOTDQulaity()[B

    move-result-object v1

    .line 57
    .local v1, "beotsQuality":[B
    array-length v4, v1

    add-int/lit8 v3, v4, 0x3

    .line 59
    .end local v1    # "beotsQuality":[B
    :cond_0
    new-array v0, v3, [B

    .line 60
    .local v0, "bData":[B
    iget-short v4, p0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->ucNborTimeSlot:S

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 61
    if-eqz v1, :cond_1

    .line 62
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 63
    array-length v4, v1

    add-int/2addr v2, v4

    .line 65
    :cond_1
    iget v4, p0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->usOTDValue:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v2

    .line 66
    return-object v0
.end method
