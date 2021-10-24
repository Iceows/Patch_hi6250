.class public Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;
.super Ljava/lang/Object;
.source "SUPL_OTDOA_ModeSpecMeansTDD.java"


# instance fields
.field public bCellIDParamValid:Z

.field public lCellParamsID:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModeSpecMeansTDD()[B
    .registers 7

    .prologue
    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "iOffset":I
    const/16 v2, 0x8

    .line 55
    .local v2, "iSize":I
    new-array v0, v2, [B

    .line 56
    .local v0, "bData":[B
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;->bCellIDParamValid:Z

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    :goto_a
    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 57
    iget-wide v4, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;->lCellParamsID:J

    long-to-int v3, v4

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 59
    return-object v0

    .line 56
    :cond_16
    const/4 v3, 0x0

    goto :goto_a
.end method
