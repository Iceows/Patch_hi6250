.class public Lcom/android/supl/loc/measure/MeasuredResults;
.super Ljava/lang/Object;
.source "MeasuredResults.java"


# instance fields
.field private bIsCellMeasuredResultsListPresent:Z

.field private bIsFrequencyInfoPresent:Z

.field private bIsUtra_CarrierRSSIPresent:Z

.field private mFrequencyInfo:Lcom/android/supl/loc/measure/FrequencyInfo;

.field private stCellMeasuredResultsList:Lcom/android/supl/loc/measure/CellMeasuredResultsList;

.field private ucUtra_CarrierRSSI:S


# direct methods
.method public constructor <init>(Lcom/android/supl/loc/measure/FrequencyInfo;SLcom/android/supl/loc/measure/CellMeasuredResultsList;)V
    .registers 7
    .param p1, "mFrequencyInfo"    # Lcom/android/supl/loc/measure/FrequencyInfo;
    .param p2, "ucUtra_CarrierRSSI"    # S
    .param p3, "stCellMeasuredResultsList"    # Lcom/android/supl/loc/measure/CellMeasuredResultsList;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/supl/loc/measure/MeasuredResults;->mFrequencyInfo:Lcom/android/supl/loc/measure/FrequencyInfo;

    .line 51
    iput-object v0, p0, Lcom/android/supl/loc/measure/MeasuredResults;->stCellMeasuredResultsList:Lcom/android/supl/loc/measure/CellMeasuredResultsList;

    .line 55
    iput-object p1, p0, Lcom/android/supl/loc/measure/MeasuredResults;->mFrequencyInfo:Lcom/android/supl/loc/measure/FrequencyInfo;

    .line 56
    iput-short p2, p0, Lcom/android/supl/loc/measure/MeasuredResults;->ucUtra_CarrierRSSI:S

    .line 57
    iput-object p3, p0, Lcom/android/supl/loc/measure/MeasuredResults;->stCellMeasuredResultsList:Lcom/android/supl/loc/measure/CellMeasuredResultsList;

    .line 58
    if-eqz p1, :cond_20

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsFrequencyInfoPresent:Z

    .line 59
    const/4 v0, -0x1

    if-eq p2, v0, :cond_22

    move v0, v1

    :goto_19
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsUtra_CarrierRSSIPresent:Z

    .line 60
    if-eqz p3, :cond_24

    :goto_1d
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsCellMeasuredResultsListPresent:Z

    .line 61
    return-void

    :cond_20
    move v0, v2

    .line 58
    goto :goto_13

    :cond_22
    move v0, v2

    .line 59
    goto :goto_19

    :cond_24
    move v1, v2

    .line 60
    goto :goto_1d
.end method


# virtual methods
.method public getMeasuredResultsInfo()[B
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    const/4 v3, 0x0

    .line 65
    .local v3, "iOffset":I
    const/16 v4, 0xc

    .line 66
    .local v4, "iSize":I
    const/4 v2, 0x0

    .line 67
    .local v2, "bFrequData":[B
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsFrequencyInfoPresent:Z

    if-eqz v5, :cond_15

    .line 68
    iget-object v5, p0, Lcom/android/supl/loc/measure/MeasuredResults;->mFrequencyInfo:Lcom/android/supl/loc/measure/FrequencyInfo;

    invoke-virtual {v5}, Lcom/android/supl/loc/measure/FrequencyInfo;->getFrequencyInfo()[B

    move-result-object v2

    .line 69
    .local v2, "bFrequData":[B
    if-eqz v2, :cond_15

    .line 70
    array-length v5, v2

    add-int/lit8 v4, v5, 0xc

    .line 73
    .end local v2    # "bFrequData":[B
    :cond_15
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsUtra_CarrierRSSIPresent:Z

    if-eqz v5, :cond_1b

    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 76
    :cond_1b
    const/4 v0, 0x0

    .line 77
    .local v0, "bCellMeasuredData":[B
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsCellMeasuredResultsListPresent:Z

    if-eqz v5, :cond_28

    .line 78
    iget-object v5, p0, Lcom/android/supl/loc/measure/MeasuredResults;->stCellMeasuredResultsList:Lcom/android/supl/loc/measure/CellMeasuredResultsList;

    invoke-virtual {v5}, Lcom/android/supl/loc/measure/CellMeasuredResultsList;->getCellMeasuredResultList()[B

    move-result-object v0

    .line 79
    .local v0, "bCellMeasuredData":[B
    array-length v5, v0

    add-int/2addr v4, v5

    .line 82
    .end local v0    # "bCellMeasuredData":[B
    :cond_28
    new-array v1, v4, [B

    .line 83
    .local v1, "bData":[B
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsFrequencyInfoPresent:Z

    if-eqz v5, :cond_61

    .line 84
    invoke-static {v1, v3, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 85
    if-eqz v2, :cond_3a

    .line 86
    array-length v5, v2

    invoke-static {v2, v6, v1, v3, v5}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 87
    array-length v5, v2

    add-int/2addr v3, v5

    .line 93
    :cond_3a
    :goto_3a
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsUtra_CarrierRSSIPresent:Z

    if-eqz v5, :cond_66

    .line 94
    invoke-static {v1, v3, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 95
    iget-short v5, p0, Lcom/android/supl/loc/measure/MeasuredResults;->ucUtra_CarrierRSSI:S

    invoke-static {v1, v3, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v3

    .line 99
    :goto_48
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/MeasuredResults;->bIsCellMeasuredResultsListPresent:Z

    if-eqz v5, :cond_6b

    .line 100
    invoke-static {v1, v3, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 101
    array-length v5, v0

    invoke-static {v0, v6, v1, v3, v5}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 102
    array-length v5, v0

    add-int/2addr v3, v5

    .line 106
    :goto_56
    if-eq v3, v4, :cond_60

    .line 107
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "MeasuredResultsInfo length error"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    :cond_60
    return-object v1

    .line 91
    :cond_61
    invoke-static {v1, v3, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    goto :goto_3a

    .line 97
    :cond_66
    invoke-static {v1, v3, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    goto :goto_48

    .line 104
    :cond_6b
    invoke-static {v1, v3, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    goto :goto_56
.end method
