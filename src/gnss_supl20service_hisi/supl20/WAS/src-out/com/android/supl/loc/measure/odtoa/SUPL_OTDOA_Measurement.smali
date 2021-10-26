.class public Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;
.super Ljava/lang/Object;
.source "SUPL_OTDOA_Measurement.java"


# static fields
.field public static final SUPL_OTDOA_MODE_SPEC_INFO_FDD:I = 0x1

.field public static final SUPL_OTDOA_MODE_SPEC_INFO_NONE:I = 0x0

.field public static final SUPL_OTDOA_MODE_SPEC_INFO_TDD:I = 0x2


# instance fields
.field public bMeasurementValid:Z

.field public bNeighbourListPresent:Z

.field public eModeSpecInfoType:I

.field public lSFN:J

.field public stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

.field public stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

.field public ucNoOfNeighbourList:S


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOTDOA_Measurement(I)[B
    .registers 15
    .param p1, "iMeasType"    # I

    .prologue
    .line 68
    const/16 v6, 0x10

    .line 69
    .local v6, "iSize":I
    const/4 v5, 0x0

    .line 70
    .local v5, "iOffset":I
    const/4 v3, 0x0

    .line 71
    .local v3, "bModeSpec":[B
    iget-object v9, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    if-eqz v9, :cond_11

    .line 72
    iget-object v9, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    invoke-virtual {v9}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->getModeSpecMeas()[B

    move-result-object v3

    .line 73
    .local v3, "bModeSpec":[B
    array-length v9, v3

    add-int/lit8 v6, v9, 0x10

    .line 75
    .end local v3    # "bModeSpec":[B
    :cond_11
    iget-boolean v9, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bNeighbourListPresent:Z

    if-eqz v9, :cond_17

    .line 76
    add-int/lit8 v6, v6, 0x1

    .line 78
    :cond_17
    const/4 v8, 0x0

    .line 79
    .local v8, "vecbNeighbour":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-boolean v9, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bNeighbourListPresent:Z

    if-eqz v9, :cond_40

    iget-object v9, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    if-eqz v9, :cond_40

    .line 80
    new-instance v8, Ljava/util/Vector;

    .end local v8    # "vecbNeighbour":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v9, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    array-length v9, v9

    invoke-direct {v8, v9}, Ljava/util/Vector;-><init>(I)V

    .line 81
    .local v8, "vecbNeighbour":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v10, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    const/4 v9, 0x0

    array-length v11, v10

    :goto_2c
    if-ge v9, v11, :cond_40

    aget-object v7, v10, v9

    .line 82
    .local v7, "meas":Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;
    if-eqz v7, :cond_3d

    .line 83
    invoke-virtual {v7}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->getNeighbourMeas()[B

    move-result-object v4

    .line 84
    .local v4, "bNeighbour":[B
    if-eqz v4, :cond_3d

    .line 85
    array-length v12, v4

    add-int/2addr v6, v12

    .line 86
    invoke-virtual {v8, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 81
    .end local v4    # "bNeighbour":[B
    :cond_3d
    add-int/lit8 v9, v9, 0x1

    goto :goto_2c

    .line 91
    .end local v7    # "meas":Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;
    .end local v8    # "vecbNeighbour":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    :cond_40
    add-int/lit8 v6, v6, 0x8

    .line 92
    add-int/lit8 v6, v6, 0x4

    .line 93
    new-array v2, v6, [B

    .line 94
    .local v2, "bData":[B
    add-int/lit8 v9, v6, -0x4

    invoke-static {v2, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 95
    const/16 v9, 0x114

    invoke-static {v2, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 96
    invoke-static {v2, v5, p1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 97
    iget-boolean v9, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bMeasurementValid:Z

    if-eqz v9, :cond_a4

    const/4 v9, 0x1

    :goto_5b
    invoke-static {v2, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 98
    iget-wide v10, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->lSFN:J

    long-to-int v9, v10

    invoke-static {v2, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 99
    iget v9, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->eModeSpecInfoType:I

    invoke-static {v2, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 100
    if-eqz v3, :cond_75

    .line 101
    array-length v9, v3

    const/4 v10, 0x0

    invoke-static {v3, v10, v2, v5, v9}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 102
    array-length v9, v3

    add-int/2addr v5, v9

    .line 104
    :cond_75
    iget-boolean v9, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bNeighbourListPresent:Z

    if-eqz v9, :cond_a6

    const/4 v9, 0x1

    :goto_7a
    invoke-static {v2, v5, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 105
    iget-boolean v9, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bNeighbourListPresent:Z

    if-eqz v9, :cond_a8

    .line 106
    iget-short v9, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->ucNoOfNeighbourList:S

    invoke-static {v2, v5, v9}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v5

    .line 107
    if-eqz v8, :cond_a8

    .line 108
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "b$iterator":Ljava/util/Iterator;
    :cond_8e
    :goto_8e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 109
    .local v0, "b":[B
    if-eqz v0, :cond_8e

    .line 110
    array-length v9, v0

    const/4 v10, 0x0

    invoke-static {v0, v10, v2, v5, v9}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 111
    array-length v9, v0

    add-int/2addr v5, v9

    goto :goto_8e

    .line 97
    .end local v0    # "b":[B
    .end local v1    # "b$iterator":Ljava/util/Iterator;
    :cond_a4
    const/4 v9, 0x0

    goto :goto_5b

    .line 104
    :cond_a6
    const/4 v9, 0x0

    goto :goto_7a

    .line 116
    :cond_a8
    const-string/jumbo v9, "SUPL20_OTDOA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "OTDOA msg has send :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x114

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-object v2
.end method
