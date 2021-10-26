.class public Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;
.super Ljava/lang/Object;
.source "SUPL_LPP_OTDOA_MMT_QUALITY.java"


# instance fields
.field public bNumberofSamplesPresent:Z

.field public byErrorResolution:B

.field public byErrorValue:B

.field public byNumberofSamples:B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-byte v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;->byErrorResolution:B

    .line 97
    iput-byte v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;->byErrorValue:B

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;->bNumberofSamplesPresent:Z

    .line 99
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;->byNumberofSamples:B

    .line 95
    return-void
.end method


# virtual methods
.method public getOTDOA_MMT_QUALITY()[B
    .registers 5

    .prologue
    .line 104
    const/4 v2, 0x6

    .line 106
    .local v2, "iSize":I
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;->bNumberofSamplesPresent:Z

    if-eqz v3, :cond_6

    .line 107
    const/4 v2, 0x7

    .line 109
    :cond_6
    const/4 v1, 0x0

    .line 110
    .local v1, "iOffset":I
    new-array v0, v2, [B

    .line 111
    .local v0, "bData":[B
    iget-byte v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;->byErrorResolution:B

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 112
    iget-byte v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;->byErrorValue:B

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 113
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;->bNumberofSamplesPresent:Z

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    :goto_1a
    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 114
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;->bNumberofSamplesPresent:Z

    if-eqz v3, :cond_28

    .line 115
    iget-byte v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MMT_QUALITY;->byNumberofSamples:B

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 117
    :cond_28
    return-object v0

    .line 113
    :cond_29
    const/4 v3, 0x0

    goto :goto_1a
.end method
