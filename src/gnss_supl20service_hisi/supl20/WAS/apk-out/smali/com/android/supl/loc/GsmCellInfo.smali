.class public Lcom/android/supl/loc/GsmCellInfo;
.super Ljava/lang/Object;
.source "GsmCellInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/loc/GsmCellInfo$NMRElement;
    }
.end annotation


# static fields
.field private static GSM_PACKET_LEN:I = 0x0

.field private static final TA_DATA_LEN:I = 0x1


# instance fields
.field public isNMRPresent:Z

.field public isTAPresent:Z

.field public mElement:[Lcom/android/supl/loc/GsmCellInfo$NMRElement;

.field public m_iCellID:I

.field public m_iLAC:I

.field public m_iMCC:I

.field public m_iMNC:I

.field public m_iTA:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x10

    sput v0, Lcom/android/supl/loc/GsmCellInfo;->GSM_PACKET_LEN:I

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v1, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iCellID:I

    .line 52
    iput v1, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iMCC:I

    .line 57
    iput v1, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iMNC:I

    .line 62
    iput v1, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iLAC:I

    .line 67
    iput v1, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iTA:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/GsmCellInfo;->mElement:[Lcom/android/supl/loc/GsmCellInfo$NMRElement;

    .line 74
    iput-boolean v1, p0, Lcom/android/supl/loc/GsmCellInfo;->isNMRPresent:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/supl/loc/GsmCellInfo;->isTAPresent:Z

    .line 43
    return-void
.end method


# virtual methods
.method public getGSMInfo()[B
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "bData":[B
    const/4 v3, 0x0

    .line 85
    .local v3, "iNMRElementLen":I
    sget v2, Lcom/android/supl/loc/GsmCellInfo;->GSM_PACKET_LEN:I

    .line 86
    .local v2, "iBuffSize":I
    iget-boolean v6, p0, Lcom/android/supl/loc/GsmCellInfo;->isNMRPresent:Z

    if-eqz v6, :cond_0

    .line 87
    iget-object v6, p0, Lcom/android/supl/loc/GsmCellInfo;->mElement:[Lcom/android/supl/loc/GsmCellInfo$NMRElement;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/supl/loc/GsmCellInfo;->mElement:[Lcom/android/supl/loc/GsmCellInfo$NMRElement;

    array-length v6, v6

    if-lez v6, :cond_0

    .line 88
    iget-object v6, p0, Lcom/android/supl/loc/GsmCellInfo;->mElement:[Lcom/android/supl/loc/GsmCellInfo$NMRElement;

    array-length v3, v6

    .line 89
    mul-int/lit8 v6, v3, 0x4

    add-int/2addr v2, v6

    .line 92
    :cond_0
    iget-boolean v6, p0, Lcom/android/supl/loc/GsmCellInfo;->isTAPresent:Z

    if-eqz v6, :cond_1

    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 95
    :cond_1
    new-array v0, v2, [B

    .line 96
    .local v0, "bData":[B
    const/4 v5, 0x0

    .line 97
    .local v5, "offset":I
    iget v6, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iMCC:I

    invoke-static {v0, v5, v6}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 98
    iget v6, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iMNC:I

    invoke-static {v0, v5, v6}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 99
    iget v6, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iLAC:I

    invoke-static {v0, v5, v6}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 100
    iget v6, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iCellID:I

    invoke-static {v0, v5, v6}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v5

    .line 101
    iget-boolean v6, p0, Lcom/android/supl/loc/GsmCellInfo;->isNMRPresent:Z

    if-eqz v6, :cond_2

    .line 103
    if-lez v3, :cond_3

    .line 105
    invoke-static {v0, v5, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 106
    invoke-static {v0, v5, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v5

    .line 107
    iget-object v8, p0, Lcom/android/supl/loc/GsmCellInfo;->mElement:[Lcom/android/supl/loc/GsmCellInfo$NMRElement;

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_3

    aget-object v4, v8, v6

    .line 108
    .local v4, "nmr":Lcom/android/supl/loc/GsmCellInfo$NMRElement;
    invoke-virtual {v4}, Lcom/android/supl/loc/GsmCellInfo$NMRElement;->getNMRElementInfo()[B

    move-result-object v1

    .line 109
    .local v1, "bNMRData":[B
    const/4 v10, 0x4

    invoke-static {v1, v7, v0, v5, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 110
    add-int/lit8 v5, v5, 0x4

    .line 107
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "bNMRData":[B
    .end local v4    # "nmr":Lcom/android/supl/loc/GsmCellInfo$NMRElement;
    :cond_2
    invoke-static {v0, v5, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 116
    :cond_3
    iget-boolean v6, p0, Lcom/android/supl/loc/GsmCellInfo;->isTAPresent:Z

    if-eqz v6, :cond_4

    .line 117
    invoke-static {v0, v5, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 118
    iget v6, p0, Lcom/android/supl/loc/GsmCellInfo;->m_iTA:I

    invoke-static {v0, v5, v6}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v5

    .line 122
    :goto_1
    return-object v0

    .line 120
    :cond_4
    invoke-static {v0, v5, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    goto :goto_1
.end method
