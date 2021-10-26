.class public Lcom/android/supl/commprocessor/ServerCommProcessor;
.super Ljava/lang/Object;
.source "ServerCommProcessor.java"

# interfaces
.implements Lcom/android/supl/commprocessor/CommandProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;,
        Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final COMM_MSG_HELLO_TO_COMM_SRVC_MAGIC_CODE:I = -0x66cf7bac

.field public static final COMM_MSG_HELLO_TO_SUPL_CLIENT_MAGIC_CODE:I = -0x7eb79a9d

.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_SCM"

.field public static final MASTER_BUFF_LEN:I = 0x1388

.field public static final MSG_SCM_BYE:I = 0x200

.field public static final MSG_SCM_CONNECT:I = 0x202

.field public static final MSG_SCM_DISCONNECT:I = 0x203

.field public static final MSG_SCM_HELLO_TO_COMM_SRVC:I = 0x201

.field public static final MSG_SCM_HELLO_TO_SUPL_CLIENT:I = 0x205

.field public static final MSG_SCM_NW_CONNECTION_OFF:I = 0x20b

.field public static final MSG_SCM_NW_CONNECTION_ON:I = 0x20a

.field public static final MSG_SCM_ON_CONNECTED:I = 0x206

.field public static final MSG_SCM_ON_NOT_CONNECTED:I = 0x207

.field public static final MSG_SCM_ON_NW_SESSION_CLOSED:I = 0x209

.field public static final MSG_SCM_ON_RECEIVE:I = 0x208

.field public static final MSG_SCM_ON_RECEIVE_FROM_NON_TCP:I = 0x20d

.field public static final MSG_SCM_SEND:I = 0x204

.field public static final MSG_SCM_SYS_IDLE:I = 0x20c


# instance fields
.field private iLastWritePostion:I

.field private iTotalArrival:I

.field private isPause:Z

.field private mContext:Landroid/content/Context;

.field private mListening:Z

.field private mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

.field private mReceiver:Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;

.field private m_bMasterBuffer:[B

.field private nc:Lcom/android/supl/nc/NetworkController;

.field private packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

.field private final pauseLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/supl/commprocessor/ServerCommProcessor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/supl/commprocessor/ServerCommProcessor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/commprocessor/NetworkCommandProcessor;
    .locals 1

    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/nc/NetworkController;
    .locals 1

    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;
    .locals 1

    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/supl/commprocessor/ServerCommProcessor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->pauseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/supl/commprocessor/ServerCommProcessor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 97
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    .line 99
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    .line 101
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 105
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mContext:Landroid/content/Context;

    .line 107
    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    .line 490
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->pauseLock:Ljava/lang/Object;

    .line 534
    iput v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 536
    iput v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 113
    new-instance v0, Lcom/android/supl/nc/NetworkController;

    const-string/jumbo v2, "10.4.0.51"

    const-string/jumbo v5, "SCM read thread"

    .line 114
    const-string/jumbo v6, "SCM write thread"

    .line 113
    const/16 v3, 0x115c

    .line 114
    const/4 v7, 0x1

    move-object v4, p0

    .line 113
    invoke-direct/range {v0 .. v7}, Lcom/android/supl/nc/NetworkController;-><init>(ILjava/lang/String;ILcom/android/supl/commprocessor/CommandProcessor;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 115
    new-instance v0, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    const-string/jumbo v1, "SCM command process thread"

    invoke-direct {v0, p0, v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    .line 111
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;III)V
    .locals 8
    .param p1, "isSecure"    # Z
    .param p2, "stIP"    # Ljava/lang/String;
    .param p3, "iPort"    # I
    .param p4, "iTimeOut"    # I
    .param p5, "iRetries"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 97
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    .line 99
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    .line 101
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 105
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mContext:Landroid/content/Context;

    .line 107
    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    .line 490
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->pauseLock:Ljava/lang/Object;

    .line 534
    iput v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 536
    iput v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 119
    invoke-direct {p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->msgBufferReset()V

    .line 120
    new-instance v0, Lcom/android/supl/nc/NetworkController;

    const-string/jumbo v5, "SCM read thread"

    const-string/jumbo v6, "SCM write thread"

    const/4 v7, 0x1

    move-object v2, p2

    move v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/supl/nc/NetworkController;-><init>(ILjava/lang/String;ILcom/android/supl/commprocessor/CommandProcessor;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 121
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v0, p4, p5}, Lcom/android/supl/nc/NetworkController;->setServer_conn_Timeout_Retries(II)V

    .line 122
    new-instance v0, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    const-string/jumbo v1, "SCM command process thread"

    invoke-direct {v0, p0, v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    .line 123
    new-instance v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    invoke-direct {v0, p0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 118
    return-void
.end method

.method private msgBufferReset()V
    .locals 2

    .prologue
    .line 127
    const/16 v0, 0x1388

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    .line 128
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 126
    return-void
.end method


# virtual methods
.method public init()Z
    .locals 4

    .prologue
    .line 161
    const-string/jumbo v1, "SUPL20_SCM"

    const-string/jumbo v2, "calling nc.connect for scm"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/supl/nc/NetworkController;->connect([IZ)Z

    move-result v0

    .line 163
    .local v0, "isConnected":Z
    return v0
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 492
    new-instance v1, Lcom/android/supl/commprocessor/ServerCommProcessor$1;

    invoke-direct {v1, p0}, Lcom/android/supl/commprocessor/ServerCommProcessor$1;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;)V

    .line 515
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 517
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 518
    const-string/jumbo v2, "SUPL20_SCM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SCM pause finished:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :goto_0
    return-void

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "SUPL20_SCM"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public process(Lcom/android/supl/commprocessor/FromServer;)V
    .locals 33
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    if-eqz v4, :cond_1

    .line 228
    if-eqz p1, :cond_1

    .line 229
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    if-eqz v4, :cond_1

    .line 230
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    add-int v4, v4, v29

    const/16 v29, 0x1388

    move/from16 v0, v29

    if-ge v4, v0, :cond_1

    .line 232
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    move/from16 v30, v0

    .line 233
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    .line 232
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 234
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    add-int v4, v4, v29

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 235
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    add-int v4, v4, v29

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 236
    const-string/jumbo v4, "SUPL20_SCM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "buffer size:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "writePosition: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    const/16 v19, 0x0

    .line 254
    .local v19, "iCurrentPacketSize":I
    new-instance v27, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 256
    .local v27, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v19

    .line 258
    if-gtz v19, :cond_2

    .line 226
    :cond_0
    :goto_1
    :sswitch_0
    return-void

    .line 237
    .end local v19    # "iCurrentPacketSize":I
    .end local v27    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v16

    .line 238
    .local v16, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "SUPL20_SCM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "process m_bMasterBuffer overflow,"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 240
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 241
    return-void

    .line 244
    .end local v16    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, "m_bMasterBuff is null or fromServer is null!"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 246
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 247
    return-void

    .line 263
    .restart local v19    # "iCurrentPacketSize":I
    .restart local v27    # "in":Ljava/io/DataInputStream;
    :cond_2
    const/16 v25, 0x4

    .line 264
    .local v25, "iReadLen":I
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 266
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    move/from16 v0, v19

    if-lt v4, v0, :cond_0

    .line 272
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v26

    .line 273
    .local v26, "icmdID":I
    add-int/lit8 v25, v25, 0x4

    .line 274
    const-string/jumbo v4, "SUPL20_SCM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "process icmdID2: 0X"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sparse-switch v26, :sswitch_data_0

    .line 468
    const-string/jumbo v4, "SUPL20_SCM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "default : recvd %d cmdid"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->msgBufferReset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 473
    .end local v25    # "iReadLen":I
    .end local v26    # "icmdID":I
    :catch_1
    move-exception v14

    .line 475
    .local v14, "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 282
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v25    # "iReadLen":I
    .restart local v26    # "icmdID":I
    :sswitch_1
    :try_start_3
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, "process hello msg"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    .line 286
    .local v22, "iMagicNum":I
    add-int/lit8 v25, v25, 0x4

    .line 287
    const v4, -0x66cf7bac

    move/from16 v0, v22

    if-ne v0, v4, :cond_0

    .line 288
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, "init msg success"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0xc

    .line 293
    const/16 v31, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v30

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 295
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    add-int/lit8 v4, v4, -0xc

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 296
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v4, v4, -0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->pauseLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 298
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    if-nez v4, :cond_3

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->sendHelloMessage()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :try_start_5
    monitor-exit v29
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 302
    .end local v22    # "iMagicNum":I
    :catch_2
    move-exception v15

    .line 304
    .local v15, "ex":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v4, "SUPL20_SCM"

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v4, v0, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 297
    .end local v15    # "ex":Ljava/io/IOException;
    .restart local v22    # "iMagicNum":I
    :catchall_0
    move-exception v4

    :try_start_7
    monitor-exit v29

    throw v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 310
    .end local v22    # "iMagicNum":I
    :sswitch_2
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x8

    .line 310
    const/16 v31, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v30

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 312
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    add-int/lit8 v4, v4, -0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 313
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    goto/16 :goto_0

    .line 317
    :sswitch_3
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, "process MSG_SCM_CONNECT"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    .line 320
    .local v20, "iFQDNLen":I
    if-nez v20, :cond_4

    .line 321
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, " invalid fqdn len "

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 324
    :cond_4
    add-int/lit8 v25, v25, 0x4

    .line 326
    move/from16 v0, v20

    new-array v13, v0, [B

    .line 327
    .local v13, "bFQDN":[B
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/io/DataInputStream;->read([B)I

    move-result v21

    .line 328
    .local v21, "iFQDNRead":I
    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 329
    const-string/jumbo v4, "SUPL20_SCM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, " invalid fqdn len "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 332
    :cond_5
    add-int/lit8 v25, v21, 0xc

    .line 334
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 335
    .local v6, "iPortNO":I
    if-gtz v6, :cond_6

    .line 336
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, " invalid port no "

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 339
    :cond_6
    add-int/lit8 v25, v25, 0x4

    .line 341
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 342
    .local v7, "iSecureMode":I
    if-ltz v7, :cond_7

    const/4 v4, 0x3

    if-le v7, v4, :cond_8

    .line 343
    :cond_7
    const-string/jumbo v4, "SUPL20_SCM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, " invalid SecureMode "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 346
    :cond_8
    add-int/lit8 v25, v25, 0x4

    .line 348
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v24

    .line 349
    .local v24, "iPSKParam":I
    if-gez v24, :cond_9

    .line 350
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, " invalid PSK Param  "

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 353
    :cond_9
    add-int/lit8 v25, v25, 0x4

    .line 355
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    .line 357
    .local v8, "sSessionID":S
    add-int/lit8 v25, v25, 0x2

    .line 359
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v9

    .line 361
    .local v9, "iReqID":I
    add-int/lit8 v25, v25, 0x1

    .line 363
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 365
    .local v10, "iHandShakeTimeOut":I
    add-int/lit8 v25, v25, 0x4

    .line 367
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 369
    .local v11, "iConnTimeOut":I
    add-int/lit8 v25, v25, 0x4

    .line 371
    const-string/jumbo v4, "SUPL20_SCM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Connection TO : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ", handshake TO : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/lang/String;-><init>([B)V

    .line 375
    .local v5, "stIP":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    invoke-virtual/range {v4 .. v11}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->connect(Ljava/lang/String;IIIIII)Z

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    sub-int v30, v30, v25

    .line 377
    const/16 v31, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v30

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 379
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    sub-int v4, v4, v25

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 380
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v29, v25, -0x4

    sub-int v4, v4, v29

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    goto/16 :goto_0

    .line 385
    .end local v5    # "stIP":Ljava/lang/String;
    .end local v6    # "iPortNO":I
    .end local v7    # "iSecureMode":I
    .end local v8    # "sSessionID":S
    .end local v9    # "iReqID":I
    .end local v10    # "iHandShakeTimeOut":I
    .end local v11    # "iConnTimeOut":I
    .end local v13    # "bFQDN":[B
    .end local v20    # "iFQDNLen":I
    .end local v21    # "iFQDNRead":I
    .end local v24    # "iPSKParam":I
    :sswitch_4
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, " process MSG_SCM_SEND"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 388
    .local v17, "iBuffLen":I
    if-nez v17, :cond_a

    .line 389
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, " invalid send Buff len "

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 392
    :cond_a
    add-int/lit8 v25, v25, 0x4

    .line 393
    move/from16 v0, v17

    new-array v12, v0, [B

    .line 394
    .local v12, "bBuff":[B
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/DataInputStream;->read([B)I

    move-result v18

    .line 395
    .local v18, "iBuffRead":I
    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_b

    .line 396
    const-string/jumbo v4, "SUPL20_SCM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "invalid Buff len "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 399
    :cond_b
    add-int/lit8 v25, v18, 0xc

    .line 410
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v23

    .line 411
    .local v23, "iNWSessionID":I
    const-string/jumbo v4, "SUPL20_SCM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "MSG_SCM_SEND-->NWSessionID = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    if-gez v23, :cond_c

    .line 413
    const-string/jumbo v4, "SUPL20_SCM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "invalid NWSessionID "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 416
    :cond_c
    add-int/lit8 v25, v25, 0x1

    .line 417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    move/from16 v0, v23

    invoke-virtual {v4, v12, v0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sendDataByNetworkID([BI)Z

    move-result v28

    .line 418
    .local v28, "isFindSLPSession":Z
    if-nez v28, :cond_d

    .line 420
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, "MSG_SCM_SEND-->failed to find SLPSession"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    sub-int v30, v30, v25

    .line 422
    const/16 v31, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v30

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 424
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    sub-int v4, v4, v25

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 425
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v29, v25, -0x4

    sub-int v4, v4, v29

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 426
    const-string/jumbo v4, "SUPL20_SCM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "buffer size:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "writePosition: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 430
    .end local v12    # "bBuff":[B
    .end local v17    # "iBuffLen":I
    .end local v18    # "iBuffRead":I
    .end local v23    # "iNWSessionID":I
    .end local v28    # "isFindSLPSession":Z
    :sswitch_5
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, "process MSG_SCM_DISCONNECT"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v23

    .line 432
    .restart local v23    # "iNWSessionID":I
    if-gez v23, :cond_e

    .line 433
    const-string/jumbo v4, "SUPL20_SCM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, " invalid NWSessionID "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 436
    :cond_e
    add-int/lit8 v25, v25, 0x1

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->disconnectByNetworkID(I)V

    .line 438
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x9

    .line 438
    const/16 v31, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v30

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 440
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    add-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 441
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v4, v4, -0x5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    goto/16 :goto_0

    .line 447
    .end local v23    # "iNWSessionID":I
    :sswitch_6
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, " process bye msg"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->stopNetWork()V

    .line 450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x8

    .line 450
    const/16 v31, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v30

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 452
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    add-int/lit8 v4, v4, -0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 453
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    goto/16 :goto_0

    .line 458
    :sswitch_7
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, " process MSG_SCM_SYS_IDLE"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x8

    .line 460
    const/16 v31, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v30

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 462
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    add-int/lit8 v4, v4, -0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 463
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 275
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x200 -> :sswitch_6
        0x201 -> :sswitch_1
        0x202 -> :sswitch_3
        0x203 -> :sswitch_5
        0x204 -> :sswitch_4
        0x20c -> :sswitch_7
        0x300 -> :sswitch_2
    .end sparse-switch
.end method

.method public reInit()V
    .locals 4

    .prologue
    .line 524
    iget-object v2, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->pauseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 525
    :try_start_0
    iget-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    if-eqz v1, :cond_0

    .line 526
    const-string/jumbo v1, "SUPL20_SCM"

    const-string/jumbo v3, "SCM reInit invoked"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->getThreadName()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "stThrName":Ljava/lang/String;
    new-instance v1, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    invoke-direct {v1, p0, v0}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    .line 529
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->initRead_WriteThread()V

    .line 530
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "stThrName":Ljava/lang/String;
    :cond_0
    monitor-exit v2

    .line 523
    return-void

    .line 524
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public sendByeMessage()V
    .locals 4

    .prologue
    .line 197
    new-instance v2, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v2}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 198
    .local v2, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v3, 0xc

    new-array v0, v3, [B

    .line 199
    .local v0, "bData":[B
    const/4 v1, 0x0

    .line 200
    .local v1, "offset":I
    const/16 v3, 0x8

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 201
    const/16 v3, 0x200

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 202
    iput-object v0, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 203
    iget-object v3, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v3, v2}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 196
    return-void
.end method

.method public sendHelloMessage()V
    .locals 5

    .prologue
    .line 170
    new-instance v2, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v2}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 172
    .local v2, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v3, 0xc

    new-array v0, v3, [B

    .line 173
    .local v0, "bData":[B
    const/4 v1, 0x0

    .line 174
    .local v1, "offset":I
    const/16 v3, 0x8

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 175
    const/16 v3, 0x205

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 176
    const v3, -0x7eb79a9d

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 177
    iput-object v0, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 178
    iget-object v3, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v3, v2}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->startListening()V

    .line 180
    const-string/jumbo v3, "SUPL20_SCM"

    const-string/jumbo v4, "sendHelloMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method public sendServer(Lcom/android/supl/nc/SendToServer;)V
    .locals 1
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v0, p1}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 188
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    new-instance v0, Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mReceiver:Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;

    .line 135
    iput-object p1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mContext:Landroid/content/Context;

    .line 133
    return-void
.end method

.method public declared-synchronized startListening()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 139
    :try_start_0
    iget-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z

    if-nez v1, :cond_0

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mReceiver:Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    .line 138
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopListening()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 148
    :try_start_0
    iget-boolean v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mReceiver:Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 147
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopNetWork()V
    .locals 4

    .prologue
    .line 484
    const-string/jumbo v0, "SUPL20_SCM"

    const-string/jumbo v1, "SCM stopNetWork invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->stopRead()V

    .line 486
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->stopListening()V

    .line 487
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z

    .line 488
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->disConnectAllNetWork()V

    .line 483
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->getNetWorkID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writePacket(Lcom/android/supl/commprocessor/FromServer;)V
    .locals 3
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "fromServer object must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    invoke-static {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->-get0(Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    invoke-static {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->-get0(Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "SUPL20_SCM"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
