.class public Lcom/android/supl/loc/measure/FrequencyInfo;
.super Ljava/lang/Object;
.source "FrequencyInfo.java"


# static fields
.field public static final MODE_SPECIFIC_INFO_TYPE_FDD:I = 0x1

.field public static final MODE_SPECIFIC_INFO_TYPE_TDD:I = 0x2


# instance fields
.field private ienModeSpecificInfoType:I

.field private mFdd:Lcom/android/supl/loc/measure/FrequencyInfoFdd;

.field private mFrequencyInfoTdd:Lcom/android/supl/loc/measure/FrequencyInfoTdd;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .registers 5
    .param p1, "ienModeSpecificInfoType"    # I
    .param p2, "frequceObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->ienModeSpecificInfoType:I

    .line 48
    iput-object v1, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->mFdd:Lcom/android/supl/loc/measure/FrequencyInfoFdd;

    .line 50
    iput-object v1, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->mFrequencyInfoTdd:Lcom/android/supl/loc/measure/FrequencyInfoTdd;

    .line 53
    iput p1, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->ienModeSpecificInfoType:I

    .line 54
    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 55
    check-cast p2, Lcom/android/supl/loc/measure/FrequencyInfoFdd;

    .end local p2    # "frequceObject":Ljava/lang/Object;
    iput-object p2, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->mFdd:Lcom/android/supl/loc/measure/FrequencyInfoFdd;

    .line 61
    :goto_14
    return-void

    .line 56
    .restart local p2    # "frequceObject":Ljava/lang/Object;
    :cond_15
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1d

    .line 57
    check-cast p2, Lcom/android/supl/loc/measure/FrequencyInfoTdd;

    .end local p2    # "frequceObject":Ljava/lang/Object;
    iput-object p2, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->mFrequencyInfoTdd:Lcom/android/supl/loc/measure/FrequencyInfoTdd;

    goto :goto_14

    .line 59
    .restart local p2    # "frequceObject":Ljava/lang/Object;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "FrequencyInfo mode value is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFrequencyInfo()[B
    .registers 7

    .prologue
    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, "iOffset":I
    const/4 v3, 0x4

    .line 66
    .local v3, "iSize":I
    const/4 v1, 0x0

    .line 67
    .local v1, "bFrqequencyData":[B
    iget v4, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->ienModeSpecificInfoType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    .line 68
    iget-object v4, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->mFdd:Lcom/android/supl/loc/measure/FrequencyInfoFdd;

    invoke-virtual {v4}, Lcom/android/supl/loc/measure/FrequencyInfoFdd;->getFrequencyInfoFdd()[B

    move-result-object v1

    .line 72
    .end local v1    # "bFrqequencyData":[B
    :cond_e
    :goto_e
    const/4 v0, 0x0

    .line 73
    .local v0, "bData":[B
    if-eqz v1, :cond_23

    .line 74
    array-length v4, v1

    add-int/lit8 v3, v4, 0x4

    .line 75
    new-array v0, v3, [B

    .line 77
    .local v0, "bData":[B
    iget v4, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->ienModeSpecificInfoType:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 78
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v0, v2, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 79
    array-length v4, v1

    add-int/2addr v2, v4

    .line 81
    .end local v0    # "bData":[B
    :cond_23
    if-eq v2, v3, :cond_2d

    .line 82
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "FrequencyInfo length error"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    :cond_2d
    return-object v0

    .line 69
    .restart local v1    # "bFrqequencyData":[B
    :cond_2e
    iget v4, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->ienModeSpecificInfoType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    .line 70
    iget-object v4, p0, Lcom/android/supl/loc/measure/FrequencyInfo;->mFrequencyInfoTdd:Lcom/android/supl/loc/measure/FrequencyInfoTdd;

    invoke-virtual {v4}, Lcom/android/supl/loc/measure/FrequencyInfoTdd;->getFrequencyInfoTdd()[B

    move-result-object v1

    .local v1, "bFrqequencyData":[B
    goto :goto_e
.end method
