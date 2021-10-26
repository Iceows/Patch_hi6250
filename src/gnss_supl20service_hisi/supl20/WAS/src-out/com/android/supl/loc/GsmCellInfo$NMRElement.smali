.class public Lcom/android/supl/loc/GsmCellInfo$NMRElement;
.super Ljava/lang/Object;
.source "GsmCellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/GsmCellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NMRElement"
.end annotation


# static fields
.field private static final NMR_ELEMENT_LEN:I = 0x4


# instance fields
.field private m_sARFCN:S

.field private m_sBSIC:S

.field private m_sRxLev:S

.field final synthetic this$0:Lcom/android/supl/loc/GsmCellInfo;


# direct methods
.method public constructor <init>(Lcom/android/supl/loc/GsmCellInfo;SSS)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/supl/loc/GsmCellInfo;
    .param p2, "m_sARFCN"    # S
    .param p3, "m_sBSIC"    # S
    .param p4, "m_sRxLev"    # S

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/supl/loc/GsmCellInfo$NMRElement;->this$0:Lcom/android/supl/loc/GsmCellInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-short p2, p0, Lcom/android/supl/loc/GsmCellInfo$NMRElement;->m_sARFCN:S

    .line 136
    iput-short p3, p0, Lcom/android/supl/loc/GsmCellInfo$NMRElement;->m_sBSIC:S

    .line 137
    iput-short p4, p0, Lcom/android/supl/loc/GsmCellInfo$NMRElement;->m_sRxLev:S

    .line 134
    return-void
.end method


# virtual methods
.method public getNMRElementInfo()[B
    .registers 4

    .prologue
    .line 142
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 143
    .local v0, "bData":[B
    const/4 v1, 0x0

    .line 144
    .local v1, "offset":I
    iget-short v2, p0, Lcom/android/supl/loc/GsmCellInfo$NMRElement;->m_sARFCN:S

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 145
    iget-short v2, p0, Lcom/android/supl/loc/GsmCellInfo$NMRElement;->m_sBSIC:S

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 146
    iget-short v2, p0, Lcom/android/supl/loc/GsmCellInfo$NMRElement;->m_sRxLev:S

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 147
    return-object v0
.end method
