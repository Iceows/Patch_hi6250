.class public Lcom/android/supl/nc/NetworkController;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/nc/NetworkController$1;
    }
.end annotation


# static fields
.field private static final CONNECTION_CLOSE_THREAD:Ljava/lang/String; = "Connection close thread"

.field public static final CONNECTION_TYPE_TLS:I = 0x1

.field public static final CONNECTION_TYPE_TLS_PKS:I = 0x4

.field public static final CONNECTION_TYPE_TLSv1_1:I = 0x2

.field public static final CONNECTION_TYPE_TLSv1_2:I = 0x3

.field public static final CONNECTION_TYPE_UDP:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_NC"

.field public static final STOP_WRITE_THREAD:I = 0x65

.field private static keyStore:Ljava/security/KeyStore; = null

.field private static keyStoreList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/KeyStore;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_iBufferSize:I = 0xa


# instance fields
.field private MAX_SUPL_NETWORK_REQUEST_TIMEOUT:I

.field agpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private cp:Lcom/android/supl/commprocessor/CommandProcessor;

.field private deque:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/supl/nc/SendToServer;",
            ">;"
        }
    .end annotation
.end field

.field eSlpList:[Ljava/lang/String;

.field private iConnType:I

.field private iConnectionCount:I

.field private iFailerStatus:I

.field private iNetWorkID:I

.field private isConnectionError:Z

.field private isSCM:Z

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mNeedEmergencyApn:Z

.field private final mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private m_CilentSocket:Ljava/net/Socket;

.field private m_iConnTimeOut:I

.field private m_iHandShakeTimeOut:I

.field private m_iServerPortNo:I

.field private m_localSocket:Landroid/net/LocalSocket;

.field private m_open_supl_apn_ok:Z

.field private m_stReadThreadName:Ljava/lang/String;

.field private m_stServerIPAddr:Ljava/lang/String;

.field private m_stWriteThreadName:Ljava/lang/String;

.field private networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

.field public final objLock:Ljava/lang/Object;

.field private readerThread:Lcom/android/supl/nc/ReaderThread;

.field private server_conn_retry:I

.field private server_conn_timeout:I

.field private ssl_Context:Ljavax/net/ssl/SSLContext;

.field private writerThread:Lcom/android/supl/nc/WriterThread;


# direct methods
.method static synthetic -get0(Lcom/android/supl/nc/NetworkController;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/nc/NetworkController;

    .prologue
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/supl/nc/NetworkController;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/nc/NetworkController;

    .prologue
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/supl/nc/NetworkController;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/nc/NetworkController;

    .prologue
    iget-boolean v0, p0, Lcom/android/supl/nc/NetworkController;->mNeedEmergencyApn:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/nc/NetworkController;

    .prologue
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/nc/NetworkController;

    .prologue
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/supl/nc/NetworkController;Z)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/nc/NetworkController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/supl/nc/NetworkController;->m_open_supl_apn_ok:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/supl/nc/NetworkController;)V
    .registers 1
    .param p0, "-this"    # Lcom/android/supl/nc/NetworkController;

    .prologue
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->reconnectAgain()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x0

    sput-object v0, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/supl/nc/NetworkController;->keyStoreList:Ljava/util/List;

    .line 97
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILcom/android/supl/commprocessor/CommandProcessor;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .param p1, "iSecure"    # I
    .param p2, "m_stServerIPAddr"    # Ljava/lang/String;
    .param p3, "m_iServerPortNo"    # I
    .param p4, "cp"    # Lcom/android/supl/commprocessor/CommandProcessor;
    .param p5, "m_stReadThreadName"    # Ljava/lang/String;
    .param p6, "m_stWriteThreadName"    # Ljava/lang/String;
    .param p7, "isSCM"    # Z

    .prologue
    const/16 v4, 0x7d0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v2, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    .line 113
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/supl/nc/NetworkController;->server_conn_timeout:I

    .line 115
    iput v3, p0, Lcom/android/supl/nc/NetworkController;->server_conn_retry:I

    .line 117
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    .line 119
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_localSocket:Landroid/net/LocalSocket;

    .line 121
    const/16 v0, 0x1c6b

    iput v0, p0, Lcom/android/supl/nc/NetworkController;->m_iServerPortNo:I

    .line 123
    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->m_stServerIPAddr:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    .line 129
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    .line 131
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->deque:Ljava/util/concurrent/BlockingQueue;

    .line 133
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->ssl_Context:Ljavax/net/ssl/SSLContext;

    .line 135
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    .line 139
    iput v2, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    .line 143
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_stReadThreadName:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_stWriteThreadName:Ljava/lang/String;

    .line 149
    iput-boolean v2, p0, Lcom/android/supl/nc/NetworkController;->isConnectionError:Z

    .line 151
    iput v2, p0, Lcom/android/supl/nc/NetworkController;->iFailerStatus:I

    .line 156
    iput-boolean v2, p0, Lcom/android/supl/nc/NetworkController;->isSCM:Z

    .line 158
    iput v4, p0, Lcom/android/supl/nc/NetworkController;->m_iHandShakeTimeOut:I

    .line 160
    iput v4, p0, Lcom/android/supl/nc/NetworkController;->m_iConnTimeOut:I

    .line 167
    const v0, 0xea60

    iput v0, p0, Lcom/android/supl/nc/NetworkController;->MAX_SUPL_NETWORK_REQUEST_TIMEOUT:I

    .line 168
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 169
    iput-boolean v2, p0, Lcom/android/supl/nc/NetworkController;->m_open_supl_apn_ok:Z

    .line 170
    iput-boolean v2, p0, Lcom/android/supl/nc/NetworkController;->mNeedEmergencyApn:Z

    .line 755
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    .line 1030
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 1111
    new-instance v0, Lcom/android/supl/nc/NetworkController$1;

    invoke-direct {v0, p0}, Lcom/android/supl/nc/NetworkController$1;-><init>(Lcom/android/supl/nc/NetworkController;)V

    .line 1110
    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1195
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "e-slp.e911.kddi.ne.jp"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->eSlpList:[Ljava/lang/String;

    .line 174
    const-string/jumbo v0, "SUPL20_NC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iConnType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput p1, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    .line 176
    iput-object p2, p0, Lcom/android/supl/nc/NetworkController;->m_stServerIPAddr:Ljava/lang/String;

    .line 177
    iput p3, p0, Lcom/android/supl/nc/NetworkController;->m_iServerPortNo:I

    .line 178
    iput-object p4, p0, Lcom/android/supl/nc/NetworkController;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 179
    iput-object p5, p0, Lcom/android/supl/nc/NetworkController;->m_stReadThreadName:Ljava/lang/String;

    .line 180
    iput-object p6, p0, Lcom/android/supl/nc/NetworkController;->m_stWriteThreadName:Ljava/lang/String;

    .line 181
    iput-boolean p7, p0, Lcom/android/supl/nc/NetworkController;->isSCM:Z

    .line 182
    invoke-static {}, Lcom/android/supl/SuplApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->mContext:Landroid/content/Context;

    .line 183
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 184
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->switchApnEnabled()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 185
    invoke-direct {p0, p2}, Lcom/android/supl/nc/NetworkController;->checkIfNeedEmergencyApn(Ljava/lang/String;)V

    .line 187
    :cond_a6
    return-void
.end method

.method private checkIfNeedEmergencyApn(Ljava/lang/String;)V
    .registers 8
    .param p1, "serverName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1197
    const-string/jumbo v1, "SUPL20_NC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkIfNeedEmergencyApn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->eSlpList:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_1f
    if-ge v1, v4, :cond_39

    aget-object v0, v3, v1

    .line 1199
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1200
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v2, "eslp match, need to open emergency apn."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/supl/nc/NetworkController;->mNeedEmergencyApn:Z

    .line 1202
    return-void

    .line 1198
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1205
    .end local v0    # "s":Ljava/lang/String;
    :cond_39
    iput-boolean v2, p0, Lcom/android/supl/nc/NetworkController;->mNeedEmergencyApn:Z

    .line 1206
    return-void
.end method

.method private checkSuplApnState()Z
    .registers 6

    .prologue
    .line 1071
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0x28

    if-ge v1, v2, :cond_35

    .line 1072
    const-string/jumbo v2, "SUPL20_NC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkSuplApnState wait for open supl apn ok : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-boolean v2, p0, Lcom/android/supl/nc/NetworkController;->m_open_supl_apn_ok:Z

    if-eqz v2, :cond_28

    .line 1075
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->setRouting()V

    .line 1076
    const/4 v2, 0x1

    return v2

    .line 1079
    :cond_28
    const-wide/16 v2, 0x1f4

    :try_start_2a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2d} :catch_30

    .line 1071
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1080
    :catch_30
    move-exception v0

    .line 1081
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    .line 1084
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_35
    const/4 v2, 0x0

    return v2
.end method

.method private createSSLContext()Ljavax/net/ssl/SSLContext;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_1f

    .line 391
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "Creating TLSv1 Context"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string/jumbo v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 431
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-virtual {v0, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 432
    return-object v0

    .line 394
    .restart local v0    # "context":Ljavax/net/ssl/SSLContext;
    :cond_1f
    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    const/4 v3, 0x2

    if-ne v3, v2, :cond_49

    .line 398
    :try_start_24
    const-string/jumbo v2, "TLSv1.1"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 399
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "TLSv1.1 Context created succesfully"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_34} :catch_35

    goto :goto_17

    .line 402
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :catch_35
    move-exception v1

    .line 403
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    if-nez v0, :cond_17

    .line 405
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "TLSv1.1 Context creation failed , so falling back to TLSv1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string/jumbo v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .restart local v0    # "context":Ljavax/net/ssl/SSLContext;
    goto :goto_17

    .line 410
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    :cond_49
    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    const/4 v3, 0x3

    if-ne v3, v2, :cond_73

    .line 414
    :try_start_4e
    const-string/jumbo v2, "TLSv1.2"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 415
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "TLSv1.2 Context created succesfully"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4e .. :try_end_5e} :catch_5f

    goto :goto_17

    .line 418
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :catch_5f
    move-exception v1

    .line 419
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    if-nez v0, :cond_17

    .line 421
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "TLSv1.2 Context creation failed , so falling back to TLSv1.1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string/jumbo v2, "TLSv1.1"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .restart local v0    # "context":Ljavax/net/ssl/SSLContext;
    goto :goto_17

    .line 428
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    :cond_73
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "Valid CONNECTION_TYPE not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-object v0
.end method

.method private createSSLSocket()Ljava/net/Socket;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/net/ConnectException;,
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 444
    .local v3, "sslContext":Ljavax/net/ssl/SSLContext;
    if-nez v3, :cond_28

    .line 446
    const-string/jumbo v5, "SUPL20_NC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The SSLSocket connection failed with the TLS connection type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v5, Ljava/net/ConnectException;

    invoke-direct {v5}, Ljava/net/ConnectException;-><init>()V

    throw v5

    .line 449
    :cond_28
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 450
    .local v2, "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    new-instance v4, Lcom/android/supl/nc/MySSLSocketFactory;

    invoke-direct {v4, v2}, Lcom/android/supl/nc/MySSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 452
    .local v4, "sslSocketFactory":Lcom/android/supl/nc/MySSLSocketFactory;
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 453
    .local v1, "socket":Ljava/net/Socket;
    const/4 v0, 0x0

    .line 454
    .local v0, "remoteAddress":Ljava/net/SocketAddress;
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/supl/config/ConfigManager;->switchApnEnabled()Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 456
    new-instance v0, Ljava/net/InetSocketAddress;

    .end local v0    # "remoteAddress":Ljava/net/SocketAddress;
    iget-object v5, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getPortNumber()I

    move-result v6

    invoke-direct {v0, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 463
    .local v0, "remoteAddress":Ljava/net/SocketAddress;
    :goto_4c
    iget v5, p0, Lcom/android/supl/nc/NetworkController;->m_iConnTimeOut:I

    invoke-virtual {v1, v0, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 465
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getPortNumber()I

    move-result v6

    const/4 v7, 0x1

    .line 464
    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/android/supl/nc/MySSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v5

    return-object v5

    .line 460
    .local v0, "remoteAddress":Ljava/net/SocketAddress;
    :cond_5f
    new-instance v0, Ljava/net/InetSocketAddress;

    .end local v0    # "remoteAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getPortNumber()I

    move-result v6

    invoke-direct {v0, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .local v0, "remoteAddress":Ljava/net/SocketAddress;
    goto :goto_4c
.end method

.method private getKeyStore()Ljava/security/KeyStore;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 245
    sget-object v8, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    if-eqz v8, :cond_8

    .line 246
    sget-object v8, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    return-object v8

    .line 249
    :cond_8
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    .line 250
    .local v0, "configManager":Lcom/android/supl/config/ConfigManager;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getPrivateKeyStore()Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, "stKeyStorePath":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getPrivateKeyStoreConv()Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "stKeyStoreConv":Ljava/lang/String;
    if-nez v7, :cond_20

    .line 254
    const-string/jumbo v8, "SUPL20_NC"

    const-string/jumbo v9, "stKeyStorePath == null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-object v11

    .line 258
    :cond_20
    if-nez v6, :cond_2c

    .line 259
    const-string/jumbo v8, "SUPL20_NC"

    const-string/jumbo v9, "stKeyStoreConv == null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-object v11

    .line 263
    :cond_2c
    const/4 v3, 0x0

    .line 264
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 266
    .local v5, "ks":Ljava/security/KeyStore;
    :try_start_2e
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_86
    .catch Ljava/security/GeneralSecurityException; {:try_start_2e .. :try_end_33} :catch_69
    .catchall {:try_start_2e .. :try_end_33} :catchall_a1

    .line 267
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_33
    const-string/jumbo v8, "BKS"

    const-string/jumbo v9, "BC"

    invoke-static {v8, v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 268
    .local v5, "ks":Ljava/security/KeyStore;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 269
    sput-object v5, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_46} :catch_b8
    .catch Ljava/security/GeneralSecurityException; {:try_start_33 .. :try_end_46} :catch_bb
    .catchall {:try_start_33 .. :try_end_46} :catchall_b5

    .line 275
    if-eqz v4, :cond_4b

    .line 276
    :try_start_48
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_5c

    :cond_4b
    :goto_4b
    move-object v3, v4

    .line 281
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "ks":Ljava/security/KeyStore;
    :cond_4c
    :goto_4c
    sget-object v8, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    if-eqz v8, :cond_59

    .line 282
    const-string/jumbo v8, "SUPL20_NC"

    const-string/jumbo v9, "Successfully loaded Keystore"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_59
    sget-object v8, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    return-object v8

    .line 277
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "ks":Ljava/security/KeyStore;
    :catch_5c
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v8, "SUPL20_NC"

    const-string/jumbo v9, "Error closing keystore file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v11, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    goto :goto_4b

    .line 272
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .local v5, "ks":Ljava/security/KeyStore;
    :catch_69
    move-exception v2

    .line 273
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "ks":Ljava/security/KeyStore;
    .local v2, "e":Ljava/security/GeneralSecurityException;
    :goto_6a
    :try_start_6a
    const-string/jumbo v8, "SUPL20_NC"

    const-string/jumbo v9, "Error Loading keystore: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_a1

    .line 275
    if-eqz v3, :cond_4c

    .line 276
    :try_start_75
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_4c

    .line 277
    :catch_79
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "SUPL20_NC"

    const-string/jumbo v9, "Error closing keystore file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :goto_83
    sput-object v11, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    goto :goto_4c

    .line 270
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "ks":Ljava/security/KeyStore;
    :catch_86
    move-exception v1

    .line 271
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "ks":Ljava/security/KeyStore;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_87
    :try_start_87
    const-string/jumbo v8, "SUPL20_NC"

    const-string/jumbo v9, "Error Loading keystore: "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_a1

    .line 275
    if-eqz v3, :cond_4c

    .line 276
    :try_start_92
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_4c

    .line 277
    :catch_96
    move-exception v1

    const-string/jumbo v8, "SUPL20_NC"

    const-string/jumbo v9, "Error closing keystore file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 274
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_a1
    move-exception v8

    .line 275
    :goto_a2
    if-eqz v3, :cond_a7

    .line 276
    :try_start_a4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    .line 274
    :cond_a7
    :goto_a7
    throw v8

    .line 277
    :catch_a8
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "SUPL20_NC"

    const-string/jumbo v10, "Error closing keystore file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v11, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    goto :goto_a7

    .line 274
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_b5
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    goto :goto_a2

    .line 270
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_b8
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_87

    .line 272
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_bb
    move-exception v2

    .restart local v2    # "e":Ljava/security/GeneralSecurityException;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_6a
.end method

.method private getKeyStoreAll()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/KeyStore;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 322
    sget-object v7, Lcom/android/supl/nc/NetworkController;->keyStoreList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    .line 323
    sget-object v7, Lcom/android/supl/nc/NetworkController;->keyStoreList:Ljava/util/List;

    return-object v7

    .line 326
    :cond_c
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    .line 327
    .local v0, "configManager":Lcom/android/supl/config/ConfigManager;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getPrivateKeyStore()Ljava/lang/String;

    move-result-object v6

    .line 328
    .local v6, "stKeyStorePath":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getPrivateKeyStoreConv()Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, "stKeyStoreConv":Ljava/lang/String;
    if-nez v6, :cond_24

    .line 331
    const-string/jumbo v7, "SUPL20_NC"

    const-string/jumbo v8, "KeyStore is empty!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-object v10

    .line 335
    :cond_24
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, "dir":Ljava/io/File;
    if-nez v1, :cond_35

    .line 337
    const-string/jumbo v7, "SUPL20_NC"

    const-string/jumbo v8, "dir is null!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-object v10

    .line 340
    :cond_35
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_56

    .line 341
    const-string/jumbo v7, "SUPL20_NC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "is not exist!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-object v10

    .line 344
    :cond_56
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_77

    .line 345
    const-string/jumbo v7, "SUPL20_NC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "is not directory!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-object v10

    .line 348
    :cond_77
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "fileNames":[Ljava/lang/String;
    const/4 v7, 0x0

    array-length v8, v2

    :goto_7d
    if-ge v7, v8, :cond_ba

    aget-object v4, v2, v7

    .line 350
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v9, ".bks"

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_93

    const-string/jumbo v9, "gnss_hiskey_hisi.bks"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_96

    .line 349
    :cond_93
    :goto_93
    add-int/lit8 v7, v7, 0x1

    goto :goto_7d

    .line 354
    :cond_96
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v5}, Lcom/android/supl/nc/NetworkController;->getKeyStoreByPath(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 355
    .local v3, "ks":Ljava/security/KeyStore;
    if-eqz v3, :cond_93

    .line 356
    sget-object v9, Lcom/android/supl/nc/NetworkController;->keyStoreList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 360
    .end local v3    # "ks":Ljava/security/KeyStore;
    .end local v4    # "name":Ljava/lang/String;
    :cond_ba
    sget-object v7, Lcom/android/supl/nc/NetworkController;->keyStoreList:Ljava/util/List;

    return-object v7
.end method

.method private getKeyStoreByPath(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 11
    .param p1, "stKeyStorePath"    # Ljava/lang/String;
    .param p2, "stKeyStoreConv"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 288
    if-nez p1, :cond_d

    .line 289
    const-string/jumbo v5, "SUPL20_NC"

    const-string/jumbo v6, "stKeyStorePath == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-object v7

    .line 293
    :cond_d
    if-nez p2, :cond_19

    .line 294
    const-string/jumbo v5, "SUPL20_NC"

    const-string/jumbo v6, "stKeyStoreConv == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-object v7

    .line 298
    :cond_19
    const/4 v2, 0x0

    .line 299
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 301
    .local v4, "ks":Ljava/security/KeyStore;
    :try_start_1b
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_6b
    .catch Ljava/security/GeneralSecurityException; {:try_start_1b .. :try_end_20} :catch_4f
    .catchall {:try_start_1b .. :try_end_20} :catchall_86

    .line 302
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_20
    const-string/jumbo v5, "BKS"

    const-string/jumbo v6, "BC"

    invoke-static {v5, v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 303
    .local v4, "ks":Ljava/security/KeyStore;
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_31} :catch_9c
    .catch Ljava/security/GeneralSecurityException; {:try_start_20 .. :try_end_31} :catch_9f
    .catchall {:try_start_20 .. :try_end_31} :catchall_99

    .line 309
    if-eqz v3, :cond_36

    .line 310
    :try_start_33
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_43

    .end local v4    # "ks":Ljava/security/KeyStore;
    :cond_36
    :goto_36
    move-object v2, v3

    .line 315
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_37
    :goto_37
    if-eqz v4, :cond_42

    .line 316
    const-string/jumbo v5, "SUPL20_NC"

    const-string/jumbo v6, "Successfully loaded Keystore"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_42
    return-object v4

    .line 311
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ks":Ljava/security/KeyStore;
    :catch_43
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "SUPL20_NC"

    const-string/jumbo v6, "Error closing keystore file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .local v4, "ks":Ljava/security/KeyStore;
    goto :goto_36

    .line 306
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_4f
    move-exception v1

    .line 307
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "ks":Ljava/security/KeyStore;
    .local v1, "e":Ljava/security/GeneralSecurityException;
    :goto_50
    :try_start_50
    const-string/jumbo v5, "SUPL20_NC"

    const-string/jumbo v6, "Error Loading keystore: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_86

    .line 309
    if-eqz v2, :cond_37

    .line 310
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_37

    .line 311
    :catch_5f
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "SUPL20_NC"

    const-string/jumbo v6, "Error closing keystore file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :goto_69
    const/4 v4, 0x0

    .restart local v4    # "ks":Ljava/security/KeyStore;
    goto :goto_37

    .line 304
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_6b
    move-exception v0

    .line 305
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "ks":Ljava/security/KeyStore;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_6c
    :try_start_6c
    const-string/jumbo v5, "SUPL20_NC"

    const-string/jumbo v6, "Error Loading keystore: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_86

    .line 309
    if-eqz v2, :cond_37

    .line 310
    :try_start_77
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_37

    .line 311
    :catch_7b
    move-exception v0

    const-string/jumbo v5, "SUPL20_NC"

    const-string/jumbo v6, "Error closing keystore file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 308
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_86
    move-exception v5

    .line 309
    :goto_87
    if-eqz v2, :cond_8c

    .line 310
    :try_start_89
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    .line 308
    :cond_8c
    :goto_8c
    throw v5

    .line 311
    :catch_8d
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "SUPL20_NC"

    const-string/jumbo v7, "Error closing keystore file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .restart local v4    # "ks":Ljava/security/KeyStore;
    goto :goto_8c

    .line 308
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "ks":Ljava/security/KeyStore;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_99
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    goto :goto_87

    .line 304
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_9c
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_6c

    .line 306
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_9f
    move-exception v1

    .restart local v1    # "e":Ljava/security/GeneralSecurityException;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_50
.end method

.method private getLocalSocket(Ljava/lang/String;)Landroid/net/LocalSocket;
    .registers 7
    .param p1, "unixsocketpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p1, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 472
    .local v0, "address":Landroid/net/LocalSocketAddress;
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 475
    .local v2, "unixsoc":Landroid/net/LocalSocket;
    :try_start_c
    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    .line 481
    :goto_f
    return-object v2

    .line 478
    :catch_10
    move-exception v1

    .line 479
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "SUPL20_NC"

    const-string/jumbo v4, "Exception caught while connecting the unix socket"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private getPortNumber()I
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->m_iServerPortNo:I

    return v0
.end method

.method private getSSLContext()Ljavax/net/ssl/SSLContext;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->ssl_Context:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_a

    .line 437
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->createSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->ssl_Context:Ljavax/net/ssl/SSLContext;

    .line 439
    :cond_a
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->ssl_Context:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method private getSocket()Ljava/net/Socket;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/net/ConnectException;,
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 485
    const/4 v7, 0x0

    .line 487
    .local v7, "socket":Ljava/net/Socket;
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/supl/config/ConfigManager;->switchApnEnabled()Z

    move-result v11

    if-eqz v11, :cond_35

    .line 488
    iget-boolean v11, p0, Lcom/android/supl/nc/NetworkController;->mNeedEmergencyApn:Z

    if-nez v11, :cond_70

    .line 490
    :try_start_f
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11

    iput-object v11, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 491
    const-string/jumbo v11, "SUPL20_NC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "DNS query success: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_35} :catch_4d

    .line 501
    :cond_35
    :goto_35
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->prepareNetwork()Z

    move-result v11

    if-nez v11, :cond_74

    .line 502
    const-string/jumbo v11, "SUPL20_NC"

    const-string/jumbo v12, "Network unavailable, throw exception"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v11, Ljava/net/ConnectException;

    const-string/jumbo v12, "failed to switch to supl apn!"

    invoke-direct {v11, v12}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 492
    :catch_4d
    move-exception v0

    .line 493
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v11, "SUPL20_NC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "DNS query fail: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    goto :goto_35

    .line 497
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_70
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    goto :goto_35

    .line 506
    :cond_74
    iget v11, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    if-nez v11, :cond_a7

    .line 507
    new-instance v7, Ljava/net/Socket;

    .end local v7    # "socket":Ljava/net/Socket;
    invoke-direct {v7}, Ljava/net/Socket;-><init>()V

    .line 508
    .local v7, "socket":Ljava/net/Socket;
    const/4 v4, 0x0

    .line 509
    .local v4, "remoteAddress":Ljava/net/SocketAddress;
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/supl/config/ConfigManager;->switchApnEnabled()Z

    move-result v11

    if-eqz v11, :cond_99

    .line 511
    new-instance v4, Ljava/net/InetSocketAddress;

    .end local v4    # "remoteAddress":Ljava/net/SocketAddress;
    iget-object v11, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getPortNumber()I

    move-result v12

    invoke-direct {v4, v11, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 517
    .local v4, "remoteAddress":Ljava/net/SocketAddress;
    :goto_93
    iget v11, p0, Lcom/android/supl/nc/NetworkController;->server_conn_timeout:I

    invoke-virtual {v7, v4, v11}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 575
    .end local v4    # "remoteAddress":Ljava/net/SocketAddress;
    :goto_98
    return-object v7

    .line 515
    .local v4, "remoteAddress":Ljava/net/SocketAddress;
    :cond_99
    new-instance v4, Ljava/net/InetSocketAddress;

    .end local v4    # "remoteAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getPortNumber()I

    move-result v12

    invoke-direct {v4, v11, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .local v4, "remoteAddress":Ljava/net/SocketAddress;
    goto :goto_93

    .line 519
    .end local v4    # "remoteAddress":Ljava/net/SocketAddress;
    .local v7, "socket":Ljava/net/Socket;
    :cond_a7
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->createSSLSocket()Ljava/net/Socket;

    move-result-object v8

    check-cast v8, Ljavax/net/ssl/SSLSocket;

    .line 520
    .local v8, "sslSocket":Ljavax/net/ssl/SSLSocket;
    if-nez v8, :cond_b1

    .line 522
    const/4 v11, 0x0

    return-object v11

    .line 526
    :cond_b1
    const-string/jumbo v11, "SUPL20_NC"

    const-string/jumbo v12, "NO_FALLBACK"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {v8}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v10

    .line 529
    .local v10, "suites":[Ljava/lang/String;
    if-eqz v10, :cond_e5

    array-length v11, v10

    const/4 v12, 0x1

    if-le v11, v12, :cond_e5

    .line 530
    array-length v11, v10

    add-int/lit8 v11, v11, -0x1

    new-array v3, v11, [Ljava/lang/String;

    .line 531
    .local v3, "newSuites":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 532
    .local v1, "index":I
    const/4 v11, 0x0

    array-length v12, v10

    move v2, v1

    .end local v1    # "index":I
    .local v2, "index":I
    :goto_cd
    if-ge v11, v12, :cond_e2

    aget-object v9, v10, v11

    .line 533
    .local v9, "suite":Ljava/lang/String;
    const-string/jumbo v13, "TLS_FALLBACK_SCSV"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19e

    .line 534
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aput-object v9, v3, v2

    .line 532
    :goto_de
    add-int/lit8 v11, v11, 0x1

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_cd

    .line 537
    .end local v9    # "suite":Ljava/lang/String;
    :cond_e2
    invoke-virtual {v8, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 540
    .end local v2    # "index":I
    .end local v3    # "newSuites":[Ljava/lang/String;
    :cond_e5
    iget v11, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    const/4 v12, 0x1

    if-ne v12, v11, :cond_14b

    .line 541
    const-string/jumbo v11, "SUPL20_NC"

    const-string/jumbo v12, "Enabling TLSv1"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "TLSv1"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 553
    :cond_ff
    :goto_ff
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 554
    iget v11, p0, Lcom/android/supl/nc/NetworkController;->m_iHandShakeTimeOut:I

    invoke-virtual {v8, v11}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 555
    new-instance v11, Lcom/android/supl/nc/NetworkController$2;

    invoke-direct {v11, p0}, Lcom/android/supl/nc/NetworkController$2;-><init>(Lcom/android/supl/nc/NetworkController;)V

    invoke-virtual {v8, v11}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 561
    invoke-virtual {v8}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 562
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 563
    invoke-virtual {v8}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    .line 564
    .local v6, "session":Ljavax/net/ssl/SSLSession;
    const-string/jumbo v11, "SUPL20_NC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "The SSL Protocol used is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-interface {v6}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v5

    .line 566
    .local v5, "secured":Z
    if-eqz v5, :cond_194

    .line 567
    const-string/jumbo v11, "SUPL20_NC"

    const-string/jumbo v12, "Connection Secured."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :goto_148
    move-object v7, v8

    .local v7, "socket":Ljava/net/Socket;
    goto/16 :goto_98

    .line 543
    .end local v5    # "secured":Z
    .end local v6    # "session":Ljavax/net/ssl/SSLSession;
    .local v7, "socket":Ljava/net/Socket;
    :cond_14b
    iget v11, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    const/4 v12, 0x2

    if-ne v12, v11, :cond_16c

    .line 544
    const-string/jumbo v11, "SUPL20_NC"

    const-string/jumbo v12, "Enabling TLSv1 and TLSv1.1"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "TLSv1.1"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "TLSv1"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_ff

    .line 546
    :cond_16c
    iget v11, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    const/4 v12, 0x3

    if-ne v12, v11, :cond_ff

    .line 547
    const-string/jumbo v11, "SUPL20_NC"

    const-string/jumbo v12, "Enabling TLSv1.2 and TLSv1.1"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "TLSv1.2"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string/jumbo v12, "TLSv1.1"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string/jumbo v12, "TLSv1"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    invoke-virtual {v8, v11}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto/16 :goto_ff

    .line 570
    .restart local v5    # "secured":Z
    .restart local v6    # "session":Ljavax/net/ssl/SSLSession;
    :cond_194
    const-string/jumbo v11, "SUPL20_NC"

    const-string/jumbo v12, "Connection Not Secured."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_148

    .end local v5    # "secured":Z
    .end local v6    # "session":Ljavax/net/ssl/SSLSession;
    .restart local v2    # "index":I
    .restart local v3    # "newSuites":[Ljava/lang/String;
    .restart local v9    # "suite":Ljava/lang/String;
    :cond_19e
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto/16 :goto_de
.end method

.method private initReadThread()V
    .registers 6

    .prologue
    .line 966
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    if-nez v2, :cond_2c

    .line 968
    new-instance v2, Lcom/android/supl/nc/ReaderThread;

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    iget v4, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    invoke-direct {v2, v3, v4}, Lcom/android/supl/nc/ReaderThread;-><init>(Lcom/android/supl/commprocessor/CommandProcessor;I)V

    iput-object v2, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    .line 969
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    invoke-virtual {v2, p0}, Lcom/android/supl/nc/ReaderThread;->setNetworkController(Lcom/android/supl/nc/NetworkController;)V

    .line 970
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "readerThread initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :goto_1d
    :try_start_1d
    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_36

    .line 977
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "don\'t need reader thread, it replace by hisupl_adapter socket"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_2b} :catch_40
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_2b} :catch_4c

    .line 988
    :goto_2b
    return-void

    .line 972
    :cond_2c
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "readerThread already initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 981
    :cond_36
    :try_start_36
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    iget-object v4, p0, Lcom/android/supl/nc/NetworkController;->m_stReadThreadName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/supl/nc/ReaderThread;->setClientSocket(Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_3f} :catch_40
    .catch Ljava/lang/IllegalStateException; {:try_start_36 .. :try_end_3f} :catch_4c

    goto :goto_2b

    .line 983
    :catch_40
    move-exception v0

    .line 984
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "SUPL20_NC"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 985
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_4c
    move-exception v1

    .line 986
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "SUPL20_NC"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method private initWriteThread()V
    .registers 7

    .prologue
    .line 992
    :try_start_0
    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->deque:Ljava/util/concurrent/BlockingQueue;

    if-nez v3, :cond_39

    .line 993
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v3, p0, Lcom/android/supl/nc/NetworkController;->deque:Ljava/util/concurrent/BlockingQueue;

    .line 994
    const-string/jumbo v3, "SUPL20_NC"

    const-string/jumbo v4, "deque initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :goto_16
    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    if-nez v3, :cond_66

    .line 1000
    const-string/jumbo v3, "SUPL20_NC"

    const-string/jumbo v4, "WriterThread initialize"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    new-instance v3, Lcom/android/supl/nc/WriterThread;

    iget-object v4, p0, Lcom/android/supl/nc/NetworkController;->deque:Ljava/util/concurrent/BlockingQueue;

    iget v5, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    invoke-direct {v3, v4, p0, v5}, Lcom/android/supl/nc/WriterThread;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/supl/nc/NetworkController;I)V

    iput-object v3, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_5a

    .line 1007
    :goto_2e
    :try_start_2e
    iget v3, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_70

    .line 1009
    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    invoke-virtual {v3}, Lcom/android/supl/nc/WriterThread;->startThread()V
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_38} :catch_7a
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_38} :catch_86
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_38} :catch_5a

    .line 1024
    :goto_38
    return-void

    .line 996
    :cond_39
    :try_start_39
    const-string/jumbo v3, "SUPL20_NC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deque has packet size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/supl/nc/NetworkController;->deque:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_59} :catch_5a

    goto :goto_16

    .line 1021
    :catch_5a
    move-exception v0

    .line 1022
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "SUPL20_NC"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 1004
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_66
    :try_start_66
    const-string/jumbo v3, "SUPL20_NC"

    const-string/jumbo v4, "WriterThread already initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6f} :catch_5a

    goto :goto_2e

    .line 1013
    :cond_70
    :try_start_70
    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    iget-object v4, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    iget-object v5, p0, Lcom/android/supl/nc/NetworkController;->m_stWriteThreadName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/supl/nc/WriterThread;->setClientSocket(Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/IllegalArgumentException; {:try_start_70 .. :try_end_79} :catch_7a
    .catch Ljava/lang/IllegalStateException; {:try_start_70 .. :try_end_79} :catch_86
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_79} :catch_5a

    goto :goto_38

    .line 1015
    :catch_7a
    move-exception v1

    .line 1016
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_7b
    const-string/jumbo v3, "SUPL20_NC"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 1017
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_86
    move-exception v2

    .line 1018
    .local v2, "ex":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "SUPL20_NC"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_91} :catch_5a

    goto :goto_38
.end method

.method public static final isThreadRunning(Ljava/lang/String;)Z
    .registers 8
    .param p0, "stThreadName"    # Ljava/lang/String;

    .prologue
    .line 872
    const/4 v1, 0x0

    .line 873
    .local v1, "isThreadRuning":Z
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_a

    .line 874
    :cond_9
    return v1

    .line 876
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_38

    .line 877
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 878
    .local v5, "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    if-eqz v5, :cond_38

    .line 880
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Thread;

    .line 879
    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Thread;

    .line 881
    .local v3, "runningThreadArray":[Ljava/lang/Thread;
    const/4 v0, 0x0

    .end local v1    # "isThreadRuning":Z
    .local v0, "i":I
    :goto_27
    array-length v6, v3

    if-ge v0, v6, :cond_38

    .line 882
    aget-object v2, v3, v0

    .line 883
    .local v2, "runningThread":Ljava/lang/Thread;
    if-eqz v2, :cond_39

    .line 884
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 885
    .local v4, "stRunningThreadName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 886
    .local v1, "isThreadRuning":Z
    if-eqz v1, :cond_39

    .line 895
    .end local v0    # "i":I
    .end local v1    # "isThreadRuning":Z
    .end local v2    # "runningThread":Ljava/lang/Thread;
    .end local v3    # "runningThreadArray":[Ljava/lang/Thread;
    .end local v4    # "stRunningThreadName":Ljava/lang/String;
    .end local v5    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    :cond_38
    return v1

    .line 881
    .restart local v0    # "i":I
    .restart local v2    # "runningThread":Ljava/lang/Thread;
    .restart local v3    # "runningThreadArray":[Ljava/lang/Thread;
    .restart local v5    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method

.method private prepareNetwork()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1156
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/supl/config/ConfigManager;->switchApnEnabled()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1159
    return v5

    .line 1162
    :cond_d
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "request network"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1164
    .local v1, "requestBuilder":Landroid/net/NetworkRequest$Builder;
    invoke-virtual {v1, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1165
    iget-boolean v2, p0, Lcom/android/supl/nc/NetworkController;->mNeedEmergencyApn:Z

    if-eqz v2, :cond_3b

    .line 1166
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1170
    :goto_27
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 1171
    .local v0, "request":Landroid/net/NetworkRequest;
    iput-boolean v4, p0, Lcom/android/supl/nc/NetworkController;->m_open_supl_apn_ok:Z

    .line 1172
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 1174
    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1175
    iget v4, p0, Lcom/android/supl/nc/NetworkController;->MAX_SUPL_NETWORK_REQUEST_TIMEOUT:I

    .line 1172
    invoke-virtual {v2, v0, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 1176
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->checkSuplApnState()Z

    move-result v2

    return v2

    .line 1168
    .end local v0    # "request":Landroid/net/NetworkRequest;
    :cond_3b
    invoke-virtual {v1, v5}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    goto :goto_27
.end method

.method private reconnectAgain()V
    .registers 3

    .prologue
    .line 899
    const-string/jumbo v0, "SUPL20_NC"

    const-string/jumbo v1, "Trying to connect again"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/supl/nc/NetworkController;->connect([IZ)Z

    .line 901
    return-void
.end method

.method private releaseNetwork()V
    .registers 4

    .prologue
    .line 1181
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/config/ConfigManager;->switchApnEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1184
    return-void

    .line 1187
    :cond_b
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v2, "unregister network callback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    :try_start_14
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_1b} :catch_1f

    .line 1193
    :goto_1b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1194
    return-void

    .line 1190
    :catch_1f
    move-exception v0

    .line 1191
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v2, "Invalid NetworkCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method private setRouting()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1087
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-nez v2, :cond_2b

    .line 1089
    :try_start_5
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1090
    const-string/jumbo v2, "SUPL20_NC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DNS re-query success: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_2b} :catch_59

    .line 1097
    :cond_2b
    const/4 v1, 0x0

    .line 1098
    .local v1, "result":Z
    iget-boolean v2, p0, Lcom/android/supl/nc/NetworkController;->mNeedEmergencyApn:Z

    if-eqz v2, :cond_7b

    .line 1099
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    const/16 v4, 0xf

    invoke-virtual {v2, v4, v3}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v1

    .line 1103
    .local v1, "result":Z
    :goto_3a
    if-nez v1, :cond_85

    .line 1104
    const-string/jumbo v2, "SUPL20_NC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error requesting route to host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :goto_58
    return-void

    .line 1091
    .end local v1    # "result":Z
    :catch_59
    move-exception v0

    .line 1092
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v2, "SUPL20_NC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DNS re-query fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1093
    iput-object v5, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1094
    return-void

    .line 1101
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .local v1, "result":Z
    :cond_7b
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_3a

    .line 1106
    :cond_85
    const-string/jumbo v2, "SUPL20_NC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Successfully requested route to host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method

.method private startCloseConnectionThread(Ljava/lang/Thread;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 864
    const-string/jumbo v0, "Connection close thread"

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->isThreadRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 865
    return-void

    .line 867
    :cond_a
    const-string/jumbo v0, "Connection close thread"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 869
    return-void
.end method


# virtual methods
.method public CloseReadWriteStreams()V
    .registers 3

    .prologue
    .line 1052
    const-string/jumbo v0, "SUPL20_NC"

    const-string/jumbo v1, "Start CloseReadWriteStreams"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    invoke-virtual {v0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    .line 1054
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    invoke-virtual {v0}, Lcom/android/supl/nc/WriterThread;->closeWrite()V

    .line 1055
    const-string/jumbo v0, "SUPL20_NC"

    const-string/jumbo v1, "End CloseReadWriteStreams"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    return-void
.end method

.method public IsSCM()Z
    .registers 2

    .prologue
    .line 1060
    iget-boolean v0, p0, Lcom/android/supl/nc/NetworkController;->isSCM:Z

    return v0
.end method

.method public SetTimeOuts(II)V
    .registers 3
    .param p1, "iHandShakeTimeOut"    # I
    .param p2, "iConnTimeOut"    # I

    .prologue
    .line 1065
    iput p1, p0, Lcom/android/supl/nc/NetworkController;->m_iHandShakeTimeOut:I

    .line 1066
    iput p2, p0, Lcom/android/supl/nc/NetworkController;->m_iConnTimeOut:I

    .line 1067
    return-void
.end method

.method public addPacket(Lcom/android/supl/nc/SendToServer;)V
    .registers 7
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;

    .prologue
    .line 725
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    if-eqz v2, :cond_a

    .line 726
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    invoke-virtual {v2, p1}, Lcom/android/supl/nc/WriterThread;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 753
    :cond_9
    :goto_9
    return-void

    .line 729
    :cond_a
    const/4 v1, 0x0

    .line 731
    .local v1, "try_times":I
    :cond_b
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "writerThread is null, wait and re-try"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-wide/16 v2, 0x1f4

    :try_start_16
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_54

    .line 741
    :goto_19
    add-int/lit8 v1, v1, 0x1

    .line 743
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    if-eqz v2, :cond_3e

    .line 744
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    invoke-virtual {v2, p1}, Lcom/android/supl/nc/WriterThread;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 745
    const-string/jumbo v2, "SUPL20_NC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addPacket try times "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_3e
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    if-nez v2, :cond_46

    const/16 v2, 0x78

    if-lt v1, v2, :cond_b

    .line 749
    :cond_46
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    if-nez v2, :cond_9

    .line 750
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "writerThread is still null, donot addPacket!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 738
    :catch_54
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_19
.end method

.method public closeConnection()V
    .registers 5

    .prologue
    .line 905
    iget v1, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 964
    :cond_5
    :goto_5
    return-void

    .line 928
    :cond_6
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    if-eqz v1, :cond_5

    .line 949
    :try_start_a
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 950
    const-string/jumbo v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "m_CilentSocket is closed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const-string/jumbo v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Socket isBound:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isBound()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const-string/jumbo v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Socket isClosed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const-string/jumbo v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Socket isInputShutdown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const-string/jumbo v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Socket isOutputShutdown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string/jumbo v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Socket isConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->releaseNetwork()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d0} :catch_d2

    goto/16 :goto_5

    .line 958
    :catch_d2
    move-exception v0

    .line 960
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5
.end method

.method public declared-synchronized connect([IZ)Z
    .registers 16
    .param p1, "failStatus"    # [I
    .param p2, "isReConnection"    # Z

    .prologue
    monitor-enter p0

    .line 580
    const/4 v8, 0x0

    .line 581
    .local v8, "iNumberOfRetryAttmpt":I
    const/4 v9, 0x0

    .line 582
    .local v9, "isConnect":Z
    if-nez p2, :cond_27

    .line 583
    :try_start_5
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->isConnected()Z

    move-result v9

    .line 584
    .local v9, "isConnect":Z
    if-eqz v9, :cond_2a

    .line 585
    const-string/jumbo v10, "SUPL20_NC"

    const-string/jumbo v11, "Socket already in connected state so returning"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget v10, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_25

    .line 587
    const-string/jumbo v10, "SUPL20_NC"

    const-string/jumbo v11, "pcm/scm have already connect by hidl"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->initRead_WriteThread()V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_db

    :cond_25
    monitor-exit p0

    .line 590
    return v9

    .line 593
    .local v9, "isConnect":Z
    :cond_27
    const/4 v10, 0x0

    :try_start_28
    iput-object v10, p0, Lcom/android/supl/nc/NetworkController;->m_localSocket:Landroid/net/LocalSocket;

    .line 596
    .end local v9    # "isConnect":Z
    :cond_2a
    iget-boolean v10, p0, Lcom/android/supl/nc/NetworkController;->isConnectionError:Z

    if-eqz v10, :cond_62

    .line 597
    if-eqz p1, :cond_3e

    .line 598
    const-string/jumbo v10, "SUPL20_NC"

    const-string/jumbo v11, "Connect: IsConnectionError set to True"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget v10, p0, Lcom/android/supl/nc/NetworkController;->iFailerStatus:I

    const/4 v11, 0x0

    aput v10, p1, v11
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_db

    :cond_3e
    monitor-exit p0

    .line 601
    return v9

    .line 682
    .local v9, "isConnect":Z
    :cond_40
    :try_start_40
    const-string/jumbo v10, "SUPL20_NC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Connection retry attempt "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget v10, p0, Lcom/android/supl/nc/NetworkController;->server_conn_timeout:I

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_60} :catch_1d1
    .catchall {:try_start_40 .. :try_end_60} :catchall_db

    .line 705
    :cond_60
    :goto_60
    if-nez v9, :cond_9c

    .line 607
    .end local v9    # "isConnect":Z
    :cond_62
    add-int/lit8 v8, v8, 0x1

    .line 608
    :try_start_64
    iget v10, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_aa

    .line 610
    const-string/jumbo v10, "SUPL20_NC"

    const-string/jumbo v11, "Do nothing, pcm/scm have already connect by hidl"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_72
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->initRead_WriteThread()V
    :try_end_75
    .catch Ljava/net/UnknownHostException; {:try_start_64 .. :try_end_75} :catch_1aa
    .catch Ljavax/net/ssl/SSLException; {:try_start_64 .. :try_end_75} :catch_17a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_64 .. :try_end_75} :catch_153
    .catch Ljava/net/ConnectException; {:try_start_64 .. :try_end_75} :catch_12c
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_75} :catch_105
    .catch Ljava/security/KeyManagementException; {:try_start_64 .. :try_end_75} :catch_de
    .catch Ljava/security/GeneralSecurityException; {:try_start_64 .. :try_end_75} :catch_b5
    .catchall {:try_start_64 .. :try_end_75} :catchall_db

    .line 671
    :cond_75
    :goto_75
    :try_start_75
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->isConnected()Z

    move-result v9

    .line 673
    .restart local v9    # "isConnect":Z
    if-nez v9, :cond_60

    .line 674
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->releaseNetwork()V

    .line 675
    iget v10, p0, Lcom/android/supl/nc/NetworkController;->server_conn_retry:I

    if-lt v8, v10, :cond_40

    .line 677
    const-string/jumbo v10, "SUPL20_NC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Connection failed "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .end local v9    # "isConnect":Z
    :cond_9c
    :goto_9c
    if-nez v9, :cond_a8

    if-eqz p1, :cond_a8

    .line 707
    const/4 v10, 0x0

    aget v10, p1, v10

    iput v10, p0, Lcom/android/supl/nc/NetworkController;->iFailerStatus:I

    .line 708
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/supl/nc/NetworkController;->isConnectionError:Z
    :try_end_a8
    .catchall {:try_start_75 .. :try_end_a8} :catchall_db

    :cond_a8
    monitor-exit p0

    .line 710
    return v9

    .line 614
    :cond_aa
    :try_start_aa
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getSocket()Ljava/net/Socket;

    move-result-object v10

    iput-object v10, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    .line 615
    iget-object v10, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;
    :try_end_b2
    .catch Ljava/net/UnknownHostException; {:try_start_aa .. :try_end_b2} :catch_1aa
    .catch Ljavax/net/ssl/SSLException; {:try_start_aa .. :try_end_b2} :catch_17a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_aa .. :try_end_b2} :catch_153
    .catch Ljava/net/ConnectException; {:try_start_aa .. :try_end_b2} :catch_12c
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b2} :catch_105
    .catch Ljava/security/KeyManagementException; {:try_start_aa .. :try_end_b2} :catch_de
    .catch Ljava/security/GeneralSecurityException; {:try_start_aa .. :try_end_b2} :catch_b5
    .catchall {:try_start_aa .. :try_end_b2} :catchall_db

    if-nez v10, :cond_72

    goto :goto_9c

    .line 663
    :catch_b5
    move-exception v1

    .line 664
    .local v1, "e":Ljava/security/GeneralSecurityException;
    :try_start_b6
    const-string/jumbo v10, "SUPL20_NC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error on Connection "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    if-eqz p1, :cond_75

    .line 667
    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v10, p1, v11
    :try_end_da
    .catchall {:try_start_b6 .. :try_end_da} :catchall_db

    goto :goto_75

    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catchall_db
    move-exception v10

    monitor-exit p0

    throw v10

    .line 656
    :catch_de
    move-exception v2

    .line 657
    .local v2, "e":Ljava/security/KeyManagementException;
    :try_start_df
    const-string/jumbo v10, "SUPL20_NC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error on Connection "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    if-eqz p1, :cond_75

    .line 660
    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v10, p1, v11

    goto/16 :goto_75

    .line 650
    .end local v2    # "e":Ljava/security/KeyManagementException;
    :catch_105
    move-exception v5

    .line 651
    .local v5, "ex":Ljava/io/IOException;
    const-string/jumbo v10, "SUPL20_NC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error on Connection "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    if-eqz p1, :cond_75

    .line 654
    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v10, p1, v11

    goto/16 :goto_75

    .line 644
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_12c
    move-exception v6

    .line 645
    .local v6, "ex":Ljava/net/ConnectException;
    const-string/jumbo v10, "SUPL20_NC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error on Connection "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    if-eqz p1, :cond_75

    .line 648
    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v10, p1, v11

    goto/16 :goto_75

    .line 638
    .end local v6    # "ex":Ljava/net/ConnectException;
    :catch_153
    move-exception v3

    .line 639
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v10, "SUPL20_NC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error on Connection "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    if-eqz p1, :cond_75

    .line 642
    const/4 v10, 0x4

    const/4 v11, 0x0

    aput v10, p1, v11

    goto/16 :goto_75

    .line 630
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_17a
    move-exception v4

    .line 631
    .local v4, "e":Ljavax/net/ssl/SSLException;
    const-string/jumbo v10, "SUPL20_NC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error on Connection "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const-string/jumbo v10, "SUPL20_NC"

    const-string/jumbo v11, "Inside SSLException "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    if-eqz p1, :cond_75

    .line 635
    const/4 v10, 0x4

    const/4 v11, 0x0

    aput v10, p1, v11

    goto/16 :goto_75

    .line 623
    .end local v4    # "e":Ljavax/net/ssl/SSLException;
    :catch_1aa
    move-exception v7

    .line 624
    .local v7, "ex":Ljava/net/UnknownHostException;
    const-string/jumbo v10, "SUPL20_NC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error on Connection "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    if-eqz p1, :cond_75

    .line 627
    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v10, p1, v11
    :try_end_1cf
    .catchall {:try_start_df .. :try_end_1cf} :catchall_db

    goto/16 :goto_75

    .line 685
    .end local v7    # "ex":Ljava/net/UnknownHostException;
    .restart local v9    # "isConnect":Z
    :catch_1d1
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_60
.end method

.method public decrementConnectionCount()V
    .registers 2

    .prologue
    .line 210
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    .line 211
    return-void
.end method

.method public getConnectionCount()I
    .registers 2

    .prologue
    .line 214
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    return v0
.end method

.method protected getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .registers 6

    .prologue
    .line 377
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "alg":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 379
    .local v2, "kmFact":Ljavax/net/ssl/KeyManagerFactory;
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v3

    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/supl/config/ConfigManager;->getPrivateKeyStoreConv()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 380
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_1e
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_1e} :catch_20

    move-result-object v3

    return-object v3

    .line 381
    .end local v0    # "alg":Ljava/lang/String;
    .end local v2    # "kmFact":Ljavax/net/ssl/KeyManagerFactory;
    :catch_20
    move-exception v1

    .line 382
    .local v1, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v3, "SUPL20_NC"

    const-string/jumbo v4, "Error while creating Keymaanger: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    const/4 v3, 0x0

    return-object v3
.end method

.method public getNetWorkID()I
    .registers 2

    .prologue
    .line 217
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    return v0
.end method

.method public getNetworkCommandProcessor()Lcom/android/supl/commprocessor/NetworkCommandProcessor;
    .registers 2

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    return-object v0
.end method

.method public getServerIPAddr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->m_stServerIPAddr:Ljava/lang/String;

    return-object v0
.end method

.method protected getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 365
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    new-instance v3, Lcom/android/supl/nc/SSLX509TrustManager;

    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getKeyStoreAll()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/supl/nc/SSLX509TrustManager;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_14} :catch_20
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_14} :catch_15

    return-object v2

    .line 369
    :catch_15
    move-exception v0

    .line 370
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "Error while creating TrustManager: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    return-object v6

    .line 366
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_20
    move-exception v1

    .line 367
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "Error while creating TrustManager: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    return-object v6
.end method

.method public initRead_WriteThread()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 714
    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    .line 715
    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    .line 716
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    .line 718
    const-string/jumbo v0, "SUPL20_NC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "m_CilentSocket isClosed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_2a
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->initWriteThread()V

    .line 721
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->initReadThread()V

    .line 723
    return-void
.end method

.method public isConnected()Z
    .registers 4

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "isConnected":Z
    iget v1, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    .line 232
    const/4 v0, 0x1

    .line 241
    .end local v0    # "isConnected":Z
    :cond_7
    :goto_7
    return v0

    .line 236
    .restart local v0    # "isConnected":Z
    :cond_8
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    if-eqz v1, :cond_7

    .line 237
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    .local v0, "isConnected":Z
    goto :goto_7
.end method

.method public isNetWorkMatch(I)Z
    .registers 3
    .param p1, "iNetWorkID"    # I

    .prologue
    .line 221
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public removeSLPSession()V
    .registers 7

    .prologue
    .line 1039
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    if-eqz v1, :cond_17

    .line 1040
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->m_stServerIPAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/supl/nc/NetworkController;->m_iServerPortNo:I

    iget v4, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    iget v5, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->getNetKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, "stKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    invoke-virtual {v1, v0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->removeFailerSession(Ljava/lang/String;)V

    .line 1043
    .end local v0    # "stKey":Ljava/lang/String;
    :cond_17
    return-void
.end method

.method public setNetWorkID(I)V
    .registers 2
    .param p1, "iNetWorkID"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    .line 203
    return-void
.end method

.method public setNetworkCommProceeor(Lcom/android/supl/commprocessor/NetworkCommandProcessor;)V
    .registers 2
    .param p1, "networkCommandProcessor"    # Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 1037
    return-void
.end method

.method public setServer_conn_Timeout_Retries(II)V
    .registers 3
    .param p1, "iTimeOut"    # I
    .param p2, "iRetries"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/android/supl/nc/NetworkController;->server_conn_timeout:I

    .line 191
    iput p2, p0, Lcom/android/supl/nc/NetworkController;->server_conn_retry:I

    .line 192
    return-void
.end method

.method public declared-synchronized stop(ZLjava/lang/Object;Z)Z
    .registers 11
    .param p1, "isStop"    # Z
    .param p2, "pauseLock"    # Ljava/lang/Object;
    .param p3, "ConnectAgain"    # Z

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 758
    :try_start_2
    const-string/jumbo v3, "SUPL20_NC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stop() isStop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",ConnectAgain:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v0, 0x0

    .line 760
    .local v0, "isStoped":Z
    new-instance v2, Lcom/android/supl/nc/NetworkController$3;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/android/supl/nc/NetworkController$3;-><init>(Lcom/android/supl/nc/NetworkController;ZZLjava/lang/Object;)V

    .line 836
    .local v2, "thread":Ljava/lang/Thread;
    const-string/jumbo v3, "SUPL20_NC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Before decrement Connection Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    if-nez p3, :cond_55

    iget v3, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    if-lez v3, :cond_55

    .line 838
    iget v3, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    .line 840
    :cond_55
    const-string/jumbo v3, "SUPL20_NC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "After decrement Connection Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget v3, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    if-nez v3, :cond_9d

    .line 842
    if-nez p3, :cond_8f

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    instance-of v3, v3, Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    if-eqz v3, :cond_8f

    .line 844
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    check-cast v1, Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 845
    .local v1, "networkCommandProcessor":Lcom/android/supl/commprocessor/NetworkCommandProcessor;
    const-string/jumbo v3, "SUPL20_NC"

    const-string/jumbo v4, "sendOnNetWorkSessionClose() "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget v3, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    invoke-virtual {v1, v3}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sendOnNetWorkSessionClose(I)V

    .line 849
    .end local v1    # "networkCommandProcessor":Lcom/android/supl/commprocessor/NetworkCommandProcessor;
    :cond_8f
    const-string/jumbo v3, "SUPL20_NC"

    const-string/jumbo v4, "Starting startCloseConnectionThread"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-direct {p0, v2}, Lcom/android/supl/nc/NetworkController;->startCloseConnectionThread(Ljava/lang/Thread;)V
    :try_end_9b
    .catchall {:try_start_2 .. :try_end_9b} :catchall_a3

    :goto_9b
    monitor-exit p0

    .line 860
    return v6

    .line 852
    :cond_9d
    if-eqz p3, :cond_a6

    .line 854
    :try_start_9f
    invoke-direct {p0, v2}, Lcom/android/supl/nc/NetworkController;->startCloseConnectionThread(Ljava/lang/Thread;)V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a3

    goto :goto_9b

    .end local v0    # "isStoped":Z
    .end local v2    # "thread":Ljava/lang/Thread;
    :catchall_a3
    move-exception v3

    monitor-exit p0

    throw v3

    .line 856
    .restart local v0    # "isStoped":Z
    .restart local v2    # "thread":Ljava/lang/Thread;
    :cond_a6
    :try_start_a6
    const-string/jumbo v3, "SUPL20_NC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not stoping NetworkController \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" because connection count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catchall {:try_start_a6 .. :try_end_d1} :catchall_a3

    goto :goto_9b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_stServerIPAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/nc/NetworkController;->m_iServerPortNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " NI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " CC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1028
    iget v1, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    .line 1027
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upDateConnectionCount()V
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    .line 207
    return-void
.end method
