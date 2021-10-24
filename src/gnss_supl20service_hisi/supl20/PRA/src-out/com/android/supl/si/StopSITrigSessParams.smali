.class public Lcom/android/supl/si/StopSITrigSessParams;
.super Ljava/lang/Object;
.source "StopSITrigSessParams.java"


# static fields
.field public static final MSG_PCM_STOP_SI:I = 0x10f


# instance fields
.field public iSessionID:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "iSessionID"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/si/StopSITrigSessParams;->iSessionID:I

    .line 56
    iput p1, p0, Lcom/android/supl/si/StopSITrigSessParams;->iSessionID:I

    .line 57
    return-void
.end method


# virtual methods
.method public getStopSIInfo()[B
    .registers 6

    .prologue
    .line 60
    const/4 v2, 0x6

    .line 62
    .local v2, "iSize":I
    const/4 v1, 0x0

    .line 63
    .local v1, "iOffset":I
    const/16 v3, 0xa

    new-array v0, v3, [B

    .line 64
    .local v0, "bData":[B
    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 65
    const/16 v3, 0x10f

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 66
    iget v3, p0, Lcom/android/supl/si/StopSITrigSessParams;->iSessionID:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 67
    add-int/lit8 v3, v1, -0x4

    .line 60
    const/4 v4, 0x6

    .line 67
    if-eq v3, v4, :cond_23

    .line 68
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v4, "invalid length in  getStopSIInfo"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    :cond_23
    return-object v0
.end method
