.class public Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;
.super Ljava/lang/Object;
.source "SUPL_LPP_EGCI.java"


# instance fields
.field public byValidMCCValues:B

.field public byValidMNCValues:B

.field public nMCC:[B

.field public nMNC:[B

.field public ulCellID:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->nMCC:[B

    .line 61
    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->nMNC:[B

    .line 71
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->byValidMCCValues:B

    .line 72
    iget-byte v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->byValidMCCValues:B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->nMCC:[B

    .line 73
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->byValidMNCValues:B

    .line 74
    iget-byte v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->byValidMNCValues:B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->nMNC:[B

    .line 75
    return-void
.end method


# virtual methods
.method public getLPP_EGCI()[B
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 79
    const/4 v2, 0x6

    .line 80
    .local v2, "iSize":I
    const/4 v1, 0x0

    .line 82
    .local v1, "iOffset":I
    iget-byte v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->byValidMCCValues:B

    mul-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v3, 0x6

    .line 84
    iget-byte v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->byValidMNCValues:B

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 86
    new-array v0, v2, [B

    .line 87
    .local v0, "bData":[B
    iget-byte v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->byValidMCCValues:B

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 88
    iget-byte v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->byValidMCCValues:B

    if-lez v3, :cond_28

    iget-object v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->nMCC:[B

    if-eqz v3, :cond_28

    .line 89
    iget-object v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->nMCC:[B

    iget-byte v4, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->byValidMCCValues:B

    invoke-static {v3, v5, v0, v1, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 90
    iget-byte v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->byValidMCCValues:B

    add-int/2addr v1, v3

    .line 92
    :cond_28
    iget-byte v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->byValidMNCValues:B

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 93
    iget-byte v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->byValidMNCValues:B

    if-lez v3, :cond_40

    iget-object v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->nMNC:[B

    if-eqz v3, :cond_40

    .line 94
    iget-object v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->nMNC:[B

    iget-byte v4, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->byValidMNCValues:B

    invoke-static {v3, v5, v0, v1, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 95
    iget-byte v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->byValidMNCValues:B

    add-int/2addr v1, v3

    .line 97
    :cond_40
    iget v3, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_EGCI;->ulCellID:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 98
    return-object v0
.end method
