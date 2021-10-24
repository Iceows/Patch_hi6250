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

.field private static final CUST_SUPL_CONFIG_PATH:Ljava/lang/String; = "/data/cust/xml/gnss_suplconfig_hisi.xml"

.field private static final DEFAULT_SUPL_CONFIG_PATH:Ljava/lang/String; = "/vendor/etc/gnss/config/gnss_suplconfig_hisi.xml"

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

.field private static final PREF_SETID:Ljava/lang/String; = "pref_setid"

.field private static final PWD:Ljava/lang/String; = "pwd"

.field private static final SCM:Ljava/lang/String; = "scm"

.field private static ST_LOG:Ljava/lang/String; = null

.field public static final SUPL_Services_Version:Ljava/lang/String; = "2.13.2.0"

.field private static final SUPL_VERSION:Ljava/lang/String; = "suplver"

.field private static final SWITCH_APN_ENABLE:Ljava/lang/String; = "switch_apn_enable"

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

.field private isSwitchApnEnabled:Z

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

.field private stPerfSetId:Ljava/lang/String;

.field private stPrivateKeyStore:Ljava/lang/String;

.field private stPrivateKeyStoreConv:Ljava/lang/String;

.field private testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcom/android/supl/config/ConfigManager;->sConfigManager:Lcom/android/supl/config/ConfigManager;

    .line 130
    const-string/jumbo v0, "SUPL20_Config"

    sput-object v0, Lcom/android/supl/config/ConfigManager;->ST_LOG:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 126
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    .line 132
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    .line 134
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    .line 136
    iput v1, p0, Lcom/android/supl/config/ConfigManager;->iConfigStartVersion:I

    .line 138
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    .line 140
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->stKeyStorePath:Ljava/lang/String;

    .line 142
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->stPerfSetId:Ljava/lang/String;

    .line 144
    const-string/jumbo v0, "format-convert"

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stKeyStoreConv:Ljava/lang/String;

    .line 146
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isForceTest:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isCheckGPSEnabled:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isSwitchApnEnabled:Z

    .line 152
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStore:Ljava/lang/String;

    .line 154
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStoreConv:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    .line 158
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupportRoaming:Z

    .line 178
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isBearNetworkFound:Z

    .line 182
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->stCurrentBearerNetWork:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/android/supl/bearer/BearerNetworkComparater;

    invoke-direct {v0}, Lcom/android/supl/bearer/BearerNetworkComparater;-><init>()V

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->mComparater:Lcom/android/supl/bearer/BearerNetworkComparater;

    .line 186
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    .line 188
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->roamingBearerNetwork:Ljava/util/HashMap;

    .line 280
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    .line 282
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    .line 284
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    .line 286
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    .line 288
    iput-boolean v1, p0, Lcom/android/supl/config/ConfigManager;->isNiUdpEnabled:Z

    .line 290
    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    .line 201
    invoke-virtual {p0}, Lcom/android/supl/config/ConfigManager;->init()V

    .line 202
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v0, :cond_54

    .line 203
    sget-object v0, Lcom/android/supl/config/ConfigManager;->ST_LOG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    invoke-virtual {v1}, Lcom/android/supl/config/NetworkConnectionParam;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_54
    invoke-direct {p0}, Lcom/android/supl/config/ConfigManager;->setKeyStore_ConvFromConfig()V

    .line 207
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/supl/config/ConfigManager;
    .registers 2

    .prologue
    const-class v1, Lcom/android/supl/config/ConfigManager;

    monitor-enter v1

    .line 194
    :try_start_3
    sget-object v0, Lcom/android/supl/config/ConfigManager;->sConfigManager:Lcom/android/supl/config/ConfigManager;

    if-nez v0, :cond_e

    .line 195
    new-instance v0, Lcom/android/supl/config/ConfigManager;

    invoke-direct {v0}, Lcom/android/supl/config/ConfigManager;-><init>()V

    sput-object v0, Lcom/android/supl/config/ConfigManager;->sConfigManager:Lcom/android/supl/config/ConfigManager;

    .line 197
    :cond_e
    sget-object v0, Lcom/android/supl/config/ConfigManager;->sConfigManager:Lcom/android/supl/config/ConfigManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setKeyStore_ConvFromConfig()V
    .registers 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/supl/config/ConfigManager;->getKeyStorePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStore:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/android/supl/config/ConfigManager;->getKeyStoreConv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStoreConv:Ljava/lang/String;

    .line 212
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    if-eqz v0, :cond_12

    .line 588
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    .line 592
    :cond_12
    return-void
.end method

.method public checkGPSEnabled()Z
    .registers 2

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isCheckGPSEnabled:Z

    return v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 403
    :try_start_2
    const-string/jumbo v10, "suplver"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33

    .line 404
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    if-eqz v8, :cond_32

    .line 405
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    .line 406
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

    .line 583
    :cond_32
    :goto_32
    return-void

    .line 408
    :cond_33
    iget v10, p0, Lcom/android/supl/config/ConfigManager;->iConfigStartVersion:I

    iget v11, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    if-ne v10, v11, :cond_32

    .line 409
    const-string/jumbo v10, "switch_apn_enable"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5c

    .line 410
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    if-eqz v8, :cond_32

    .line 411
    const-string/jumbo v8, "true"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isSwitchApnEnabled:Z
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_51} :catch_52

    goto :goto_32

    .line 580
    :catch_52
    move-exception v2

    .line 581
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v8, Lcom/android/supl/config/ConfigManager;->ST_LOG:Ljava/lang/String;

    const-string/jumbo v9, "NumberFormatException error "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 413
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5c
    :try_start_5c
    const-string/jumbo v10, "pref_setid"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_89

    .line 414
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    if-eqz v8, :cond_32

    .line 415
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/supl/config/ConfigManager;->stPerfSetId:Ljava/lang/String;

    .line 416
    sget-object v8, Lcom/android/supl/config/ConfigManager;->ST_LOG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pref_setid is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->stPerfSetId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 419
    :cond_89
    const-string/jumbo v10, "nw_timeout"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a1

    .line 421
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v8, :cond_32

    .line 422
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionTimeOut:I

    goto :goto_32

    .line 424
    :cond_a1
    const-string/jumbo v10, "nw_retries"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ba

    .line 425
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v8, :cond_32

    .line 426
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionRetries:I

    goto/16 :goto_32

    .line 428
    :cond_ba
    const-string/jumbo v10, "pcm"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c8

    .line 429
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    goto/16 :goto_32

    .line 430
    :cond_c8
    const-string/jumbo v10, "scm"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d6

    .line 431
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    goto/16 :goto_32

    .line 432
    :cond_d6
    const-string/jumbo v10, "port"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_107

    .line 433
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v8, :cond_f3

    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    if-eqz v8, :cond_f3

    .line 434
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/NetworkConnectionParam;->m_iPCMPort:I

    goto/16 :goto_32

    .line 435
    :cond_f3
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v8, :cond_32

    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    if-eqz v8, :cond_32

    .line 436
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/NetworkConnectionParam;->m_iSCMPort:I

    goto/16 :goto_32

    .line 438
    :cond_107
    const-string/jumbo v10, "ipaddress"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_138

    .line 439
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v8, :cond_124

    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    if-eqz v8, :cond_124

    .line 440
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    if-eqz v8, :cond_32

    .line 441
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/supl/config/NetworkConnectionParam;->m_stPCMFQDN:Ljava/lang/String;

    goto/16 :goto_32

    .line 443
    :cond_124
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v8, :cond_32

    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    if-eqz v8, :cond_32

    .line 444
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    if-eqz v8, :cond_32

    .line 445
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    iput-object v9, v8, Lcom/android/supl/config/NetworkConnectionParam;->m_stSCMFQDN:Ljava/lang/String;

    goto/16 :goto_32

    .line 448
    :cond_138
    const-string/jumbo v10, "unixsocketpath"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18f

    .line 449
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v8, :cond_168

    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    if-eqz v8, :cond_168

    .line 452
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

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 454
    :cond_168
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v8, :cond_32

    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    if-eqz v8, :cond_32

    .line 457
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

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 460
    :cond_18f
    const-string/jumbo v10, "ni_udp_enabled"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c1

    .line 461
    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1bf

    :goto_1a0
    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isNiUdpEnabled:Z

    .line 462
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

    goto/16 :goto_32

    :cond_1bf
    move v8, v9

    .line 461
    goto :goto_1a0

    .line 463
    :cond_1c1
    const-string/jumbo v10, "cert"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1cf

    .line 464
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    goto/16 :goto_32

    .line 465
    :cond_1cf
    const-string/jumbo v10, "valid"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1ea

    .line 466
    iget-boolean v10, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v10, :cond_32

    .line 467
    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1e8

    :goto_1e4
    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    goto/16 :goto_32

    :cond_1e8
    move v8, v9

    goto :goto_1e4

    .line 470
    :cond_1ea
    const-string/jumbo v10, "path"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_205

    .line 471
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v8, :cond_32

    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    if-eqz v8, :cond_32

    .line 472
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    if-eqz v8, :cond_32

    .line 473
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/supl/config/ConfigManager;->stKeyStorePath:Ljava/lang/String;

    goto/16 :goto_32

    .line 477
    :cond_205
    const-string/jumbo v10, "pwd"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_220

    .line 478
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v8, :cond_32

    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    if-eqz v8, :cond_32

    .line 479
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    if-eqz v8, :cond_32

    .line 480
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/supl/config/ConfigManager;->stKeyStoreConv:Ljava/lang/String;

    goto/16 :goto_32

    .line 483
    :cond_220
    const-string/jumbo v10, "forcetestvalue"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23a

    .line 485
    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 486
    .local v5, "iValue":I
    if-ne v5, v8, :cond_32

    .line 487
    new-instance v8, Lcom/android/supl/config/ConfigManager$ForceTestValue;

    invoke-direct {v8, p0}, Lcom/android/supl/config/ConfigManager$ForceTestValue;-><init>(Lcom/android/supl/config/ConfigManager;)V

    iput-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    goto/16 :goto_32

    .line 490
    .end local v5    # "iValue":I
    :cond_23a
    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v10, :cond_253

    const-string/jumbo v10, "mcc"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_253

    .line 491
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMcc:I

    goto/16 :goto_32

    .line 493
    :cond_253
    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v10, :cond_26c

    const-string/jumbo v10, "mnc"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26c

    .line 494
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMnc:I

    goto/16 :goto_32

    .line 496
    :cond_26c
    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v10, :cond_285

    const-string/jumbo v10, "lac"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_285

    .line 497
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iLac:I

    goto/16 :goto_32

    .line 499
    :cond_285
    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v10, :cond_29e

    const-string/jumbo v10, "ci"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_29e

    .line 500
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iCI:I

    goto/16 :goto_32

    .line 502
    :cond_29e
    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v10, :cond_2b7

    const-string/jumbo v10, "msisdn"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b7

    .line 503
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMSISDN:J

    goto/16 :goto_32

    .line 505
    :cond_2b7
    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v10, :cond_2d4

    const-string/jumbo v10, "filltaandnmr"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2d4

    .line 506
    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v11, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v8, :cond_2d2

    :goto_2ce
    iput-boolean v8, v10, Lcom/android/supl/config/ConfigManager$ForceTestValue;->isFillTAandNMR:Z

    goto/16 :goto_32

    :cond_2d2
    move v8, v9

    goto :goto_2ce

    .line 508
    :cond_2d4
    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v10, :cond_2ed

    const-string/jumbo v10, "ta"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2ed

    .line 509
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iTA:I

    goto/16 :goto_32

    .line 511
    :cond_2ed
    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v10, :cond_323

    const-string/jumbo v10, "nmr"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_323

    .line 512
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    if-eqz v8, :cond_32

    .line 513
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    const-string/jumbo v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 514
    .local v6, "stNMR":[Ljava/lang/String;
    array-length v8, v6

    new-array v0, v8, [I

    .line 515
    .local v0, "aNmr":[I
    const/4 v3, 0x0

    .line 516
    .local v3, "i":I
    array-length v8, v6

    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_30d
    if-ge v9, v8, :cond_31d

    aget-object v7, v6, v9

    .line 517
    .local v7, "string":Ljava/lang/String;
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v0, v4

    .line 516
    add-int/lit8 v9, v9, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_30d

    .line 519
    .end local v7    # "string":Ljava/lang/String;
    :cond_31d
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    iput-object v0, v8, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    goto/16 :goto_32

    .line 521
    .end local v0    # "aNmr":[I
    .end local v4    # "i":I
    .end local v6    # "stNMR":[Ljava/lang/String;
    :cond_323
    const-string/jumbo v10, "checkgps"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_329
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_329} :catch_52

    move-result v10

    if-eqz v10, :cond_33d

    .line 523
    :try_start_32c
    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v8, :cond_33b

    :goto_334
    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isCheckGPSEnabled:Z
    :try_end_336
    .catch Ljava/lang/NumberFormatException; {:try_start_32c .. :try_end_336} :catch_338

    goto/16 :goto_32

    .line 524
    :catch_338
    move-exception v2

    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_32

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_33b
    move v8, v9

    .line 523
    goto :goto_334

    .line 527
    :cond_33d
    :try_start_33d
    const-string/jumbo v10, "bearer_network_enable"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_360

    .line 528
    iget-object v10, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v8, :cond_35e

    :goto_34e
    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    .line 529
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_32

    .line 530
    new-instance v8, Ljava/util/HashMap;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v8, p0, Lcom/android/supl/config/ConfigManager;->roamingBearerNetwork:Ljava/util/HashMap;

    goto/16 :goto_32

    :cond_35e
    move v8, v9

    .line 528
    goto :goto_34e

    .line 532
    :cond_360
    const-string/jumbo v8, "bearer_network_support"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_371

    .line 533
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    .line 534
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isBearNetworkFound:Z

    goto/16 :goto_32

    .line 535
    :cond_371
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isBearNetworkFound:Z

    if-eqz v8, :cond_32

    .line 537
    const-string/jumbo v8, "wlan"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_397

    .line 538
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_32

    .line 539
    new-instance v1, Lcom/android/supl/bearer/BearerNetwork;

    const-string/jumbo v8, "wlan"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 540
    .local v1, "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    .line 542
    .end local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    :cond_397
    const-string/jumbo v8, "lte"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b9

    .line 543
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_32

    .line 544
    new-instance v1, Lcom/android/supl/bearer/BearerNetwork;

    const-string/jumbo v8, "lte"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 545
    .restart local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    .line 547
    .end local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    :cond_3b9
    const-string/jumbo v8, "gsm"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3db

    .line 548
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_32

    .line 549
    new-instance v1, Lcom/android/supl/bearer/BearerNetwork;

    const-string/jumbo v8, "gsm"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 550
    .restart local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    .line 552
    .end local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    :cond_3db
    const-string/jumbo v8, "cdma"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3fd

    .line 553
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_32

    .line 554
    new-instance v1, Lcom/android/supl/bearer/BearerNetwork;

    const-string/jumbo v8, "cdma"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 555
    .restart local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    .line 557
    .end local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    :cond_3fd
    const-string/jumbo v8, "wcdma"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41f

    .line 558
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_32

    .line 559
    new-instance v1, Lcom/android/supl/bearer/BearerNetwork;

    const-string/jumbo v8, "wcdma"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 560
    .restart local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    .line 562
    .end local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    :cond_41f
    const-string/jumbo v8, "umb"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_441

    .line 563
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_32

    .line 564
    new-instance v1, Lcom/android/supl/bearer/BearerNetwork;

    const-string/jumbo v8, "umb"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 565
    .restart local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    .line 567
    .end local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    :cond_441
    const-string/jumbo v8, "wimax"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_463

    .line 568
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_32

    .line 569
    new-instance v1, Lcom/android/supl/bearer/BearerNetwork;

    const-string/jumbo v8, "wimax"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 570
    .restart local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    .line 572
    .end local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    :cond_463
    const-string/jumbo v8, "hrpd"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 573
    iget-boolean v8, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v8, :cond_32

    .line 574
    new-instance v1, Lcom/android/supl/bearer/BearerNetwork;

    const-string/jumbo v8, "hrpd"

    iget-object v9, p0, Lcom/android/supl/config/ConfigManager;->stData:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v1, v8, v9}, Lcom/android/supl/bearer/BearerNetwork;-><init>(Ljava/lang/String;I)V

    .line 575
    .restart local v1    # "bearerNetwork":Lcom/android/supl/bearer/BearerNetwork;
    iget-object v8, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v8, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z
    :try_end_483
    .catch Ljava/lang/NumberFormatException; {:try_start_33d .. :try_end_483} :catch_52

    goto/16 :goto_32
.end method

.method public getForceTestvalue()[B
    .registers 3

    .prologue
    .line 680
    const/4 v0, 0x0

    .line 681
    .local v0, "bTestValue":[B
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v1, :cond_b

    .line 682
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    invoke-virtual {v1}, Lcom/android/supl/config/ConfigManager$ForceTestValue;->getForceTest()[B

    move-result-object v0

    .line 684
    .end local v0    # "bTestValue":[B
    :cond_b
    return-object v0
.end method

.method public getKeyStoreConv()Ljava/lang/String;
    .registers 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stKeyStoreConv:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyStorePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stKeyStorePath:Ljava/lang/String;

    return-object v0
.end method

.method public getNwRetries()I
    .registers 3

    .prologue
    .line 607
    const/4 v0, 0x5

    .line 608
    .local v0, "iRetries":I
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_9

    .line 609
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionRetries:I

    .line 611
    :cond_9
    return v0
.end method

.method public getNwTimeout()I
    .registers 3

    .prologue
    .line 595
    const/16 v0, 0x1388

    .line 596
    .local v0, "iTimeout":I
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_a

    .line 597
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_iConnectionTimeOut:I

    .line 599
    :cond_a
    return v0
.end method

.method public getPCMIpAdress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 631
    const-string/jumbo v0, "127.0.0.1"

    .line 632
    .local v0, "stIPAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_b

    .line 633
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_stPCMFQDN:Ljava/lang/String;

    .line 635
    :cond_b
    return-object v0
.end method

.method public getPCMPort()I
    .registers 3

    .prologue
    .line 615
    const/16 v0, 0x2329

    .line 616
    .local v0, "iPortNumber":I
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_a

    .line 617
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_iPCMPort:I

    .line 619
    :cond_a
    return v0
.end method

.method public getPCMUnixSocketPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 657
    const-string/jumbo v0, "/data/gnss/pcm_soc"

    .line 658
    .local v0, "sPCMSocket":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_b

    .line 659
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_sPCMUnixSocPath:Ljava/lang/String;

    .line 661
    :cond_b
    return-object v0
.end method

.method public getPrefSetId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPerfSetId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKeyStore()Ljava/lang/String;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStore:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKeyStoreConv()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->stPrivateKeyStoreConv:Ljava/lang/String;

    return-object v0
.end method

.method public getRoamingBearerNetwork()Ljava/util/HashMap;
    .registers 2
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
    .line 763
    iget-object v0, p0, Lcom/android/supl/config/ConfigManager;->roamingBearerNetwork:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSCMIpAdress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 639
    const-string/jumbo v0, "127.0.0.1"

    .line 640
    .local v0, "stIPAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_b

    .line 641
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_stSCMFQDN:Ljava/lang/String;

    .line 643
    :cond_b
    return-object v0
.end method

.method public getSCMPort()I
    .registers 3

    .prologue
    .line 623
    const/16 v0, 0x232a

    .line 624
    .local v0, "iPortNumber":I
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_a

    .line 625
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_iSCMPort:I

    .line 627
    :cond_a
    return v0
.end method

.method public getSCMUnixSocketPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 648
    const-string/jumbo v0, "/data/gnss/scm_soc"

    .line 649
    .local v0, "sSCMSocket":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    if-eqz v1, :cond_b

    .line 650
    iget-object v1, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    iget-object v0, v1, Lcom/android/supl/config/NetworkConnectionParam;->m_sSCMUnixSocPath:Ljava/lang/String;

    .line 652
    :cond_b
    return-object v0
.end method

.method public getSUPLVersion()I
    .registers 2

    .prologue
    .line 665
    iget v0, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    return v0
.end method

.method public init()V
    .registers 12

    .prologue
    .line 228
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v8

    .line 229
    .local v8, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v7, 0x0

    .line 230
    .local v7, "sp":Ljavax/xml/parsers/SAXParser;
    const/4 v9, 0x0

    .line 231
    .local v9, "xr":Lorg/xml/sax/XMLReader;
    const/4 v5, 0x0

    .line 233
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_7
    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v7

    .line 235
    .local v7, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v9

    .line 237
    .local v9, "xr":Lorg/xml/sax/XMLReader;
    invoke-interface {v9, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_12} :catch_50
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_12} :catch_82
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_12} :catch_73
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_12} :catch_64
    .catchall {:try_start_7 .. :try_end_12} :catchall_91

    .line 240
    :try_start_12
    new-instance v4, Ljava/io/File;

    const-string/jumbo v10, "/data/cust/xml/gnss_suplconfig_hisi.xml"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3f

    .line 242
    new-instance v6, Ljava/io/FileInputStream;

    const-string/jumbo v10, "/data/cust/xml/gnss_suplconfig_hisi.xml"

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    move-object v5, v6

    .line 246
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    :goto_29
    new-instance v10, Lorg/xml/sax/InputSource;

    invoke-direct {v10, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v9, v10}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_49

    .line 248
    if-eqz v5, :cond_36

    .line 249
    :try_start_33
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_36} :catch_50
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_82
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_33 .. :try_end_36} :catch_73
    .catch Lorg/xml/sax/SAXException; {:try_start_33 .. :try_end_36} :catch_64
    .catchall {:try_start_33 .. :try_end_36} :catchall_91

    .line 265
    :cond_36
    if-eqz v5, :cond_3b

    .line 267
    :try_start_38
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_5f

    .line 275
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v7    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v9    # "xr":Lorg/xml/sax/XMLReader;
    :cond_3b
    :goto_3b
    const/4 v8, 0x0

    .line 276
    .local v8, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v7, 0x0

    .line 277
    .local v7, "sp":Ljavax/xml/parsers/SAXParser;
    const/4 v9, 0x0

    .line 278
    .local v9, "xr":Lorg/xml/sax/XMLReader;
    return-void

    .line 244
    .restart local v4    # "file":Ljava/io/File;
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    .local v7, "sp":Ljavax/xml/parsers/SAXParser;
    .local v8, "spf":Ljavax/xml/parsers/SAXParserFactory;
    .local v9, "xr":Lorg/xml/sax/XMLReader;
    :cond_3f
    :try_start_3f
    new-instance v6, Ljava/io/FileInputStream;

    const-string/jumbo v10, "/vendor/etc/gnss/config/gnss_suplconfig_hisi.xml"

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_49

    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_29

    .line 247
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_49
    move-exception v10

    .line 248
    if-eqz v5, :cond_4f

    .line 249
    :try_start_4c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 247
    :cond_4f
    throw v10
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_50} :catch_50
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_50} :catch_82
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4c .. :try_end_50} :catch_73
    .catch Lorg/xml/sax/SAXException; {:try_start_4c .. :try_end_50} :catch_64
    .catchall {:try_start_4c .. :try_end_50} :catchall_91

    .line 252
    .end local v7    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v9    # "xr":Lorg/xml/sax/XMLReader;
    :catch_50
    move-exception v0

    .line 254
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_91

    .line 265
    if-eqz v5, :cond_3b

    .line 267
    :try_start_56
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_3b

    .line 268
    :catch_5a
    move-exception v1

    .line 270
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3b

    .line 268
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v9    # "xr":Lorg/xml/sax/XMLReader;
    :catch_5f
    move-exception v1

    .line 270
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3b

    .line 261
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v7    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v9    # "xr":Lorg/xml/sax/XMLReader;
    :catch_64
    move-exception v3

    .line 263
    .local v3, "e1":Lorg/xml/sax/SAXException;
    :try_start_65
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_91

    .line 265
    if-eqz v5, :cond_3b

    .line 267
    :try_start_6a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_3b

    .line 268
    :catch_6e
    move-exception v1

    .line 270
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3b

    .line 258
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    :catch_73
    move-exception v2

    .line 260
    .local v2, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_74
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_91

    .line 265
    if-eqz v5, :cond_3b

    .line 267
    :try_start_79
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_3b

    .line 268
    :catch_7d
    move-exception v1

    .line 270
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3b

    .line 255
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_82
    move-exception v1

    .line 257
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_83
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_91

    .line 265
    if-eqz v5, :cond_3b

    .line 267
    :try_start_88
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_3b

    .line 268
    :catch_8c
    move-exception v1

    .line 270
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3b

    .line 264
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_91
    move-exception v10

    .line 265
    if-eqz v5, :cond_97

    .line 267
    :try_start_94
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_98

    .line 264
    :cond_97
    :goto_97
    throw v10

    .line 268
    :catch_98
    move-exception v1

    .line 270
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_97
.end method

.method public isCertVaild()Z
    .registers 2

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    return v0
.end method

.method public isForceTest()Z
    .registers 2

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isForceTest:Z

    return v0
.end method

.method public isMultipleBearNetworkSupport()Z
    .registers 2

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    return v0
.end method

.method public isNiUdpEnabled()Z
    .registers 2

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isNiUdpEnabled:Z

    return v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 10
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

    .line 296
    const-string/jumbo v3, "suplver"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 297
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    .line 398
    :cond_c
    :goto_c
    return-void

    .line 298
    :cond_d
    const-string/jumbo v3, "config_start"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 300
    :try_start_16
    const-string/jumbo v2, ""

    const-string/jumbo v3, "version"

    invoke-interface {p4, v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/android/supl/config/ConfigManager;->iConfigStartVersion:I
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_2a} :catch_260

    goto :goto_c

    .line 301
    :catch_2b
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_c

    .line 304
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2d
    iget v3, p0, Lcom/android/supl/config/ConfigManager;->iConfigStartVersion:I

    iget v4, p0, Lcom/android/supl/config/ConfigManager;->iSUPLVersion:I

    if-ne v3, v4, :cond_c

    .line 305
    const-string/jumbo v3, "switch_apn_enable"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 306
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto :goto_c

    .line 307
    :cond_3f
    const-string/jumbo v3, "pref_setid"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 308
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto :goto_c

    .line 309
    :cond_4b
    const-string/jumbo v3, "netcont_params"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 310
    new-instance v2, Lcom/android/supl/config/NetworkConnectionParam;

    invoke-direct {v2}, Lcom/android/supl/config/NetworkConnectionParam;-><init>()V

    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->m_connectionParam:Lcom/android/supl/config/NetworkConnectionParam;

    goto :goto_c

    .line 311
    :cond_5c
    const-string/jumbo v3, "nw_timeout"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 312
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto :goto_c

    .line 313
    :cond_68
    const-string/jumbo v3, "nw_retries"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 314
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto :goto_c

    .line 315
    :cond_74
    const-string/jumbo v3, "pcm"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 316
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isPCMFound:Z

    goto :goto_c

    .line 317
    :cond_80
    const-string/jumbo v3, "scm"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 318
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isSCMFound:Z

    goto :goto_c

    .line 319
    :cond_8c
    const-string/jumbo v3, "port"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 320
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 321
    :cond_99
    const-string/jumbo v3, "ipaddress"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 322
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 323
    :cond_a6
    const-string/jumbo v3, "unixsocketpath"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 324
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 325
    :cond_b3
    const-string/jumbo v3, "ni_udp_enabled"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 326
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 327
    :cond_c0
    const-string/jumbo v3, "cert"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 328
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    goto/16 :goto_c

    .line 329
    :cond_cd
    const-string/jumbo v3, "valid"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 330
    iget-boolean v3, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v3, :cond_c

    .line 331
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 333
    :cond_de
    const-string/jumbo v3, "path"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 334
    iget-boolean v3, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    if-eqz v3, :cond_c

    .line 335
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 337
    :cond_f3
    const-string/jumbo v3, "pwd"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 338
    iget-boolean v3, p0, Lcom/android/supl/config/ConfigManager;->isCertFound:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/android/supl/config/ConfigManager;->isCertVaild:Z

    if-eqz v3, :cond_c

    .line 339
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 341
    :cond_108
    const-string/jumbo v3, "forcetestvalue"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    .line 342
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 344
    :cond_115
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v3, :cond_126

    const-string/jumbo v3, "mcc"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_126

    .line 345
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 347
    :cond_126
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v3, :cond_137

    const-string/jumbo v3, "mnc"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_137

    .line 348
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 350
    :cond_137
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v3, :cond_148

    const-string/jumbo v3, "lac"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_148

    .line 351
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 353
    :cond_148
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v3, :cond_159

    const-string/jumbo v3, "ci"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_159

    .line 354
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 356
    :cond_159
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v3, :cond_16a

    const-string/jumbo v3, "msisdn"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16a

    .line 357
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 359
    :cond_16a
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v3, :cond_17b

    const-string/jumbo v3, "filltaandnmr"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17b

    .line 360
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 362
    :cond_17b
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v3, :cond_18c

    const-string/jumbo v3, "ta"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18c

    .line 363
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 365
    :cond_18c
    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->testValue:Lcom/android/supl/config/ConfigManager$ForceTestValue;

    if-eqz v3, :cond_19d

    const-string/jumbo v3, "nmr"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19d

    .line 366
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 367
    :cond_19d
    const-string/jumbo v3, "checkgps"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    .line 368
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 369
    :cond_1aa
    const-string/jumbo v3, "bearer_network_enable"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b7

    .line 370
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 371
    :cond_1b7
    const-string/jumbo v3, "bearer_network_support"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f4

    .line 372
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isBearNetworkFound:Z

    .line 373
    const-string/jumbo v3, ""

    const-string/jumbo v4, "roaming"

    invoke-interface {p4, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_1f2

    :goto_1d2
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupportRoaming:Z

    .line 374
    iget-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupport:Z

    if-eqz v2, :cond_c

    .line 375
    new-instance v2, Ljava/util/PriorityQueue;

    iget-object v3, p0, Lcom/android/supl/config/ConfigManager;->mComparater:Lcom/android/supl/bearer/BearerNetworkComparater;

    const/16 v4, 0xa

    invoke-direct {v2, v4, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v2, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    .line 376
    iget-object v2, p0, Lcom/android/supl/config/ConfigManager;->roamingBearerNetwork:Ljava/util/HashMap;

    iget-boolean v3, p0, Lcom/android/supl/config/ConfigManager;->isMultipleBearNetworkSupportRoaming:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/android/supl/config/ConfigManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 373
    :cond_1f2
    const/4 v2, 0x0

    goto :goto_1d2

    .line 378
    :cond_1f4
    iget-boolean v3, p0, Lcom/android/supl/config/ConfigManager;->isBearNetworkFound:Z

    if-eqz v3, :cond_c

    .line 379
    const-string/jumbo v3, "wlan"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_205

    .line 380
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 381
    :cond_205
    const-string/jumbo v3, "lte"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_212

    .line 382
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 383
    :cond_212
    const-string/jumbo v3, "gsm"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21f

    .line 384
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 385
    :cond_21f
    const-string/jumbo v3, "cdma"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22c

    .line 386
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 387
    :cond_22c
    const-string/jumbo v3, "wcdma"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_239

    .line 388
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 389
    :cond_239
    const-string/jumbo v3, "umb"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_246

    .line 390
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 391
    :cond_246
    const-string/jumbo v3, "wimax"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_253

    .line 392
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 393
    :cond_253
    const-string/jumbo v3, "hrpd"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 394
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager;->isRequiredTag:Z

    goto/16 :goto_c

    .line 302
    :catch_260
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    goto/16 :goto_c
.end method

.method public switchApnEnabled()Z
    .registers 2

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/android/supl/config/ConfigManager;->isSwitchApnEnabled:Z

    return v0
.end method
