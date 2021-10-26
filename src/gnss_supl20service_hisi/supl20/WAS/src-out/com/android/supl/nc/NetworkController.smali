.class public Lcom/android/supl/nc/NetworkController;
.super Ljava/lang/Object;
.source "NetworkController.java"


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

.field private iConnType:I

.field private iConnectionCount:I

.field private iFailerStatus:I

.field private iNetWorkID:I

.field private isConnectionError:Z

.field private isSCM:Z

.field private m_CilentSocket:Ljava/net/Socket;

.field private m_iConnTimeOut:I

.field private m_iHandShakeTimeOut:I

.field private m_iServerPortNo:I

.field private m_localSocket:Landroid/net/LocalSocket;

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

    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;
    .registers 2

    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;
    .registers 2

    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/supl/nc/NetworkController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->reconnectAgain()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/supl/nc/NetworkController;->keyStoreList:Ljava/util/List;

    .line 84
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILcom/android/supl/commprocessor/CommandProcessor;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "iSecure"    # I
    .param p2, "m_stServerIPAddr"    # Ljava/lang/String;
    .param p3, "m_iServerPortNo"    # I
    .param p4, "cp"    # Lcom/android/supl/commprocessor/CommandProcessor;
    .param p5, "m_stReadThreadName"    # Ljava/lang/String;
    .param p6, "m_stWriteThreadName"    # Ljava/lang/String;
    .param p7, "isSCM"    # Z

    .prologue
    const/16 v3, 0x7d0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput v2, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    .line 100
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/supl/nc/NetworkController;->server_conn_timeout:I

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/supl/nc/NetworkController;->server_conn_retry:I

    .line 104
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    .line 106
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_localSocket:Landroid/net/LocalSocket;

    .line 108
    const/16 v0, 0x1c6b

    iput v0, p0, Lcom/android/supl/nc/NetworkController;->m_iServerPortNo:I

    .line 110
    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->m_stServerIPAddr:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    .line 116
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    .line 118
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->deque:Ljava/util/concurrent/BlockingQueue;

    .line 120
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->ssl_Context:Ljavax/net/ssl/SSLContext;

    .line 122
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    .line 126
    iput v2, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    .line 130
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_stReadThreadName:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_stWriteThreadName:Ljava/lang/String;

    .line 136
    iput-boolean v2, p0, Lcom/android/supl/nc/NetworkController;->isConnectionError:Z

    .line 138
    iput v2, p0, Lcom/android/supl/nc/NetworkController;->iFailerStatus:I

    .line 143
    iput-boolean v2, p0, Lcom/android/supl/nc/NetworkController;->isSCM:Z

    .line 145
    iput v3, p0, Lcom/android/supl/nc/NetworkController;->m_iHandShakeTimeOut:I

    .line 147
    iput v3, p0, Lcom/android/supl/nc/NetworkController;->m_iConnTimeOut:I

    .line 675
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    .line 947
    iput-object v1, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 153
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

    .line 154
    iput p1, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    .line 155
    iput-object p2, p0, Lcom/android/supl/nc/NetworkController;->m_stServerIPAddr:Ljava/lang/String;

    .line 156
    iput p3, p0, Lcom/android/supl/nc/NetworkController;->m_iServerPortNo:I

    .line 157
    iput-object p4, p0, Lcom/android/supl/nc/NetworkController;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 158
    iput-object p5, p0, Lcom/android/supl/nc/NetworkController;->m_stReadThreadName:Ljava/lang/String;

    .line 159
    iput-object p6, p0, Lcom/android/supl/nc/NetworkController;->m_stWriteThreadName:Ljava/lang/String;

    .line 160
    iput-boolean p7, p0, Lcom/android/supl/nc/NetworkController;->isSCM:Z

    .line 152
    return-void
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

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_1f

    .line 368
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "Creating TLSv1 Context"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string/jumbo v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 408
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-virtual {v0, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 409
    return-object v0

    .line 371
    .restart local v0    # "context":Ljavax/net/ssl/SSLContext;
    :cond_1f
    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    const/4 v3, 0x2

    if-ne v3, v2, :cond_49

    .line 375
    :try_start_24
    const-string/jumbo v2, "TLSv1.1"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 376
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "TLSv1.1 Context created succesfully"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_34} :catch_35

    goto :goto_17

    .line 379
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :catch_35
    move-exception v1

    .line 380
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    if-nez v0, :cond_17

    .line 382
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "TLSv1.1 Context creation failed , so falling back to TLSv1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string/jumbo v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .restart local v0    # "context":Ljavax/net/ssl/SSLContext;
    goto :goto_17

    .line 387
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    :cond_49
    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    const/4 v3, 0x3

    if-ne v3, v2, :cond_73

    .line 391
    :try_start_4e
    const-string/jumbo v2, "TLSv1.2"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 392
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "TLSv1.2 Context created succesfully"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4e .. :try_end_5e} :catch_5f

    goto :goto_17

    .line 395
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :catch_5f
    move-exception v1

    .line 396
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    if-nez v0, :cond_17

    .line 398
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "TLSv1.2 Context creation failed , so falling back to TLSv1.1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string/jumbo v2, "TLSv1.1"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .restart local v0    # "context":Ljavax/net/ssl/SSLContext;
    goto :goto_17

    .line 405
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    :cond_73
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "Valid CONNECTION_TYPE not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
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
    .line 420
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 421
    .local v3, "sslContext":Ljavax/net/ssl/SSLContext;
    if-nez v3, :cond_28

    .line 423
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

    .line 424
    new-instance v5, Ljava/net/ConnectException;

    invoke-direct {v5}, Ljava/net/ConnectException;-><init>()V

    throw v5

    .line 426
    :cond_28
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 427
    .local v2, "socketFactory":Ljavax/net/ssl/SSLSocketFactory;
    new-instance v4, Lcom/android/supl/nc/MySSLSocketFactory;

    invoke-direct {v4, v2}, Lcom/android/supl/nc/MySSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 429
    .local v4, "sslSocketFactory":Lcom/android/supl/nc/MySSLSocketFactory;
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 430
    .local v1, "socket":Ljava/net/Socket;
    new-instance v0, Ljava/net/InetSocketAddress;

    .line 431
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getPortNumber()I

    move-result v6

    .line 430
    invoke-direct {v0, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 432
    .local v0, "remoteAddress":Ljava/net/SocketAddress;
    iget v5, p0, Lcom/android/supl/nc/NetworkController;->m_iConnTimeOut:I

    invoke-virtual {v1, v0, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 434
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getPortNumber()I

    move-result v6

    const/4 v7, 0x1

    .line 433
    invoke-virtual {v4, v1, v5, v6, v7}, Lcom/android/supl/nc/MySSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v5

    return-object v5
.end method

.method private getKeyStore()Ljava/security/KeyStore;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 222
    sget-object v8, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    if-eqz v8, :cond_8

    .line 223
    sget-object v8, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    return-object v8

    .line 226
    :cond_8
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    .line 227
    .local v0, "configManager":Lcom/android/supl/config/ConfigManager;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getPrivateKeyStore()Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "stKeyStorePath":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getPrivateKeyStoreConv()Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "stKeyStoreConv":Ljava/lang/String;
    if-nez v7, :cond_20

    .line 231
    const-string/jumbo v8, "SUPL20_NC"

    const-string/jumbo v9, "stKeyStorePath == null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-object v11

    .line 235
    :cond_20
    if-nez v6, :cond_2c

    .line 236
    const-string/jumbo v8, "SUPL20_NC"

    const-string/jumbo v9, "stKeyStoreConv == null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-object v11

    .line 240
    :cond_2c
    const/4 v3, 0x0

    .line 241
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 243
    .local v5, "ks":Ljava/security/KeyStore;
    :try_start_2e
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_86
    .catch Ljava/security/GeneralSecurityException; {:try_start_2e .. :try_end_33} :catch_69
    .catchall {:try_start_2e .. :try_end_33} :catchall_a1

    .line 244
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_33
    const-string/jumbo v8, "BKS"

    const-string/jumbo v9, "BC"

    invoke-static {v8, v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 245
    .local v5, "ks":Ljava/security/KeyStore;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 246
    sput-object v5, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_46} :catch_b8
    .catch Ljava/security/GeneralSecurityException; {:try_start_33 .. :try_end_46} :catch_bb
    .catchall {:try_start_33 .. :try_end_46} :catchall_b5

    .line 252
    if-eqz v4, :cond_4b

    .line 253
    :try_start_48
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_5c

    :cond_4b
    :goto_4b
    move-object v3, v4

    .line 258
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "ks":Ljava/security/KeyStore;
    :cond_4c
    :goto_4c
    sget-object v8, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    if-eqz v8, :cond_59

    .line 259
    const-string/jumbo v8, "SUPL20_NC"

    const-string/jumbo v9, "Successfully loaded Keystore"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_59
    sget-object v8, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    return-object v8

    .line 254
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

    .line 249
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .local v5, "ks":Ljava/security/KeyStore;
    :catch_69
    move-exception v2

    .line 250
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

    .line 252
    if-eqz v3, :cond_4c

    .line 253
    :try_start_75
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_4c

    .line 254
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

    .line 247
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "ks":Ljava/security/KeyStore;
    :catch_86
    move-exception v1

    .line 248
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

    .line 252
    if-eqz v3, :cond_4c

    .line 253
    :try_start_92
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_4c

    .line 254
    :catch_96
    move-exception v1

    const-string/jumbo v8, "SUPL20_NC"

    const-string/jumbo v9, "Error closing keystore file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 251
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_a1
    move-exception v8

    .line 252
    :goto_a2
    if-eqz v3, :cond_a7

    .line 253
    :try_start_a4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    .line 251
    :cond_a7
    :goto_a7
    throw v8

    .line 254
    :catch_a8
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "SUPL20_NC"

    const-string/jumbo v10, "Error closing keystore file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v11, Lcom/android/supl/nc/NetworkController;->keyStore:Ljava/security/KeyStore;

    goto :goto_a7

    .line 251
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_b5
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    goto :goto_a2

    .line 247
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_b8
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_87

    .line 249
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

    .line 299
    sget-object v7, Lcom/android/supl/nc/NetworkController;->keyStoreList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    .line 300
    sget-object v7, Lcom/android/supl/nc/NetworkController;->keyStoreList:Ljava/util/List;

    return-object v7

    .line 303
    :cond_c
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    .line 304
    .local v0, "configManager":Lcom/android/supl/config/ConfigManager;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getPrivateKeyStore()Ljava/lang/String;

    move-result-object v6

    .line 305
    .local v6, "stKeyStorePath":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getPrivateKeyStoreConv()Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, "stKeyStoreConv":Ljava/lang/String;
    if-nez v6, :cond_24

    .line 308
    const-string/jumbo v7, "SUPL20_NC"

    const-string/jumbo v8, "KeyStore is empty!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-object v10

    .line 312
    :cond_24
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v1, "dir":Ljava/io/File;
    if-nez v1, :cond_35

    .line 314
    const-string/jumbo v7, "SUPL20_NC"

    const-string/jumbo v8, "dir is null!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-object v10

    .line 317
    :cond_35
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_56

    .line 318
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

    .line 319
    return-object v10

    .line 321
    :cond_56
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_77

    .line 322
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

    .line 323
    return-object v10

    .line 325
    :cond_77
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "fileNames":[Ljava/lang/String;
    const/4 v7, 0x0

    array-length v8, v2

    :goto_7d
    if-ge v7, v8, :cond_ba

    aget-object v4, v2, v7

    .line 327
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v9, ".bks"

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_93

    const-string/jumbo v9, "gnss_hiskey_hisi.bks"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_96

    .line 326
    :cond_93
    :goto_93
    add-int/lit8 v7, v7, 0x1

    goto :goto_7d

    .line 331
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

    .line 332
    .local v3, "ks":Ljava/security/KeyStore;
    if-eqz v3, :cond_93

    .line 333
    sget-object v9, Lcom/android/supl/nc/NetworkController;->keyStoreList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 337
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

    .line 265
    if-nez p1, :cond_d

    .line 266
    const-string/jumbo v5, "SUPL20_NC"

    const-string/jumbo v6, "stKeyStorePath == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-object v7

    .line 270
    :cond_d
    if-nez p2, :cond_19

    .line 271
    const-string/jumbo v5, "SUPL20_NC"

    const-string/jumbo v6, "stKeyStoreConv == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-object v7

    .line 275
    :cond_19
    const/4 v2, 0x0

    .line 276
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 278
    .local v4, "ks":Ljava/security/KeyStore;
    :try_start_1b
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_6b
    .catch Ljava/security/GeneralSecurityException; {:try_start_1b .. :try_end_20} :catch_4f
    .catchall {:try_start_1b .. :try_end_20} :catchall_86

    .line 279
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_20
    const-string/jumbo v5, "BKS"

    const-string/jumbo v6, "BC"

    invoke-static {v5, v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 280
    .local v4, "ks":Ljava/security/KeyStore;
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_31} :catch_9c
    .catch Ljava/security/GeneralSecurityException; {:try_start_20 .. :try_end_31} :catch_9f
    .catchall {:try_start_20 .. :try_end_31} :catchall_99

    .line 286
    if-eqz v3, :cond_36

    .line 287
    :try_start_33
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_43

    .end local v4    # "ks":Ljava/security/KeyStore;
    :cond_36
    :goto_36
    move-object v2, v3

    .line 292
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_37
    :goto_37
    if-eqz v4, :cond_42

    .line 293
    const-string/jumbo v5, "SUPL20_NC"

    const-string/jumbo v6, "Successfully loaded Keystore"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_42
    return-object v4

    .line 288
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

    .line 283
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_4f
    move-exception v1

    .line 284
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

    .line 286
    if-eqz v2, :cond_37

    .line 287
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_37

    .line 288
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

    .line 281
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_6b
    move-exception v0

    .line 282
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

    .line 286
    if-eqz v2, :cond_37

    .line 287
    :try_start_77
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_37

    .line 288
    :catch_7b
    move-exception v0

    const-string/jumbo v5, "SUPL20_NC"

    const-string/jumbo v6, "Error closing keystore file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 285
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_86
    move-exception v5

    .line 286
    :goto_87
    if-eqz v2, :cond_8c

    .line 287
    :try_start_89
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    .line 285
    :cond_8c
    :goto_8c
    throw v5

    .line 288
    :catch_8d
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "SUPL20_NC"

    const-string/jumbo v7, "Error closing keystore file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .restart local v4    # "ks":Ljava/security/KeyStore;
    goto :goto_8c

    .line 285
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "ks":Ljava/security/KeyStore;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_99
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    goto :goto_87

    .line 281
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_9c
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_6c

    .line 283
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
    .line 440
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p1, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 441
    .local v0, "address":Landroid/net/LocalSocketAddress;
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 444
    .local v2, "unixsoc":Landroid/net/LocalSocket;
    :try_start_c
    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_10

    .line 450
    :goto_f
    return-object v2

    .line 447
    :catch_10
    move-exception v1

    .line 448
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "SUPL20_NC"

    const-string/jumbo v4, "Exception caught while connecting the unix socket"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private getPortNumber()I
    .registers 2

    .prologue
    .line 170
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
    .line 413
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->ssl_Context:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_a

    .line 414
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->createSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->ssl_Context:Ljavax/net/ssl/SSLContext;

    .line 416
    :cond_a
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->ssl_Context:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method private getSocket()Ljava/net/Socket;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/net/ConnectException;,
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 454
    const/4 v6, 0x0

    .line 455
    .local v6, "socket":Ljava/net/Socket;
    iget v10, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    if-nez v10, :cond_1d

    .line 456
    new-instance v6, Ljava/net/Socket;

    .end local v6    # "socket":Ljava/net/Socket;
    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    .line 458
    .local v6, "socket":Ljava/net/Socket;
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getPortNumber()I

    move-result v11

    invoke-direct {v3, v10, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 459
    .local v3, "remoteAddress":Ljava/net/SocketAddress;
    iget v10, p0, Lcom/android/supl/nc/NetworkController;->server_conn_timeout:I

    invoke-virtual {v6, v3, v10}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 518
    .end local v3    # "remoteAddress":Ljava/net/SocketAddress;
    :goto_1c
    return-object v6

    .line 462
    .local v6, "socket":Ljava/net/Socket;
    :cond_1d
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->createSSLSocket()Ljava/net/Socket;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SSLSocket;

    .line 463
    .local v7, "sslSocket":Ljavax/net/ssl/SSLSocket;
    if-nez v7, :cond_27

    .line 465
    const/4 v10, 0x0

    return-object v10

    .line 469
    :cond_27
    const-string/jumbo v10, "SUPL20_NC"

    const-string/jumbo v11, "NO_FALLBACK"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v9

    .line 472
    .local v9, "suites":[Ljava/lang/String;
    if-eqz v9, :cond_5b

    array-length v10, v9

    const/4 v11, 0x1

    if-le v10, v11, :cond_5b

    .line 473
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    new-array v2, v10, [Ljava/lang/String;

    .line 474
    .local v2, "newSuites":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 475
    .local v0, "index":I
    const/4 v10, 0x0

    array-length v11, v9

    move v1, v0

    .end local v0    # "index":I
    .local v1, "index":I
    :goto_43
    if-ge v10, v11, :cond_58

    aget-object v8, v9, v10

    .line 476
    .local v8, "suite":Ljava/lang/String;
    const-string/jumbo v12, "TLS_FALLBACK_SCSV"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_114

    .line 477
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput-object v8, v2, v1

    .line 475
    :goto_54
    add-int/lit8 v10, v10, 0x1

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_43

    .line 480
    .end local v8    # "suite":Ljava/lang/String;
    :cond_58
    invoke-virtual {v7, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 483
    .end local v1    # "index":I
    .end local v2    # "newSuites":[Ljava/lang/String;
    :cond_5b
    iget v10, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    const/4 v11, 0x1

    if-ne v11, v10, :cond_c1

    .line 484
    const-string/jumbo v10, "SUPL20_NC"

    const-string/jumbo v11, "Enabling TLSv1"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "TLSv1"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 496
    :cond_75
    :goto_75
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 497
    iget v10, p0, Lcom/android/supl/nc/NetworkController;->m_iHandShakeTimeOut:I

    invoke-virtual {v7, v10}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 498
    new-instance v10, Lcom/android/supl/nc/NetworkController$1;

    invoke-direct {v10, p0}, Lcom/android/supl/nc/NetworkController$1;-><init>(Lcom/android/supl/nc/NetworkController;)V

    invoke-virtual {v7, v10}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 504
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 505
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 506
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    .line 507
    .local v5, "session":Ljavax/net/ssl/SSLSession;
    const-string/jumbo v10, "SUPL20_NC"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "The SSL Protocol used is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-interface {v5}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v4

    .line 509
    .local v4, "secured":Z
    if-eqz v4, :cond_10a

    .line 510
    const-string/jumbo v10, "SUPL20_NC"

    const-string/jumbo v11, "Connection Secured."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_be
    move-object v6, v7

    .local v6, "socket":Ljava/net/Socket;
    goto/16 :goto_1c

    .line 486
    .end local v4    # "secured":Z
    .end local v5    # "session":Ljavax/net/ssl/SSLSession;
    .local v6, "socket":Ljava/net/Socket;
    :cond_c1
    iget v10, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    const/4 v11, 0x2

    if-ne v11, v10, :cond_e2

    .line 487
    const-string/jumbo v10, "SUPL20_NC"

    const-string/jumbo v11, "Enabling TLSv1 and TLSv1.1"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "TLSv1.1"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "TLSv1"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_75

    .line 489
    :cond_e2
    iget v10, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    const/4 v11, 0x3

    if-ne v11, v10, :cond_75

    .line 490
    const-string/jumbo v10, "SUPL20_NC"

    const-string/jumbo v11, "Enabling TLSv1.2 and TLSv1.1"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "TLSv1.2"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string/jumbo v11, "TLSv1.1"

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const-string/jumbo v11, "TLSv1"

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-virtual {v7, v10}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto/16 :goto_75

    .line 513
    .restart local v4    # "secured":Z
    .restart local v5    # "session":Ljavax/net/ssl/SSLSession;
    :cond_10a
    const-string/jumbo v10, "SUPL20_NC"

    const-string/jumbo v11, "Connection Not Secured."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .end local v4    # "secured":Z
    .end local v5    # "session":Ljavax/net/ssl/SSLSession;
    .restart local v1    # "index":I
    .restart local v2    # "newSuites":[Ljava/lang/String;
    .restart local v8    # "suite":Ljava/lang/String;
    :cond_114
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto/16 :goto_54
.end method

.method private initReadThread()V
    .registers 6

    .prologue
    .line 883
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    if-nez v2, :cond_2c

    .line 885
    new-instance v2, Lcom/android/supl/nc/ReaderThread;

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    iget v4, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    invoke-direct {v2, v3, v4}, Lcom/android/supl/nc/ReaderThread;-><init>(Lcom/android/supl/commprocessor/CommandProcessor;I)V

    iput-object v2, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    .line 886
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    invoke-virtual {v2, p0}, Lcom/android/supl/nc/ReaderThread;->setNetworkController(Lcom/android/supl/nc/NetworkController;)V

    .line 887
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "readerThread initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :goto_1d
    :try_start_1d
    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_36

    .line 894
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->m_localSocket:Landroid/net/LocalSocket;

    iget-object v4, p0, Lcom/android/supl/nc/NetworkController;->m_stReadThreadName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/supl/nc/ReaderThread;->setLocalClientSocket(Landroid/net/LocalSocket;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_2b} :catch_40
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_2b} :catch_4c

    .line 882
    :goto_2b
    return-void

    .line 889
    :cond_2c
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "readerThread already initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 898
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

    .line 900
    :catch_40
    move-exception v0

    .line 901
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "SUPL20_NC"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 902
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_4c
    move-exception v1

    .line 903
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "SUPL20_NC"

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method private initWriteThread()V
    .registers 7

    .prologue
    .line 909
    :try_start_0
    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->deque:Ljava/util/concurrent/BlockingQueue;

    if-nez v3, :cond_3d

    .line 910
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v3, p0, Lcom/android/supl/nc/NetworkController;->deque:Ljava/util/concurrent/BlockingQueue;

    .line 911
    const-string/jumbo v3, "SUPL20_NC"

    const-string/jumbo v4, "deque initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :goto_16
    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    if-nez v3, :cond_6a

    .line 917
    const-string/jumbo v3, "SUPL20_NC"

    const-string/jumbo v4, "WriterThread initialize"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    new-instance v3, Lcom/android/supl/nc/WriterThread;

    iget-object v4, p0, Lcom/android/supl/nc/NetworkController;->deque:Ljava/util/concurrent/BlockingQueue;

    iget v5, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    invoke-direct {v3, v4, p0, v5}, Lcom/android/supl/nc/WriterThread;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/supl/nc/NetworkController;I)V

    iput-object v3, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_5e

    .line 924
    :goto_2e
    :try_start_2e
    iget v3, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_74

    .line 926
    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    iget-object v4, p0, Lcom/android/supl/nc/NetworkController;->m_localSocket:Landroid/net/LocalSocket;

    iget-object v5, p0, Lcom/android/supl/nc/NetworkController;->m_stWriteThreadName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/supl/nc/WriterThread;->setLocalClientSocket(Landroid/net/LocalSocket;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_3c} :catch_7e
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_3c} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3c} :catch_5e

    .line 907
    :goto_3c
    return-void

    .line 913
    :cond_3d
    :try_start_3d
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
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5d} :catch_5e

    goto :goto_16

    .line 938
    :catch_5e
    move-exception v0

    .line 939
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "SUPL20_NC"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 921
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_6a
    :try_start_6a
    const-string/jumbo v3, "SUPL20_NC"

    const-string/jumbo v4, "WriterThread already initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_73} :catch_5e

    goto :goto_2e

    .line 930
    :cond_74
    :try_start_74
    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    iget-object v4, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    iget-object v5, p0, Lcom/android/supl/nc/NetworkController;->m_stWriteThreadName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/supl/nc/WriterThread;->setClientSocket(Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_74 .. :try_end_7d} :catch_7e
    .catch Ljava/lang/IllegalStateException; {:try_start_74 .. :try_end_7d} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7d} :catch_5e

    goto :goto_3c

    .line 932
    :catch_7e
    move-exception v1

    .line 933
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_7f
    const-string/jumbo v3, "SUPL20_NC"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 934
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_8a
    move-exception v2

    .line 935
    .local v2, "ex":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "SUPL20_NC"

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_95} :catch_5e

    goto :goto_3c
.end method

.method public static final isThreadRunning(Ljava/lang/String;)Z
    .registers 8
    .param p0, "stThreadName"    # Ljava/lang/String;

    .prologue
    .line 792
    const/4 v1, 0x0

    .line 793
    .local v1, "isThreadRuning":Z
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_a

    .line 794
    :cond_9
    return v1

    .line 796
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_38

    .line 797
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 798
    .local v5, "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    if-eqz v5, :cond_38

    .line 800
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Thread;

    .line 799
    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Thread;

    .line 801
    .local v3, "runningThreadArray":[Ljava/lang/Thread;
    const/4 v0, 0x0

    .end local v1    # "isThreadRuning":Z
    .local v0, "i":I
    :goto_27
    array-length v6, v3

    if-ge v0, v6, :cond_38

    .line 802
    aget-object v2, v3, v0

    .line 803
    .local v2, "runningThread":Ljava/lang/Thread;
    if-eqz v2, :cond_39

    .line 804
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 805
    .local v4, "stRunningThreadName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 806
    .local v1, "isThreadRuning":Z
    if-eqz v1, :cond_39

    .line 815
    .end local v0    # "i":I
    .end local v1    # "isThreadRuning":Z
    .end local v2    # "runningThread":Ljava/lang/Thread;
    .end local v3    # "runningThreadArray":[Ljava/lang/Thread;
    .end local v4    # "stRunningThreadName":Ljava/lang/String;
    .end local v5    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    :cond_38
    return v1

    .line 801
    .restart local v0    # "i":I
    .restart local v2    # "runningThread":Ljava/lang/Thread;
    .restart local v3    # "runningThreadArray":[Ljava/lang/Thread;
    .restart local v5    # "threadSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Thread;>;"
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method

.method private reconnectAgain()V
    .registers 3

    .prologue
    .line 819
    const-string/jumbo v0, "SUPL20_NC"

    const-string/jumbo v1, "Trying to connect again"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/supl/nc/NetworkController;->connect([IZ)Z

    .line 818
    return-void
.end method

.method private startCloseConnectionThread(Ljava/lang/Thread;)V
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 784
    const-string/jumbo v0, "Connection close thread"

    invoke-static {v0}, Lcom/android/supl/nc/NetworkController;->isThreadRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 785
    return-void

    .line 787
    :cond_a
    const-string/jumbo v0, "Connection close thread"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 783
    return-void
.end method


# virtual methods
.method public CloseReadWriteStreams()V
    .registers 3

    .prologue
    .line 969
    const-string/jumbo v0, "SUPL20_NC"

    const-string/jumbo v1, "Start CloseReadWriteStreams"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    invoke-virtual {v0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    .line 971
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    invoke-virtual {v0}, Lcom/android/supl/nc/WriterThread;->closeWrite()V

    .line 972
    const-string/jumbo v0, "SUPL20_NC"

    const-string/jumbo v1, "End CloseReadWriteStreams"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void
.end method

.method public IsSCM()Z
    .registers 2

    .prologue
    .line 977
    iget-boolean v0, p0, Lcom/android/supl/nc/NetworkController;->isSCM:Z

    return v0
.end method

.method public SetTimeOuts(II)V
    .registers 3
    .param p1, "iHandShakeTimeOut"    # I
    .param p2, "iConnTimeOut"    # I

    .prologue
    .line 982
    iput p1, p0, Lcom/android/supl/nc/NetworkController;->m_iHandShakeTimeOut:I

    .line 983
    iput p2, p0, Lcom/android/supl/nc/NetworkController;->m_iConnTimeOut:I

    .line 980
    return-void
.end method

.method public addPacket(Lcom/android/supl/nc/SendToServer;)V
    .registers 3
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    if-eqz v0, :cond_9

    .line 671
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    invoke-virtual {v0, p1}, Lcom/android/supl/nc/WriterThread;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 669
    :cond_9
    return-void
.end method

.method public closeConnection()V
    .registers 5

    .prologue
    .line 825
    iget v1, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6d

    .line 827
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_localSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_6c

    .line 830
    :try_start_9
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_13c

    .line 835
    :goto_e
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

    .line 837
    const-string/jumbo v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Socket isBound:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->m_localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->isBound()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string/jumbo v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Socket isConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController;->m_localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_6c
    :goto_6c
    return-void

    .line 846
    :cond_6d
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    if-eqz v1, :cond_6c

    .line 867
    :try_start_71
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 868
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

    .line 870
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

    .line 871
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

    .line 872
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

    .line 873
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

    .line 874
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
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_134} :catch_136

    goto/16 :goto_6c

    .line 875
    :catch_136
    move-exception v0

    .line 877
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6c

    .line 832
    .end local v0    # "e":Ljava/io/IOException;
    :catch_13c
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_e
.end method

.method public declared-synchronized connect([IZ)Z
    .registers 17
    .param p1, "failStatus"    # [I
    .param p2, "isReConnection"    # Z

    .prologue
    monitor-enter p0

    .line 523
    const/4 v9, 0x0

    .line 524
    .local v9, "iNumberOfRetryAttmpt":I
    const/4 v10, 0x0

    .line 525
    .local v10, "isConnect":Z
    if-nez p2, :cond_16

    .line 526
    :try_start_5
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->isConnected()Z

    move-result v10

    .line 527
    .local v10, "isConnect":Z
    if-eqz v10, :cond_19

    .line 528
    const-string/jumbo v11, "SUPL20_NC"

    const-string/jumbo v12, "Socket already in connected state so returning"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_ec

    monitor-exit p0

    .line 529
    return v10

    .line 533
    .local v10, "isConnect":Z
    :cond_16
    const/4 v11, 0x0

    :try_start_17
    iput-object v11, p0, Lcom/android/supl/nc/NetworkController;->m_localSocket:Landroid/net/LocalSocket;

    .line 536
    .end local v10    # "isConnect":Z
    :cond_19
    iget-boolean v11, p0, Lcom/android/supl/nc/NetworkController;->isConnectionError:Z

    if-eqz v11, :cond_51

    .line 537
    if-eqz p1, :cond_2d

    .line 538
    const-string/jumbo v11, "SUPL20_NC"

    const-string/jumbo v12, "Connect: IsConnectionError set to True"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget v11, p0, Lcom/android/supl/nc/NetworkController;->iFailerStatus:I

    const/4 v12, 0x0

    aput v11, p1, v12
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_ec

    :cond_2d
    monitor-exit p0

    .line 541
    return v10

    .line 627
    .local v10, "isConnect":Z
    :cond_2f
    :try_start_2f
    const-string/jumbo v11, "SUPL20_NC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Connection retry attempt "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget v11, p0, Lcom/android/supl/nc/NetworkController;->server_conn_timeout:I

    int-to-long v12, v11

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_4f} :catch_229
    .catchall {:try_start_2f .. :try_end_4f} :catchall_ec

    .line 650
    :cond_4f
    :goto_4f
    if-nez v10, :cond_9a

    .line 547
    .end local v10    # "isConnect":Z
    :cond_51
    add-int/lit8 v9, v9, 0x1

    .line 548
    :try_start_53
    iget v11, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_ef

    .line 550
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    .line 551
    .local v0, "config":Lcom/android/supl/config/ConfigManager;
    iget-boolean v11, p0, Lcom/android/supl/nc/NetworkController;->isSCM:Z

    if-eqz v11, :cond_a8

    .line 552
    const-string/jumbo v11, "SUPL20_NC"

    const-string/jumbo v12, "Calling getLocalSocket for SCM"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getSCMUnixSocketPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/supl/nc/NetworkController;->getLocalSocket(Ljava/lang/String;)Landroid/net/LocalSocket;

    move-result-object v11

    iput-object v11, p0, Lcom/android/supl/nc/NetworkController;->m_localSocket:Landroid/net/LocalSocket;

    .line 567
    .end local v0    # "config":Lcom/android/supl/config/ConfigManager;
    :cond_73
    :goto_73
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->initRead_WriteThread()V
    :try_end_76
    .catch Ljava/net/UnknownHostException; {:try_start_53 .. :try_end_76} :catch_bc
    .catch Ljavax/net/ssl/SSLException; {:try_start_53 .. :try_end_76} :catch_1ef
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_53 .. :try_end_76} :catch_1be
    .catch Ljava/net/ConnectException; {:try_start_53 .. :try_end_76} :catch_18d
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_76} :catch_15c
    .catch Ljava/security/KeyManagementException; {:try_start_53 .. :try_end_76} :catch_12b
    .catch Ljava/security/GeneralSecurityException; {:try_start_53 .. :try_end_76} :catch_fa
    .catchall {:try_start_53 .. :try_end_76} :catchall_ec

    .line 617
    :cond_76
    :goto_76
    :try_start_76
    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->isConnected()Z

    move-result v10

    .line 619
    .restart local v10    # "isConnect":Z
    if-nez v10, :cond_4f

    .line 620
    iget v11, p0, Lcom/android/supl/nc/NetworkController;->server_conn_retry:I

    if-lt v9, v11, :cond_2f

    .line 622
    const-string/jumbo v11, "SUPL20_NC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Connection failed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    .end local v10    # "isConnect":Z
    :cond_9a
    :goto_9a
    if-nez v10, :cond_a6

    if-eqz p1, :cond_a6

    .line 652
    const/4 v11, 0x0

    aget v11, p1, v11

    iput v11, p0, Lcom/android/supl/nc/NetworkController;->iFailerStatus:I

    .line 653
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/supl/nc/NetworkController;->isConnectionError:Z
    :try_end_a6
    .catchall {:try_start_76 .. :try_end_a6} :catchall_ec

    :cond_a6
    monitor-exit p0

    .line 655
    return v10

    .line 555
    .restart local v0    # "config":Lcom/android/supl/config/ConfigManager;
    :cond_a8
    :try_start_a8
    const-string/jumbo v11, "SUPL20_NC"

    const-string/jumbo v12, "Calling getLocalSocket for PCM"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getPCMUnixSocketPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/supl/nc/NetworkController;->getLocalSocket(Ljava/lang/String;)Landroid/net/LocalSocket;

    move-result-object v11

    iput-object v11, p0, Lcom/android/supl/nc/NetworkController;->m_localSocket:Landroid/net/LocalSocket;
    :try_end_bb
    .catch Ljava/net/UnknownHostException; {:try_start_a8 .. :try_end_bb} :catch_bc
    .catch Ljavax/net/ssl/SSLException; {:try_start_a8 .. :try_end_bb} :catch_1ef
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a8 .. :try_end_bb} :catch_1be
    .catch Ljava/net/ConnectException; {:try_start_a8 .. :try_end_bb} :catch_18d
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_bb} :catch_15c
    .catch Ljava/security/KeyManagementException; {:try_start_a8 .. :try_end_bb} :catch_12b
    .catch Ljava/security/GeneralSecurityException; {:try_start_a8 .. :try_end_bb} :catch_fa
    .catchall {:try_start_a8 .. :try_end_bb} :catchall_ec

    goto :goto_73

    .line 569
    .end local v0    # "config":Lcom/android/supl/config/ConfigManager;
    :catch_bc
    move-exception v8

    .line 570
    .local v8, "ex":Ljava/net/UnknownHostException;
    :try_start_bd
    const-string/jumbo v11, "SUPL20_NC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error on Connection "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string/jumbo v11, "SUPL20_NC"

    invoke-virtual {v8}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    if-eqz p1, :cond_76

    .line 573
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, p1, v12
    :try_end_eb
    .catchall {:try_start_bd .. :try_end_eb} :catchall_ec

    goto :goto_76

    .end local v8    # "ex":Ljava/net/UnknownHostException;
    :catchall_ec
    move-exception v11

    monitor-exit p0

    throw v11

    .line 561
    :cond_ef
    :try_start_ef
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->getSocket()Ljava/net/Socket;

    move-result-object v11

    iput-object v11, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    .line 562
    iget-object v11, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;
    :try_end_f7
    .catch Ljava/net/UnknownHostException; {:try_start_ef .. :try_end_f7} :catch_bc
    .catch Ljavax/net/ssl/SSLException; {:try_start_ef .. :try_end_f7} :catch_1ef
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ef .. :try_end_f7} :catch_1be
    .catch Ljava/net/ConnectException; {:try_start_ef .. :try_end_f7} :catch_18d
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f7} :catch_15c
    .catch Ljava/security/KeyManagementException; {:try_start_ef .. :try_end_f7} :catch_12b
    .catch Ljava/security/GeneralSecurityException; {:try_start_ef .. :try_end_f7} :catch_fa
    .catchall {:try_start_ef .. :try_end_f7} :catchall_ec

    if-nez v11, :cond_73

    goto :goto_9a

    .line 609
    :catch_fa
    move-exception v2

    .line 610
    .local v2, "e":Ljava/security/GeneralSecurityException;
    :try_start_fb
    const-string/jumbo v11, "SUPL20_NC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error on Connection "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string/jumbo v11, "SUPL20_NC"

    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    if-eqz p1, :cond_76

    .line 613
    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v11, p1, v12

    goto/16 :goto_76

    .line 602
    .end local v2    # "e":Ljava/security/GeneralSecurityException;
    :catch_12b
    move-exception v3

    .line 603
    .local v3, "e":Ljava/security/KeyManagementException;
    const-string/jumbo v11, "SUPL20_NC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error on Connection "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string/jumbo v11, "SUPL20_NC"

    invoke-virtual {v3}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    if-eqz p1, :cond_76

    .line 606
    const/4 v11, 0x3

    const/4 v12, 0x0

    aput v11, p1, v12

    goto/16 :goto_76

    .line 596
    .end local v3    # "e":Ljava/security/KeyManagementException;
    :catch_15c
    move-exception v6

    .line 597
    .local v6, "ex":Ljava/io/IOException;
    const-string/jumbo v11, "SUPL20_NC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error on Connection "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string/jumbo v11, "SUPL20_NC"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    if-eqz p1, :cond_76

    .line 600
    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v11, p1, v12

    goto/16 :goto_76

    .line 590
    .end local v6    # "ex":Ljava/io/IOException;
    :catch_18d
    move-exception v7

    .line 591
    .local v7, "ex":Ljava/net/ConnectException;
    const-string/jumbo v11, "SUPL20_NC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error on Connection "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string/jumbo v11, "SUPL20_NC"

    invoke-virtual {v7}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    if-eqz p1, :cond_76

    .line 594
    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v11, p1, v12

    goto/16 :goto_76

    .line 584
    .end local v7    # "ex":Ljava/net/ConnectException;
    :catch_1be
    move-exception v4

    .line 585
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v11, "SUPL20_NC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error on Connection "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string/jumbo v11, "SUPL20_NC"

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    if-eqz p1, :cond_76

    .line 588
    const/4 v11, 0x4

    const/4 v12, 0x0

    aput v11, p1, v12

    goto/16 :goto_76

    .line 576
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1ef
    move-exception v5

    .line 577
    .local v5, "e":Ljavax/net/ssl/SSLException;
    const-string/jumbo v11, "SUPL20_NC"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error on Connection "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string/jumbo v11, "SUPL20_NC"

    const-string/jumbo v12, "Inside SSLException "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string/jumbo v11, "SUPL20_NC"

    invoke-virtual {v5}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    if-eqz p1, :cond_76

    .line 581
    const/4 v11, 0x4

    const/4 v12, 0x0

    aput v11, p1, v12
    :try_end_227
    .catchall {:try_start_fb .. :try_end_227} :catchall_ec

    goto/16 :goto_76

    .line 630
    .end local v5    # "e":Ljavax/net/ssl/SSLException;
    .restart local v10    # "isConnect":Z
    :catch_229
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_4f
.end method

.method public decrementConnectionCount()V
    .registers 2

    .prologue
    .line 184
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    .line 183
    return-void
.end method

.method public getConnectionCount()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    return v0
.end method

.method protected getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .registers 6

    .prologue
    .line 354
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "alg":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 356
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

    .line 357
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_1e
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_1e} :catch_20

    move-result-object v3

    return-object v3

    .line 358
    .end local v0    # "alg":Ljava/lang/String;
    .end local v2    # "kmFact":Ljavax/net/ssl/KeyManagerFactory;
    :catch_20
    move-exception v1

    .line 359
    .local v1, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v3, "SUPL20_NC"

    const-string/jumbo v4, "Error while creating Keymaanger: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    const/4 v3, 0x0

    return-object v3
.end method

.method public getNetWorkID()I
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    return v0
.end method

.method public getNetworkCommandProcessor()Lcom/android/supl/commprocessor/NetworkCommandProcessor;
    .registers 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    return-object v0
.end method

.method public getServerIPAddr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->m_stServerIPAddr:Ljava/lang/String;

    return-object v0
.end method

.method protected getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 342
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

    .line 346
    :catch_15
    move-exception v0

    .line 347
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "Error while creating TrustManager: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    return-object v6

    .line 343
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_20
    move-exception v1

    .line 344
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "Error while creating TrustManager: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    return-object v6
.end method

.method public initRead_WriteThread()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 659
    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->readerThread:Lcom/android/supl/nc/ReaderThread;

    .line 660
    iput-object v0, p0, Lcom/android/supl/nc/NetworkController;->writerThread:Lcom/android/supl/nc/WriterThread;

    .line 661
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    .line 663
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

    .line 665
    :cond_2a
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->initWriteThread()V

    .line 666
    invoke-direct {p0}, Lcom/android/supl/nc/NetworkController;->initReadThread()V

    .line 658
    return-void
.end method

.method public isConnected()Z
    .registers 4

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "isConnected":Z
    iget v1, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 206
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_localSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_10

    .line 208
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_localSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    .line 218
    .end local v0    # "isConnected":Z
    :cond_10
    :goto_10
    return v0

    .line 213
    .restart local v0    # "isConnected":Z
    :cond_11
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    if-eqz v1, :cond_10

    .line 214
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    .local v0, "isConnected":Z
    goto :goto_10
.end method

.method public isNetWorkMatch(I)Z
    .registers 3
    .param p1, "iNetWorkID"    # I

    .prologue
    .line 195
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
    .line 956
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    if-eqz v1, :cond_17

    .line 957
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->m_stServerIPAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/supl/nc/NetworkController;->m_iServerPortNo:I

    iget v4, p0, Lcom/android/supl/nc/NetworkController;->iConnType:I

    iget v5, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->getNetKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, "stKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    invoke-virtual {v1, v0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->removeFailerSession(Ljava/lang/String;)V

    .line 955
    .end local v0    # "stKey":Ljava/lang/String;
    :cond_17
    return-void
.end method

.method public setNetWorkID(I)V
    .registers 2
    .param p1, "iNetWorkID"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    .line 174
    return-void
.end method

.method public setNetworkCommProceeor(Lcom/android/supl/commprocessor/NetworkCommandProcessor;)V
    .registers 2
    .param p1, "networkCommandProcessor"    # Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .prologue
    .line 952
    iput-object p1, p0, Lcom/android/supl/nc/NetworkController;->networkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 951
    return-void
.end method

.method public setServer_conn_Timeout_Retries(II)V
    .registers 3
    .param p1, "iTimeOut"    # I
    .param p2, "iRetries"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/android/supl/nc/NetworkController;->server_conn_timeout:I

    .line 165
    iput p2, p0, Lcom/android/supl/nc/NetworkController;->server_conn_retry:I

    .line 163
    return-void
.end method

.method public declared-synchronized stop(ZLjava/lang/Object;Z)Z
    .registers 10
    .param p1, "isStop"    # Z
    .param p2, "pauseLock"    # Ljava/lang/Object;
    .param p3, "ConnectAgain"    # Z

    .prologue
    const/4 v5, 0x0

    monitor-enter p0

    .line 678
    :try_start_2
    const-string/jumbo v2, "SUPL20_NC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stop() isStop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",ConnectAgain:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    new-instance v1, Lcom/android/supl/nc/NetworkController$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/supl/nc/NetworkController$2;-><init>(Lcom/android/supl/nc/NetworkController;ZZLjava/lang/Object;)V

    .line 756
    .local v1, "thread":Ljava/lang/Thread;
    const-string/jumbo v2, "SUPL20_NC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Before decrement Connection Count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    if-nez p3, :cond_54

    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    if-lez v2, :cond_54

    .line 758
    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    .line 760
    :cond_54
    const-string/jumbo v2, "SUPL20_NC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "After decrement Connection Count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    if-nez v2, :cond_9c

    .line 762
    if-nez p3, :cond_8e

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    instance-of v2, v2, Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    if-eqz v2, :cond_8e

    .line 764
    iget-object v0, p0, Lcom/android/supl/nc/NetworkController;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    check-cast v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 765
    .local v0, "networkCommandProcessor":Lcom/android/supl/commprocessor/NetworkCommandProcessor;
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "sendOnNetWorkSessionClose() "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget v2, p0, Lcom/android/supl/nc/NetworkController;->iNetWorkID:I

    invoke-virtual {v0, v2}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sendOnNetWorkSessionClose(I)V

    .line 769
    .end local v0    # "networkCommandProcessor":Lcom/android/supl/commprocessor/NetworkCommandProcessor;
    :cond_8e
    const-string/jumbo v2, "SUPL20_NC"

    const-string/jumbo v3, "Starting startCloseConnectionThread"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-direct {p0, v1}, Lcom/android/supl/nc/NetworkController;->startCloseConnectionThread(Ljava/lang/Thread;)V
    :try_end_9a
    .catchall {:try_start_2 .. :try_end_9a} :catchall_a2

    :goto_9a
    monitor-exit p0

    .line 780
    return v5

    .line 772
    :cond_9c
    if-eqz p3, :cond_a5

    .line 774
    :try_start_9e
    invoke-direct {p0, v1}, Lcom/android/supl/nc/NetworkController;->startCloseConnectionThread(Ljava/lang/Thread;)V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a2

    goto :goto_9a

    .end local v1    # "thread":Ljava/lang/Thread;
    :catchall_a2
    move-exception v2

    monitor-exit p0

    throw v2

    .line 776
    .restart local v1    # "thread":Ljava/lang/Thread;
    :cond_a5
    :try_start_a5
    const-string/jumbo v2, "SUPL20_NC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not stoping NetworkController \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" because connection count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catchall {:try_start_a5 .. :try_end_d0} :catchall_a2

    goto :goto_9a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 944
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

    .line 945
    iget v1, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    .line 944
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upDateConnectionCount()V
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/supl/nc/NetworkController;->iConnectionCount:I

    .line 179
    return-void
.end method
