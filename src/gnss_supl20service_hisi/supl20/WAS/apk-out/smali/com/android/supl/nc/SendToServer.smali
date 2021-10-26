.class public Lcom/android/supl/nc/SendToServer;
.super Ljava/lang/Object;
.source "SendToServer.java"


# instance fields
.field public m_bPacket:[B

.field public m_iPacketSize:I

.field public m_iPacketType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lcom/android/supl/nc/SendToServer;->m_iPacketSize:I

    .line 43
    iput v0, p0, Lcom/android/supl/nc/SendToServer;->m_iPacketType:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 40
    return-void
.end method
