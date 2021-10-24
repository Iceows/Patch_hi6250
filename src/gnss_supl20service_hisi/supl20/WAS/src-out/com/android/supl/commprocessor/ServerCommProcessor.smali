.class public Lcom/android/supl/commprocessor/ServerCommProcessor;
.super Ljava/lang/Object;
.source "ServerCommProcessor.java"

# interfaces
.implements Lcom/android/supl/commprocessor/CommandProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;,
        Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;
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
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .prologue
    iget-boolean v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/supl/commprocessor/ServerCommProcessor;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .prologue
    iget-boolean v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/commprocessor/NetworkCommandProcessor;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .prologue
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/nc/NetworkController;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .prologue
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .prologue
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/supl/commprocessor/ServerCommProcessor;)Ljava/lang/Object;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .prologue
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->pauseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/supl/commprocessor/ServerCommProcessor;Z)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/commprocessor/ServerCommProcessor;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    return p1
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 98
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    .line 100
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    .line 102
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 106
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mContext:Landroid/content/Context;

    .line 108
    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    .line 494
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->pauseLock:Ljava/lang/Object;

    .line 538
    iput v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 540
    iput v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 114
    new-instance v0, Lcom/android/supl/nc/NetworkController;

    const-string/jumbo v2, "10.4.0.51"

    const-string/jumbo v5, "SCM read thread"

    .line 115
    const-string/jumbo v6, "SCM write thread"

    .line 114
    const/16 v3, 0x115c

    .line 115
    const/4 v7, 0x1

    move-object v4, p0

    .line 114
    invoke-direct/range {v0 .. v7}, Lcom/android/supl/nc/NetworkController;-><init>(ILjava/lang/String;ILcom/android/supl/commprocessor/CommandProcessor;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 116
    new-instance v0, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    const-string/jumbo v1, "SCM command process thread"

    invoke-direct {v0, p0, v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    .line 117
    invoke-static {}, Lcom/android/supl/nc/SuplServiceMgr;->getInstance()Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/supl/nc/SuplServiceMgr;->setScmCommandProcessor(Lcom/android/supl/commprocessor/CommandProcessor;)V

    .line 118
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;III)V
    .registers 14
    .param p1, "isSecure"    # Z
    .param p2, "stIP"    # Ljava/lang/String;
    .param p3, "iPort"    # I
    .param p4, "iTimeOut"    # I
    .param p5, "iRetries"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 98
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    .line 100
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    .line 102
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 106
    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mContext:Landroid/content/Context;

    .line 108
    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z

    .line 110
    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    .line 494
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->pauseLock:Ljava/lang/Object;

    .line 538
    iput v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 540
    iput v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 121
    invoke-direct {p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->msgBufferReset()V

    .line 122
    new-instance v0, Lcom/android/supl/nc/NetworkController;

    const-string/jumbo v5, "SCM read thread"

    const-string/jumbo v6, "SCM write thread"

    const/4 v7, 0x1

    move-object v2, p2

    move v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/supl/nc/NetworkController;-><init>(ILjava/lang/String;ILcom/android/supl/commprocessor/CommandProcessor;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 123
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v0, p4, p5}, Lcom/android/supl/nc/NetworkController;->setServer_conn_Timeout_Retries(II)V

    .line 124
    new-instance v0, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    const-string/jumbo v1, "SCM command process thread"

    invoke-direct {v0, p0, v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    .line 125
    new-instance v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    invoke-direct {v0, p0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .line 126
    invoke-static {}, Lcom/android/supl/nc/SuplServiceMgr;->getInstance()Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/supl/nc/SuplServiceMgr;->setScmCommandProcessor(Lcom/android/supl/commprocessor/CommandProcessor;)V

    .line 127
    return-void
.end method

.method private msgBufferReset()V
    .registers 3

    .prologue
    .line 129
    const/16 v0, 0x1388

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    .line 130
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 131
    return-void
.end method


# virtual methods
.method public init()Z
    .registers 5

    .prologue
    .line 163
    const-string/jumbo v1, "SUPL20_SCM"

    const-string/jumbo v2, "calling nc.connect for scm"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/supl/nc/NetworkController;->connect([IZ)Z

    move-result v0

    .line 165
    .local v0, "isConnected":Z
    return v0
.end method

.method public pause()V
    .registers 6

    .prologue
    .line 496
    new-instance v1, Lcom/android/supl/commprocessor/ServerCommProcessor$1;

    invoke-direct {v1, p0}, Lcom/android/supl/commprocessor/ServerCommProcessor$1;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;)V

    .line 519
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 521
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 522
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
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_27} :catch_28

    .line 526
    :goto_27
    return-void

    .line 523
    :catch_28
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "SUPL20_SCM"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27
.end method

.method public process(Lcom/android/supl/commprocessor/FromServer;)V
    .registers 35
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;

    .prologue
    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    if-eqz v4, :cond_108

    .line 232
    if-eqz p1, :cond_108

    .line 233
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    if-eqz v4, :cond_108

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

    const/16 v29, 0x1388

    move/from16 v0, v29

    if-ge v4, v0, :cond_108

    .line 236
    :try_start_25
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    move/from16 v30, v0

    .line 237
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    .line 236
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 238
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

    .line 239
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

    .line 240
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
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_aa} :catch_c9

    .line 256
    :goto_aa
    const/16 v25, 0x0

    .line 257
    .local v25, "iReadLen":I
    const/16 v19, 0x0

    .line 258
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

    .line 260
    .local v27, "in":Ljava/io/DataInputStream;
    :try_start_c2
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_180

    move-result v19

    .line 262
    if-gtz v19, :cond_11e

    .line 482
    :cond_c8
    :goto_c8
    :sswitch_c8
    return-void

    .line 241
    .end local v19    # "iCurrentPacketSize":I
    .end local v25    # "iReadLen":I
    .end local v27    # "in":Ljava/io/DataInputStream;
    :catch_c9
    move-exception v16

    .line 242
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

    .line 243
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 244
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 245
    return-void

    .line 248
    .end local v16    # "ex":Ljava/lang/Exception;
    :cond_108
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, "m_bMasterBuff is null or fromServer is null!"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 250
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 251
    return-void

    .line 267
    .restart local v19    # "iCurrentPacketSize":I
    .restart local v25    # "iReadLen":I
    .restart local v27    # "in":Ljava/io/DataInputStream;
    :cond_11e
    const/16 v25, 0x4

    .line 268
    :try_start_120
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 270
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    move/from16 v0, v19

    if-lt v4, v0, :cond_c8

    .line 276
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v26

    .line 277
    .local v26, "icmdID":I
    add-int/lit8 v25, v25, 0x4

    .line 278
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

    .line 279
    sparse-switch v26, :sswitch_data_5bc

    .line 472
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

    .line 473
    invoke-direct/range {p0 .. p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->msgBufferReset()V
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_17e} :catch_180

    goto/16 :goto_c8

    .line 477
    .end local v26    # "icmdID":I
    :catch_180
    move-exception v14

    .line 479
    .local v14, "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_aa

    .line 286
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v26    # "icmdID":I
    :sswitch_186
    :try_start_186
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, "process hello msg"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    .line 290
    .local v22, "iMagicNum":I
    add-int/lit8 v25, v25, 0x4

    .line 291
    const v4, -0x66cf7bac

    move/from16 v0, v22

    if-ne v0, v4, :cond_c8

    .line 292
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, "init msg success"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0xc

    .line 297
    const/16 v31, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v30

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 299
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    add-int/lit8 v4, v4, -0xc

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 300
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v4, v4, -0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->pauseLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29
    :try_end_1e8
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_1e8} :catch_1f4

    .line 302
    :try_start_1e8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    if-nez v4, :cond_1f1

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->sendHelloMessage()V
    :try_end_1f1
    .catchall {:try_start_1e8 .. :try_end_1f1} :catchall_203

    :cond_1f1
    :try_start_1f1
    monitor-exit v29
    :try_end_1f2
    .catch Ljava/io/IOException; {:try_start_1f1 .. :try_end_1f2} :catch_1f4

    goto/16 :goto_aa

    .line 306
    .end local v22    # "iMagicNum":I
    :catch_1f4
    move-exception v15

    .line 308
    .local v15, "ex":Ljava/io/IOException;
    :try_start_1f5
    const-string/jumbo v4, "SUPL20_SCM"

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v4, v0, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_201
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_201} :catch_180

    goto/16 :goto_aa

    .line 301
    .end local v15    # "ex":Ljava/io/IOException;
    .restart local v22    # "iMagicNum":I
    :catchall_203
    move-exception v4

    :try_start_204
    monitor-exit v29

    throw v4
    :try_end_206
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_206} :catch_1f4

    .line 314
    .end local v22    # "iMagicNum":I
    :sswitch_206
    :try_start_206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x8

    .line 314
    const/16 v31, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v30

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 316
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    add-int/lit8 v4, v4, -0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 317
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    goto/16 :goto_aa

    .line 321
    :sswitch_240
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, "process MSG_SCM_CONNECT"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    .line 324
    .local v20, "iFQDNLen":I
    if-nez v20, :cond_25e

    .line 325
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, " invalid fqdn len "

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c8

    .line 328
    :cond_25e
    add-int/lit8 v25, v25, 0x4

    .line 330
    move/from16 v0, v20

    new-array v13, v0, [B

    .line 331
    .local v13, "bFQDN":[B
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/io/DataInputStream;->read([B)I

    move-result v21

    .line 332
    .local v21, "iFQDNRead":I
    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_2a1

    .line 333
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

    goto/16 :goto_c8

    .line 336
    :cond_2a1
    add-int/lit8 v25, v21, 0xc

    .line 338
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 339
    .local v6, "iPortNO":I
    if-gtz v6, :cond_2b6

    .line 340
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, " invalid port no "

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c8

    .line 343
    :cond_2b6
    add-int/lit8 v25, v25, 0x4

    .line 345
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 346
    .local v7, "iSecureMode":I
    if-ltz v7, :cond_2c1

    const/4 v4, 0x3

    if-le v7, v4, :cond_2e1

    .line 347
    :cond_2c1
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

    goto/16 :goto_c8

    .line 350
    :cond_2e1
    add-int/lit8 v25, v25, 0x4

    .line 352
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v24

    .line 353
    .local v24, "iPSKParam":I
    if-gez v24, :cond_2f6

    .line 354
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, " invalid PSK Param  "

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c8

    .line 357
    :cond_2f6
    add-int/lit8 v25, v25, 0x4

    .line 359
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    .line 361
    .local v8, "sSessionID":S
    add-int/lit8 v25, v25, 0x2

    .line 363
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v9

    .line 365
    .local v9, "iReqID":I
    add-int/lit8 v25, v25, 0x1

    .line 367
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 369
    .local v10, "iHandShakeTimeOut":I
    add-int/lit8 v25, v25, 0x4

    .line 371
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 373
    .local v11, "iConnTimeOut":I
    add-int/lit8 v25, v25, 0x4

    .line 375
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

    .line 377
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/lang/String;-><init>([B)V

    .line 379
    .local v5, "stIP":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    invoke-virtual/range {v4 .. v11}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->connect(Ljava/lang/String;IIIIII)Z

    .line 381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    sub-int v30, v30, v25

    .line 381
    const/16 v31, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v30

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 383
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    sub-int v4, v4, v25

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 384
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v29, v25, -0x4

    sub-int v4, v4, v29

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    goto/16 :goto_aa

    .line 389
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
    :sswitch_383
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, " process MSG_SCM_SEND"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 392
    .local v17, "iBuffLen":I
    if-nez v17, :cond_3a1

    .line 393
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, " invalid send Buff len "

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c8

    .line 396
    :cond_3a1
    add-int/lit8 v25, v25, 0x4

    .line 397
    move/from16 v0, v17

    new-array v12, v0, [B

    .line 398
    .local v12, "bBuff":[B
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/DataInputStream;->read([B)I

    move-result v18

    .line 399
    .local v18, "iBuffRead":I
    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_3e4

    .line 400
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

    goto/16 :goto_c8

    .line 403
    :cond_3e4
    add-int/lit8 v25, v18, 0xc

    .line 414
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v23

    .line 415
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

    .line 416
    if-gez v23, :cond_42e

    .line 417
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

    goto/16 :goto_c8

    .line 420
    :cond_42e
    add-int/lit8 v25, v25, 0x1

    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    move/from16 v0, v23

    invoke-virtual {v4, v12, v0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sendDataByNetworkID([BI)Z

    move-result v28

    .line 422
    .local v28, "isFindSLPSession":Z
    if-nez v28, :cond_447

    .line 424
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, "MSG_SCM_SEND-->failed to find SLPSession"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_447
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    sub-int v30, v30, v25

    .line 426
    const/16 v31, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v30

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 428
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    sub-int v4, v4, v25

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 429
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v29, v25, -0x4

    sub-int v4, v4, v29

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    .line 430
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

    goto/16 :goto_aa

    .line 434
    .end local v12    # "bBuff":[B
    .end local v17    # "iBuffLen":I
    .end local v18    # "iBuffRead":I
    .end local v23    # "iNWSessionID":I
    .end local v28    # "isFindSLPSession":Z
    :sswitch_4b6
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, "process MSG_SCM_DISCONNECT"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v23

    .line 436
    .restart local v23    # "iNWSessionID":I
    if-gez v23, :cond_4e9

    .line 437
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

    goto/16 :goto_c8

    .line 440
    :cond_4e9
    add-int/lit8 v25, v25, 0x1

    .line 441
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->disconnectByNetworkID(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x9

    .line 442
    const/16 v31, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v30

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 444
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    add-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 445
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v4, v4, -0x5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    goto/16 :goto_aa

    .line 451
    .end local v23    # "iNWSessionID":I
    :sswitch_52e
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, " process bye msg"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->stopNetWork()V

    .line 454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x8

    .line 454
    const/16 v31, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v30

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 456
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    add-int/lit8 v4, v4, -0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 457
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    goto/16 :goto_aa

    .line 462
    :sswitch_576
    const-string/jumbo v4, "SUPL20_SCM"

    const-string/jumbo v29, " process MSG_SCM_SYS_IDLE"

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v29, v0

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x8

    .line 464
    const/16 v31, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v30

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 466
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    add-int/lit8 v4, v4, -0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iLastWritePostion:I

    .line 467
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/supl/commprocessor/ServerCommProcessor;->iTotalArrival:I
    :try_end_5b9
    .catch Ljava/io/IOException; {:try_start_206 .. :try_end_5b9} :catch_180

    goto/16 :goto_aa

    .line 279
    nop

    :sswitch_data_5bc
    .sparse-switch
        0x0 -> :sswitch_c8
        0x200 -> :sswitch_52e
        0x201 -> :sswitch_186
        0x202 -> :sswitch_240
        0x203 -> :sswitch_4b6
        0x204 -> :sswitch_383
        0x20c -> :sswitch_576
        0x300 -> :sswitch_206
    .end sparse-switch
.end method

.method public reInit()V
    .registers 5

    .prologue
    .line 528
    iget-object v2, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->pauseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 529
    :try_start_3
    iget-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z

    if-eqz v1, :cond_25

    .line 530
    const-string/jumbo v1, "SUPL20_SCM"

    const-string/jumbo v3, "SCM reInit invoked"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->getThreadName()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "stThrName":Ljava/lang/String;
    new-instance v1, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    invoke-direct {v1, p0, v0}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    .line 533
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->initRead_WriteThread()V

    .line 534
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->isPause:Z
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    .end local v0    # "stThrName":Ljava/lang/String;
    :cond_25
    monitor-exit v2

    .line 537
    return-void

    .line 528
    :catchall_27
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public sendByeMessage()V
    .registers 5

    .prologue
    .line 199
    new-instance v2, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v2}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 200
    .local v2, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v3, 0xc

    new-array v0, v3, [B

    .line 201
    .local v0, "bData":[B
    const/4 v1, 0x0

    .line 202
    .local v1, "offset":I
    const/16 v3, 0x8

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 203
    const/16 v3, 0x200

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 204
    iput-object v0, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 205
    iget-object v3, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v3, v2}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 207
    return-void
.end method

.method public sendHelloMessage()V
    .registers 6

    .prologue
    .line 172
    new-instance v2, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v2}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 174
    .local v2, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v3, 0xc

    new-array v0, v3, [B

    .line 175
    .local v0, "bData":[B
    const/4 v1, 0x0

    .line 176
    .local v1, "offset":I
    const/16 v3, 0x8

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 177
    const/16 v3, 0x205

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 178
    const v3, -0x7eb79a9d

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 179
    iput-object v0, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 180
    iget-object v3, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v3, v2}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->startListening()V

    .line 182
    const-string/jumbo v3, "SUPL20_SCM"

    const-string/jumbo v4, "sendHelloMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public sendServer(Lcom/android/supl/nc/SendToServer;)V
    .registers 3
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v0, p1}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 193
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 136
    new-instance v0, Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mReceiver:Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;

    .line 137
    iput-object p1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mContext:Landroid/content/Context;

    .line 138
    return-void
.end method

.method public declared-synchronized startListening()V
    .registers 6

    .prologue
    monitor-enter p0

    .line 141
    :try_start_1
    iget-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z

    if-nez v1, :cond_1e

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mReceiver:Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;

    const-string/jumbo v3, "supl20servicePermission"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1e
    monitor-exit p0

    .line 147
    return-void

    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopListening()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 150
    :try_start_1
    iget-boolean v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z

    if-eqz v0, :cond_f

    .line 151
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mReceiver:Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mListening:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    .line 155
    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopNetWork()V
    .registers 5

    .prologue
    .line 488
    const-string/jumbo v0, "SUPL20_SCM"

    const-string/jumbo v1, "SCM stopNetWork invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->stopRead()V

    .line 490
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->stopListening()V

    .line 491
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z

    .line 492
    iget-object v0, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->mNetworkCommandProcessor:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->disConnectAllNetWork()V

    .line 493
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 631
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
    .registers 5
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 213
    if-nez p1, :cond_b

    .line 214
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "fromServer object must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    invoke-static {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->-get0(Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 218
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor;->packet:Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    invoke-static {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->-get0(Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 225
    :goto_20
    return-void

    .line 220
    :cond_21
    const-string/jumbo v1, "SUPL20_SCM"

    const-string/jumbo v2, "packet is null or deque is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_2a} :catch_2b

    goto :goto_20

    .line 222
    :catch_2b
    move-exception v0

    .line 223
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "SUPL20_SCM"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method
