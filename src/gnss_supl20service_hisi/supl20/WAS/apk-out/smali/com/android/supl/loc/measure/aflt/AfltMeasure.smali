.class public Lcom/android/supl/loc/measure/aflt/AfltMeasure;
.super Ljava/lang/Object;
.source "AfltMeasure.java"


# instance fields
.field public BandClass:I

.field public BaseStationID:I

.field public CDMAFrequency:I

.field public IsOffsetIncluded:Z

.field public MSTimeOffset:I

.field public NetworkIdentification:I

.field public ReferencePN:I

.field public ReferencePilotStrength:I

.field public SystemIdentification:I

.field public TimeReference:I

.field public TotalNumberOfPilots:I

.field public TotalReceivedPower:I

.field public bMeasurementValid:Z

.field phaseRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    .line 101
    return-void
.end method


# virtual methods
.method public getAFLTMeasInfo(I)[B
    .locals 12
    .param p1, "iMeasureType"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 107
    const/4 v4, 0x0

    .line 109
    .local v4, "iOffset":I
    const/16 v5, 0xc

    .line 110
    .local v5, "iSize":I
    add-int/lit8 v5, v5, 0x4

    .line 111
    const/4 v8, 0x0

    .line 112
    .local v8, "vecPhaseRecord":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-boolean v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->bMeasurementValid:Z

    if-eqz v9, :cond_2

    .line 113
    add-int/lit8 v5, v5, 0x2c

    .line 114
    iget-boolean v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->IsOffsetIncluded:Z

    if-eqz v9, :cond_0

    .line 115
    add-int/lit8 v5, v5, 0x4

    .line 118
    :cond_0
    iget v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TotalNumberOfPilots:I

    if-lez v9, :cond_2

    iget-object v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    .line 119
    new-instance v8, Ljava/util/Vector;

    .end local v8    # "vecPhaseRecord":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/Vector;-><init>(I)V

    .line 120
    .local v8, "vecPhaseRecord":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "record$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    .line 121
    .local v6, "record":Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;
    if-eqz v6, :cond_1

    .line 122
    invoke-virtual {v6}, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->getAfltPilotPhaseRecord()[B

    move-result-object v3

    .line 123
    .local v3, "bRecord":[B
    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {v8, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 125
    array-length v9, v3

    add-int/2addr v5, v9

    goto :goto_0

    .line 131
    .end local v3    # "bRecord":[B
    .end local v6    # "record":Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;
    .end local v7    # "record$iterator":Ljava/util/Iterator;
    .end local v8    # "vecPhaseRecord":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    :cond_2
    new-array v2, v5, [B

    .line 132
    .local v2, "bData":[B
    add-int/lit8 v9, v5, -0x4

    invoke-static {v2, v4, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 133
    const/16 v9, 0x114

    invoke-static {v2, v4, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 134
    invoke-static {v2, v4, p1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 135
    iget-boolean v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->bMeasurementValid:Z

    if-eqz v9, :cond_5

    move v9, v10

    :goto_1
    invoke-static {v2, v4, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 136
    iget-boolean v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->bMeasurementValid:Z

    if-eqz v9, :cond_7

    .line 137
    iget v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TimeReference:I

    invoke-static {v2, v4, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 138
    iget-boolean v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->IsOffsetIncluded:Z

    if-eqz v9, :cond_6

    :goto_2
    invoke-static {v2, v4, v10}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 139
    iget-boolean v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->IsOffsetIncluded:Z

    if-eqz v9, :cond_3

    .line 140
    iget v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->MSTimeOffset:I

    invoke-static {v2, v4, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 142
    :cond_3
    iget v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->ReferencePN:I

    invoke-static {v2, v4, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 143
    iget v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->ReferencePilotStrength:I

    invoke-static {v2, v4, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 144
    iget v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->BandClass:I

    invoke-static {v2, v4, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 145
    iget v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->CDMAFrequency:I

    invoke-static {v2, v4, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 146
    iget v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->BaseStationID:I

    invoke-static {v2, v4, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 147
    iget v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->SystemIdentification:I

    invoke-static {v2, v4, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 148
    iget v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->NetworkIdentification:I

    invoke-static {v2, v4, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 149
    iget v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TotalReceivedPower:I

    invoke-static {v2, v4, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 150
    iget v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TotalNumberOfPilots:I

    invoke-static {v2, v4, v9}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 151
    iget v9, p0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TotalNumberOfPilots:I

    if-lez v9, :cond_7

    if-eqz v8, :cond_7

    .line 152
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "b$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 153
    .local v0, "b":[B
    if-eqz v0, :cond_4

    .line 154
    array-length v9, v0

    invoke-static {v0, v11, v2, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 155
    array-length v9, v0

    add-int/2addr v4, v9

    goto :goto_3

    .end local v0    # "b":[B
    .end local v1    # "b$iterator":Ljava/util/Iterator;
    :cond_5
    move v9, v11

    .line 135
    goto :goto_1

    :cond_6
    move v10, v11

    .line 138
    goto :goto_2

    .line 162
    :cond_7
    return-object v2
.end method
