.class public Lcom/android/supl/SUPLHIDLInterface;
.super Ljava/lang/Object;
.source "SUPLHIDLInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;,
        Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SUPLHIDL"

.field private static mHiSuplCb:Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;

.field private static mSUPLHIDLInterface:Lcom/android/supl/SUPLHIDLInterface;

.field private static final sWatcherLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHidlDeathHandler:Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;

.field private mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

.field private final mObject:Ljava/lang/Object;

.field private mSuplServiceMgr:Lcom/android/supl/nc/SuplServiceMgr;


# direct methods
.method static synthetic -get0(Lcom/android/supl/SUPLHIDLInterface;)Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/SUPLHIDLInterface;

    .prologue
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mHidlDeathHandler:Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/supl/SUPLHIDLInterface;)Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/SUPLHIDLInterface;

    .prologue
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/supl/SUPLHIDLInterface;)Ljava/lang/Object;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/SUPLHIDLInterface;

    .prologue
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/supl/SUPLHIDLInterface;)Lcom/android/supl/nc/SuplServiceMgr;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/SUPLHIDLInterface;

    .prologue
    iget-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mSuplServiceMgr:Lcom/android/supl/nc/SuplServiceMgr;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/supl/SUPLHIDLInterface;Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;)Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/SUPLHIDLInterface;
    .param p1, "-value"    # Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    .prologue
    iput-object p1, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/supl/SUPLHIDLInterface;->sWatcherLock:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/android/supl/SUPLHIDLInterface;->mHiSuplCb:Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/supl/SUPLHIDLInterface;->mObject:Ljava/lang/Object;

    .line 32
    iput-object v1, p0, Lcom/android/supl/SUPLHIDLInterface;->mSuplServiceMgr:Lcom/android/supl/nc/SuplServiceMgr;

    .line 52
    iput-object p1, p0, Lcom/android/supl/SUPLHIDLInterface;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;

    invoke-direct {v0, p0}, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;-><init>(Lcom/android/supl/SUPLHIDLInterface;)V

    sput-object v0, Lcom/android/supl/SUPLHIDLInterface;->mHiSuplCb:Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;

    .line 54
    const-string/jumbo v0, "SUPLHIDL"

    const-string/jumbo v1, "getISuplService"

    invoke-static {v0, v1}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0}, Lcom/android/supl/SUPLHIDLInterface;->getISuplService()V

    .line 56
    return-void
.end method

.method public static createSUPLHIDLInterface(Landroid/content/Context;)Lcom/android/supl/SUPLHIDLInterface;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v1, Lcom/android/supl/SUPLHIDLInterface;->sWatcherLock:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_3
    sget-object v0, Lcom/android/supl/SUPLHIDLInterface;->mSUPLHIDLInterface:Lcom/android/supl/SUPLHIDLInterface;

    if-nez v0, :cond_17

    .line 40
    const-string/jumbo v0, "SUPLHIDL"

    const-string/jumbo v2, "new one"

    invoke-static {v0, v2}, Lcom/android/supl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Lcom/android/supl/SUPLHIDLInterface;

    invoke-direct {v0, p0}, Lcom/android/supl/SUPLHIDLInterface;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/supl/SUPLHIDLInterface;->mSUPLHIDLInterface:Lcom/android/supl/SUPLHIDLInterface;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    :cond_17
    monitor-exit v1

    .line 44
    sget-object v0, Lcom/android/supl/SUPLHIDLInterface;->mSUPLHIDLInterface:Lcom/android/supl/SUPLHIDLInterface;

    return-object v0

    .line 38
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getISuplService()V
    .registers 7

    .prologue
    monitor-enter p0

    .line 99
    :try_start_1
    iget-object v2, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    if-eqz v2, :cond_10

    .line 100
    const-string/jumbo v2, "SUPLHIDL"

    const-string/jumbo v3, "Get getISuplService service not null."

    invoke-static {v2, v3}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_67

    monitor-exit p0

    .line 101
    return-void

    .line 104
    :cond_10
    :try_start_10
    invoke-static {}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;->getService()Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    .line 105
    iget-object v2, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    if-eqz v2, :cond_3d

    .line 106
    const-string/jumbo v2, "SUPLHIDL"

    const-string/jumbo v3, "Get mISupl service success."

    invoke-static {v2, v3}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    sget-object v3, Lcom/android/supl/SUPLHIDLInterface;->mHiSuplCb:Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;

    invoke-interface {v2, v3}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;->setCallback(Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;)Z

    .line 108
    new-instance v2, Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;-><init>(Lcom/android/supl/SUPLHIDLInterface;Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;)V

    iput-object v2, p0, Lcom/android/supl/SUPLHIDLInterface;->mHidlDeathHandler:Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;

    .line 109
    iget-object v2, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    iget-object v3, p0, Lcom/android/supl/SUPLHIDLInterface;->mHidlDeathHandler:Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_3b} :catch_47
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3b} :catch_6a
    .catchall {:try_start_10 .. :try_end_3b} :catchall_67

    :goto_3b
    monitor-exit p0

    .line 118
    return-void

    .line 111
    :cond_3d
    :try_start_3d
    const-string/jumbo v2, "SUPLHIDL"

    const-string/jumbo v3, "mISupl return null"

    invoke-static {v2, v3}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_46} :catch_47
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_46} :catch_6a
    .catchall {:try_start_3d .. :try_end_46} :catchall_67

    goto :goto_3b

    .line 113
    :catch_47
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_48
    const-string/jumbo v2, "SUPLHIDL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception getting ISupl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/supl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_48 .. :try_end_66} :catchall_67

    goto :goto_3b

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_67
    move-exception v2

    monitor-exit p0

    throw v2

    .line 115
    :catch_6a
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6b
    const-string/jumbo v2, "SUPLHIDL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/supl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_6b .. :try_end_89} :catchall_67

    goto :goto_3b
.end method


# virtual methods
.method public declared-synchronized SendMsg2PCM(Lcom/android/supl/nc/SendToServer;)V
    .registers 9
    .param p1, "msg"    # Lcom/android/supl/nc/SendToServer;

    .prologue
    monitor-enter p0

    .line 60
    if-eqz p1, :cond_3e

    :try_start_3
    iget-object v2, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    if-eqz v2, :cond_3e

    iget v2, p1, Lcom/android/supl/nc/SendToServer;->m_iPacketSize:I

    const/16 v3, 0x4000

    if-ge v2, v3, :cond_3e

    .line 61
    new-instance v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;

    invoke-direct {v0}, Lvendor/huawei/hardware/hisupl/V1_0/client2server;-><init>()V

    .line 62
    .local v0, "c2s":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    iget-object v2, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    array-length v2, v2

    iput v2, v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->packetSize:I

    .line 63
    iget-object v2, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    iget-object v3, v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->c2s_packet:[B

    iget v4, v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->packetSize:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v3, v6, v4}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_3b

    .line 65
    :try_start_22
    iget-object v2, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    if-eqz v2, :cond_34

    .line 66
    iget-object v2, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    invoke-interface {v2, v0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;->suplPlatformServiceSend2server(Lvendor/huawei/hardware/hisupl/V1_0/client2server;)Z

    .line 67
    const-string/jumbo v2, "SUPLHIDL"

    const-string/jumbo v3, "suplPlatformServiceSend2server send."

    invoke-static {v2, v3}, Lcom/android/supl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_34} :catch_36
    .catchall {:try_start_22 .. :try_end_34} :catchall_3b

    .end local v0    # "c2s":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    :cond_34
    :goto_34
    monitor-exit p0

    .line 76
    return-void

    .line 69
    .restart local v0    # "c2s":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    :catch_36
    move-exception v1

    .line 70
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_37
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_34

    .end local v0    # "c2s":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_3b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 74
    :cond_3e
    :try_start_3e
    const-string/jumbo v2, "SUPLHIDL"

    const-string/jumbo v3, "msg is null or msg size too big"

    invoke-static {v2, v3}, Lcom/android/supl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_3b

    goto :goto_34
.end method

.method public declared-synchronized SendMsg2SCM(Lcom/android/supl/nc/SendToServer;)V
    .registers 9
    .param p1, "msg"    # Lcom/android/supl/nc/SendToServer;

    .prologue
    monitor-enter p0

    .line 80
    if-eqz p1, :cond_3f

    :try_start_3
    iget-object v2, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    if-eqz v2, :cond_3f

    iget-object v2, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    array-length v2, v2

    const/16 v3, 0x4000

    if-ge v2, v3, :cond_3f

    .line 81
    new-instance v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;

    invoke-direct {v0}, Lvendor/huawei/hardware/hisupl/V1_0/client2server;-><init>()V

    .line 82
    .local v0, "c2s":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    iget-object v2, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    array-length v2, v2

    iput v2, v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->packetSize:I

    .line 83
    iget-object v2, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    iget-object v3, v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->c2s_packet:[B

    iget v4, v0, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->packetSize:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v3, v6, v4}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_3c

    .line 85
    :try_start_23
    iget-object v2, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    if-eqz v2, :cond_35

    .line 86
    iget-object v2, p0, Lcom/android/supl/SUPLHIDLInterface;->mISupl:Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    invoke-interface {v2, v0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;->suplCommServiceSend2server(Lvendor/huawei/hardware/hisupl/V1_0/client2server;)Z

    .line 87
    const-string/jumbo v2, "SUPLHIDL"

    const-string/jumbo v3, "suplCommServiceSend2server send."

    invoke-static {v2, v3}, Lcom/android/supl/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_35} :catch_37
    .catchall {:try_start_23 .. :try_end_35} :catchall_3c

    .end local v0    # "c2s":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    :cond_35
    :goto_35
    monitor-exit p0

    .line 96
    return-void

    .line 89
    .restart local v0    # "c2s":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    :catch_37
    move-exception v1

    .line 90
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_38
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_35

    .end local v0    # "c2s":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_3c
    move-exception v2

    monitor-exit p0

    throw v2

    .line 94
    :cond_3f
    :try_start_3f
    const-string/jumbo v2, "SUPLHIDL"

    const-string/jumbo v3, "msg is null or msg size too big"

    invoke-static {v2, v3}, Lcom/android/supl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_3c

    goto :goto_35
.end method

.method public setSuplServiceMgr(Lcom/android/supl/nc/SuplServiceMgr;)V
    .registers 2
    .param p1, "mgr"    # Lcom/android/supl/nc/SuplServiceMgr;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/supl/SUPLHIDLInterface;->mSuplServiceMgr:Lcom/android/supl/nc/SuplServiceMgr;

    .line 49
    return-void
.end method
