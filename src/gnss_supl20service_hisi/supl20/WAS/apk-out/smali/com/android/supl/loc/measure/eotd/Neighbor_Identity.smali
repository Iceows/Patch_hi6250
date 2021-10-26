.class public Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;
.super Ljava/lang/Object;
.source "Neighbor_Identity.java"


# instance fields
.field public enIdType:I

.field public stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNeighbor_Identity()[B
    .locals 6

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 54
    .local v2, "iOffset":I
    const/4 v0, 0x0

    .line 55
    .local v0, "bData":[B
    iget-object v4, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    if-eqz v4, :cond_0

    .line 56
    iget-object v4, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    iget v5, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->enIdType:I

    invoke-virtual {v4, v5}, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->getNeighborIDUnion(I)[B

    move-result-object v1

    .line 57
    .local v1, "bNeighbor":[B
    array-length v4, v1

    add-int/lit8 v3, v4, 0x4

    .line 58
    .local v3, "iSize":I
    new-array v0, v3, [B

    .line 59
    .local v0, "bData":[B
    iget v4, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->enIdType:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 61
    if-eqz v1, :cond_0

    .line 62
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 63
    array-length v4, v1

    add-int/2addr v2, v4

    .line 66
    .end local v0    # "bData":[B
    .end local v1    # "bNeighbor":[B
    .end local v3    # "iSize":I
    :cond_0
    return-object v0
.end method
