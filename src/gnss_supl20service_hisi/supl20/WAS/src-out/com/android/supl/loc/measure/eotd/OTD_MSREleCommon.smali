.class public Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;
.super Ljava/lang/Object;
.source "OTD_MSREleCommon.java"


# instance fields
.field public ucNumOfMeasurements:S

.field public ucRefQuality:S

.field public ucReferenceTimeSlot:S

.field public ucStdResolution:S

.field public usRefFrameNumber:I

.field public usTACorrection:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOTSMSREle()[B
    .registers 5

    .prologue
    .line 45
    const/16 v2, 0x8

    .line 46
    .local v2, "iSize":I
    const/4 v1, 0x0

    .line 47
    .local v1, "iOffset":I
    new-array v0, v2, [B

    .line 48
    .local v0, "bData":[B
    iget v3, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->usRefFrameNumber:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 49
    iget-short v3, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->ucReferenceTimeSlot:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 50
    iget-short v3, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->ucRefQuality:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 51
    iget-short v3, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->ucNumOfMeasurements:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 52
    iget-short v3, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->ucStdResolution:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 53
    iget v3, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->usTACorrection:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 54
    return-object v0
.end method
