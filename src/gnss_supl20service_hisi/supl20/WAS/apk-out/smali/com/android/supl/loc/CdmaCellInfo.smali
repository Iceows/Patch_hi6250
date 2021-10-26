.class public Lcom/android/supl/loc/CdmaCellInfo;
.super Ljava/lang/Object;
.source "CdmaCellInfo.java"


# static fields
.field private static final CDMA_PACKET_LEN:I = 0x16


# instance fields
.field public iSeconds:I

.field public m_iBASELAT:I

.field public m_iBASELONG:I

.field public m_sBASEID:S

.field public m_sNID:S

.field public m_sPN:S

.field public m_sSID:S

.field public m_sWeekNumber:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-short v0, p0, Lcom/android/supl/loc/CdmaCellInfo;->m_sNID:S

    .line 54
    iput-short v0, p0, Lcom/android/supl/loc/CdmaCellInfo;->m_sSID:S

    .line 59
    iput-short v0, p0, Lcom/android/supl/loc/CdmaCellInfo;->m_sBASEID:S

    .line 64
    iput v0, p0, Lcom/android/supl/loc/CdmaCellInfo;->m_iBASELAT:I

    .line 69
    iput v0, p0, Lcom/android/supl/loc/CdmaCellInfo;->m_iBASELONG:I

    .line 74
    iput-short v0, p0, Lcom/android/supl/loc/CdmaCellInfo;->m_sPN:S

    .line 79
    iput-short v0, p0, Lcom/android/supl/loc/CdmaCellInfo;->m_sWeekNumber:S

    .line 84
    iput v0, p0, Lcom/android/supl/loc/CdmaCellInfo;->iSeconds:I

    .line 44
    return-void
.end method


# virtual methods
.method public getCDMAInfo()[B
    .locals 3

    .prologue
    .line 89
    const/16 v2, 0x16

    new-array v0, v2, [B

    .line 90
    .local v0, "bData":[B
    const/4 v1, 0x0

    .line 91
    .local v1, "offset":I
    iget-short v2, p0, Lcom/android/supl/loc/CdmaCellInfo;->m_sNID:S

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 92
    iget-short v2, p0, Lcom/android/supl/loc/CdmaCellInfo;->m_sSID:S

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 93
    iget-short v2, p0, Lcom/android/supl/loc/CdmaCellInfo;->m_sBASEID:S

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 94
    iget v2, p0, Lcom/android/supl/loc/CdmaCellInfo;->m_iBASELAT:I

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 95
    iget v2, p0, Lcom/android/supl/loc/CdmaCellInfo;->m_iBASELONG:I

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 96
    iget-short v2, p0, Lcom/android/supl/loc/CdmaCellInfo;->m_sPN:S

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 97
    iget-short v2, p0, Lcom/android/supl/loc/CdmaCellInfo;->m_sWeekNumber:S

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 98
    iget v2, p0, Lcom/android/supl/loc/CdmaCellInfo;->iSeconds:I

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 99
    return-object v0
.end method
