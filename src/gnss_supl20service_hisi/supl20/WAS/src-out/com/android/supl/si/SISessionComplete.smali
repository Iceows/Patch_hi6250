.class public Lcom/android/supl/si/SISessionComplete;
.super Ljava/lang/Object;
.source "SISessionComplete.java"


# instance fields
.field public m_nSessionStatus:I

.field public m_usPlatformSessionId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readSISessionComplete(Ljava/io/DataInputStream;)Z
    .registers 4
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 74
    .local v0, "isReadSuccess":Z
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/supl/si/SISessionComplete;->m_nSessionStatus:I

    .line 75
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lcom/android/supl/si/SISessionComplete;->m_usPlatformSessionId:I

    .line 76
    const/4 v0, 0x1

    .line 78
    return v0
.end method
