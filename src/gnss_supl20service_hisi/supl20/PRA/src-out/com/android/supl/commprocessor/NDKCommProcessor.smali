.class public Lcom/android/supl/commprocessor/NDKCommProcessor;
.super Ljava/lang/Object;
.source "NDKCommProcessor.java"

# interfaces
.implements Lcom/android/supl/commprocessor/CommandProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/commprocessor/NDKCommProcessor$1;,
        Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;
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
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .prologue
    iget-boolean v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .prologue
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/nc/NetworkController;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .prologue
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/supl/commprocessor/NDKCommProcessor;)Ljava/lang/Object;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .prologue
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->pauseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .prologue
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/supl/commprocessor/NDKCommProcessor;Z)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/commprocessor/NDKCommProcessor;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    return p1
.end method

.method public constructor <init>(ZLjava/lang/String;ILcom/android/supl/loc/SETLocationManager;II)V
    .registers 15
    .param p1, "isSecure"    # Z
    .param p2, "stIP"    # Ljava/lang/String;
    .param p3, "iPort"    # I
    .param p4, "location_Manager"    # Lcom/android/supl/loc/SETLocationManager;
    .param p5, "iTimeOut"    # I
    .param p6, "iRetries"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 95
    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    .line 141
    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    .line 145
    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    .line 147
    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    .line 157
    iput-boolean v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    .line 159
    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->final_key:Ljavax/crypto/SecretKey;

    .line 213
    new-instance v0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;

    invoke-direct {v0, p0}, Lcom/android/supl/commprocessor/NDKCommProcessor$1;-><init>(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    .line 733
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->pauseLock:Ljava/lang/Object;

    .line 785
    iput v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 787
    iput v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 163
    invoke-direct {p0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->msgBufferReset()V

    .line 164
    new-instance v0, Lcom/android/supl/nc/NetworkController;

    const-string/jumbo v5, "PCM read thread"

    .line 165
    const-string/jumbo v6, "PCM write thread"

    move-object v2, p2

    move v3, p3

    move-object v4, p0

    move v7, v1

    .line 164
    invoke-direct/range {v0 .. v7}, Lcom/android/supl/nc/NetworkController;-><init>(ILjava/lang/String;ILcom/android/supl/commprocessor/CommandProcessor;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    .line 166
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v0, p5, p6}, Lcom/android/supl/nc/NetworkController;->setServer_conn_Timeout_Retries(II)V

    .line 167
    new-instance v0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    const-string/jumbo v1, "PCM command process thread"

    invoke-direct {v0, p0, v1}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;-><init>(Lcom/android/supl/commprocessor/NDKCommProcessor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    .line 168
    iput-object p4, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    .line 169
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v0, p0}, Lcom/android/supl/loc/SETLocationManager;->setCommProcessor(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    .line 170
    invoke-static {}, Lcom/android/supl/nc/SuplServiceMgr;->getInstance()Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/supl/nc/SuplServiceMgr;->setPcmCommandProcessor(Lcom/android/supl/commprocessor/CommandProcessor;)V

    .line 171
    invoke-static {}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->getInstance()Lcom/android/supl/trigger/PeriodicTriggerHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    .line 172
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    invoke-virtual {v0, p0}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->setNdkCommProcessor(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    .line 174
    return-void
.end method

.method private msgBufferReset()V
    .registers 3

    .prologue
    .line 176
    const/16 v0, 0x1388

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    .line 177
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 178
    return-void
.end method


# virtual methods
.method public init()Z
    .registers 5

    .prologue
    .line 186
    const-string/jumbo v1, "SUPL20_PCM"

    const-string/jumbo v2, "calling nc.connect for pcm"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/supl/nc/NetworkController;->connect([IZ)Z

    move-result v0

    .line 189
    .local v0, "isConnected":Z
    return v0
.end method

.method public pause()V
    .registers 7

    .prologue
    .line 736
    iget-object v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 737
    .local v1, "message":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 738
    iget-object v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 739
    iget-object v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 740
    const/4 v3, 0x4

    iput v3, v1, Landroid/os/Message;->what:I

    .line 741
    iget-object v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 742
    new-instance v2, Lcom/android/supl/commprocessor/NDKCommProcessor$2;

    invoke-direct {v2, p0}, Lcom/android/supl/commprocessor/NDKCommProcessor$2;-><init>(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    .line 765
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 767
    :try_start_24
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 768
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
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_43} :catch_44

    .line 772
    :goto_43
    return-void

    .line 769
    :catch_44
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "SUPL20_PCM"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43
.end method

.method public process(Lcom/android/supl/commprocessor/FromServer;)V
    .registers 50
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;

    .prologue
    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    if-eqz v43, :cond_13c

    .line 303
    if-eqz p1, :cond_13c

    .line 304
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v43, v0

    if-eqz v43, :cond_13c

    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    add-int v43, v43, v44

    const/16 v44, 0x1388

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_13c

    .line 307
    :try_start_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    .line 307
    const/16 v47, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v47

    move-object/from16 v2, v44

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    add-int v43, v43, v44

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    add-int v43, v43, v44

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 311
    const-string/jumbo v43, "SUPL20_PCM"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "buffer size:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, "writePosition: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_bc} :catch_f9

    .line 327
    :cond_bc
    :goto_bc
    const/16 v25, 0x0

    .line 328
    .local v25, "iReadLen":I
    const/16 v23, 0x0

    .line 329
    .local v23, "iPacketSize":I
    new-instance v28, Ljava/io/DataInputStream;

    new-instance v43, Ljava/io/ByteArrayInputStream;

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    .line 329
    invoke-direct/range {v43 .. v44}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 332
    .local v28, "in":Ljava/io/DataInputStream;
    :try_start_d4
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readInt()I

    move-result v23

    .line 334
    if-gtz v23, :cond_156

    .line 335
    const-string/jumbo v43, "SUPL20_PCM"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "process: process less then zero "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_f8} :catch_192

    .line 722
    :cond_f8
    :goto_f8
    :sswitch_f8
    return-void

    .line 312
    .end local v23    # "iPacketSize":I
    .end local v25    # "iReadLen":I
    .end local v28    # "in":Ljava/io/DataInputStream;
    :catch_f9
    move-exception v18

    .line 313
    .local v18, "ex":Ljava/lang/Exception;
    const-string/jumbo v43, "SUPL20_PCM"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "process m_bMasterBuffer overflow,"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ","

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 315
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 316
    return-void

    .line 319
    .end local v18    # "ex":Ljava/lang/Exception;
    :cond_13c
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, "m_bMasterBuff is null or fromServer is null or m_bMasterBuffer overflow!"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 321
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 322
    return-void

    .line 339
    .restart local v23    # "iPacketSize":I
    .restart local v25    # "iReadLen":I
    .restart local v28    # "in":Ljava/io/DataInputStream;
    :cond_156
    const/16 v25, 0x4

    .line 340
    :try_start_158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x4

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    move/from16 v0, v43

    move/from16 v1, v23

    if-ge v0, v1, :cond_1a2

    .line 343
    const-string/jumbo v43, "SUPL20_PCM"

    .line 344
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "process: iTotalArrival less then PacketSize "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 343
    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_190} :catch_192

    goto/16 :goto_f8

    .line 717
    :catch_192
    move-exception v10

    .line 719
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, "Error in process "

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_bc

    .line 348
    .end local v10    # "e":Ljava/io/IOException;
    :cond_1a2
    :try_start_1a2
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readInt()I

    move-result v27

    .line 349
    .local v27, "icmdID":I
    add-int/lit8 v25, v25, 0x4

    .line 350
    const-string/jumbo v43, "SUPL20_PCM"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "process icmdID: 0X"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sparse-switch v27, :sswitch_data_9d8

    .line 706
    const-string/jumbo v43, "SUPL20_PCM"

    .line 707
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "default : recvd cmdid 0X"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    .line 708
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v45

    .line 707
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 706
    invoke-static/range {v43 .. v44}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x8

    .line 709
    const/16 v46, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v25

    move-object/from16 v2, v44

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 711
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x8

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 712
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x4

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I
    :try_end_22b
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_22b} :catch_192

    goto/16 :goto_f8

    .line 358
    :sswitch_22d
    :try_start_22d
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, "process hello msg"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    .line 362
    .local v20, "iMagicNum":I
    add-int/lit8 v25, v25, 0x4

    .line 363
    const v43, 0x53589793

    move/from16 v0, v20

    move/from16 v1, v43

    if-ne v0, v1, :cond_f8

    .line 364
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, "init msg success"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0xc

    const/16 v46, 0x0

    .line 369
    move-object/from16 v0, v43

    move/from16 v1, v25

    move-object/from16 v2, v44

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0xc

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x8

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->pauseLock:Ljava/lang/Object;

    move-object/from16 v44, v0

    monitor-enter v44
    :try_end_299
    .catch Ljava/io/IOException; {:try_start_22d .. :try_end_299} :catch_2a7

    .line 375
    :try_start_299
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    move/from16 v43, v0

    if-nez v43, :cond_2a4

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendHelloMessage()V
    :try_end_2a4
    .catchall {:try_start_299 .. :try_end_2a4} :catchall_2ba

    :cond_2a4
    :try_start_2a4
    monitor-exit v44
    :try_end_2a5
    .catch Ljava/io/IOException; {:try_start_2a4 .. :try_end_2a5} :catch_2a7

    goto/16 :goto_bc

    .line 379
    .end local v20    # "iMagicNum":I
    :catch_2a7
    move-exception v17

    .line 381
    .local v17, "ex":Ljava/io/IOException;
    :try_start_2a8
    const-string/jumbo v43, "SUPL20_PCM"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b8
    .catch Ljava/io/IOException; {:try_start_2a8 .. :try_end_2b8} :catch_192

    goto/16 :goto_bc

    .line 374
    .end local v17    # "ex":Ljava/io/IOException;
    .restart local v20    # "iMagicNum":I
    :catchall_2ba
    move-exception v43

    :try_start_2bb
    monitor-exit v44

    throw v43
    :try_end_2bd
    .catch Ljava/io/IOException; {:try_start_2bb .. :try_end_2bd} :catch_2a7

    .line 387
    .end local v20    # "iMagicNum":I
    :sswitch_2bd
    :try_start_2bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x8

    const/16 v46, 0x0

    .line 387
    move-object/from16 v0, v43

    move/from16 v1, v25

    move-object/from16 v2, v44

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x8

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x4

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I
    :try_end_301
    .catch Ljava/io/IOException; {:try_start_2bd .. :try_end_301} :catch_192

    goto/16 :goto_bc

    .line 396
    :sswitch_303
    :try_start_303
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process MSG_PCM_GET_SET_ID"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30c
    .catch Ljava/lang/Exception; {:try_start_303 .. :try_end_30c} :catch_3ba
    .catch Ljava/io/IOException; {:try_start_303 .. :try_end_30c} :catch_192

    .line 400
    :try_start_30c
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, "add 2s delay before fetch set id"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-wide/16 v44, 0x7d0

    invoke-static/range {v44 .. v45}, Ljava/lang/Thread;->sleep(J)V
    :try_end_31a
    .catch Ljava/lang/InterruptedException; {:try_start_30c .. :try_end_31a} :catch_9d4
    .catch Ljava/lang/Exception; {:try_start_30c .. :try_end_31a} :catch_3ba
    .catch Ljava/io/IOException; {:try_start_30c .. :try_end_31a} :catch_192

    .line 409
    :goto_31a
    :try_start_31a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V

    .line 410
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readInt()I

    move-result v26

    .line 411
    .local v26, "iReqSetType":I
    add-int/lit8 v25, v25, 0x4

    .line 412
    invoke-static/range {v26 .. v26}, Lcom/android/supl/loc/SetID;->isValidSetIDRequest(I)Z

    move-result v30

    .line 413
    .local v30, "isValid":Z
    const-string/jumbo v43, "SUPL20_PCM"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "iReqSetType: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    if-nez v30, :cond_355

    .line 415
    sget-object v43, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v44, "SUPL20_PCMprocess: in Valid set id request"

    invoke-virtual/range {v43 .. v44}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    :cond_355
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v39

    .line 419
    .local v39, "sSessionId":I
    add-int/lit8 v25, v25, 0x2

    .line 420
    if-gez v39, :cond_365

    .line 421
    sget-object v43, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v44, "SUPL20_PCMprocess: in Valid set id sSessionId"

    invoke-virtual/range {v43 .. v44}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 424
    :cond_365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v26

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/supl/loc/SETLocationManager;->sendSETIDInfo(II)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0xe

    const/16 v46, 0x0

    .line 425
    move-object/from16 v0, v43

    move/from16 v1, v25

    move-object/from16 v2, v44

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 428
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0xe

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 429
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0xa

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I
    :try_end_3b8
    .catch Ljava/lang/Exception; {:try_start_31a .. :try_end_3b8} :catch_3ba
    .catch Ljava/io/IOException; {:try_start_31a .. :try_end_3b8} :catch_192

    goto/16 :goto_bc

    .line 431
    .end local v26    # "iReqSetType":I
    .end local v30    # "isValid":Z
    .end local v39    # "sSessionId":I
    :catch_3ba
    move-exception v18

    .line 432
    .restart local v18    # "ex":Ljava/lang/Exception;
    :try_start_3bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    sub-int v45, v45, v25

    const/16 v46, 0x0

    .line 432
    move-object/from16 v0, v43

    move/from16 v1, v25

    move-object/from16 v2, v44

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 435
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    sub-int v43, v43, v25

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 436
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v44, v25, -0x4

    sub-int v43, v43, v44

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    .line 437
    const-string/jumbo v43, "SUPL20_PCM"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_bc

    .line 443
    .end local v18    # "ex":Ljava/lang/Exception;
    :sswitch_413
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process MSG_PCM_GET_LOCATION_ID"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readInt()I

    move-result v24

    .line 446
    .local v24, "iPushModule":I
    add-int/lit8 v25, v25, 0x4

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v36

    .line 458
    .local v36, "message":Landroid/os/Message;
    const/16 v43, 0x3

    move/from16 v0, v43

    move-object/from16 v1, v36

    iput v0, v1, Landroid/os/Message;->what:I

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0xc

    const/16 v46, 0x0

    .line 461
    move-object/from16 v0, v43

    move/from16 v1, v25

    move-object/from16 v2, v44

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 464
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0xc

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 465
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x8

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_bc

    .line 469
    .end local v24    # "iPushModule":I
    .end local v36    # "message":Landroid/os/Message;
    :sswitch_487
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process MSG_PCM_START_TRIGGER_PERIODIC"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->startTriggerPeriodic(Ljava/io/DataInputStream;)Z

    move-result v29

    .line 472
    .local v29, "isReadSuccess":Z
    if-eqz v29, :cond_bc

    .line 475
    add-int/lit8 v25, v25, 0xb

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x13

    const/16 v46, 0x0

    .line 479
    move-object/from16 v0, v43

    move/from16 v1, v25

    move-object/from16 v2, v44

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 482
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x13

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0xf

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_bc

    .line 487
    .end local v29    # "isReadSuccess":Z
    :sswitch_4e8
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process MSG_PCM_STOP_TRIGGER_PERIODIC"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mPeriodicTriggerHandler:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->stopTriggerPeriodic(Ljava/io/DataInputStream;)Z

    move-result v29

    .line 490
    .restart local v29    # "isReadSuccess":Z
    if-eqz v29, :cond_bc

    .line 493
    add-int/lit8 v25, v25, 0x3

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0xb

    const/16 v46, 0x0

    .line 496
    move-object/from16 v0, v43

    move/from16 v1, v25

    move-object/from16 v2, v44

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 499
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0xb

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 500
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x7

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_bc

    .line 505
    .end local v29    # "isReadSuccess":Z
    :sswitch_549
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process MSG_PCM_ON_SI_LOCATION_REPORT"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v33, Lcom/android/supl/si/SILocationReport;

    invoke-direct/range {v33 .. v33}, Lcom/android/supl/si/SILocationReport;-><init>()V

    .line 508
    .local v33, "locationReport":Lcom/android/supl/si/SILocationReport;
    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/supl/si/SILocationReport;->readSILocationReport(Ljava/io/DataInputStream;)Z

    move-result v29

    .line 509
    .restart local v29    # "isReadSuccess":Z
    if-eqz v29, :cond_bc

    .line 513
    add-int/lit8 v25, v25, 0xa

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x12

    const/16 v46, 0x0

    .line 516
    move-object/from16 v0, v43

    move/from16 v1, v25

    move-object/from16 v2, v44

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x12

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 520
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0xe

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_bc

    .line 524
    .end local v29    # "isReadSuccess":Z
    .end local v33    # "locationReport":Lcom/android/supl/si/SILocationReport;
    :sswitch_5a9
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process MSG_PCM_ON_SI_SESSION_COMPLETE"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v41, Lcom/android/supl/si/SISessionComplete;

    invoke-direct/range {v41 .. v41}, Lcom/android/supl/si/SISessionComplete;-><init>()V

    .line 527
    .local v41, "sessionComplete":Lcom/android/supl/si/SISessionComplete;
    move-object/from16 v0, v41

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/supl/si/SISessionComplete;->readSISessionComplete(Ljava/io/DataInputStream;)Z

    move-result v29

    .line 529
    .restart local v29    # "isReadSuccess":Z
    if-eqz v29, :cond_bc

    .line 532
    add-int/lit8 v25, v25, 0x2

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0xa

    const/16 v46, 0x0

    .line 534
    move-object/from16 v0, v43

    move/from16 v1, v25

    move-object/from16 v2, v44

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 537
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0xa

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 538
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x6

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_bc

    .line 543
    .end local v29    # "isReadSuccess":Z
    .end local v41    # "sessionComplete":Lcom/android/supl/si/SISessionComplete;
    :sswitch_609
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process MSG_PCM_ON_SI_FAILURE"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v19, Lcom/android/supl/si/SIFailure;

    invoke-direct/range {v19 .. v19}, Lcom/android/supl/si/SIFailure;-><init>()V

    .line 546
    .local v19, "failure":Lcom/android/supl/si/SIFailure;
    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/supl/si/SIFailure;->readSIFailure(Ljava/io/DataInputStream;)Z

    move-result v29

    .line 547
    .restart local v29    # "isReadSuccess":Z
    if-eqz v29, :cond_bc

    .line 550
    add-int/lit8 v25, v25, 0x6

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0xe

    const/16 v46, 0x0

    .line 553
    move-object/from16 v0, v43

    move/from16 v1, v25

    move-object/from16 v2, v44

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 556
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0xe

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 557
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0xa

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_bc

    .line 562
    .end local v19    # "failure":Lcom/android/supl/si/SIFailure;
    .end local v29    # "isReadSuccess":Z
    :sswitch_669
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process MSG_PCM_BYE"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->stopNetWork()V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x8

    .line 564
    const/16 v46, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v25

    move-object/from16 v2, v44

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 566
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x8

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 567
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x4

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_bc

    .line 571
    :sswitch_6bb
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process MSG_PCM_SYS_IDLE"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x8

    .line 572
    const/16 v46, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v25

    move-object/from16 v2, v44

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 574
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x8

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 575
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x4

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_bc

    .line 578
    :sswitch_70a
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process MSG_PCM_GET_OTHER_MEAS"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    .line 581
    .local v21, "iMeasureType":I
    add-int/lit8 v25, v25, 0x4

    .line 582
    packed-switch v21, :pswitch_data_a16

    .line 627
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process SUPL_OTHER_MEAS_AFLT"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :goto_725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0xc

    .line 632
    const/16 v46, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v25

    move-object/from16 v2, v44

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 634
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0xc

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 635
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x8

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_bc

    .line 584
    :pswitch_76b
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process MSG_PCM_GET_OTDOA_GSM_MEAS"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v9, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;

    invoke-direct {v9}, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;-><init>()V

    .line 586
    .local v9, "configParser":Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;
    invoke-virtual {v9}, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->getOtdoa_Measurement()Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    move-result-object v35

    .line 587
    .local v35, "measurement":Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;
    move-object/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->getOTDOA_Measurement(I)[B

    move-result-object v37

    .line 588
    .local v37, "odtoaMeas":[B
    new-instance v40, Lcom/android/supl/nc/SendToServer;

    invoke-direct/range {v40 .. v40}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 589
    .local v40, "sendToServer":Lcom/android/supl/nc/SendToServer;
    move-object/from16 v0, v37

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    goto :goto_725

    .line 594
    .end local v9    # "configParser":Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;
    .end local v35    # "measurement":Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;
    .end local v37    # "odtoaMeas":[B
    .end local v40    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :pswitch_79e
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process MSG_PCM_GET_OTDOA_LPP_MEAS"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v34, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;

    invoke-direct/range {v34 .. v34}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;-><init>()V

    .line 596
    .local v34, "lpp_OTDOA_MEASUREMENT":Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;
    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;->getOTDOA_MEASUREMENT(I)[B

    move-result-object v8

    .line 597
    .local v8, "bLPPOTDOAMeas":[B
    new-instance v40, Lcom/android/supl/nc/SendToServer;

    invoke-direct/range {v40 .. v40}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 598
    .restart local v40    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    move-object/from16 v0, v40

    iput-object v8, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    goto/16 :goto_725

    .line 603
    .end local v8    # "bLPPOTDOAMeas":[B
    .end local v34    # "lpp_OTDOA_MEASUREMENT":Lcom/android/supl/loc/measure/lpp/SUPL_LPP_OTDOA_MEASUREMENT;
    .end local v40    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :pswitch_7cc
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process MSG_PCM_GET_EOTD_MEAS"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v16, Lcom/android/supl/loc/measure/eotd/EOTDParser;

    invoke-direct/range {v16 .. v16}, Lcom/android/supl/loc/measure/eotd/EOTDParser;-><init>()V

    .line 605
    .local v16, "eotdParser":Lcom/android/supl/loc/measure/eotd/EOTDParser;
    invoke-virtual/range {v16 .. v16}, Lcom/android/supl/loc/measure/eotd/EOTDParser;->getEotdMeasInfo()Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    move-result-object v15

    .line 606
    .local v15, "eotdMeasInfo":Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->getEOTDMeasInfo(I)[B

    move-result-object v14

    .line 607
    .local v14, "eotdMeas":[B
    new-instance v40, Lcom/android/supl/nc/SendToServer;

    invoke-direct/range {v40 .. v40}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 608
    .restart local v40    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    move-object/from16 v0, v40

    iput-object v14, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    goto/16 :goto_725

    .line 614
    .end local v14    # "eotdMeas":[B
    .end local v15    # "eotdMeasInfo":Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;
    .end local v16    # "eotdParser":Lcom/android/supl/loc/measure/eotd/EOTDParser;
    .end local v40    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :pswitch_7fc
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process MSG_PCM_GET_AFLT_MEAS"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    new-instance v7, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;

    invoke-direct {v7}, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;-><init>()V

    .line 616
    .local v7, "afltParser":Lcom/android/supl/loc/measure/aflt/AfltConfigParser;
    invoke-virtual {v7}, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->getAFLTMeasInfo()Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    move-result-object v42

    .line 617
    .local v42, "suplafltMeasInfo":Lcom/android/supl/loc/measure/aflt/AfltMeasure;
    move-object/from16 v0, v42

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->getAFLTMeasInfo(I)[B

    move-result-object v6

    .line 618
    .local v6, "afltMeas":[B
    new-instance v40, Lcom/android/supl/nc/SendToServer;

    invoke-direct/range {v40 .. v40}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 619
    .restart local v40    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    move-object/from16 v0, v40

    iput-object v6, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    goto/16 :goto_725

    .line 624
    .end local v6    # "afltMeas":[B
    .end local v7    # "afltParser":Lcom/android/supl/loc/measure/aflt/AfltConfigParser;
    .end local v40    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    .end local v42    # "suplafltMeasInfo":Lcom/android/supl/loc/measure/aflt/AfltMeasure;
    :pswitch_82e
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process SUPLOtherMeasureMent NONE "

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_725

    .line 639
    .end local v21    # "iMeasureType":I
    :sswitch_839
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process MSG_PCM_GET_SIM_MCC_MNC"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual/range {v28 .. v28}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v39

    .line 642
    .restart local v39    # "sSessionId":I
    add-int/lit8 v25, v25, 0x2

    .line 643
    if-gez v39, :cond_852

    .line 644
    sget-object v43, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v44, "SUPL20_PCMprocess: in Valid set id sSessionId"

    invoke-virtual/range {v43 .. v44}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 647
    :cond_852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    move-object/from16 v43, v0

    if-eqz v43, :cond_86f

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->locationID_Manager:Lcom/android/supl/loc/SETLocationManager;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/supl/loc/SETLocationManager;->getSIM_Mnc_MCC(I)Lcom/android/supl/nc/SendToServer;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 652
    :cond_86f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0xa

    .line 652
    const/16 v46, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v25

    move-object/from16 v2, v44

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 654
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0xa

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 655
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x6

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    goto/16 :goto_bc

    .line 659
    .end local v39    # "sSessionId":I
    :sswitch_8b5
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, " process MSG_PCM_GET_HIST_KEY"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v44, v0

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->m_bMasterBuffer:[B

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x8

    .line 660
    const/16 v46, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v25

    move-object/from16 v2, v44

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 662
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x8

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iLastWritePostion:I

    .line 663
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x4

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->iTotalArrival:I
    :try_end_902
    .catch Ljava/io/IOException; {:try_start_3bb .. :try_end_902} :catch_192

    .line 668
    :try_start_902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->final_key:Ljavax/crypto/SecretKey;

    move-object/from16 v43, v0

    if-nez v43, :cond_9aa

    .line 670
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, "generator a key"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string/jumbo v43, "AES"

    invoke-static/range {v43 .. v43}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v32

    .line 674
    .local v32, "keyGen":Ljavax/crypto/KeyGenerator;
    new-instance v43, Ljava/security/SecureRandom;

    invoke-direct/range {v43 .. v43}, Ljava/security/SecureRandom;-><init>()V

    const/16 v44, 0x80

    move-object/from16 v0, v32

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 675
    invoke-virtual/range {v32 .. v32}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/supl/commprocessor/NDKCommProcessor;->final_key:Ljavax/crypto/SecretKey;
    :try_end_934
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_902 .. :try_end_934} :catch_9b4
    .catch Ljava/lang/Exception; {:try_start_902 .. :try_end_934} :catch_9c4
    .catch Ljava/io/IOException; {:try_start_902 .. :try_end_934} :catch_192

    .line 695
    .end local v32    # "keyGen":Ljavax/crypto/KeyGenerator;
    :goto_934
    :try_start_934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NDKCommProcessor;->final_key:Ljavax/crypto/SecretKey;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v31

    .line 696
    .local v31, "key":[B
    new-instance v38, Lcom/android/supl/nc/SendToServer;

    invoke-direct/range {v38 .. v38}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 697
    .local v38, "packet":Lcom/android/supl/nc/SendToServer;
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x8

    move/from16 v0, v43

    new-array v0, v0, [B

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 698
    const/16 v22, 0x0

    .line 699
    .local v22, "iOffset":I
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    move-object/from16 v43, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    add-int/lit8 v44, v44, -0x4

    move-object/from16 v0, v43

    move/from16 v1, v22

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 700
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    move-object/from16 v43, v0

    const/16 v44, 0x11b

    move-object/from16 v0, v43

    move/from16 v1, v22

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 701
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    move-object/from16 v43, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v45

    move-object/from16 v2, v43

    move/from16 v3, v22

    move/from16 v4, v44

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 702
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V
    :try_end_9a8
    .catch Ljava/io/IOException; {:try_start_934 .. :try_end_9a8} :catch_192

    goto/16 :goto_bc

    .line 679
    .end local v22    # "iOffset":I
    .end local v31    # "key":[B
    .end local v38    # "packet":Lcom/android/supl/nc/SendToServer;
    :cond_9aa
    :try_start_9aa
    const-string/jumbo v43, "SUPL20_PCM"

    const-string/jumbo v44, "key is already exist."

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9aa .. :try_end_9b3} :catch_9b4
    .catch Ljava/lang/Exception; {:try_start_9aa .. :try_end_9b3} :catch_9c4
    .catch Ljava/io/IOException; {:try_start_9aa .. :try_end_9b3} :catch_192

    goto :goto_934

    .line 683
    :catch_9b4
    move-exception v13

    .line 684
    .local v13, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_9b5
    const-string/jumbo v43, "SUPL20_PCM"

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_bc

    .line 689
    .end local v13    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_9c4
    move-exception v11

    .line 690
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v43, "SUPL20_PCM"

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9d2
    .catch Ljava/io/IOException; {:try_start_9b5 .. :try_end_9d2} :catch_192

    goto/16 :goto_bc

    .line 403
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_9d4
    move-exception v12

    .local v12, "e":Ljava/lang/InterruptedException;
    goto/16 :goto_31a

    .line 351
    nop

    :sswitch_data_9d8
    .sparse-switch
        0x0 -> :sswitch_f8
        0x100 -> :sswitch_669
        0x101 -> :sswitch_22d
        0x102 -> :sswitch_303
        0x103 -> :sswitch_413
        0x104 -> :sswitch_487
        0x105 -> :sswitch_4e8
        0x106 -> :sswitch_549
        0x107 -> :sswitch_5a9
        0x108 -> :sswitch_609
        0x112 -> :sswitch_6bb
        0x113 -> :sswitch_70a
        0x118 -> :sswitch_839
        0x11a -> :sswitch_8b5
        0x300 -> :sswitch_2bd
    .end sparse-switch

    .line 582
    :pswitch_data_a16
    .packed-switch 0x0
        :pswitch_82e
        :pswitch_76b
        :pswitch_79e
        :pswitch_7cc
        :pswitch_7fc
    .end packed-switch
.end method

.method public reInit()V
    .registers 5

    .prologue
    .line 774
    iget-object v2, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->pauseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 775
    :try_start_3
    iget-boolean v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z

    if-eqz v1, :cond_25

    .line 776
    const-string/jumbo v1, "SUPL20_PCM"

    const-string/jumbo v3, "PCM reInit invoked"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->getThreadName()Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "stThrName":Ljava/lang/String;
    new-instance v1, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    invoke-direct {v1, p0, v0}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;-><init>(Lcom/android/supl/commprocessor/NDKCommProcessor;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    .line 779
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->initRead_WriteThread()V

    .line 780
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->isPause:Z
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    .end local v0    # "stThrName":Ljava/lang/String;
    :cond_25
    monitor-exit v2

    .line 784
    return-void

    .line 774
    :catchall_27
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public sendByeMessage()V
    .registers 6

    .prologue
    .line 259
    new-instance v2, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v2}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 260
    .local v2, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v3, 0xc

    new-array v0, v3, [B

    .line 262
    .local v0, "bData":[B
    const/4 v1, 0x0

    .line 263
    .local v1, "offset":I
    const/16 v3, 0x8

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 264
    const/16 v3, 0x100

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 265
    iput-object v0, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 266
    iget-object v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v3, v2}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 267
    const-string/jumbo v3, "SUPL20_PCM"

    const-string/jumbo v4, "sendByeMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void
.end method

.method public sendHelloMessage()V
    .registers 7

    .prologue
    .line 197
    new-instance v3, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v3}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 199
    .local v3, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v4, 0xc

    new-array v0, v4, [B

    .line 201
    .local v0, "bData":[B
    const/4 v2, 0x0

    .line 202
    .local v2, "offset":I
    const/16 v4, 0x8

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 203
    const/16 v4, 0x109

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 204
    const v4, 0x31415926

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 205
    iput-object v0, v3, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 206
    iget-object v4, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v4, v3}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 207
    const-string/jumbo v4, "SUPL20_PCM"

    const-string/jumbo v5, "sendHelloMessage"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v4, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 210
    .local v1, "message":Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v1, Landroid/os/Message;->what:I

    .line 211
    iget-object v4, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    return-void
.end method

.method public sendServer(Lcom/android/supl/nc/SendToServer;)V
    .registers 3
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v0, p1}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 279
    return-void
.end method

.method public stopNetWork()V
    .registers 5

    .prologue
    .line 728
    const-string/jumbo v0, "SUPL20_PCM"

    const-string/jumbo v1, "PCM stopNetWork invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->stopRead()V

    .line 730
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z

    .line 732
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 848
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
    .registers 5
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 286
    if-nez p1, :cond_17

    .line 287
    :try_start_2
    new-instance v1, Ljava/lang/NullPointerException;

    .line 288
    const-string/jumbo v2, "fromServer object must not be null"

    .line 287
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_b} :catch_b

    .line 293
    :catch_b
    move-exception v0

    .line 294
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "SUPL20_PCM"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_16
    :goto_16
    return-void

    .line 290
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->-get0(Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 291
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor;->readPacket:Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->-get0(Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_2c} :catch_b

    goto :goto_16
.end method
