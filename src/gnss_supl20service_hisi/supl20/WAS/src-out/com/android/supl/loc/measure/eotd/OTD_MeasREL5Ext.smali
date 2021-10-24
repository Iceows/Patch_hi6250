.class public Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;
.super Ljava/lang/Object;
.source "OTD_MeasREL5Ext.java"


# instance fields
.field public otdMsrRestSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;",
            ">;"
        }
    .end annotation
.end field

.field public ucCount:S


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOTD_MeasRel5Ext()[B
    .registers 12

    .prologue
    .line 44
    const/4 v7, 0x1

    .line 45
    .local v7, "iSize":I
    const/4 v6, 0x0

    .line 47
    .local v6, "iOffset":I
    const/4 v8, 0x0

    .line 48
    .local v8, "vecOtherSetMea":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v9, p0, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->otdMsrRestSets:Ljava/util/ArrayList;

    if-eqz v9, :cond_32

    .line 49
    new-instance v8, Ljava/util/Vector;

    .end local v8    # "vecOtherSetMea":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v9, p0, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->otdMsrRestSets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/Vector;-><init>(I)V

    .line 50
    .local v8, "vecOtherSetMea":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v9, p0, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->otdMsrRestSets:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "eleRest$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    .line 51
    .local v4, "eleRest":Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;
    if-eqz v4, :cond_18

    .line 52
    invoke-virtual {v4}, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->getOTD_MSREleRest()[B

    move-result-object v3

    .line 53
    .local v3, "bOttherset":[B
    if-eqz v3, :cond_18

    .line 54
    invoke-virtual {v8, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    array-length v9, v3

    add-int/2addr v7, v9

    goto :goto_18

    .line 60
    .end local v3    # "bOttherset":[B
    .end local v4    # "eleRest":Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;
    .end local v5    # "eleRest$iterator":Ljava/util/Iterator;
    .end local v8    # "vecOtherSetMea":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    :cond_32
    new-array v2, v7, [B

    .line 62
    .local v2, "bData":[B
    iget-short v9, p0, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->ucCount:S

    invoke-static {v2, v6, v9}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v6

    .line 63
    if-eqz v8, :cond_56

    .line 64
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

    .line 65
    .local v0, "b":[B
    if-eqz v0, :cond_40

    .line 66
    array-length v9, v0

    const/4 v10, 0x0

    invoke-static {v0, v10, v2, v6, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 67
    array-length v9, v0

    add-int/2addr v6, v9

    goto :goto_40

    .line 71
    .end local v0    # "b":[B
    .end local v1    # "b$iterator":Ljava/util/Iterator;
    :cond_56
    return-object v2
.end method
