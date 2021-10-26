.class public Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;
.super Ljava/lang/Object;
.source "SUPL_LPP_NEIGHBOUR_ELEM.java"


# instance fields
.field public bArfcnPresent:Z

.field public bEGCIPresent:Z

.field public lArfcnEUTRAValue:I

.field public stLPPOTDOAEGCI:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

.field stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

.field public ulLPPrstd:I

.field public usPhysCellIDNeighbour:S


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->stLPPOTDOAEGCI:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    .line 85
    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    .line 92
    const/16 v0, 0x19c

    iput-short v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->usPhysCellIDNeighbour:S

    .line 93
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->bEGCIPresent:Z

    .line 94
    new-instance v0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->stLPPOTDOAEGCI:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    .line 95
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->bArfcnPresent:Z

    .line 96
    const/16 v0, 0x200

    iput v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->lArfcnEUTRAValue:I

    .line 97
    const/16 v0, 0x1de

    iput v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->ulLPPrstd:I

    .line 98
    new-instance v0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    .line 91
    return-void
.end method


# virtual methods
.method public getLPP_NEIGHBOUR_ELEM()[B
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 102
    const/16 v4, 0xe

    .line 103
    .local v4, "iSize":I
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->bArfcnPresent:Z

    if-eqz v5, :cond_a

    .line 104
    const/16 v4, 0x12

    .line 106
    :cond_a
    const/4 v1, 0x0

    .line 107
    .local v1, "bEGCI":[B
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->bEGCIPresent:Z

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->stLPPOTDOAEGCI:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    if-eqz v5, :cond_1d

    .line 108
    iget-object v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->stLPPOTDOAEGCI:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    invoke-virtual {v5}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->getLPP_EGCI()[B

    move-result-object v1

    .line 109
    .local v1, "bEGCI":[B
    if-eqz v1, :cond_1d

    .line 110
    array-length v5, v1

    add-int/2addr v4, v5

    .line 113
    .end local v1    # "bEGCI":[B
    :cond_1d
    const/4 v2, 0x0

    .line 114
    .local v2, "bMeaQuality":[B
    iget-object v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    if-eqz v5, :cond_2c

    .line 115
    iget-object v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    invoke-virtual {v5}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;->getOTDOA_MMT_QUALITY()[B

    move-result-object v2

    .line 116
    .local v2, "bMeaQuality":[B
    if-eqz v2, :cond_2c

    .line 117
    array-length v5, v2

    add-int/2addr v4, v5

    .line 120
    .end local v2    # "bMeaQuality":[B
    :cond_2c
    const/4 v3, 0x0

    .line 121
    .local v3, "iOffset":I
    new-array v0, v4, [B

    .line 122
    .local v0, "bData":[B
    iget-short v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->usPhysCellIDNeighbour:S

    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v3

    .line 123
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->bEGCIPresent:Z

    if-eqz v5, :cond_6b

    move v5, v6

    :goto_3a
    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 124
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->bEGCIPresent:Z

    if-eqz v5, :cond_4a

    .line 125
    if-eqz v1, :cond_4a

    .line 126
    array-length v5, v1

    invoke-static {v1, v7, v0, v3, v5}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 127
    array-length v5, v1

    add-int/2addr v3, v5

    .line 130
    :cond_4a
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->bArfcnPresent:Z

    if-eqz v5, :cond_6d

    :goto_4e
    invoke-static {v0, v3, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 131
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->bArfcnPresent:Z

    if-eqz v5, :cond_5c

    .line 132
    iget v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->lArfcnEUTRAValue:I

    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 134
    :cond_5c
    iget v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->ulLPPrstd:I

    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 136
    if-eqz v2, :cond_6a

    .line 137
    array-length v5, v2

    invoke-static {v2, v7, v0, v3, v5}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 138
    array-length v5, v2

    add-int/2addr v3, v5

    .line 141
    :cond_6a
    return-object v0

    :cond_6b
    move v5, v7

    .line 123
    goto :goto_3a

    :cond_6d
    move v6, v7

    .line 130
    goto :goto_4e
.end method
