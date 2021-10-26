.class public Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;
.super Ljava/lang/Object;
.source "SUPL_LPP_OTDOA_MEASUREMENT.java"


# instance fields
.field public bErrorInfoPresent:Z

.field public bValidMmtPresent:Z

.field public stLPPOTDOAError:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;

.field public stLPPOTDOASignalMmt:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->stLPPOTDOASignalMmt:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;

    .line 41
    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->stLPPOTDOAError:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;

    .line 47
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->bValidMmtPresent:Z

    .line 48
    new-instance v0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->stLPPOTDOASignalMmt:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;

    .line 49
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->bErrorInfoPresent:Z

    .line 50
    new-instance v0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->stLPPOTDOAError:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;

    .line 46
    return-void
.end method


# virtual methods
.method public getOTDOA_MEASUREMENT(I)[B
    .locals 8
    .param p1, "iMeasureType"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 57
    const/16 v4, 0xc

    .line 58
    .local v4, "iSize":I
    add-int/lit8 v4, v4, 0x4

    .line 60
    const/4 v2, 0x0

    .line 61
    .local v2, "bMMT":[B
    const/4 v1, 0x0

    .line 63
    .local v1, "bError":[B
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->bValidMmtPresent:Z

    if-eqz v5, :cond_1

    .line 64
    add-int/lit8 v4, v4, 0x4

    .line 65
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->bValidMmtPresent:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->stLPPOTDOASignalMmt:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;

    if-eqz v5, :cond_0

    .line 66
    iget-object v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->stLPPOTDOASignalMmt:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;

    invoke-virtual {v5}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_SIGNAL_MMT;->getSIGNAL_MMT()[B

    move-result-object v2

    .line 67
    .local v2, "bMMT":[B
    if-eqz v2, :cond_0

    .line 68
    array-length v5, v2

    add-int/lit8 v4, v5, 0x14

    .line 72
    .end local v2    # "bMMT":[B
    :cond_0
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->bErrorInfoPresent:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->stLPPOTDOAError:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;

    if-eqz v5, :cond_1

    .line 73
    iget-object v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->stLPPOTDOAError:Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;

    invoke-virtual {v5}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_ERRINFO;->getOTDOA_ERRINFO()[B

    move-result-object v1

    .line 74
    .local v1, "bError":[B
    if-eqz v1, :cond_1

    .line 75
    array-length v5, v1

    add-int/2addr v4, v5

    .line 79
    .end local v1    # "bError":[B
    :cond_1
    const/4 v3, 0x0

    .line 80
    .local v3, "iOffset":I
    new-array v0, v4, [B

    .line 81
    .local v0, "bData":[B
    add-int/lit8 v5, v4, -0x4

    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 83
    const/16 v5, 0x114

    .line 82
    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 84
    invoke-static {v0, v3, p1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 86
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->bValidMmtPresent:Z

    if-eqz v5, :cond_4

    move v5, v6

    :goto_0
    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 87
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->bValidMmtPresent:Z

    if-eqz v5, :cond_3

    .line 88
    if-eqz v2, :cond_2

    .line 89
    array-length v5, v2

    invoke-static {v2, v7, v0, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 90
    array-length v5, v2

    add-int/2addr v3, v5

    .line 93
    :cond_2
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->bErrorInfoPresent:Z

    if-eqz v5, :cond_5

    :goto_1
    invoke-static {v0, v3, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 94
    iget-boolean v5, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->bErrorInfoPresent:Z

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    .line 95
    array-length v5, v1

    invoke-static {v1, v7, v0, v3, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 96
    array-length v5, v1

    add-int/2addr v3, v5

    .line 99
    :cond_3
    return-object v0

    :cond_4
    move v5, v7

    .line 86
    goto :goto_0

    :cond_5
    move v6, v7

    .line 93
    goto :goto_1
.end method
