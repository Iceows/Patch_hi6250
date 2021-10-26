.class public Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;
.super Ljava/lang/Object;
.source "OTDMeans_WithID.java"


# instance fields
.field public eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

.field public neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

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
.method public getOTDMeans_WithID()[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, "iOffset":I
    const/4 v4, 0x3

    .line 55
    .local v4, "iSize":I
    const/4 v2, 0x0

    .line 56
    .local v2, "bNeighbor":[B
    const/4 v1, 0x0

    .line 57
    .local v1, "bNEOTDQuality":[B
    iget-object v5, p0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    if-eqz v5, :cond_0

    .line 58
    iget-object v5, p0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    invoke-virtual {v5}, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->getNeighbor_Identity()[B

    move-result-object v2

    .line 59
    .local v2, "bNeighbor":[B
    array-length v5, v2

    add-int/lit8 v4, v5, 0x3

    .line 61
    .end local v2    # "bNeighbor":[B
    :cond_0
    iget-object v5, p0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    if-eqz v5, :cond_1

    .line 62
    iget-object v5, p0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    invoke-virtual {v5}, Lcom/android/supl/loc/measure/eotd/EOTDQuality;->getEOTDQulaity()[B

    move-result-object v1

    .line 63
    .local v1, "bNEOTDQuality":[B
    array-length v5, v1

    add-int/2addr v4, v5

    .line 65
    .end local v1    # "bNEOTDQuality":[B
    :cond_1
    new-array v0, v4, [B

    .line 66
    .local v0, "bData":[B
    if-eqz v2, :cond_2

    .line 67
    array-length v5, v2

    invoke-static {v2, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 68
    array-length v5, v2

    add-int/lit8 v3, v5, 0x0

    .line 70
    :cond_2
    iget-short v5, p0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->ucNborTimeSlot:S

    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v3

    .line 71
    if-eqz v1, :cond_3

    .line 72
    array-length v5, v1

    invoke-static {v1, v6, v0, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 73
    array-length v5, v1

    add-int/2addr v3, v5

    .line 75
    :cond_3
    iget v5, p0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->usOTDValue:I

    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v3

    .line 76
    return-object v0
.end method
