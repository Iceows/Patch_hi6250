.class public Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;
.super Ljava/lang/Object;
.source "SUPL_LPP_OTDOA_SIGNAL_MMT.java"


# instance fields
.field public bArfcnPresent:Z

.field public bMeasureQualityPresent:Z

.field public bNeighbourMMTValid:Z

.field public bOTDOAEGCIValid:Z

.field public lArfcnEUTRAValue:I

.field public stLPPOTDOANeighbourLst:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;

.field public stOTDOAEGCIInfo:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

.field public stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

.field public usPhysCellID:S

.field public wSignalFrameNo:S


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stOTDOAEGCIInfo:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    .line 84
    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    .line 94
    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stLPPOTDOANeighbourLst:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;

    .line 100
    const/16 v0, 0x19c

    iput-short v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->wSignalFrameNo:S

    .line 101
    const/16 v0, 0x19d

    iput-short v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->usPhysCellID:S

    .line 102
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bOTDOAEGCIValid:Z

    .line 103
    new-instance v0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stOTDOAEGCIInfo:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    .line 104
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bArfcnPresent:Z

    .line 105
    const/16 v0, 0x19f

    iput v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->lArfcnEUTRAValue:I

    .line 106
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bMeasureQualityPresent:Z

    .line 107
    new-instance v0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    .line 108
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bNeighbourMMTValid:Z

    .line 109
    new-instance v0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stLPPOTDOANeighbourLst:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;

    .line 110
    return-void
.end method


# virtual methods
.method public getSIGNAL_MMT()[B
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 115
    const/16 v5, 0x14

    .line 118
    .local v5, "iSize":I
    const/4 v1, 0x0

    .line 119
    .local v1, "bEGCI":[B
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bOTDOAEGCIValid:Z

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stOTDOAEGCIInfo:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    if-eqz v6, :cond_18

    .line 120
    iget-object v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stOTDOAEGCIInfo:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;

    invoke-virtual {v6}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->getLPP_EGCI()[B

    move-result-object v1

    .line 121
    .local v1, "bEGCI":[B
    if-eqz v1, :cond_18

    .line 122
    array-length v6, v1

    add-int/lit8 v5, v6, 0x14

    .line 125
    .end local v1    # "bEGCI":[B
    :cond_18
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bArfcnPresent:Z

    if-eqz v6, :cond_1e

    .line 126
    add-int/lit8 v5, v5, 0x4

    .line 128
    :cond_1e
    const/4 v2, 0x0

    .line 129
    .local v2, "bMeaQuality":[B
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bMeasureQualityPresent:Z

    if-eqz v6, :cond_31

    iget-object v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    if-eqz v6, :cond_31

    .line 130
    iget-object v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stOTDOAMeasureQuality:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;

    invoke-virtual {v6}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;->getOTDOA_MMT_QUALITY()[B

    move-result-object v2

    .line 131
    .local v2, "bMeaQuality":[B
    if-eqz v2, :cond_31

    .line 132
    array-length v6, v2

    add-int/2addr v5, v6

    .line 135
    .end local v2    # "bMeaQuality":[B
    :cond_31
    const/4 v3, 0x0

    .line 136
    .local v3, "bNeigh":[B
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bNeighbourMMTValid:Z

    if-eqz v6, :cond_44

    iget-object v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stLPPOTDOANeighbourLst:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;

    if-eqz v6, :cond_44

    .line 137
    iget-object v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->stLPPOTDOANeighbourLst:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;

    invoke-virtual {v6}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->get_NEIGHBOUR_OTDOA_MMT()[B

    move-result-object v3

    .line 138
    .local v3, "bNeigh":[B
    if-eqz v3, :cond_44

    .line 139
    array-length v6, v3

    add-int/2addr v5, v6

    .line 142
    .end local v3    # "bNeigh":[B
    :cond_44
    const/4 v4, 0x0

    .line 143
    .local v4, "iOffset":I
    new-array v0, v5, [B

    .line 144
    .local v0, "bData":[B
    iget-short v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->wSignalFrameNo:S

    invoke-static {v0, v4, v6}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v4

    .line 145
    iget-short v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->usPhysCellID:S

    invoke-static {v0, v4, v6}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v4

    .line 146
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bOTDOAEGCIValid:Z

    if-eqz v6, :cond_a5

    move v6, v7

    :goto_58
    invoke-static {v0, v4, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 147
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bOTDOAEGCIValid:Z

    if-eqz v6, :cond_68

    if-eqz v1, :cond_68

    .line 148
    array-length v6, v1

    invoke-static {v1, v8, v0, v4, v6}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 149
    array-length v6, v1

    add-int/2addr v4, v6

    .line 151
    :cond_68
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bArfcnPresent:Z

    if-eqz v6, :cond_a7

    move v6, v7

    :goto_6d
    invoke-static {v0, v4, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 152
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bArfcnPresent:Z

    if-eqz v6, :cond_7b

    .line 153
    iget v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->lArfcnEUTRAValue:I

    invoke-static {v0, v4, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 155
    :cond_7b
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bMeasureQualityPresent:Z

    if-eqz v6, :cond_a9

    move v6, v7

    :goto_80
    invoke-static {v0, v4, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 156
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bMeasureQualityPresent:Z

    if-eqz v6, :cond_90

    if-eqz v2, :cond_90

    .line 157
    array-length v6, v2

    invoke-static {v2, v8, v0, v4, v6}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 158
    array-length v6, v2

    add-int/2addr v4, v6

    .line 160
    :cond_90
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bNeighbourMMTValid:Z

    if-eqz v6, :cond_ab

    :goto_94
    invoke-static {v0, v4, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 161
    iget-boolean v6, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->bNeighbourMMTValid:Z

    if-eqz v6, :cond_a4

    if-eqz v3, :cond_a4

    .line 162
    array-length v6, v3

    invoke-static {v3, v8, v0, v4, v6}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 163
    array-length v6, v3

    add-int/2addr v4, v6

    .line 166
    :cond_a4
    return-object v0

    :cond_a5
    move v6, v8

    .line 146
    goto :goto_58

    :cond_a7
    move v6, v8

    .line 151
    goto :goto_6d

    :cond_a9
    move v6, v8

    .line 155
    goto :goto_80

    :cond_ab
    move v7, v8

    .line 160
    goto :goto_94
.end method
