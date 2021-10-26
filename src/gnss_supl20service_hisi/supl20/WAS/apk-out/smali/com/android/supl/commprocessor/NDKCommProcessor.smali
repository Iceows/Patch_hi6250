.class public Lcom/android/supl/commprocessor/NDKCommProcessor;
.super Ljava/lang/Object;
.source "NDKCommProcessor.java"

# interfaces
.implements Lcom/android/supl/commprocessor/CommandProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;,
        Lcom/android/supl/commprocessor/NDKCommProcessor$1;
    }
.end annotation


# static fields
.field private static final EMERGENCY_REGISTER:I = 0x1

.field private static final EMERGENCY_UN_REGISTER:I = 0x2

.field private static final LOCATION_REGISTER:I = 0x3

.field private static final LOCATION_UN_REGISTER:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_PCM"

.field public static final MASTER_BUFF_LEN:I = 0x1388

.field private static final MSG_PCM_BYE:I = 0x100

.field public static final MSG_PCM_EMERGENCY_CALL:I = 0x116

.field public static final MSG_PCM_GET_HIST_KEY:I = 0x11a

.field private static final MSG_PCM_GET_LOCATION_ID:I = 0x103

.field public static final MSG_PCM_GET_OTHER_MEAS:I = 0x113

.field private static final MSG_PCM_GET_SET_ID:I = 0x102

.field public static final MSG_PCM_GET_SIM_MCC_MNC:I = 0x118

.field private static final MSG_PCM_HELLO_TO_PLAT_SRVC:I = 0x101

.field private static final MSG_PCM_HELLO_TO_SUPL_CLIENT:I = 0x109

.field private static final MSG_PCM_ON_SI_FAILURE:I = 0x108

.field private static final MSG_PCM_ON_SI_LOCATION_REPORT:I = 0x106

.field public static final MSG_PCM_ON_SI_SESSION_COMPLETE:I = 0x107

.field public static final MSG_PCM_ON_SYSTEM_SHUTDOWN:I = 0x111

.field public static final MSG_PCM_SYS_IDLE:I = 0x112

.field public static final MSG_PCM_UPDATE_HIST_KEY:I = 0x11b

.field public static final MSG_PCM_UPDATE_LOCATION_ID:I = 0x10b

.field public static final MSG_PCM_UPDATE_OTHER_MEAS:I = 0x114

.field public static final MSG_PCM_UPDATE_SET_ID:I = 0x10a

.field public static final MSG_PCM_UPDATE_SIM_MCC_MNC:I = 0x119

.field public static final MSG_PCM_UPDATE_SLP_CONFIG:I = 0x115

.field private static final PLAT_MSG_HELLO_TO_PLAT_SRVC_MAGIC_CODE:I = 0x53589793

.field private static final PLAT_MSG_HELLO_TO_SUPL_CLIENT_MAGIC_CODE:I = 0x31415926


# instance fields
.field private final_key:Ljavax/crypto/SecretKey;

.field private iLastWritePostion:I

.field private iTotalArrival:I

.field private isPause:Z

.field private locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

.field private mHandler:Landroid/os/Handler;

.field private mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

.field private m_bMasterBuffer:[B

.field private nc:Lcom/android/supl/nc/NetworkController;

.field private final pauseLock:Ljava/lang/Object;

.field private readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;


# direct methods
.method static synthetic -get0(Lcom/android/supl/commprocessor/NDKCommProcessor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/nc/NetworkController;
    .locals 1

    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/supl/commprocessor/NDKCommProcessor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->pauseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;
    .locals 1

    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/supl/commprocessor/NDKCommProcessor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    return p1
.end method

.method public constructor <init>(ZLjava/lang/String;ILcom/android/supl/loc/SETLocationManager;II)V
    .locals 8
    .param p1, "isSecure"    # Z
    .param p2, "stIP"    # Ljava/lang/String;
    .param p3, "iPort"    # I
    .param p4, "location_Manager"    # Lcom/android/supl/loc/SETLocationManager;
    .param p5, "iTimeOut"    # I
    .param p6, "iRetries"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 92
    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    .line 138
    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    .line 142
    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    .line 144
    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    .line 154
    iput-boolean v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    .line 156
    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->final_key:Ljavax/crypto/SecretKey;

    .line 209
    new-instance v0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;

    invoke-direct {v0, p0}, Lcom/android/supl/commprocessor/NDKCommProcessor$1;-><init>(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    .line 692
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->pauseLock:Ljava/lang/Object;

    .line 744
    iput v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 746
    iput v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 160
    invoke-direct {p0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->msgBufferReset()V

    .line 161
    new-instance v0, Lcom/android/supl/nc/NetworkController;

    const-string/jumbo v5, "PCM read thread"

    .line 162
    const-string/jumbo v6, "PCM write thread"

    move-object v2, p2

    move v3, p3

    move-object v4, p0

    move v7, v1

    .line 161
    invoke-direct/range {v0 .. v7}, Lcom/android/supl/nc/NetworkController;-><init>(ILjava/lang/String;ILcom/android/supl/commprocessor/CommandProcessor;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 163
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v0, p5, p6}, Lcom/android/supl/nc/NetworkController;->setServer_conn_Timeout_Retries(II)V

    .line 164
    new-instance v0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    const-string/jumbo v1, "PCM command process thread"

    invoke-direct {v0, p0, v1}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;-><init>(Lcom/android/supl/commprocessor/NDKCommProcessor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    .line 165
    iput-object p4, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    .line 166
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v0, p0}, Lcom/android/supl/loc/SETLocationManager;->setCommProcessor(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    .line 167
    invoke-static {}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->getInstance()Lcom/android/supl/trigger/PeriodicTriggerHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    .line 168
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    invoke-virtual {v0, p0}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->setNdkCommProcessor(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    .line 159
    return-void
.end method

.method private msgBufferReset()V
    .locals 2

    .prologue
    .line 172
    const/16 v0, 0x1388

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    .line 173
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 171
    return-void
.end method


# virtual methods
.method public init()Z
    .locals 4

    .prologue
    .line 182
    const-string/jumbo v1, "SUPL20_PCM"

    const-string/jumbo v2, "calling nc.connect for pcm"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/supl/nc/NetworkController;->connect([IZ)Z

    move-result v0

    .line 185
    .local v0, "isConnected":Z
    return v0
.end method

.method public pause()V
    .locals 6

    .prologue
    .line 695
    iget-object v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 696
    .local v1, "message":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 697
    iget-object v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 698
    iget-object v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 699
    const/4 v3, 0x4

    iput v3, v1, Landroid/os/Message;->what:I

    .line 700
    iget-object v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 701
    new-instance v2, Lcom/android/supl/commprocessor/NDKCommProcessor$2;

    invoke-direct {v2, p0}, Lcom/android/supl/commprocessor/NDKCommProcessor$2;-><init>(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    .line 724
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 726
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 727
    const-string/jumbo v3, "SUPL20_PCM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PCM pause finished:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    return-void

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "SUPL20_PCM"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public process(Lcom/android/supl/commprocessor/FromServer;)V
    .locals 45
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;

    .prologue
    .line 299
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v42, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v43, v0

    .line 299
    const/16 v44, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v44

    move-object/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 301
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v40, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    add-int v40, v40, v41

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 302
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    add-int v40, v40, v41

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 311
    :cond_0
    :goto_0
    const/16 v20, 0x0

    .line 312
    .local v20, "iPacketSize":I
    new-instance v25, Ljava/io/DataInputStream;

    new-instance v40, Ljava/io/ByteArrayInputStream;

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    .line 312
    invoke-direct/range {v40 .. v41}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 315
    .local v25, "in":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    .line 317
    if-gtz v20, :cond_2

    .line 318
    const-string/jumbo v40, "SUPL20_PCM"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "process: process less then zero "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1
    :goto_1
    :sswitch_0
    return-void

    .line 322
    :cond_2
    const/16 v22, 0x4

    .line 323
    .local v22, "iReadLen":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x4

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 326
    const-string/jumbo v40, "SUPL20_PCM"

    .line 327
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "process: iTotalArrival less then PacketSize "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 326
    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 676
    .end local v22    # "iReadLen":I
    :catch_0
    move-exception v9

    .line 678
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, "Error in process "

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 331
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v22    # "iReadLen":I
    :cond_3
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataInputStream;->readInt()I

    move-result v24

    .line 332
    .local v24, "icmdID":I
    add-int/lit8 v22, v22, 0x4

    .line 333
    const-string/jumbo v40, "SUPL20_PCM"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "process icmdID: 0X"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sparse-switch v24, :sswitch_data_0

    .line 665
    const-string/jumbo v40, "SUPL20_PCM"

    .line 666
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "default : recvd cmdid 0X"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    .line 667
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v42

    .line 666
    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 665
    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x8

    .line 668
    const/16 v43, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v22

    move-object/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 670
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x8

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 671
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x4

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 341
    :sswitch_1
    :try_start_2
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, "process hello msg"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    .line 345
    .local v17, "iMagicNum":I
    add-int/lit8 v22, v22, 0x4

    .line 346
    const v40, 0x53589793

    move/from16 v0, v17

    move/from16 v1, v40

    if-ne v0, v1, :cond_1

    .line 347
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, "init msg success"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v40, v0

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0xc

    const/16 v43, 0x0

    .line 352
    move-object/from16 v0, v40

    move/from16 v1, v22

    move-object/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 355
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0xc

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 356
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x8

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->pauseLock:Ljava/lang/Object;

    move-object/from16 v41, v0

    monitor-enter v41
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 358
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    move/from16 v40, v0

    if-nez v40, :cond_4

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendHelloMessage()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    monitor-exit v41
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 362
    .end local v17    # "iMagicNum":I
    :catch_1
    move-exception v15

    .line 364
    .local v15, "ex":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v40, "SUPL20_PCM"

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 357
    .end local v15    # "ex":Ljava/io/IOException;
    .restart local v17    # "iMagicNum":I
    :catchall_0
    move-exception v40

    :try_start_6
    monitor-exit v41

    throw v40
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 370
    .end local v17    # "iMagicNum":I
    :sswitch_2
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v40, v0

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x8

    const/16 v43, 0x0

    .line 370
    move-object/from16 v0, v40

    move/from16 v1, v22

    move-object/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x8

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x4

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_0

    .line 378
    :sswitch_3
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process MSG_PCM_GET_SET_ID"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataInputStream;->readInt()I

    move-result v23

    .line 380
    .local v23, "iReqSetType":I
    add-int/lit8 v22, v22, 0x4

    .line 381
    invoke-static/range {v23 .. v23}, Lcom/android/supl/loc/SetID;->isValidSetIDRequest(I)Z

    move-result v27

    .line 382
    .local v27, "isValid":Z
    if-nez v27, :cond_5

    .line 383
    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v41, "SUPL20_PCMprocess: in Valid set id request"

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 386
    :cond_5
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v36

    .line 387
    .local v36, "sSessionId":I
    add-int/lit8 v22, v22, 0x2

    .line 388
    if-gez v36, :cond_6

    .line 389
    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v41, "SUPL20_PCMprocess: in Valid set id sSessionId"

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 392
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v23

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/supl/loc/SETLocationManager;->sendSETIDInfo(II)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v40, v0

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0xe

    const/16 v43, 0x0

    .line 393
    move-object/from16 v0, v40

    move/from16 v1, v22

    move-object/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 396
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0xe

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 397
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0xa

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_0

    .line 402
    .end local v23    # "iReqSetType":I
    .end local v27    # "isValid":Z
    .end local v36    # "sSessionId":I
    :sswitch_4
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process MSG_PCM_GET_LOCATION_ID"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    .line 405
    .local v21, "iPushModule":I
    add-int/lit8 v22, v22, 0x4

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v33

    .line 417
    .local v33, "message":Landroid/os/Message;
    const/16 v40, 0x3

    move/from16 v0, v40

    move-object/from16 v1, v33

    iput v0, v1, Landroid/os/Message;->what:I

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v40, v0

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0xc

    const/16 v43, 0x0

    .line 420
    move-object/from16 v0, v40

    move/from16 v1, v22

    move-object/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 423
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0xc

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x8

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_0

    .line 428
    .end local v21    # "iPushModule":I
    .end local v33    # "message":Landroid/os/Message;
    :sswitch_5
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process MSG_PCM_START_TRIGGER_PERIODIC"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->startTriggerPeriodic(Ljava/io/DataInputStream;)Z

    move-result v26

    .line 431
    .local v26, "isReadSuccess":Z
    if-eqz v26, :cond_0

    .line 434
    add-int/lit8 v22, v22, 0xb

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v40, v0

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x13

    const/16 v43, 0x0

    .line 438
    move-object/from16 v0, v40

    move/from16 v1, v22

    move-object/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 441
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x13

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 442
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0xf

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_0

    .line 446
    .end local v26    # "isReadSuccess":Z
    :sswitch_6
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process MSG_PCM_STOP_TRIGGER_PERIODIC"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->stopTriggerPeriodic(Ljava/io/DataInputStream;)Z

    move-result v26

    .line 449
    .restart local v26    # "isReadSuccess":Z
    if-eqz v26, :cond_0

    .line 452
    add-int/lit8 v22, v22, 0x3

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v40, v0

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0xb

    const/16 v43, 0x0

    .line 455
    move-object/from16 v0, v40

    move/from16 v1, v22

    move-object/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 458
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0xb

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 459
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x7

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_0

    .line 464
    .end local v26    # "isReadSuccess":Z
    :sswitch_7
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process MSG_PCM_ON_SI_LOCATION_REPORT"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v30, Lcom/android/supl/si/SILocationReport;

    invoke-direct/range {v30 .. v30}, Lcom/android/supl/si/SILocationReport;-><init>()V

    .line 467
    .local v30, "locationReport":Lcom/android/supl/si/SILocationReport;
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/supl/si/SILocationReport;->readSILocationReport(Ljava/io/DataInputStream;)Z

    move-result v26

    .line 468
    .restart local v26    # "isReadSuccess":Z
    if-eqz v26, :cond_0

    .line 472
    add-int/lit8 v22, v22, 0xa

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v40, v0

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x12

    const/16 v43, 0x0

    .line 475
    move-object/from16 v0, v40

    move/from16 v1, v22

    move-object/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 478
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x12

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 479
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0xe

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_0

    .line 483
    .end local v26    # "isReadSuccess":Z
    .end local v30    # "locationReport":Lcom/android/supl/si/SILocationReport;
    :sswitch_8
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process MSG_PCM_ON_SI_SESSION_COMPLETE"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v38, Lcom/android/supl/si/SISessionComplete;

    invoke-direct/range {v38 .. v38}, Lcom/android/supl/si/SISessionComplete;-><init>()V

    .line 486
    .local v38, "sessionComplete":Lcom/android/supl/si/SISessionComplete;
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/supl/si/SISessionComplete;->readSISessionComplete(Ljava/io/DataInputStream;)Z

    move-result v26

    .line 488
    .restart local v26    # "isReadSuccess":Z
    if-eqz v26, :cond_0

    .line 491
    add-int/lit8 v22, v22, 0x2

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v40, v0

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0xa

    const/16 v43, 0x0

    .line 493
    move-object/from16 v0, v40

    move/from16 v1, v22

    move-object/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 496
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0xa

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 497
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x6

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_0

    .line 502
    .end local v26    # "isReadSuccess":Z
    .end local v38    # "sessionComplete":Lcom/android/supl/si/SISessionComplete;
    :sswitch_9
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process MSG_PCM_ON_SI_FAILURE"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v16, Lcom/android/supl/si/SIFailure;

    invoke-direct/range {v16 .. v16}, Lcom/android/supl/si/SIFailure;-><init>()V

    .line 505
    .local v16, "failure":Lcom/android/supl/si/SIFailure;
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/supl/si/SIFailure;->readSIFailure(Ljava/io/DataInputStream;)Z

    move-result v26

    .line 506
    .restart local v26    # "isReadSuccess":Z
    if-eqz v26, :cond_0

    .line 509
    add-int/lit8 v22, v22, 0x6

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v40, v0

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0xe

    const/16 v43, 0x0

    .line 512
    move-object/from16 v0, v40

    move/from16 v1, v22

    move-object/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 515
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0xe

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 516
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0xa

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_0

    .line 521
    .end local v16    # "failure":Lcom/android/supl/si/SIFailure;
    .end local v26    # "isReadSuccess":Z
    :sswitch_a
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process MSG_PCM_BYE"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->stopNetWork()V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x8

    .line 523
    const/16 v43, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v22

    move-object/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x8

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 526
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x4

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_0

    .line 530
    :sswitch_b
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process MSG_PCM_SYS_IDLE"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x8

    .line 531
    const/16 v43, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v22

    move-object/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x8

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 534
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x4

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_0

    .line 537
    :sswitch_c
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process MSG_PCM_GET_OTHER_MEAS"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 540
    .local v18, "iMeasureType":I
    add-int/lit8 v22, v22, 0x4

    .line 541
    packed-switch v18, :pswitch_data_0

    .line 586
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process SUPL_OTHER_MEAS_AFLT"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0xc

    .line 591
    const/16 v43, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v22

    move-object/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 593
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0xc

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 594
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x8

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_0

    .line 543
    :pswitch_0
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process MSG_PCM_GET_OTDOA_GSM_MEAS"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v8, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;

    invoke-direct {v8}, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;-><init>()V

    .line 545
    .local v8, "configParser":Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;
    invoke-virtual {v8}, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->getOtdoa_Measurement()Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    move-result-object v32

    .line 546
    .local v32, "measurement":Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->getOTDOA_Measurement(I)[B

    move-result-object v34

    .line 547
    .local v34, "odtoaMeas":[B
    new-instance v37, Lcom/android/supl/nc/SendToServer;

    invoke-direct/range {v37 .. v37}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 548
    .local v37, "sendToServer":Lcom/android/supl/nc/SendToServer;
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    goto :goto_2

    .line 553
    .end local v8    # "configParser":Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;
    .end local v32    # "measurement":Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;
    .end local v34    # "odtoaMeas":[B
    .end local v37    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :pswitch_1
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process MSG_PCM_GET_OTDOA_LPP_MEAS"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    new-instance v31, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;

    invoke-direct/range {v31 .. v31}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;-><init>()V

    .line 555
    .local v31, "lpp_OTDOA_MEASUREMENT":Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->getOTDOA_MEASUREMENT(I)[B

    move-result-object v7

    .line 556
    .local v7, "bLPPOTDOAMeas":[B
    new-instance v37, Lcom/android/supl/nc/SendToServer;

    invoke-direct/range {v37 .. v37}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 557
    .restart local v37    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    move-object/from16 v0, v37

    iput-object v7, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    goto/16 :goto_2

    .line 562
    .end local v7    # "bLPPOTDOAMeas":[B
    .end local v31    # "lpp_OTDOA_MEASUREMENT":Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;
    .end local v37    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :pswitch_2
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process MSG_PCM_GET_EOTD_MEAS"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v14, Lcom/android/supl/loc/measure/eotd/EOTDParser;

    invoke-direct {v14}, Lcom/android/supl/loc/measure/eotd/EOTDParser;-><init>()V

    .line 564
    .local v14, "eotdParser":Lcom/android/supl/loc/measure/eotd/EOTDParser;
    invoke-virtual {v14}, Lcom/android/supl/loc/measure/eotd/EOTDParser;->getEotdMeasInfo()Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    move-result-object v13

    .line 565
    .local v13, "eotdMeasInfo":Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->getEOTDMeasInfo(I)[B

    move-result-object v12

    .line 566
    .local v12, "eotdMeas":[B
    new-instance v37, Lcom/android/supl/nc/SendToServer;

    invoke-direct/range {v37 .. v37}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 567
    .restart local v37    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    move-object/from16 v0, v37

    iput-object v12, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    goto/16 :goto_2

    .line 573
    .end local v12    # "eotdMeas":[B
    .end local v13    # "eotdMeasInfo":Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;
    .end local v14    # "eotdParser":Lcom/android/supl/loc/measure/eotd/EOTDParser;
    .end local v37    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :pswitch_3
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process MSG_PCM_GET_AFLT_MEAS"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v6, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;

    invoke-direct {v6}, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;-><init>()V

    .line 575
    .local v6, "afltParser":Lcom/android/supl/loc/measure/aflt/AfltConfigParser;
    invoke-virtual {v6}, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->getAFLTMeasInfo()Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    move-result-object v39

    .line 576
    .local v39, "suplafltMeasInfo":Lcom/android/supl/loc/measure/aflt/AfltMeasure;
    move-object/from16 v0, v39

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->getAFLTMeasInfo(I)[B

    move-result-object v5

    .line 577
    .local v5, "afltMeas":[B
    new-instance v37, Lcom/android/supl/nc/SendToServer;

    invoke-direct/range {v37 .. v37}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 578
    .restart local v37    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    move-object/from16 v0, v37

    iput-object v5, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    goto/16 :goto_2

    .line 583
    .end local v5    # "afltMeas":[B
    .end local v6    # "afltParser":Lcom/android/supl/loc/measure/aflt/AfltConfigParser;
    .end local v37    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    .end local v39    # "suplafltMeasInfo":Lcom/android/supl/loc/measure/aflt/AfltMeasure;
    :pswitch_4
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process SUPLOtherMeasureMent NONE "

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 598
    .end local v18    # "iMeasureType":I
    :sswitch_d
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process MSG_PCM_GET_SIM_MCC_MNC"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v36

    .line 601
    .restart local v36    # "sSessionId":I
    add-int/lit8 v22, v22, 0x2

    .line 602
    if-gez v36, :cond_7

    .line 603
    sget-object v40, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v41, "SUPL20_PCMprocess: in Valid set id sSessionId"

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 606
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    move-object/from16 v40, v0

    if-eqz v40, :cond_8

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/supl/loc/SETLocationManager;->getSIM_Mnc_MCC(I)Lcom/android/supl/nc/SendToServer;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 611
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0xa

    .line 611
    const/16 v43, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v22

    move-object/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 613
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0xa

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 614
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x6

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_0

    .line 618
    .end local v36    # "sSessionId":I
    :sswitch_e
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, " process MSG_PCM_GET_HIST_KEY"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v41, v0

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x8

    .line 619
    const/16 v43, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v22

    move-object/from16 v2, v41

    move/from16 v3, v43

    move/from16 v4, v42

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 621
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x8

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x4

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 627
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->final_key:Ljavax/crypto/SecretKey;

    move-object/from16 v40, v0

    if-nez v40, :cond_9

    .line 629
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, "generator a key"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const-string/jumbo v40, "AES"

    invoke-static/range {v40 .. v40}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v29

    .line 633
    .local v29, "keyGen":Ljavax/crypto/KeyGenerator;
    new-instance v40, Ljava/security/SecureRandom;

    invoke-direct/range {v40 .. v40}, Ljava/security/SecureRandom;-><init>()V

    const/16 v41, 0x80

    move-object/from16 v0, v29

    move/from16 v1, v41

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 634
    invoke-virtual/range {v29 .. v29}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->final_key:Ljavax/crypto/SecretKey;
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 654
    .end local v29    # "keyGen":Ljavax/crypto/KeyGenerator;
    :goto_3
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->final_key:Ljavax/crypto/SecretKey;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v28

    .line 655
    .local v28, "key":[B
    new-instance v35, Lcom/android/supl/nc/SendToServer;

    invoke-direct/range {v35 .. v35}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 656
    .local v35, "packet":Lcom/android/supl/nc/SendToServer;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v40, v0

    add-int/lit8 v40, v40, 0x8

    move/from16 v0, v40

    new-array v0, v0, [B

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 657
    const/16 v19, 0x0

    .line 658
    .local v19, "iOffset":I
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    move-object/from16 v40, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v41, v0

    add-int/lit8 v41, v41, -0x4

    move-object/from16 v0, v40

    move/from16 v1, v19

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    .line 659
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    move-object/from16 v40, v0

    const/16 v41, 0x11b

    move-object/from16 v0, v40

    move/from16 v1, v19

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v19

    .line 660
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    move-object/from16 v40, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v42

    move-object/from16 v2, v40

    move/from16 v3, v19

    move/from16 v4, v41

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 661
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 638
    .end local v19    # "iOffset":I
    .end local v28    # "key":[B
    .end local v35    # "packet":Lcom/android/supl/nc/SendToServer;
    :cond_9
    :try_start_a
    const-string/jumbo v40, "SUPL20_PCM"

    const-string/jumbo v41, "key is already exist."

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_3

    .line 642
    :catch_2
    move-exception v11

    .line 643
    .local v11, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_b
    const-string/jumbo v40, "SUPL20_PCM"

    invoke-virtual {v11}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-virtual {v11}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto/16 :goto_0

    .line 648
    .end local v11    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v10

    .line 649
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v40, "SUPL20_PCM"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    .line 334
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x100 -> :sswitch_a
        0x101 -> :sswitch_1
        0x102 -> :sswitch_3
        0x103 -> :sswitch_4
        0x104 -> :sswitch_5
        0x105 -> :sswitch_6
        0x106 -> :sswitch_7
        0x107 -> :sswitch_8
        0x108 -> :sswitch_9
        0x112 -> :sswitch_b
        0x113 -> :sswitch_c
        0x118 -> :sswitch_d
        0x11a -> :sswitch_e
        0x300 -> :sswitch_2
    .end sparse-switch

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reInit()V
    .locals 4

    .prologue
    .line 733
    iget-object v2, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->pauseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 734
    :try_start_0
    iget-boolean v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    if-eqz v1, :cond_0

    .line 735
    const-string/jumbo v1, "SUPL20_PCM"

    const-string/jumbo v3, "PCM reInit invoked"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->getThreadName()Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "stThrName":Ljava/lang/String;
    new-instance v1, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    invoke-direct {v1, p0, v0}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;-><init>(Lcom/android/supl/commprocessor/NDKCommProcessor;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    .line 738
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->initRead_WriteThread()V

    .line 739
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "stThrName":Ljava/lang/String;
    :cond_0
    monitor-exit v2

    .line 732
    return-void

    .line 733
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public sendByeMessage()V
    .locals 5

    .prologue
    .line 255
    new-instance v2, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v2}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 256
    .local v2, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v3, 0xc

    new-array v0, v3, [B

    .line 258
    .local v0, "bData":[B
    const/4 v1, 0x0

    .line 259
    .local v1, "offset":I
    const/16 v3, 0x8

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 260
    const/16 v3, 0x100

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 261
    iput-object v0, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 262
    iget-object v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v3, v2}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 263
    const-string/jumbo v3, "SUPL20_PCM"

    const-string/jumbo v4, "sendByeMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method public sendHelloMessage()V
    .locals 6

    .prologue
    .line 193
    new-instance v3, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v3}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 195
    .local v3, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v4, 0xc

    new-array v0, v4, [B

    .line 197
    .local v0, "bData":[B
    const/4 v2, 0x0

    .line 198
    .local v2, "offset":I
    const/16 v4, 0x8

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 199
    const/16 v4, 0x109

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 200
    const v4, 0x31415926

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 201
    iput-object v0, v3, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 202
    iget-object v4, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v4, v3}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 203
    const-string/jumbo v4, "SUPL20_PCM"

    const-string/jumbo v5, "sendHelloMessage"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v4, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 206
    .local v1, "message":Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v1, Landroid/os/Message;->what:I

    .line 207
    iget-object v4, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    return-void
.end method

.method public sendServer(Lcom/android/supl/nc/SendToServer;)V
    .locals 1
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v0, p1}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 272
    return-void
.end method

.method public stopNetWork()V
    .locals 4

    .prologue
    .line 687
    const-string/jumbo v0, "SUPL20_PCM"

    const-string/jumbo v1, "PCM stopNetWork invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->stopRead()V

    .line 689
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z

    .line 686
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->getNetWorkID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

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
    .line 282
    if-nez p1, :cond_1

    .line 283
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    .line 284
    const-string/jumbo v2, "fromServer object must not be null"

    .line 283
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "SUPL20_PCM"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->-get0(Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->-get0(Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
