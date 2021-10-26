.class public Lcom/android/supl/config/ConfigManager;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/config/ConfigManager$ForceTestValue;
    }
.end annotation


# static fields
.field private static final BEARER_NETWORK_ENABLE:Ljava/lang/String; = "bearer_network_enable"

.field private static final BEARER_NETWORK_PRIORITY:Ljava/lang/String; = "bearer_network_priority"

.field private static final BEARER_NETWORK_SUPPORT:Ljava/lang/String; = "bearer_network_support"

.field public static final CDMA:Ljava/lang/String; = "cdma"

.field private static final CERT:Ljava/lang/String; = "cert"

.field private static final CHECK_GPS:Ljava/lang/String; = "checkgps"

.field private static final CI:Ljava/lang/String; = "ci"

.field private static final CONFIG_START:Ljava/lang/String; = "config_start"

.field private static final FILLTAANDNMR:Ljava/lang/String; = "filltaandnmr"

.field private static final FORCETESTVALUE:Ljava/lang/String; = "forcetestvalue"

.field public static final GSM:Ljava/lang/String; = "gsm"

.field public static final HRPD:Ljava/lang/String; = "hrpd"

.field private static final IPADDRESS:Ljava/lang/String; = "ipaddress"

.field private static final LAC:Ljava/lang/String; = "lac"

.field public static final LTE:Ljava/lang/String; = "lte"

.field private static final MCC:Ljava/lang/String; = "mcc"

.field private static final MNC:Ljava/lang/String; = "mnc"

.field private static final MSISDN:Ljava/lang/String; = "msisdn"

.field private static final NETCONT_PARAMS:Ljava/lang/String; = "netcont_params"

.field private static final NI_UDP_ENABLED:Ljava/lang/String; = "ni_udp_enabled"

.field private static final NMR:Ljava/lang/String; = "nmr"

.field private static final NW_RETRIES:Ljava/lang/String; = "nw_retries"

.field private static final NW_TIMEOUT:Ljava/lang/String; = "nw_timeout"

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PCM:Ljava/lang/String; = "pcm"

.field private static final PORT:Ljava/lang/String; = "port"

.field private static final PWD:Ljava/lang/String; = "pwd"

.field private static final SCM:Ljava/lang/String; = "scm"

.field private static ST_LOG:Ljava/lang/String; = null

.field public static final SUPL_Services_Version:Ljava/lang/String; = "2.13.0.3"

.field private static final SUPL_VERSION:Ljava/lang/String; = "suplver"

.field private static final TA:Ljava/lang/String; = "ta"

.field public static final UMB:Ljava/lang/String; = "umb"

.field private static final UNIXSOCPATH:Ljava/lang/String; = "unixsocketpath"

.field private static final VALID:Ljava/lang/String; = "valid"

.field public static final WCDMA:Ljava/lang/String; = "wcdma"

.field public static final WIMAX:Ljava/lang/String; = "wimax"

.field public static final WLAN:Ljava/lang/String; = "wlan"

.field private static sConfigManager:Lcom/android/supl/config/ConfigManager;


# instance fields
.field private iConfigStartVersion:I

.field private iSUPLVersion:I

.field private isBearNetworkFound:Z

.field private isCertFound:Z

.field private isCertVaild:Z

.field private isCheckGPSEnabled:Z

.field private isForceTest:Z

.field private isMultipleBearNetworkSupport:Z

.field private isMultipleBearNetworkSupportRoaming:Z

.field private isNiUdpEnabled:Z

.field private isPCMFound:Z

.field private isRequiredTag:Z

.field private isSCMFound:Z

.field private mComparater:Lcom/android/supl/bearer/BearerNetworkComparater;

.field private m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

.field private queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/supl/bearer/BearerNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private roamingBearerNetwork:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/supl/bearer/BearerNetwork;",
            ">;>;"
        }
    .end annotation
.end field

.field private stCurrentBearerNetWork:Ljava/lang/String;

.field private stData:Ljava/lang/String;

.field private stKeyStoreConv:Ljava/lang/String;

.field private stKeyStorePath:Ljava/lang/String;

.field private stPrivateKeyStore:Ljava/lang/String;

.field private stPrivateKeyStoreConv:Ljava/lang/String;

.field private testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/android/supl/config/ConfigManager;->sConfigManager:Lcom/android/supl/config/ConfigManager;

    .line 121
    const-string/jumbo v0, "SUPL20_Config"

    sput-object v0, Lcom/android/supl/config/ConfigManager;->ST_LOG:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 187
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 117
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    .line 123
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    .line 127
    iput v1, p0, Lcom/android/supl/config/ConfigManager;->iConfigStartVersion:I

    .line 129
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    .line 131
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->stKeyStorePath:Ljava/lang/String;

    .line 133
    const-string/jumbo v0, "format-convert"

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stKeyStoreConv:Ljava/lang/String;

    .line 135
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isForceTest:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isCheckGPSEnabled:Z

    .line 139
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStore:Ljava/lang/String;

    .line 141
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStoreConv:Ljava/lang/String;

    .line 143
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    .line 145
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupportRoaming:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isBearNetworkFound:Z

    .line 169
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->stCurrentBearerNetWork:Ljava/lang/String;

    .line 171
    new-instance v0, Lcom/android/supl/bearer/BearerNetworkComparater;

    invoke-direct {v0}, Lcom/android/supl/bearer/BearerNetworkComparater;-><init>()V

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->mComparater:Lcom/android/supl/bearer/BearerNetworkComparater;

    .line 173
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    .line 175
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->roamingBearerNetwork:Ljava/util/HashMap;

    .line 262
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    .line 264
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    .line 266
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    .line 268
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    .line 270
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isNiUdpEnabled:Z

    .line 272
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/android/supl/config/ConfigManager;->init()V

    .line 189
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/android/supl/config/ConfigManager;->ST_LOG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    invoke-virtual {v1}, Lcom/android/supl/config/NetworkConnectionParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/android/supl/config/ConfigManager;->setKeyStore_ConvFromConfig()V

    .line 187
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/supl/config/ConfigManager;
    .locals 2

    .prologue
    const-class v1, Lcom/android/supl/config/ConfigManager;

    monitor-enter v1

    .line 181
    :try_start_0
    sget-object v0, Lcom/android/supl/config/ConfigManager;->sConfigManager:Lcom/android/supl/config/ConfigManager;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/android/supl/config/ConfigManager;

    invoke-direct {v0}, Lcom/android/supl/config/ConfigManager;-><init>()V

    sput-object v0, Lcom/android/supl/config/ConfigManager;->sConfigManager:Lcom/android/supl/config/ConfigManager;

    .line 184
    :cond_0
    sget-object v0, Lcom/android/supl/config/ConfigManager;->sConfigManager:Lcom/android/supl/config/ConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setKeyStore_ConvFromConfig()V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/supl/config/ConfigManager;->getKeyStorePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStore:Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lcom/android/supl/config/ConfigManager;->getKeyStoreConv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStoreConv:Ljava/lang/String;

    .line 196
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    if-eqz v0, :cond_0

    .line 536
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    .line 534
    :cond_0
    return-void
.end method

.method public checkGPSEnabled()Z
    .locals 1

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isCheckGPSEnabled:Z

    return v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 380
    const-string/jumbo v8, "suplver"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 381
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    .line 382
    sget-object v8, Lcom/android/supl/config/ConfigManager;->ST_LOG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " supl version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget v8, p0, Lcom/android/supl/config/ConfigManager;->iConfigStartVersion:I

    iget v9, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    if-ne v8, v9, :cond_0

    .line 384
    const-string/jumbo v8, "nw_timeout"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 386
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v8, :cond_0

    .line 387
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionTimeOut:I

    goto :goto_0

    .line 389
    :cond_2
    const-string/jumbo v8, "nw_retries"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 390
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v8, :cond_0

    .line 391
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionRetries:I

    goto :goto_0

    .line 393
    :cond_3
    const-string/jumbo v8, "pcm"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 394
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    goto :goto_0

    .line 395
    :cond_4
    const-string/jumbo v8, "scm"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 396
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    goto :goto_0

    .line 397
    :cond_5
    const-string/jumbo v8, "port"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 398
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    if-eqz v8, :cond_6

    .line 399
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/NetworkConnectionParam;->m_iPCMPort:I

    goto :goto_0

    .line 400
    :cond_6
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    if-eqz v8, :cond_0

    .line 401
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/NetworkConnectionParam;->m_iSCMPort:I

    goto :goto_0

    .line 403
    :cond_7
    const-string/jumbo v8, "ipaddress"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 404
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    if-eqz v8, :cond_8

    .line 405
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/supl/config/NetworkConnectionParam;->m_stPCMFQDN:Ljava/lang/String;

    goto/16 :goto_0

    .line 406
    :cond_8
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    if-eqz v8, :cond_0

    .line 407
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/supl/config/NetworkConnectionParam;->m_stSCMFQDN:Ljava/lang/String;

    goto/16 :goto_0

    .line 409
    :cond_9
    const-string/jumbo v8, "unixsocketpath"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 410
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v8, :cond_a

    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    if-eqz v8, :cond_a

    .line 411
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/supl/config/NetworkConnectionParam;->m_sPCMUnixSocPath:Ljava/lang/String;

    .line 412
    sget-object v8, Lcom/android/supl/config/ConfigManager;->ST_LOG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pcm socketpath is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v10, v10, Lcom/android/supl/config/NetworkConnectionParam;->m_sPCMUnixSocPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "the orginal parsed value is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 413
    :cond_a
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    if-eqz v8, :cond_0

    .line 414
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/supl/config/NetworkConnectionParam;->m_sSCMUnixSocPath:Ljava/lang/String;

    .line 415
    sget-object v8, Lcom/android/supl/config/ConfigManager;->ST_LOG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "scm socketpath is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v10, v10, Lcom/android/supl/config/NetworkConnectionParam;->m_sSCMUnixSocPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "the orginal parsed value is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 417
    :cond_b
    const-string/jumbo v8, "ni_udp_enabled"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 418
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_c

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isNiUdpEnabled:Z

    .line 419
    sget-object v8, Lcom/android/supl/config/ConfigManager;->ST_LOG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "UDP socket enabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/supl/config/ConfigManager;->isNiUdpEnabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 418
    :cond_c
    const/4 v8, 0x0

    goto :goto_1

    .line 420
    :cond_d
    const-string/jumbo v8, "cert"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 421
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    goto/16 :goto_0

    .line 422
    :cond_e
    const-string/jumbo v8, "valid"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 423
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v8, :cond_0

    .line 424
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_f

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    goto/16 :goto_0

    :cond_f
    const/4 v8, 0x0

    goto :goto_2

    .line 427
    :cond_10
    const-string/jumbo v8, "path"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 428
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    if-eqz v8, :cond_0

    .line 429
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/supl/config/ConfigManager;->stKeyStorePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 432
    :cond_11
    const-string/jumbo v8, "pwd"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 433
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    if-eqz v8, :cond_0

    .line 434
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/supl/config/ConfigManager;->stKeyStoreConv:Ljava/lang/String;

    goto/16 :goto_0

    .line 436
    :cond_12
    const-string/jumbo v8, "forcetestvalue"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 438
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 439
    .local v5, "iValue":I
    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    .line 440
    new-instance v8, Lcom/android/supl/config/ConfigManager$ForceTestValue;

    invoke-direct {v8, p0}, Lcom/android/supl/config/ConfigManager$ForceTestValue;-><init>(Lcom/android/supl/config/ConfigManager;)V

    iput-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    goto/16 :goto_0

    .line 443
    .end local v5    # "iValue":I
    :cond_13
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v8, :cond_14

    const-string/jumbo v8, "mcc"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 444
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMcc:I

    goto/16 :goto_0

    .line 446
    :cond_14
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v8, :cond_15

    const-string/jumbo v8, "mnc"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 447
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMnc:I

    goto/16 :goto_0

    .line 449
    :cond_15
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v8, :cond_16

    const-string/jumbo v8, "lac"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 450
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iLac:I

    goto/16 :goto_0

    .line 452
    :cond_16
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v8, :cond_17

    const-string/jumbo v8, "ci"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 453
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iCI:I

    goto/16 :goto_0

    .line 455
    :cond_17
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v8, :cond_18

    const-string/jumbo v8, "msisdn"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 456
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMSISDN:J

    goto/16 :goto_0

    .line 458
    :cond_18
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v8, :cond_1a

    const-string/jumbo v8, "filltaandnmr"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 459
    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_19

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, v9, Lcom/android/supl/config/ConfigManager$ForceTestValue;->isFillTAandNMR:Z

    goto/16 :goto_0

    :cond_19
    const/4 v8, 0x0

    goto :goto_3

    .line 461
    :cond_1a
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v8, :cond_1b

    const-string/jumbo v8, "ta"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 462
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iTA:I

    goto/16 :goto_0

    .line 464
    :cond_1b
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v8, :cond_1d

    const-string/jumbo v8, "nmr"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 465
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 466
    .local v6, "stNMR":[Ljava/lang/String;
    array-length v8, v6

    new-array v0, v8, [I

    .line 467
    .local v0, "aNmr":[I
    const/4 v3, 0x0

    .line 468
    .local v3, "i":I
    const/4 v8, 0x0

    array-length v9, v6

    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_4
    if-ge v8, v9, :cond_1c

    aget-object v7, v6, v8

    .line 469
    .local v7, "string":Ljava/lang/String;
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v0, v4

    .line 468
    add-int/lit8 v8, v8, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_4

    .line 471
    .end local v7    # "string":Ljava/lang/String;
    :cond_1c
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iput-object v0, v8, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    goto/16 :goto_0

    .line 472
    .end local v0    # "aNmr":[I
    .end local v4    # "i":I
    .end local v6    # "stNMR":[Ljava/lang/String;
    :cond_1d
    const-string/jumbo v8, "checkgps"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 474
    :try_start_0
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1e

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isCheckGPSEnabled:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 475
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 474
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1e
    const/4 v8, 0x0

    goto :goto_5

    .line 478
    :cond_1f
    const-string/jumbo v8, "bearer_network_enable"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 479
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_20

    const/4 v8, 0x1

    :goto_6
    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    .line 480
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_0

    .line 481
    new-instance v8, Ljava/util/HashMap;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v8, p0, Lcom/android/supl/config/ConfigManager;->roamingBearerNetwork:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 479
    :cond_20
    const/4 v8, 0x0

    goto :goto_6

    .line 483
    :cond_21
    const-string/jumbo v8, "bearer_network_support"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 484
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    .line 485
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isBearNetworkFound:Z

    goto/16 :goto_0

    .line 486
    :cond_22
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isBearNetworkFound:Z

    if-eqz v8, :cond_0

    .line 488
    const-string/jumbo v8, "wlan"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 489
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_0

    .line 490
    new-instance v1, Lcom/android/supl/bearer/BearerNetwork;

    const-string/jumbo v8, "wlan"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 491
    .local v1, "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 493
    .end local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    :cond_23
    const-string/jumbo v8, "lte"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 494
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_0

    .line 495
    new-instance v1, Lcom/android/supl/bearer/BearerNetwork;

    const-string/jumbo v8, "lte"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 496
    .restart local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 498
    .end local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    :cond_24
    const-string/jumbo v8, "gsm"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 499
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_0

    .line 500
    new-instance v1, Lcom/android/supl/bearer/BearerNetwork;

    const-string/jumbo v8, "gsm"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 501
    .restart local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 503
    .end local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    :cond_25
    const-string/jumbo v8, "cdma"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 504
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_0

    .line 505
    new-instance v1, Lcom/android/supl/bearer/BearerNetwork;

    const-string/jumbo v8, "cdma"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 506
    .restart local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 508
    .end local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    :cond_26
    const-string/jumbo v8, "wcdma"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 509
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_0

    .line 510
    new-instance v1, Lcom/android/supl/bearer/BearerNetwork;

    const-string/jumbo v8, "wcdma"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 511
    .restart local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 513
    .end local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    :cond_27
    const-string/jumbo v8, "umb"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 514
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_0

    .line 515
    new-instance v1, Lcom/android/supl/bearer/BearerNetwork;

    const-string/jumbo v8, "umb"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 516
    .restart local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 518
    .end local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    :cond_28
    const-string/jumbo v8, "wimax"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 519
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_0

    .line 520
    new-instance v1, Lcom/android/supl/bearer/BearerNetwork;

    const-string/jumbo v8, "wimax"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 521
    .restart local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 523
    .end local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    :cond_29
    const-string/jumbo v8, "hrpd"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 524
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_0

    .line 525
    new-instance v1, Lcom/android/supl/bearer/BearerNetwork;

    const-string/jumbo v8, "hrpd"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 526
    .restart local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getForceTestvalue()[B
    .locals 2

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, "bTestValue":[B
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    invoke-virtual {v1}, Lcom/android/supl/config/ConfigManager$ForceTestValue;->getForceTest()[B

    move-result-object v0

    .line 632
    .end local v0    # "bTestValue":[B
    :cond_0
    return-object v0
.end method

.method public getKeyStoreConv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stKeyStoreConv:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyStorePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stKeyStorePath:Ljava/lang/String;

    return-object v0
.end method

.method public getNwRetries()I
    .locals 2

    .prologue
    .line 555
    const/4 v0, 0x5

    .line 556
    .local v0, "iRetries":I
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionRetries:I

    .line 559
    :cond_0
    return v0
.end method

.method public getNwTimeout()I
    .locals 2

    .prologue
    .line 543
    const/16 v0, 0x1388

    .line 544
    .local v0, "iTimeout":I
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionTimeOut:I

    .line 547
    :cond_0
    return v0
.end method

.method public getPCMIpAdress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 579
    const-string/jumbo v0, "127.0.0.1"

    .line 580
    .local v0, "stIPAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_stPCMFQDN:Ljava/lang/String;

    .line 583
    :cond_0
    return-object v0
.end method

.method public getPCMPort()I
    .locals 2

    .prologue
    .line 563
    const/16 v0, 0x2329

    .line 564
    .local v0, "iPortNumber":I
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_iPCMPort:I

    .line 567
    :cond_0
    return v0
.end method

.method public getPCMUnixSocketPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 605
    const-string/jumbo v0, "/data/gnss/pcm_soc"

    .line 606
    .local v0, "sPCMSocket":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_sPCMUnixSocPath:Ljava/lang/String;

    .line 609
    :cond_0
    return-object v0
.end method

.method public getPrivateKeyStore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStore:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKeyStoreConv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStoreConv:Ljava/lang/String;

    return-object v0
.end method

.method public getRoamingBearerNetwork()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/supl/bearer/BearerNetwork;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->roamingBearerNetwork:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSCMIpAdress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 587
    const-string/jumbo v0, "127.0.0.1"

    .line 588
    .local v0, "stIPAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_stSCMFQDN:Ljava/lang/String;

    .line 591
    :cond_0
    return-object v0
.end method

.method public getSCMPort()I
    .locals 2

    .prologue
    .line 571
    const/16 v0, 0x232a

    .line 572
    .local v0, "iPortNumber":I
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_iSCMPort:I

    .line 575
    :cond_0
    return v0
.end method

.method public getSCMUnixSocketPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 596
    const-string/jumbo v0, "/data/gnss/scm_soc"

    .line 597
    .local v0, "sSCMSocket":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_sSCMUnixSocPath:Ljava/lang/String;

    .line 600
    :cond_0
    return-object v0
.end method

.method public getSUPLVersion()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    return v0
.end method

.method public init()V
    .locals 10

    .prologue
    .line 215
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 216
    .local v7, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v6, 0x0

    .line 217
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    const/4 v8, 0x0

    .line 218
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    const/4 v4, 0x0

    .line 220
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    .line 222
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    .line 224
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    invoke-interface {v8, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 227
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v9, "/system/etc/gnss/config/gnss_suplconfig_hisi.xml"

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 230
    if-eqz v5, :cond_0

    .line 231
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 247
    :cond_0
    if-eqz v5, :cond_1

    .line 249
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_0
    move-object v4, v5

    .line 257
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :cond_2
    :goto_1
    const/4 v7, 0x0

    .line 258
    .local v7, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v6, 0x0

    .line 259
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    const/4 v8, 0x0

    .line 214
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    return-void

    .line 229
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    .local v7, "spf":Ljavax/xml/parsers/SAXParserFactory;
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    :catchall_0
    move-exception v9

    .line 230
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_2
    if-eqz v4, :cond_3

    .line 231
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 229
    :cond_3
    throw v9
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 234
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 247
    if-eqz v4, :cond_2

    .line 249
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 250
    :catch_1
    move-exception v1

    .line 252
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 250
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_2
    move-exception v1

    .line 252
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 243
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_3
    move-exception v3

    .line 245
    .local v3, "e1":Lorg/xml/sax/SAXException;
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 247
    if-eqz v4, :cond_2

    .line 249
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_1

    .line 250
    :catch_4
    move-exception v1

    .line 252
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 240
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    :catch_5
    move-exception v2

    .line 242
    .local v2, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_5
    :try_start_a
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 247
    if-eqz v4, :cond_2

    .line 249
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_1

    .line 250
    :catch_6
    move-exception v1

    .line 252
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 237
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_7
    move-exception v1

    .line 239
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_6
    :try_start_c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 247
    if-eqz v4, :cond_2

    .line 249
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_1

    .line 250
    :catch_8
    move-exception v1

    .line 252
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 246
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 247
    :goto_7
    if-eqz v4, :cond_4

    .line 249
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 246
    :cond_4
    :goto_8
    throw v9

    .line 250
    :catch_9
    move-exception v1

    .line 252
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 246
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 234
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 237
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 240
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v2

    .restart local v2    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 243
    .end local v2    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_d
    move-exception v3

    .restart local v3    # "e1":Lorg/xml/sax/SAXException;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 229
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public isCertVaild()Z
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    return v0
.end method

.method public isForceTest()Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isForceTest:Z

    return v0
.end method

.method public isMultipleBearNetworkSupport()Z
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    return v0
.end method

.method public isNiUdpEnabled()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isNiUdpEnabled:Z

    return v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 278
    const-string/jumbo v3, "suplver"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string/jumbo v3, "config_start"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    :try_start_0
    const-string/jumbo v2, ""

    const-string/jumbo v3, "version"

    invoke-interface {p4, v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/android/supl/config/ConfigManager;->iConfigStartVersion:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 283
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 286
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    iget v3, p0, Lcom/android/supl/config/ConfigManager;->iConfigStartVersion:I

    iget v4, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    if-ne v3, v4, :cond_0

    .line 287
    const-string/jumbo v3, "netcont_params"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 288
    new-instance v2, Lcom/android/supl/config/NetworkConnectionParam;

    invoke-direct {v2}, Lcom/android/supl/config/NetworkConnectionParam;-><init>()V

    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    goto :goto_0

    .line 289
    :cond_3
    const-string/jumbo v3, "nw_timeout"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 290
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto :goto_0

    .line 291
    :cond_4
    const-string/jumbo v3, "nw_retries"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 292
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto :goto_0

    .line 293
    :cond_5
    const-string/jumbo v3, "pcm"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 294
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    goto :goto_0

    .line 295
    :cond_6
    const-string/jumbo v3, "scm"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 296
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    goto :goto_0

    .line 297
    :cond_7
    const-string/jumbo v3, "port"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 298
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto :goto_0

    .line 299
    :cond_8
    const-string/jumbo v3, "ipaddress"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 300
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto :goto_0

    .line 301
    :cond_9
    const-string/jumbo v3, "unixsocketpath"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 302
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 303
    :cond_a
    const-string/jumbo v3, "ni_udp_enabled"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 304
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 305
    :cond_b
    const-string/jumbo v3, "cert"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 306
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    goto/16 :goto_0

    .line 307
    :cond_c
    const-string/jumbo v3, "valid"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 308
    iget-boolean v3, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v3, :cond_0

    .line 309
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 311
    :cond_d
    const-string/jumbo v3, "path"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 312
    iget-boolean v3, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    if-eqz v3, :cond_0

    .line 313
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 315
    :cond_e
    const-string/jumbo v3, "pwd"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 316
    iget-boolean v3, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    if-eqz v3, :cond_0

    .line 317
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 319
    :cond_f
    const-string/jumbo v3, "forcetestvalue"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 320
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 322
    :cond_10
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v3, :cond_11

    const-string/jumbo v3, "mcc"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 323
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 325
    :cond_11
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v3, :cond_12

    const-string/jumbo v3, "mnc"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 326
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 328
    :cond_12
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v3, :cond_13

    const-string/jumbo v3, "lac"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 329
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 331
    :cond_13
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v3, :cond_14

    const-string/jumbo v3, "ci"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 332
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 334
    :cond_14
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v3, :cond_15

    const-string/jumbo v3, "msisdn"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 335
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 337
    :cond_15
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v3, :cond_16

    const-string/jumbo v3, "filltaandnmr"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 338
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 340
    :cond_16
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v3, :cond_17

    const-string/jumbo v3, "ta"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 341
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 343
    :cond_17
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v3, :cond_18

    const-string/jumbo v3, "nmr"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 344
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 345
    :cond_18
    const-string/jumbo v3, "checkgps"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 346
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 347
    :cond_19
    const-string/jumbo v3, "bearer_network_enable"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 348
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 349
    :cond_1a
    const-string/jumbo v3, "bearer_network_support"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 350
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isBearNetworkFound:Z

    .line 351
    const-string/jumbo v3, ""

    const-string/jumbo v4, "roaming"

    invoke-interface {p4, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_1b

    :goto_1
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupportRoaming:Z

    .line 352
    iget-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v2, :cond_0

    .line 353
    new-instance v2, Ljava/util/PriorityQueue;

    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->mComparater:Lcom/android/supl/bearer/BearerNetworkComparater;

    const/16 v4, 0xa

    invoke-direct {v2, v4, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    .line 354
    iget-object v2, p0, Lcom/android/supl/config/ConfigManager;->roamingBearerNetwork:Ljava/util/HashMap;

    iget-boolean v3, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupportRoaming:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 351
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1

    .line 356
    :cond_1c
    iget-boolean v3, p0, Lcom/android/supl/config/ConfigManager;->isBearNetworkFound:Z

    if-eqz v3, :cond_0

    .line 357
    const-string/jumbo v3, "wlan"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 358
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 359
    :cond_1d
    const-string/jumbo v3, "lte"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 360
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 361
    :cond_1e
    const-string/jumbo v3, "gsm"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 362
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 363
    :cond_1f
    const-string/jumbo v3, "cdma"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 364
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 365
    :cond_20
    const-string/jumbo v3, "wcdma"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 366
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 367
    :cond_21
    const-string/jumbo v3, "umb"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 368
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 369
    :cond_22
    const-string/jumbo v3, "wimax"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 370
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 371
    :cond_23
    const-string/jumbo v3, "hrpd"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_0

    .line 284
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    goto/16 :goto_0
.end method
