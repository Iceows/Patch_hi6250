.class public Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;
.super Ljava/lang/Object;
.source "SUPL_OTDOA_ModeSpecMeasFDD.java"


# instance fields
.field public bPrimaryScramblingCodePresent:Z

.field public bRxTxTimeDiffValid:Z

.field public lPrimaryScramblingCode:J

.field public lRxTxTimeDiffType2:J

.field public ucNoOfMeasurements:S

.field public ucStdDevOTDOAMeas:S

.field public ucStdValue:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModeSpecMeasFDD()[B
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bPrimaryScramblingCodePresent:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    .line 93
    :goto_0
    add-int/lit8 v3, v3, 0xc

    add-int/lit8 v2, v3, 0x3

    .line 96
    .local v2, "iSize":I
    const/4 v1, 0x0

    .line 97
    .local v1, "iOffset":I
    new-array v0, v2, [B

    .line 98
    .local v0, "bData":[B
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bPrimaryScramblingCodePresent:Z

    if-eqz v3, :cond_2

    move v3, v5

    :goto_1
    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 99
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bPrimaryScramblingCodePresent:Z

    if-eqz v3, :cond_0

    .line 100
    iget-wide v6, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->lPrimaryScramblingCode:J

    long-to-int v3, v6

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 102
    :cond_0
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bRxTxTimeDiffValid:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-static {v0, v1, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 104
    iget-wide v4, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->lRxTxTimeDiffType2:J

    long-to-int v3, v4

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 105
    iget-short v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucStdValue:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 106
    iget-short v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucNoOfMeasurements:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 107
    iget-short v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucStdDevOTDOAMeas:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 108
    return-object v0

    .end local v0    # "bData":[B
    .end local v1    # "iOffset":I
    .end local v2    # "iSize":I
    :cond_1
    move v3, v4

    .line 94
    goto :goto_0

    .restart local v0    # "bData":[B
    .restart local v1    # "iOffset":I
    .restart local v2    # "iSize":I
    :cond_2
    move v3, v4

    .line 98
    goto :goto_1

    :cond_3
    move v5, v4

    .line 102
    goto :goto_2
.end method
