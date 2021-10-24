.class public Lcom/android/supl/loc/measure/CellMeasuredResultsList;
.super Ljava/lang/Object;
.source "CellMeasuredResultsList.java"


# instance fields
.field private astCellMeasuredResults:[Lcom/android/supl/loc/measure/CellMeasuredResults;

.field private ucCellMeasuredResultsCnt:S


# direct methods
.method public constructor <init>([Lcom/android/supl/loc/measure/CellMeasuredResults;)V
    .registers 4
    .param p1, "astCellMeasuredResults"    # [Lcom/android/supl/loc/measure/CellMeasuredResults;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/supl/loc/measure/CellMeasuredResultsList;->astCellMeasuredResults:[Lcom/android/supl/loc/measure/CellMeasuredResults;

    .line 48
    if-nez p1, :cond_11

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CellMeasuredResults should not be n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_11
    iput-object p1, p0, Lcom/android/supl/loc/measure/CellMeasuredResultsList;->astCellMeasuredResults:[Lcom/android/supl/loc/measure/CellMeasuredResults;

    .line 52
    array-length v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/loc/measure/CellMeasuredResultsList;->ucCellMeasuredResultsCnt:S

    .line 53
    return-void
.end method


# virtual methods
.method public getCellMeasuredResultList()[B
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    .local v5, "iOffset":I
    const/4 v6, 0x1

    .line 58
    .local v6, "iSize":I
    new-instance v7, Ljava/util/Vector;

    iget-short v8, p0, Lcom/android/supl/loc/measure/CellMeasuredResultsList;->ucCellMeasuredResultsCnt:S

    invoke-direct {v7, v8}, Ljava/util/Vector;-><init>(I)V

    .line 59
    .local v7, "vecCellMeasuredResults":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v10, p0, Lcom/android/supl/loc/measure/CellMeasuredResultsList;->astCellMeasuredResults:[Lcom/android/supl/loc/measure/CellMeasuredResults;

    array-length v11, v10

    move v8, v9

    :goto_e
    if-ge v8, v11, :cond_21

    aget-object v4, v10, v8

    .line 60
    .local v4, "cellMeasuredResults":Lcom/android/supl/loc/measure/CellMeasuredResults;
    if-nez v4, :cond_17

    .line 59
    :goto_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 63
    :cond_17
    invoke-virtual {v4}, Lcom/android/supl/loc/measure/CellMeasuredResults;->getCellMeasuredResults()[B

    move-result-object v0

    .line 64
    .local v0, "bCellMeasured":[B
    array-length v12, v0

    add-int/2addr v6, v12

    .line 65
    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 68
    .end local v0    # "bCellMeasured":[B
    .end local v4    # "cellMeasuredResults":Lcom/android/supl/loc/measure/CellMeasuredResults;
    :cond_21
    new-array v1, v6, [B

    .line 69
    .local v1, "bData":[B
    iget-short v8, p0, Lcom/android/supl/loc/measure/CellMeasuredResultsList;->ucCellMeasuredResultsCnt:S

    invoke-static {v1, v5, v8}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v5

    .line 70
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "bs$iterator":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 71
    .local v2, "bs":[B
    array-length v8, v2

    invoke-static {v2, v9, v1, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 72
    array-length v8, v2

    add-int/2addr v5, v8

    goto :goto_2d

    .line 74
    .end local v2    # "bs":[B
    :cond_40
    if-eq v5, v6, :cond_4a

    .line 75
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "CellMeasuredResultList length error"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    :cond_4a
    return-object v1
.end method
