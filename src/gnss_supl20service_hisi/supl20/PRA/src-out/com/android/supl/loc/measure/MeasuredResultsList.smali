.class public Lcom/android/supl/loc/measure/MeasuredResultsList;
.super Ljava/lang/Object;
.source "MeasuredResultsList.java"


# instance fields
.field public astMeasuredResults:[Lcom/android/supl/loc/measure/MeasuredResults;

.field public ucMeasuredResultsCnt:S


# direct methods
.method public constructor <init>([Lcom/android/supl/loc/measure/MeasuredResults;)V
    .registers 4
    .param p1, "astMeasuredResults"    # [Lcom/android/supl/loc/measure/MeasuredResults;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/supl/loc/measure/MeasuredResultsList;->astMeasuredResults:[Lcom/android/supl/loc/measure/MeasuredResults;

    .line 49
    if-nez p1, :cond_11

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MeasuredResults should not be n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_11
    iput-object p1, p0, Lcom/android/supl/loc/measure/MeasuredResultsList;->astMeasuredResults:[Lcom/android/supl/loc/measure/MeasuredResults;

    .line 53
    array-length v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/loc/measure/MeasuredResultsList;->ucMeasuredResultsCnt:S

    .line 54
    return-void
.end method


# virtual methods
.method public getMeasuredResultsListInfo()[B
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    .local v4, "iOffset":I
    const/4 v5, 0x1

    .line 59
    .local v5, "iSize":I
    new-instance v7, Ljava/util/Vector;

    iget-short v8, p0, Lcom/android/supl/loc/measure/MeasuredResultsList;->ucMeasuredResultsCnt:S

    invoke-direct {v7, v8}, Ljava/util/Vector;-><init>(I)V

    .line 60
    .local v7, "vecMeasuredResults":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v10, p0, Lcom/android/supl/loc/measure/MeasuredResultsList;->astMeasuredResults:[Lcom/android/supl/loc/measure/MeasuredResults;

    array-length v11, v10

    move v8, v9

    :goto_e
    if-ge v8, v11, :cond_21

    aget-object v6, v10, v8

    .line 61
    .local v6, "measuredResult":Lcom/android/supl/loc/measure/MeasuredResults;
    if-nez v6, :cond_17

    .line 60
    :goto_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 64
    :cond_17
    invoke-virtual {v6}, Lcom/android/supl/loc/measure/MeasuredResults;->getMeasuredResultsInfo()[B

    move-result-object v1

    .line 65
    .local v1, "bMeasuredResult":[B
    array-length v12, v1

    add-int/2addr v5, v12

    .line 66
    invoke-virtual {v7, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 69
    .end local v1    # "bMeasuredResult":[B
    .end local v6    # "measuredResult":Lcom/android/supl/loc/measure/MeasuredResults;
    :cond_21
    new-array v0, v5, [B

    .line 70
    .local v0, "bData":[B
    iget-short v8, p0, Lcom/android/supl/loc/measure/MeasuredResultsList;->ucMeasuredResultsCnt:S

    invoke-static {v0, v4, v8}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v4

    .line 71
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

    .line 72
    .local v2, "bs":[B
    array-length v8, v2

    invoke-static {v2, v9, v0, v4, v8}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 73
    array-length v8, v2

    add-int/2addr v4, v8

    goto :goto_2d

    .line 75
    .end local v2    # "bs":[B
    :cond_40
    if-eq v4, v5, :cond_4a

    .line 76
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "MeasuredResultList length error"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    :cond_4a
    return-object v0
.end method
