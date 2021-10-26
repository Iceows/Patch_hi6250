.class public Lcom/android/supl/commprocessor/SUPLSCMService;
.super Landroid/app/Service;
.source "SUPLSCMService.java"

# interfaces
.implements Lcom/android/supl/GpsOnOffListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/commprocessor/SUPLSCMService$SCMConnectionThread;,
        Lcom/android/supl/commprocessor/SUPLSCMService$MyBinder;
    }
.end annotation


# static fields
.field private static final HOST_ADDRESS:I = 0x7f000001

.field public static final SERVICE_NAME:Ljava/lang/String;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field datagramServer:Lcom/android/supl/commprocessor/DatagramServer;

.field private isInit:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

.field private scmThread:Ljava/lang/Thread;


# direct methods
.method static synthetic -get0(Lcom/android/supl/commprocessor/SUPLSCMService;)Lcom/android/supl/commprocessor/ServerCommProcessor;
    .registers 2

    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/supl/commprocessor/SUPLSCMService;Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/supl/commprocessor/SUPLSCMService;->supportMultipleBearerNetwork(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/android/supl/commprocessor/SUPLSCMService;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/supl/commprocessor/SUPLSCMService;->SERVICE_NAME:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Lcom/android/supl/commprocessor/SUPLSCMService$MyBinder;

    invoke-direct {v0, p0}, Lcom/android/supl/commprocessor/SUPLSCMService$MyBinder;-><init>(Lcom/android/supl/commprocessor/SUPLSCMService;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mBinder:Landroid/os/IBinder;

    .line 32
    iput-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 33
    iput-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->datagramServer:Lcom/android/supl/commprocessor/DatagramServer;

    .line 35
    iput-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->scmThread:Ljava/lang/Thread;

    .line 36
    iput-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mContext:Landroid/content/Context;

    .line 37
    const-string/jumbo v0, "SUPL20_SCMService"

    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->LOG_TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->isInit:Z

    .line 44
    iput-object p0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Lcom/android/supl/commprocessor/SUPLSCMService$MyBinder;

    invoke-direct {v0, p0}, Lcom/android/supl/commprocessor/SUPLSCMService$MyBinder;-><init>(Lcom/android/supl/commprocessor/SUPLSCMService;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mBinder:Landroid/os/IBinder;

    .line 32
    iput-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 33
    iput-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->datagramServer:Lcom/android/supl/commprocessor/DatagramServer;

    .line 35
    iput-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->scmThread:Ljava/lang/Thread;

    .line 36
    iput-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mContext:Landroid/content/Context;

    .line 37
    const-string/jumbo v0, "SUPL20_SCMService"

    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->LOG_TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->isInit:Z

    .line 48
    iput-object p1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/SUPLSCMService;->onCreate()V

    .line 47
    return-void
.end method

.method private checkSupportMultiBearer()V
    .registers 6

    .prologue
    .line 229
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    .line 230
    .local v0, "configManager":Lcom/android/supl/config/ConfigManager;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 231
    iget-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mContext:Landroid/content/Context;

    .line 232
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/android/supl/commprocessor/SUPLSCMService$1;

    invoke-direct {v2, p0, v1}, Lcom/android/supl/commprocessor/SUPLSCMService$1;-><init>(Lcom/android/supl/commprocessor/SUPLSCMService;Landroid/content/Context;)V

    .line 242
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 227
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "thread":Ljava/lang/Thread;
    :goto_14
    return-void

    .line 244
    :cond_15
    const-string/jumbo v3, "SUPL20_SCMService"

    .line 245
    const-string/jumbo v4, "No Support for MultiBearer"

    .line 244
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private isBearerNetWorkSupported(I[Ljava/lang/String;)Z
    .registers 9
    .param p1, "type"    # I
    .param p2, "stNetWorkType"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "isNetworkSupported":Z
    const/4 v1, 0x0

    .line 330
    .local v1, "typeString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_64

    .line 372
    .end local v1    # "typeString":Ljava/lang/String;
    :goto_6
    :pswitch_6
    const-string/jumbo v2, "SUPL20_SCMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "network type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-eqz p2, :cond_32

    array-length v2, p2

    if-eqz v2, :cond_32

    .line 374
    aput-object v1, p2, v5

    .line 376
    :cond_32
    return v0

    .line 332
    .restart local v1    # "typeString":Ljava/lang/String;
    :pswitch_33
    const-string/jumbo v1, "gsm"

    .line 333
    .local v1, "typeString":Ljava/lang/String;
    const/4 v0, 0x1

    .line 334
    goto :goto_6

    .line 336
    .local v1, "typeString":Ljava/lang/String;
    :pswitch_38
    const-string/jumbo v1, "gsm"

    .line 337
    .local v1, "typeString":Ljava/lang/String;
    const/4 v0, 0x1

    .line 338
    goto :goto_6

    .line 340
    .local v1, "typeString":Ljava/lang/String;
    :pswitch_3d
    const-string/jumbo v1, "umb"

    .line 341
    .local v1, "typeString":Ljava/lang/String;
    const/4 v0, 0x1

    .line 342
    goto :goto_6

    .line 344
    .local v1, "typeString":Ljava/lang/String;
    :pswitch_42
    const-string/jumbo v1, "cdma"

    .line 345
    .local v1, "typeString":Ljava/lang/String;
    const/4 v0, 0x1

    .line 346
    goto :goto_6

    .line 348
    .local v1, "typeString":Ljava/lang/String;
    :pswitch_47
    const-string/jumbo v1, "lte"

    .line 349
    .local v1, "typeString":Ljava/lang/String;
    const/4 v0, 0x1

    .line 350
    goto :goto_6

    .line 352
    .local v1, "typeString":Ljava/lang/String;
    :pswitch_4c
    const-string/jumbo v1, "hrpd"

    .line 353
    .local v1, "typeString":Ljava/lang/String;
    const/4 v0, 0x1

    .line 354
    goto :goto_6

    .line 356
    .local v1, "typeString":Ljava/lang/String;
    :pswitch_51
    const-string/jumbo v1, "UNKNOWN"

    .local v1, "typeString":Ljava/lang/String;
    goto :goto_6

    .line 359
    .local v1, "typeString":Ljava/lang/String;
    :pswitch_55
    const-string/jumbo v1, "wcdma"

    .line 360
    .local v1, "typeString":Ljava/lang/String;
    const/4 v0, 0x1

    .line 361
    goto :goto_6

    .line 363
    .local v1, "typeString":Ljava/lang/String;
    :pswitch_5a
    const-string/jumbo v1, "wcdma"

    .line 364
    .local v1, "typeString":Ljava/lang/String;
    const/4 v0, 0x1

    .line 365
    goto :goto_6

    .line 367
    .local v1, "typeString":Ljava/lang/String;
    :pswitch_5f
    const-string/jumbo v1, "wcdma"

    .line 368
    .local v1, "typeString":Ljava/lang/String;
    const/4 v0, 0x1

    .line 369
    goto :goto_6

    .line 330
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_51
        :pswitch_38
        :pswitch_33
        :pswitch_3d
        :pswitch_42
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5a
        :pswitch_5f
        :pswitch_55
        :pswitch_6
        :pswitch_6
        :pswitch_47
        :pswitch_4c
    .end packed-switch
.end method

.method private isMobileDataEnabled(Landroid/content/Context;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    const/4 v4, 0x0

    .line 212
    .local v4, "mobileDataEnabled":Z
    const-string/jumbo v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 214
    .local v0, "cm":Landroid/net/ConnectivityManager;
    :try_start_a
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 215
    .local v1, "cmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "getMobileDataEnabled"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 216
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 218
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_30} :catch_32

    move-result v4

    .line 223
    .end local v1    # "cmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "mobileDataEnabled":Z
    :goto_31
    return v4

    .line 219
    .restart local v4    # "mobileDataEnabled":Z
    :catch_32
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_31
.end method

.method private isRoaming(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 207
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private start()V
    .registers 10

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->isInit:Z

    .line 100
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v6

    .line 101
    .local v6, "configManager":Lcom/android/supl/config/ConfigManager;
    invoke-virtual {v6}, Lcom/android/supl/config/ConfigManager;->getSCMPort()I

    move-result v3

    .line 102
    .local v3, "iSCMport":I
    invoke-virtual {v6}, Lcom/android/supl/config/ConfigManager;->getSCMIpAdress()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "stSCMIPAddress":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/supl/config/ConfigManager;->getNwTimeout()I

    move-result v4

    .line 104
    .local v4, "iTimeOut":I
    invoke-virtual {v6}, Lcom/android/supl/config/ConfigManager;->getNwRetries()I

    move-result v5

    .line 106
    .local v5, "iRetries":I
    new-instance v0, Lcom/android/supl/commprocessor/ServerCommProcessor;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/supl/commprocessor/ServerCommProcessor;-><init>(ZLjava/lang/String;III)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 108
    invoke-virtual {v6}, Lcom/android/supl/config/ConfigManager;->isNiUdpEnabled()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 109
    new-instance v0, Lcom/android/supl/commprocessor/DatagramServer;

    const-string/jumbo v1, "UDP SUPL server"

    iget-object v7, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    const/16 v8, 0x1c6b

    invoke-direct {v0, v8, v1, v7}, Lcom/android/supl/commprocessor/DatagramServer;-><init>(ILjava/lang/String;Lcom/android/supl/commprocessor/ServerCommProcessor;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->datagramServer:Lcom/android/supl/commprocessor/DatagramServer;

    .line 110
    const-string/jumbo v0, "SUPL20_SCMService"

    const-string/jumbo v1, "DataGramServer Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_3c
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    iget-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->setContext(Landroid/content/Context;)V

    .line 113
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/supl/commprocessor/SUPLSCMService$SCMConnectionThread;

    invoke-direct {v1, p0}, Lcom/android/supl/commprocessor/SUPLSCMService$SCMConnectionThread;-><init>(Lcom/android/supl/commprocessor/SUPLSCMService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->scmThread:Ljava/lang/Thread;

    .line 114
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->scmThread:Ljava/lang/Thread;

    const-string/jumbo v1, "SCM handsake thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->scmThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    const-string/jumbo v0, "SUPL20_SCMService"

    const-string/jumbo v1, "SCM Service Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method private startSCM()V
    .registers 3

    .prologue
    .line 69
    const-string/jumbo v0, "SUPL20_SCMService"

    const-string/jumbo v1, "Send startSCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-boolean v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->isInit:Z

    if-eqz v0, :cond_13

    .line 71
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->reInit()V

    .line 67
    :goto_12
    return-void

    .line 73
    :cond_13
    invoke-direct {p0}, Lcom/android/supl/commprocessor/SUPLSCMService;->start()V

    goto :goto_12
.end method

.method private supportMultipleBearerNetwork(Landroid/content/Context;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v7

    .line 251
    .local v7, "configManager":Lcom/android/supl/config/ConfigManager;
    const-string/jumbo v18, "phone"

    .line 250
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 253
    .local v17, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v18, "connectivity"

    .line 252
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 254
    .local v6, "cm":Landroid/net/ConnectivityManager;
    invoke-direct/range {p0 .. p1}, Lcom/android/supl/commprocessor/SUPLSCMService;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_133

    .line 255
    invoke-virtual {v7}, Lcom/android/supl/config/ConfigManager;->getRoamingBearerNetwork()Ljava/util/HashMap;

    move-result-object v10

    .line 257
    .local v10, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Boolean;Ljava/util/PriorityQueue<Lcom/android/supl/bearer/BearerNetwork;>;>;"
    if-eqz v10, :cond_133

    .line 258
    invoke-direct/range {p0 .. p1}, Lcom/android/supl/commprocessor/SUPLSCMService;->isRoaming(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 259
    .local v13, "isRoaming":Z
    const/4 v12, 0x0

    .line 260
    .local v12, "isConnected":Z
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/PriorityQueue;

    .line 261
    .local v4, "bearerNetworks":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/supl/bearer/BearerNetwork;>;"
    if-eqz v4, :cond_133

    .line 262
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "bearerNetwork$iterator":Ljava/util/Iterator;
    :cond_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_133

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/supl/bearer/BearerNetwork;

    .line 264
    .local v2, "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    if-eqz v2, :cond_45

    .line 267
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v11

    .line 268
    .local v11, "iNetworkType":I
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 270
    .local v16, "stData":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v1}, Lcom/android/supl/commprocessor/SUPLSCMService;->isBearerNetWorkSupported(I[Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_45

    .line 271
    invoke-virtual {v2}, Lcom/android/supl/bearer/BearerNetwork;->getBearerNetWorkName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_45

    .line 274
    const-string/jumbo v18, "enableHIPRI"

    const/16 v19, 0x0

    .line 273
    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v14

    .line 280
    .local v14, "result":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v14, :cond_94

    .line 281
    const-string/jumbo v18, "SUPL20_SCMService"

    .line 282
    const-string/jumbo v19, "Wrong result of startUsingNetworkFeature, maybe problems"

    .line 281
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 285
    :cond_94
    if-nez v14, :cond_a0

    .line 286
    const-string/jumbo v18, "SUPL20_SCMService"

    .line 287
    const-string/jumbo v19, "No need to perform additional network settings"

    .line 286
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 290
    :cond_a0
    const/4 v5, 0x0

    .line 293
    .local v5, "checkState":Landroid/net/NetworkInfo$State;
    const/4 v8, 0x0

    .end local v5    # "checkState":Landroid/net/NetworkInfo$State;
    .local v8, "counter":I
    :goto_a2
    const/16 v18, 0x1e

    move/from16 v0, v18

    if-ge v8, v0, :cond_be

    .line 294
    const/16 v18, 0x5

    :try_start_aa
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 295
    .local v5, "checkState":Landroid/net/NetworkInfo$State;
    sget-object v18, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I
    :try_end_bb
    .catch Ljava/lang/InterruptedException; {:try_start_aa .. :try_end_bb} :catch_134

    move-result v18

    if-nez v18, :cond_128

    .line 302
    .end local v5    # "checkState":Landroid/net/NetworkInfo$State;
    :cond_be
    :goto_be
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 303
    .restart local v5    # "checkState":Landroid/net/NetworkInfo$State;
    sget-object v18, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v18

    if-nez v18, :cond_131

    const/4 v12, 0x1

    .line 305
    :goto_d5
    const-string/jumbo v18, "SUPL20_SCMService"

    .line 306
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "startUsingNetworkFeature enableHIPRI status"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 305
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/16 v18, 0x5

    const v19, 0x7f000001

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v15

    .line 308
    .local v15, "resultBool":Z
    const-string/jumbo v18, "SUPL20_SCMService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "requestRouteToHost result: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    if-nez v15, :cond_125

    .line 310
    const-string/jumbo v18, "SUPL20_SCMService"

    const-string/jumbo v19, "Wrong requestRouteToHost result: expected true, but was false"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_125
    if-eqz v12, :cond_45

    .line 313
    return-void

    .line 297
    .end local v15    # "resultBool":Z
    :cond_128
    const-wide/16 v18, 0x3e8

    :try_start_12a
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12d
    .catch Ljava/lang/InterruptedException; {:try_start_12a .. :try_end_12d} :catch_134

    .line 293
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_a2

    .line 303
    :cond_131
    const/4 v12, 0x0

    goto :goto_d5

    .line 248
    .end local v2    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    .end local v3    # "bearerNetwork$iterator":Ljava/util/Iterator;
    .end local v4    # "bearerNetworks":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/supl/bearer/BearerNetwork;>;"
    .end local v5    # "checkState":Landroid/net/NetworkInfo$State;
    .end local v8    # "counter":I
    .end local v10    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Boolean;Ljava/util/PriorityQueue<Lcom/android/supl/bearer/BearerNetwork;>;>;"
    .end local v11    # "iNetworkType":I
    .end local v12    # "isConnected":Z
    .end local v13    # "isRoaming":Z
    .end local v14    # "result":I
    .end local v16    # "stData":[Ljava/lang/String;
    :cond_133
    return-void

    .line 299
    .restart local v2    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    .restart local v3    # "bearerNetwork$iterator":Ljava/util/Iterator;
    .restart local v4    # "bearerNetworks":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/supl/bearer/BearerNetwork;>;"
    .restart local v8    # "counter":I
    .restart local v10    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Boolean;Ljava/util/PriorityQueue<Lcom/android/supl/bearer/BearerNetwork;>;>;"
    .restart local v11    # "iNetworkType":I
    .restart local v12    # "isConnected":Z
    .restart local v13    # "isRoaming":Z
    .restart local v14    # "result":I
    .restart local v16    # "stData":[Ljava/lang/String;
    :catch_134
    move-exception v9

    .local v9, "e":Ljava/lang/InterruptedException;
    goto :goto_be
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 6

    .prologue
    .line 79
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    .line 80
    .local v0, "configManager":Lcom/android/supl/config/ConfigManager;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getSUPLVersion()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    .line 81
    iget-object v3, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/supl/SUPLManager;->getInstance(Landroid/content/Context;)Lcom/android/supl/SUPLManager;

    move-result-object v2

    .line 83
    .local v2, "suplManager":Lcom/android/supl/SUPLManager;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->checkGPSEnabled()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 84
    invoke-virtual {v2, p0}, Lcom/android/supl/SUPLManager;->addGpsListener(Lcom/android/supl/GpsOnOffListener;)Z

    .line 85
    iget-object v3, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 86
    const-string/jumbo v4, "location_providers_allowed"

    .line 85
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "provider":Ljava/lang/String;
    if-eqz v1, :cond_35

    const-string/jumbo v3, "gps"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 88
    invoke-direct {p0}, Lcom/android/supl/commprocessor/SUPLSCMService;->start()V

    .line 77
    .end local v1    # "provider":Ljava/lang/String;
    .end local v2    # "suplManager":Lcom/android/supl/SUPLManager;
    :cond_35
    :goto_35
    return-void

    .line 91
    .restart local v2    # "suplManager":Lcom/android/supl/SUPLManager;
    :cond_36
    invoke-direct {p0}, Lcom/android/supl/commprocessor/SUPLSCMService;->start()V

    goto :goto_35

    .line 94
    .end local v2    # "suplManager":Lcom/android/supl/SUPLManager;
    :cond_3a
    invoke-direct {p0}, Lcom/android/supl/commprocessor/SUPLSCMService;->start()V

    goto :goto_35
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    if-eqz v1, :cond_17

    .line 382
    iget-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->datagramServer:Lcom/android/supl/commprocessor/DatagramServer;

    if-eqz v1, :cond_d

    .line 383
    iget-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->datagramServer:Lcom/android/supl/commprocessor/DatagramServer;

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/DatagramServer;->stop()V

    .line 386
    :cond_d
    iget-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->stopListening()V

    .line 387
    iget-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->stopNetWork()V

    .line 390
    :cond_17
    iget-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->scmThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 391
    iget-object v1, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/supl/SUPLManager;->getInstance(Landroid/content/Context;)Lcom/android/supl/SUPLManager;

    move-result-object v0

    .line 392
    .local v0, "suplManager":Lcom/android/supl/SUPLManager;
    invoke-virtual {v0, p0}, Lcom/android/supl/SUPLManager;->removeGpsListener(Lcom/android/supl/GpsOnOffListener;)Z

    .line 378
    return-void
.end method

.method public onGPSLocationProviderDisabled()V
    .registers 3

    .prologue
    .line 58
    const-string/jumbo v0, "SUPL20_SCMService"

    const-string/jumbo v1, " onGPSLocationProviderDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-boolean v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->isInit:Z

    if-eqz v0, :cond_1c

    .line 60
    const-string/jumbo v0, "SUPL20_SCMService"

    const-string/jumbo v1, "SCM Service is running. Will pause it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService;->mServerCommProcessor:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->pause()V

    .line 57
    :goto_1b
    return-void

    .line 63
    :cond_1c
    const-string/jumbo v0, "SUPL20_SCMService"

    const-string/jumbo v1, "SCM Service not already created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public onGPSLocationProviderEnabled()V
    .registers 3

    .prologue
    .line 53
    const-string/jumbo v0, "SUPL20_SCMService"

    const-string/jumbo v1, " onGPSLocationProviderEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-direct {p0}, Lcom/android/supl/commprocessor/SUPLSCMService;->startSCM()V

    .line 52
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 184
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method
