.class public Lcom/android/supl/nc/SuplServiceMgr;
.super Ljava/lang/Object;
.source "SuplServiceMgr.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SuplServiceMgr"

.field private static mInstance:Lcom/android/supl/nc/SuplServiceMgr;


# instance fields
.field private mPcmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

.field private mScmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

.field private mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/android/supl/nc/SuplServiceMgr;->mInstance:Lcom/android/supl/nc/SuplServiceMgr;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mScmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 13
    iput-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mPcmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 15
    iput-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/supl/nc/SuplServiceMgr;
    .registers 3

    .prologue
    const-class v1, Lcom/android/supl/nc/SuplServiceMgr;

    monitor-enter v1

    .line 18
    :try_start_3
    sget-object v0, Lcom/android/supl/nc/SuplServiceMgr;->mInstance:Lcom/android/supl/nc/SuplServiceMgr;

    if-nez v0, :cond_17

    .line 19
    const-string/jumbo v0, "SuplServiceMgr"

    const-string/jumbo v2, "new one"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Lcom/android/supl/nc/SuplServiceMgr;

    invoke-direct {v0}, Lcom/android/supl/nc/SuplServiceMgr;-><init>()V

    sput-object v0, Lcom/android/supl/nc/SuplServiceMgr;->mInstance:Lcom/android/supl/nc/SuplServiceMgr;

    .line 22
    :cond_17
    sget-object v0, Lcom/android/supl/nc/SuplServiceMgr;->mInstance:Lcom/android/supl/nc/SuplServiceMgr;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addPcmPacket(Lcom/android/supl/commprocessor/FromServer;)V
    .registers 4
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mPcmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

    if-eqz v0, :cond_a

    .line 63
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mPcmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

    invoke-interface {v0, p1}, Lcom/android/supl/commprocessor/CommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    .line 67
    :goto_9
    return-void

    .line 65
    :cond_a
    const-string/jumbo v0, "SuplServiceMgr"

    const-string/jumbo v1, "mPcmCommandProcessor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public addScmPacket(Lcom/android/supl/commprocessor/FromServer;)V
    .registers 4
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mScmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

    if-eqz v0, :cond_a

    .line 74
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mScmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

    invoke-interface {v0, p1}, Lcom/android/supl/commprocessor/CommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    .line 78
    :goto_9
    return-void

    .line 76
    :cond_a
    const-string/jumbo v0, "SuplServiceMgr"

    const-string/jumbo v1, "mScmCommandProcessor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public getSUPLHILDInterface()V
    .registers 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;

    if-nez v0, :cond_1d

    .line 31
    const-string/jumbo v0, "SuplServiceMgr"

    const-string/jumbo v1, "getSUPLHILDInterface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Lcom/android/supl/SuplApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/supl/SUPLHIDLInterface;->createSUPLHIDLInterface(Landroid/content/Context;)Lcom/android/supl/SUPLHIDLInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;

    .line 33
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;

    invoke-virtual {v0, p0}, Lcom/android/supl/SUPLHIDLInterface;->setSuplServiceMgr(Lcom/android/supl/nc/SuplServiceMgr;)V

    .line 37
    :goto_1c
    return-void

    .line 35
    :cond_1d
    const-string/jumbo v0, "SuplServiceMgr"

    const-string/jumbo v1, "SUPLHIDL interface already exist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method public setPcmCommandProcessor(Lcom/android/supl/commprocessor/CommandProcessor;)V
    .registers 2
    .param p1, "cp"    # Lcom/android/supl/commprocessor/CommandProcessor;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/supl/nc/SuplServiceMgr;->mPcmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 56
    return-void
.end method

.method public setScmCommandProcessor(Lcom/android/supl/commprocessor/CommandProcessor;)V
    .registers 2
    .param p1, "cp"    # Lcom/android/supl/commprocessor/CommandProcessor;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/supl/nc/SuplServiceMgr;->mScmCommandProcessor:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 49
    return-void
.end method

.method public writeToPcm(Lcom/android/supl/nc/SendToServer;)V
    .registers 4
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;

    if-eqz v0, :cond_a

    .line 85
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;

    invoke-virtual {v0, p1}, Lcom/android/supl/SUPLHIDLInterface;->SendMsg2PCM(Lcom/android/supl/nc/SendToServer;)V

    .line 89
    :goto_9
    return-void

    .line 87
    :cond_a
    const-string/jumbo v0, "SuplServiceMgr"

    const-string/jumbo v1, "mSuplHidl is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public writeToScm(Lcom/android/supl/nc/SendToServer;)V
    .registers 4
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;

    if-eqz v0, :cond_a

    .line 96
    iget-object v0, p0, Lcom/android/supl/nc/SuplServiceMgr;->mSuplHidl:Lcom/android/supl/SUPLHIDLInterface;

    invoke-virtual {v0, p1}, Lcom/android/supl/SUPLHIDLInterface;->SendMsg2SCM(Lcom/android/supl/nc/SendToServer;)V

    .line 100
    :goto_9
    return-void

    .line 98
    :cond_a
    const-string/jumbo v0, "SuplServiceMgr"

    const-string/jumbo v1, "mSuplHidl is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
