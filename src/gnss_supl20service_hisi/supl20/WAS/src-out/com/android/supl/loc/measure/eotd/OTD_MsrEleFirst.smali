.class public Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;
.super Ljava/lang/Object;
.source "OTD_MsrEleFirst.java"


# instance fields
.field public aWithIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;",
            ">;"
        }
    .end annotation
.end field

.field public otd_MsrComm:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

.field public ucSetCount:S


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->aWithIDs:Ljava/util/ArrayList;

    .line 38
    return-void
.end method


# virtual methods
.method public getOTD_MsrEleFirst()[B
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 45
    const/4 v6, 0x1

    .line 46
    .local v6, "iSize":I
    const/4 v5, 0x0

    .line 47
    .local v5, "iOffset":I
    const/4 v3, 0x0

    .line 48
    .local v3, "bMsrComm":[B
    iget-object v10, p0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->otd_MsrComm:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    if-eqz v10, :cond_11

    .line 49
    iget-object v10, p0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->otd_MsrComm:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    invoke-virtual {v10}, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->getOTSMSREle()[B

    move-result-object v3

    .line 50
    .local v3, "bMsrComm":[B
    array-length v10, v3

    add-int/lit8 v6, v10, 0x1

    .line 52
    .end local v3    # "bMsrComm":[B
    :cond_11
    const/4 v9, 0x0

    .line 53
    .local v9, "vecOtherSetMea":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v10, p0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->aWithIDs:Ljava/util/ArrayList;

    if-eqz v10, :cond_41

    .line 54
    new-instance v9, Ljava/util/Vector;

    .end local v9    # "vecOtherSetMea":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v10, p0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->aWithIDs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/Vector;-><init>(I)V

    .line 55
    .local v9, "vecOtherSetMea":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v10, p0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->aWithIDs:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "means_WithID$iterator":Ljava/util/Iterator;
    :cond_27
    :goto_27
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_41

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    .line 56
    .local v7, "means_WithID":Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;
    if-eqz v7, :cond_27

    .line 57
    invoke-virtual {v7}, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->getOTDMeans_WithID()[B

    move-result-object v4

    .line 58
    .local v4, "bOttherset":[B
    if-eqz v4, :cond_27

    .line 59
    invoke-virtual {v9, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 60
    array-length v10, v4

    add-int/2addr v6, v10

    goto :goto_27

    .line 65
    .end local v4    # "bOttherset":[B
    .end local v7    # "means_WithID":Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;
    .end local v8    # "means_WithID$iterator":Ljava/util/Iterator;
    .end local v9    # "vecOtherSetMea":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    :cond_41
    new-array v2, v6, [B

    .line 66
    .local v2, "bData":[B
    if-eqz v3, :cond_4c

    .line 67
    array-length v10, v3

    invoke-static {v3, v11, v2, v5, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 68
    array-length v10, v3

    add-int/lit8 v5, v10, 0x0

    .line 70
    :cond_4c
    iget-short v10, p0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->ucSetCount:S

    invoke-static {v2, v5, v10}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v5

    .line 71
    if-eqz v9, :cond_6d

    .line 72
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "b$iterator":Ljava/util/Iterator;
    :cond_58
    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 73
    .local v0, "b":[B
    if-eqz v0, :cond_58

    .line 74
    array-length v10, v0

    invoke-static {v0, v11, v2, v5, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 75
    array-length v10, v0

    add-int/2addr v5, v10

    goto :goto_58

    .line 79
    .end local v0    # "b":[B
    .end local v1    # "b$iterator":Ljava/util/Iterator;
    :cond_6d
    return-object v2
.end method
