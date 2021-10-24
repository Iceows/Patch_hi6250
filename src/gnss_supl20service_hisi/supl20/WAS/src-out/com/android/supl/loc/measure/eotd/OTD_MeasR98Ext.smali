.class public Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;
.super Ljava/lang/Object;
.source "OTD_MeasR98Ext.java"


# instance fields
.field public otd_FirstSetMsrs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;",
            ">;"
        }
    .end annotation
.end field

.field public ucCount:S


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOTD_MeasR98Ext()[B
    .registers 12

    .prologue
    .line 53
    const/4 v5, 0x1

    .line 54
    .local v5, "iSize":I
    const/4 v4, 0x0

    .line 57
    .local v4, "iOffset":I
    const/4 v8, 0x0

    .line 58
    .local v8, "vecOtherSetMea":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v9, p0, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->otd_FirstSetMsrs:Ljava/util/ArrayList;

    if-eqz v9, :cond_32

    .line 59
    new-instance v8, Ljava/util/Vector;

    .end local v8    # "vecOtherSetMea":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v9, p0, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->otd_FirstSetMsrs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/Vector;-><init>(I)V

    .line 60
    .local v8, "vecOtherSetMea":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v9, p0, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->otd_FirstSetMsrs:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "means_WithID$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_32

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    .line 61
    .local v6, "means_WithID":Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;
    if-eqz v6, :cond_18

    .line 62
    invoke-virtual {v6}, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->getOTDMeans_WithID()[B

    move-result-object v3

    .line 63
    .local v3, "bOttherset":[B
    if-eqz v3, :cond_18

    .line 64
    invoke-virtual {v8, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 65
    array-length v9, v3

    add-int/2addr v5, v9

    goto :goto_18

    .line 70
    .end local v3    # "bOttherset":[B
    .end local v6    # "means_WithID":Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;
    .end local v7    # "means_WithID$iterator":Ljava/util/Iterator;
    .end local v8    # "vecOtherSetMea":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    :cond_32
    new-array v2, v5, [B

    .line 72
    .local v2, "bData":[B
    iget-short v9, p0, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->ucCount:S

    invoke-static {v2, v4, v9}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v4

    .line 73
    if-eqz v8, :cond_56

    .line 74
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "b$iterator":Ljava/util/Iterator;
    :cond_40
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 75
    .local v0, "b":[B
    if-eqz v0, :cond_40

    .line 76
    array-length v9, v0

    const/4 v10, 0x0

    invoke-static {v0, v10, v2, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 77
    array-length v9, v0

    add-int/2addr v4, v9

    goto :goto_40

    .line 81
    .end local v0    # "b":[B
    .end local v1    # "b$iterator":Ljava/util/Iterator;
    :cond_56
    return-object v2
.end method
