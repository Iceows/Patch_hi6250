.class public Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;
.super Ljava/lang/Object;
.source "SUPL_EOTDMeasInfo.java"


# instance fields
.field public bIsValidEOTDMeasurement:Z

.field public bOTDRel5Present:Z

.field public bOTDRel98Present:Z

.field public nNoOfValidSets:I

.field public otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

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

.field public otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

.field public otd_MeasureInfo_Rel_5_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEOTDMeasInfo(I)[B
    .registers 18
    .param p1, "iMeasureType"    # I

    .prologue
    .line 52
    const/4 v8, 0x4

    .line 53
    .local v8, "iSize":I
    const/4 v7, 0x0

    .line 55
    .local v7, "iOffset":I
    const/4 v4, 0x0

    .line 56
    .local v4, "bOtdMsrFirst":[B
    const/4 v12, 0x0

    .line 57
    .local v12, "vecMsrResult":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    const/4 v6, 0x0

    .line 58
    .local v6, "bRel98":[B
    const/4 v5, 0x0

    .line 60
    .local v5, "bRel5":[B
    const-string/jumbo v13, "SUPL20_EOTD"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "EOTD bValid value is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bIsValidEOTDMeasurement:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bIsValidEOTDMeasurement:Z

    if-eqz v13, :cond_a6

    .line 63
    const/16 v8, 0x10

    .line 64
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    if-eqz v13, :cond_3f

    .line 65
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    invoke-virtual {v13}, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->getOTD_MsrEleFirst()[B

    move-result-object v4

    .line 66
    .local v4, "bOtdMsrFirst":[B
    if-eqz v4, :cond_3f

    .line 67
    array-length v13, v4

    add-int/lit8 v8, v13, 0x10

    .line 71
    .end local v4    # "bOtdMsrFirst":[B
    :cond_3f
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->nNoOfValidSets:I

    if-lez v13, :cond_76

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrRestSets:Ljava/util/ArrayList;

    if-eqz v13, :cond_76

    .line 72
    new-instance v12, Ljava/util/Vector;

    .end local v12    # "vecMsrResult":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->nNoOfValidSets:I

    invoke-direct {v12, v13}, Ljava/util/Vector;-><init>(I)V

    .line 73
    .local v12, "vecMsrResult":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrRestSets:Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "msrEleRest$iterator":Ljava/util/Iterator;
    :cond_5c
    :goto_5c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_76

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    .line 74
    .local v9, "msrEleRest":Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;
    if-eqz v9, :cond_5c

    .line 75
    invoke-virtual {v9}, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->getOTD_MSREleRest()[B

    move-result-object v11

    .line 76
    .local v11, "otdMsrRest":[B
    if-eqz v11, :cond_5c

    .line 77
    array-length v13, v11

    add-int/2addr v8, v13

    .line 78
    invoke-virtual {v12, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    .line 85
    .end local v9    # "msrEleRest":Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;
    .end local v10    # "msrEleRest$iterator":Ljava/util/Iterator;
    .end local v11    # "otdMsrRest":[B
    .end local v12    # "vecMsrResult":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    :cond_76
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel98Present:Z

    if-eqz v13, :cond_8e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    if-eqz v13, :cond_8e

    .line 86
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    invoke-virtual {v13}, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->getOTD_MeasR98Ext()[B

    move-result-object v6

    .line 87
    .local v6, "bRel98":[B
    if-eqz v6, :cond_8e

    .line 88
    array-length v13, v6

    add-int/2addr v8, v13

    .line 92
    .end local v6    # "bRel98":[B
    :cond_8e
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel5Present:Z

    if-eqz v13, :cond_a6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_Rel_5_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;

    if-eqz v13, :cond_a6

    .line 93
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_Rel_5_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;

    invoke-virtual {v13}, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->getOTD_MeasRel5Ext()[B

    move-result-object v5

    .line 94
    .local v5, "bRel5":[B
    if-eqz v5, :cond_a6

    .line 95
    array-length v13, v5

    add-int/2addr v8, v13

    .line 99
    .end local v5    # "bRel5":[B
    :cond_a6
    add-int/lit8 v8, v8, 0x8

    .line 100
    add-int/lit8 v8, v8, 0x4

    .line 103
    new-array v3, v8, [B

    .line 104
    .local v3, "bData":[B
    add-int/lit8 v13, v8, -0x4

    invoke-static {v3, v7, v13}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v7

    .line 105
    const/16 v13, 0x114

    invoke-static {v3, v7, v13}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v7

    .line 106
    move/from16 v0, p1

    invoke-static {v3, v7, v0}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v7

    .line 107
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bIsValidEOTDMeasurement:Z

    if-eqz v13, :cond_100

    const/4 v13, 0x1

    :goto_c5
    invoke-static {v3, v7, v13}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v7

    .line 108
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bIsValidEOTDMeasurement:Z

    if-eqz v13, :cond_12a

    .line 110
    if-eqz v4, :cond_d8

    .line 112
    array-length v13, v4

    const/4 v14, 0x0

    invoke-static {v4, v14, v3, v7, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 113
    array-length v13, v4

    add-int/2addr v7, v13

    .line 116
    :cond_d8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->nNoOfValidSets:I

    invoke-static {v3, v7, v13}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v7

    .line 117
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->nNoOfValidSets:I

    if-lez v13, :cond_102

    if-eqz v12, :cond_102

    .line 119
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "b$iterator":Ljava/util/Iterator;
    :goto_ec
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_102

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 121
    .local v1, "b":[B
    array-length v13, v1

    const/4 v14, 0x0

    invoke-static {v1, v14, v3, v7, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 122
    array-length v13, v1

    add-int/2addr v7, v13

    goto :goto_ec

    .line 107
    .end local v1    # "b":[B
    .end local v2    # "b$iterator":Ljava/util/Iterator;
    :cond_100
    const/4 v13, 0x0

    goto :goto_c5

    .line 126
    :cond_102
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel98Present:Z

    if-eqz v13, :cond_153

    const/4 v13, 0x1

    :goto_109
    invoke-static {v3, v7, v13}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v7

    .line 127
    if-eqz v6, :cond_116

    .line 129
    array-length v13, v6

    const/4 v14, 0x0

    invoke-static {v6, v14, v3, v7, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 130
    array-length v13, v6

    add-int/2addr v7, v13

    .line 133
    :cond_116
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel5Present:Z

    if-eqz v13, :cond_155

    const/4 v13, 0x1

    :goto_11d
    invoke-static {v3, v7, v13}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v7

    .line 134
    if-eqz v5, :cond_12a

    .line 136
    array-length v13, v5

    const/4 v14, 0x0

    invoke-static {v5, v14, v3, v7, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 137
    array-length v13, v5

    add-int/2addr v7, v13

    .line 140
    :cond_12a
    const-string/jumbo v13, "SUPL20_EOTD"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "EOTD msg has send :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x114

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-object v3

    .line 126
    :cond_153
    const/4 v13, 0x0

    goto :goto_109

    .line 133
    :cond_155
    const/4 v13, 0x0

    goto :goto_11d
.end method
