.class public Lcom/android/supl/loc/SETLocationManager;
.super Ljava/lang/Object;
.source "SETLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/loc/SETLocationManager$1;,
        Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;,
        Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;,
        Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final JELLY_BEAN_MR1:I = 0x11

.field public static final LOCATION_ID_STATUS_CURRENT:I = 0x1

.field public static final LOCATION_ID_STATUS_STALE:I = 0x0

.field public static final LOCATION_ID_STATUS_UNKNOWN:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_LocMan"

.field public static final MAX_WLAN_INFO:I = 0x14

.field private static final TD_SCDMA:I = 0x11

.field private static final UMB_CELLINFO:I = 0x14

.field private static final WIFI_CELLINFO:I = 0x15

.field public static final outgoing:Ljava/lang/String; = "android.intent.action.NEW_OUTGOING_CALL"


# instance fields
.field private intentFilter:Landroid/content/IntentFilter;

.field private isEmergencyCall:Z

.field private isEmergencyCallListen:Z

.field private isLocationSwithEnable:Z

.field private isStartListen:Z

.field private isWifiRegister:Z

.field private mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

.field private mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

.field private mContext:Landroid/content/Context;

.field private mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

.field private mNetInfo:Lcom/android/supl/loc/NetInfo;

.field private mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

.field private mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

.field private m_iMcc:I

.field private m_iMnc:I

.field private m_stBearerNetworkType:Ljava/lang/String;

.field private m_stIMSI:Ljava/lang/String;

.field private m_stMSISDN:Ljava/lang/String;

.field private m_stPhoneType:Ljava/lang/String;

.field private outGoingCallReceiver:Landroid/content/BroadcastReceiver;

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/supl/loc/SETLocationManager;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/loc/SETLocationManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCall:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/supl/loc/SETLocationManager;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/loc/SETLocationManager;

    .prologue
    iget-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isLocationSwithEnable:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/commprocessor/NDKCommProcessor;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/loc/SETLocationManager;

    .prologue
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/loc/NetInfo;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/loc/SETLocationManager;

    .prologue
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/supl/loc/SETLocationManager;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/loc/SETLocationManager;

    .prologue
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/supl/loc/SETLocationManager;Z)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/loc/SETLocationManager;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCall:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/supl/loc/SETLocationManager;Z)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/loc/SETLocationManager;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/supl/loc/SETLocationManager;->isLocationSwithEnable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/supl/loc/SETLocationManager;Landroid/content/Context;)Z
    .registers 3
    .param p0, "-this"    # Lcom/android/supl/loc/SETLocationManager;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/supl/loc/SETLocationManager;->getLocationEnableState(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/supl/loc/SETLocationManager;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/loc/SETLocationManager;

    .prologue
    invoke-direct {p0}, Lcom/android/supl/loc/SETLocationManager;->isGlobalVersion()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/supl/loc/SETLocationManager;Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V
    .registers 6
    .param p0, "-this"    # Lcom/android/supl/loc/SETLocationManager;
    .param p1, "cellLocation"    # Landroid/telephony/CellLocation;
    .param p2, "isFake"    # Z
    .param p3, "iNetWorkType"    # I
    .param p4, "bScanData"    # [B
    .param p5, "cellInfoList"    # Ljava/util/List;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/supl/loc/SETLocationManager;->fillCellInfo(Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/supl/loc/SETLocationManager;Ljava/util/List;)V
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/loc/SETLocationManager;
    .param p1, "wifiScanResults"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/supl/loc/SETLocationManager;->sendWIFIScanResult(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    .line 75
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_stIMSI:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_stMSISDN:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_stBearerNetworkType:Ljava/lang/String;

    .line 90
    iput v0, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    .line 95
    iput v0, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    .line 97
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_stPhoneType:Ljava/lang/String;

    .line 99
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    .line 101
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    .line 103
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    .line 105
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 109
    iput-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isStartListen:Z

    .line 121
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    .line 131
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    .line 132
    iput-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isWifiRegister:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCall:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCallListen:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isLocationSwithEnable:Z

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->intentFilter:Landroid/content/IntentFilter;

    .line 187
    new-instance v0, Lcom/android/supl/loc/SETLocationManager$1;

    invoke-direct {v0, p0}, Lcom/android/supl/loc/SETLocationManager$1;-><init>(Lcom/android/supl/loc/SETLocationManager;)V

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->outGoingCallReceiver:Landroid/content/BroadcastReceiver;

    .line 382
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    .line 141
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    .line 142
    new-instance v0, Lcom/android/supl/loc/NetInfo;

    invoke-direct {v0, p1}, Lcom/android/supl/loc/NetInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    .line 144
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    .line 146
    new-instance v0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    invoke-direct {v0, p0, v2}, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;-><init>(Lcom/android/supl/loc/SETLocationManager;Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;)V

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    .line 148
    invoke-direct {p0, p1}, Lcom/android/supl/loc/SETLocationManager;->getLocationEnableState(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isLocationSwithEnable:Z

    .line 150
    return-void
.end method

.method private checkCdmaCellLocationVaild(Landroid/telephony/cdma/CdmaCellLocation;)Z
    .registers 6
    .param p1, "cdmaCell"    # Landroid/telephony/cdma/CdmaCellLocation;

    .prologue
    const v2, 0xffff

    const/4 v3, 0x0

    .line 1257
    if-nez p1, :cond_10

    .line 1259
    const-string/jumbo v0, "SUPL20_LocMan"

    const-string/jumbo v1, "cdmaCell is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return v3

    .line 1274
    :cond_10
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getLac()I

    move-result v0

    if-ltz v0, :cond_1e

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getLac()I

    move-result v0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_3d

    .line 1276
    :cond_1e
    const-string/jumbo v0, "SUPL20_LocMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cdmaCell sid is error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getLac()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    return v3

    .line 1280
    :cond_3d
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getCid()I

    move-result v0

    if-ltz v0, :cond_49

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getCid()I

    move-result v0

    if-le v0, v2, :cond_68

    .line 1282
    :cond_49
    const-string/jumbo v0, "SUPL20_LocMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cdmaCell nid is error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getCid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    return v3

    .line 1286
    :cond_68
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    if-ltz v0, :cond_74

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    if-le v0, v2, :cond_93

    .line 1288
    :cond_74
    const-string/jumbo v0, "SUPL20_LocMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cdmaCell base id is error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    return v3

    .line 1292
    :cond_93
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v0

    const v1, -0x13c680

    if-lt v0, v1, :cond_a5

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v0

    const v1, 0x13c680

    if-le v0, v1, :cond_c4

    .line 1294
    :cond_a5
    const-string/jumbo v0, "SUPL20_LocMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cdmaCell lat is error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    return v3

    .line 1298
    :cond_c4
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v0

    const v1, -0x278d00

    if-lt v0, v1, :cond_d6

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v0

    const v1, 0x278d00

    if-le v0, v1, :cond_f5

    .line 1300
    :cond_d6
    const-string/jumbo v0, "SUPL20_LocMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cdmaCell lon is error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    return v3

    .line 1304
    :cond_f5
    const/4 v0, 0x1

    return v0
.end method

.method private checkGsmCellLocationValid(Landroid/telephony/gsm/GsmCellLocation;)Z
    .registers 6
    .param p1, "gsmCell"    # Landroid/telephony/gsm/GsmCellLocation;

    .prologue
    const v1, 0xffff

    const/4 v3, 0x0

    .line 1170
    if-nez p1, :cond_10

    .line 1172
    const-string/jumbo v0, "SUPL20_LocMan"

    const-string/jumbo v1, "gsmCell is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    return v3

    .line 1180
    :cond_10
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-ltz v0, :cond_1c

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-le v0, v1, :cond_3b

    .line 1182
    :cond_1c
    const-string/jumbo v0, "SUPL20_LocMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gsmCell cid is error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    return v3

    .line 1186
    :cond_3b
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    if-ltz v0, :cond_47

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    if-le v0, v1, :cond_66

    .line 1188
    :cond_47
    const-string/jumbo v0, "SUPL20_LocMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gsmCell lac is error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    return v3

    .line 1192
    :cond_66
    const/4 v0, 0x1

    return v0
.end method

.method private checkLteCellLocationValid(Landroid/telephony/gsm/GsmCellLocation;)Z
    .registers 6
    .param p1, "lteCell"    # Landroid/telephony/gsm/GsmCellLocation;

    .prologue
    const/4 v3, 0x0

    .line 1222
    if-nez p1, :cond_d

    .line 1224
    const-string/jumbo v0, "SUPL20_LocMan"

    const-string/jumbo v1, "lteCell is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    return v3

    .line 1234
    :cond_d
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-ltz v0, :cond_1c

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    const v1, 0xfffffff

    if-le v0, v1, :cond_3b

    .line 1236
    :cond_1c
    const-string/jumbo v0, "SUPL20_LocMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lteCell cid is error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    return v3

    .line 1240
    :cond_3b
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    if-ltz v0, :cond_4a

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_69

    .line 1242
    :cond_4a
    const-string/jumbo v0, "SUPL20_LocMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lteCell lac is error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return v3

    .line 1246
    :cond_69
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v0

    if-ltz v0, :cond_77

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v0

    const/16 v1, 0x1f7

    if-le v0, v1, :cond_95

    .line 1248
    :cond_77
    const-string/jumbo v0, "SUPL20_LocMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lteCell psc is error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_95
    const/4 v0, 0x1

    return v0
.end method

.method private checkUmtsCellLocationValid(Landroid/telephony/gsm/GsmCellLocation;)Z
    .registers 6
    .param p1, "umtsCell"    # Landroid/telephony/gsm/GsmCellLocation;

    .prologue
    const/4 v3, 0x0

    .line 1196
    if-nez p1, :cond_d

    .line 1198
    const-string/jumbo v0, "SUPL20_LocMan"

    const-string/jumbo v1, "umtsCell is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return v3

    .line 1206
    :cond_d
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-ltz v0, :cond_1c

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    const v1, 0xfffffff

    if-le v0, v1, :cond_3b

    .line 1208
    :cond_1c
    const-string/jumbo v0, "SUPL20_LocMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "umtsCell cid is error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return v3

    .line 1212
    :cond_3b
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    if-ltz v0, :cond_4a

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_69

    .line 1214
    :cond_4a
    const-string/jumbo v0, "SUPL20_LocMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "umtsCell lac is error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    return v3

    .line 1218
    :cond_69
    const/4 v0, 0x1

    return v0
.end method

.method private fakeGSMData()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 700
    new-instance v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v1}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 701
    .local v1, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    const/16 v0, 0xc83

    const v2, 0xcb1935

    invoke-virtual {v1, v0, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 702
    const/16 v0, 0x194

    iput v0, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    .line 703
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    .line 704
    const-string/jumbo v0, "SUPL20_LocMan"

    const-string/jumbo v2, "fakeGSMData called"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/supl/loc/SETLocationManager;->fillCellInfo(Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    .line 706
    return-void
.end method

.method private fakeLTEData()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 709
    const-string/jumbo v0, "SUPL20_LocMan"

    const-string/jumbo v2, "fakeLTEData called"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v2, 0x1

    const/16 v3, 0xd

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/supl/loc/SETLocationManager;->fillCellInfo(Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    .line 711
    return-void
.end method

.method private fillCDMACellinfo(Landroid/telephony/CellLocation;)Lcom/android/supl/loc/CdmaCellInfo;
    .registers 5
    .param p1, "cellLoc"    # Landroid/telephony/CellLocation;

    .prologue
    move-object v1, p1

    .line 597
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 598
    .local v1, "cdmaLocation":Landroid/telephony/cdma/CdmaCellLocation;
    new-instance v0, Lcom/android/supl/loc/CdmaCellInfo;

    invoke-direct {v0}, Lcom/android/supl/loc/CdmaCellInfo;-><init>()V

    .line 599
    .local v0, "cdmaCellInfo":Lcom/android/supl/loc/CdmaCellInfo;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v2

    iput v2, v0, Lcom/android/supl/loc/CdmaCellInfo;->m_iBASELAT:I

    .line 600
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v2

    iput v2, v0, Lcom/android/supl/loc/CdmaCellInfo;->m_iBASELONG:I

    .line 601
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v0, Lcom/android/supl/loc/CdmaCellInfo;->m_sBASEID:S

    .line 602
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getLac()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v0, Lcom/android/supl/loc/CdmaCellInfo;->m_sSID:S

    .line 603
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getCid()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v0, Lcom/android/supl/loc/CdmaCellInfo;->m_sNID:S

    .line 610
    return-object v0
.end method

.method private declared-synchronized fillCellInfo(Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V
    .registers 38
    .param p1, "cellLocation"    # Landroid/telephony/CellLocation;
    .param p2, "isFake"    # Z
    .param p3, "iNetWorkType"    # I
    .param p4, "bScanData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellLocation;",
            "ZI[B",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    monitor-enter p0

    .line 718
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/supl/loc/SETLocationManager;->isLocationSwithEnable:Z

    move/from16 v29, v0

    if-nez v29, :cond_14

    .line 719
    const-string/jumbo v29, "SUPL20_LocMan"

    const-string/jumbo v30, "Location switch is OFF"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_24f

    monitor-exit p0

    .line 720
    return-void

    .line 723
    :cond_14
    :try_start_14
    invoke-direct/range {p0 .. p0}, Lcom/android/supl/loc/SETLocationManager;->upDatePhoneInfo()V

    .line 724
    const/16 v16, 0x0

    .line 725
    .local v16, "isGSM":Z
    const/16 v20, 0x0

    .line 726
    .local v20, "isWCDMA":Z
    const/4 v15, 0x0

    .line 727
    .local v15, "isCDMA":Z
    const/16 v17, 0x0

    .line 728
    .local v17, "isHRDP":Z
    const/16 v19, 0x0

    .line 729
    .local v19, "isUMB":Z
    const/16 v18, 0x0

    .line 730
    .local v18, "isLTE":Z
    const/16 v22, 0x0

    .line 731
    .local v22, "isWLAN_AP":Z
    const/16 v21, 0x0

    .line 732
    .local v21, "isWIMAXBS":Z
    const/4 v5, 0x0

    .line 733
    .local v5, "bLoc":[B
    const/4 v9, 0x0

    .line 734
    .local v9, "iLocDataLen":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/supl/loc/SETLocationManager;->getNetworkTypeString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/supl/loc/SETLocationManager;->m_stBearerNetworkType:Ljava/lang/String;

    .line 735
    const-string/jumbo v29, "SUPL20_LocMan"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "cellInfo NetworkType:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/loc/SETLocationManager;->m_stBearerNetworkType:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ","

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/16 v29, 0x2

    move/from16 v0, p3

    move/from16 v1, v29

    if-eq v0, v1, :cond_75

    .line 738
    const/16 v29, 0x1

    move/from16 v0, p3

    move/from16 v1, v29

    if-ne v0, v1, :cond_252

    .line 739
    :cond_75
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v29, v0

    if-eqz v29, :cond_244

    .line 740
    move-object/from16 v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/supl/loc/SETLocationManager;->checkGsmCellLocationValid(Landroid/telephony/gsm/GsmCellLocation;)Z

    move-result v29

    if-eqz v29, :cond_98

    .line 742
    const/16 v16, 0x1

    .line 743
    invoke-direct/range {p0 .. p1}, Lcom/android/supl/loc/SETLocationManager;->fillGSMCellinfo(Landroid/telephony/CellLocation;)Lcom/android/supl/loc/GsmCellInfo;

    move-result-object v8

    .line 744
    .local v8, "gsmCellInfo":Lcom/android/supl/loc/GsmCellInfo;
    invoke-virtual {v8}, Lcom/android/supl/loc/GsmCellInfo;->getGSMInfo()[B

    move-result-object v5

    .line 745
    .local v5, "bLoc":[B
    array-length v9, v5

    .line 836
    .end local v5    # "bLoc":[B
    .end local v8    # "gsmCellInfo":Lcom/android/supl/loc/GsmCellInfo;
    :cond_98
    :goto_98
    const/4 v14, 0x0

    .line 837
    .local v14, "iStaleBitLocation":I
    new-instance v25, Lcom/android/supl/nc/SendToServer;

    invoke-direct/range {v25 .. v25}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 838
    .local v25, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/4 v10, 0x4

    .line 839
    .local v10, "iLocationIDStatusLen":I
    const/4 v12, 0x4

    .line 840
    .local v12, "iMesageCodeLen":I
    const/16 v11, 0x20

    .line 842
    .local v11, "iLocationSetStatusLen":I
    if-nez v16, :cond_b6

    xor-int/lit8 v29, v15, 0x1

    if-eqz v29, :cond_b6

    xor-int/lit8 v29, v20, 0x1

    if-eqz v29, :cond_b6

    xor-int/lit8 v29, v22, 0x1

    if-eqz v29, :cond_b6

    xor-int/lit8 v29, v18, 0x1

    if-eqz v29, :cond_b6

    .line 843
    const/4 v9, 0x0

    .line 844
    const/4 v10, 0x0

    .line 846
    :cond_b6
    add-int v29, v9, v10

    add-int/lit8 v29, v29, 0x20

    add-int/lit8 v13, v29, 0x4

    .line 848
    .local v13, "iSendPacketSize":I
    add-int/lit8 v29, v13, 0x4

    move/from16 v0, v29

    new-array v4, v0, [B

    .line 849
    .local v4, "bData":[B
    const/16 v24, 0x0

    .line 850
    .local v24, "offset":I
    const/16 v24, 0x4

    .line 851
    const/16 v29, 0x10b

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 852
    if-eqz v16, :cond_421

    .line 853
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 854
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v24

    invoke-static {v5, v0, v4, v1, v9}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 855
    add-int v24, v24, v9

    .line 856
    move/from16 v14, v24

    .line 857
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 862
    :goto_f3
    if-eqz v20, :cond_42d

    .line 863
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 864
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v24

    invoke-static {v5, v0, v4, v1, v9}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 865
    add-int v24, v24, v9

    .line 866
    move/from16 v14, v24

    .line 867
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 871
    :goto_116
    if-eqz v15, :cond_439

    .line 872
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 873
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v24

    invoke-static {v5, v0, v4, v1, v9}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 874
    add-int v24, v24, v9

    .line 875
    move/from16 v14, v24

    .line 876
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 881
    :goto_139
    if-eqz v17, :cond_445

    .line 882
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 883
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v24

    invoke-static {v5, v0, v4, v1, v9}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 884
    add-int v24, v24, v9

    .line 885
    move/from16 v14, v24

    .line 886
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 890
    :goto_15c
    if-eqz v19, :cond_451

    .line 891
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 892
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v24

    invoke-static {v5, v0, v4, v1, v9}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 893
    add-int v24, v24, v9

    .line 894
    move/from16 v14, v24

    .line 895
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 899
    :goto_17f
    if-eqz v18, :cond_45d

    .line 900
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 901
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v24

    invoke-static {v5, v0, v4, v1, v9}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 902
    add-int v24, v24, v9

    .line 903
    move/from16 v14, v24

    .line 904
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 908
    :goto_1a2
    if-eqz v22, :cond_469

    .line 909
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 910
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v24

    invoke-static {v5, v0, v4, v1, v9}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 911
    add-int v24, v24, v9

    .line 912
    move/from16 v14, v24

    .line 913
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 917
    :goto_1c5
    if-eqz v21, :cond_475

    .line 918
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 919
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v24

    invoke-static {v5, v0, v4, v1, v9}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 920
    add-int v24, v24, v9

    .line 921
    move/from16 v14, v24

    .line 922
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    .line 927
    :goto_1e8
    add-int/lit8 v29, v24, -0x4

    move/from16 v0, v29

    if-eq v13, v0, :cond_217

    .line 928
    const-string/jumbo v29, "SUPL20_LocMan"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "invalid size "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ": "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    add-int/lit8 v31, v24, -0x4

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_217
    add-int/lit8 v29, v24, -0x4

    const/16 v30, 0x0

    move/from16 v0, v30

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    .line 931
    move-object/from16 v0, v25

    iput-object v4, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 934
    if-eqz v14, :cond_242

    .line 936
    if-eqz v22, :cond_481

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v14}, Lcom/android/supl/loc/NetInfo;->setStaleLocationInfo([BI)V
    :try_end_242
    .catchall {:try_start_14 .. :try_end_242} :catchall_24f

    :cond_242
    :goto_242
    monitor-exit p0

    .line 948
    return-void

    .line 748
    .end local v4    # "bData":[B
    .end local v10    # "iLocationIDStatusLen":I
    .end local v11    # "iLocationSetStatusLen":I
    .end local v12    # "iMesageCodeLen":I
    .end local v13    # "iSendPacketSize":I
    .end local v14    # "iStaleBitLocation":I
    .end local v24    # "offset":I
    .end local v25    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    .local v5, "bLoc":[B
    :cond_244
    :try_start_244
    const-string/jumbo v29, "SUPL20_LocMan"

    const-string/jumbo v30, "Network type is UMTS but CellLocation is Cdma, just return."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24d
    .catchall {:try_start_244 .. :try_end_24d} :catchall_24f

    goto/16 :goto_98

    .end local v5    # "bLoc":[B
    .end local v9    # "iLocDataLen":I
    .end local v15    # "isCDMA":Z
    .end local v16    # "isGSM":Z
    .end local v17    # "isHRDP":Z
    .end local v18    # "isLTE":Z
    .end local v19    # "isUMB":Z
    .end local v20    # "isWCDMA":Z
    .end local v21    # "isWIMAXBS":Z
    .end local v22    # "isWLAN_AP":Z
    :catchall_24f
    move-exception v29

    monitor-exit p0

    throw v29

    .line 751
    .restart local v5    # "bLoc":[B
    .restart local v9    # "iLocDataLen":I
    .restart local v15    # "isCDMA":Z
    .restart local v16    # "isGSM":Z
    .restart local v17    # "isHRDP":Z
    .restart local v18    # "isLTE":Z
    .restart local v19    # "isUMB":Z
    .restart local v20    # "isWCDMA":Z
    .restart local v21    # "isWIMAXBS":Z
    .restart local v22    # "isWLAN_AP":Z
    :cond_252
    const/16 v29, 0x4

    move/from16 v0, p3

    move/from16 v1, v29

    if-ne v0, v1, :cond_27e

    .line 753
    :try_start_25a
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/telephony/cdma/CdmaCellLocation;

    move/from16 v29, v0

    if-eqz v29, :cond_98

    .line 754
    move-object/from16 v0, p1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/supl/loc/SETLocationManager;->checkCdmaCellLocationVaild(Landroid/telephony/cdma/CdmaCellLocation;)Z

    move-result v29

    .line 753
    if-eqz v29, :cond_98

    .line 756
    const/4 v15, 0x1

    .line 757
    invoke-direct/range {p0 .. p1}, Lcom/android/supl/loc/SETLocationManager;->fillCDMACellinfo(Landroid/telephony/CellLocation;)Lcom/android/supl/loc/CdmaCellInfo;

    move-result-object v6

    .line 758
    .local v6, "cdmaCellInfo":Lcom/android/supl/loc/CdmaCellInfo;
    invoke-virtual {v6}, Lcom/android/supl/loc/CdmaCellInfo;->getCDMAInfo()[B

    move-result-object v5

    .line 759
    .local v5, "bLoc":[B
    array-length v9, v5

    goto/16 :goto_98

    .line 761
    .end local v6    # "cdmaCellInfo":Lcom/android/supl/loc/CdmaCellInfo;
    .local v5, "bLoc":[B
    :cond_27e
    const/16 v29, 0x3

    move/from16 v0, p3

    move/from16 v1, v29

    if-eq v0, v1, :cond_28e

    .line 762
    const/16 v29, 0xa

    move/from16 v0, p3

    move/from16 v1, v29

    if-ne v0, v1, :cond_2e6

    .line 769
    :cond_28e
    const-string/jumbo v29, "SUPL20_LocMan"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Network type is 3G, type is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v29, v0

    if-eqz v29, :cond_327

    .line 771
    move-object/from16 v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/supl/loc/SETLocationManager;->checkUmtsCellLocationValid(Landroid/telephony/gsm/GsmCellLocation;)Z

    move-result v29

    if-eqz v29, :cond_98

    .line 773
    const/16 v20, 0x1

    .line 774
    new-instance v27, Lcom/android/supl/loc/WcdmaCellInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    move/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/supl/loc/WcdmaCellInfo;-><init>(Landroid/telephony/CellLocation;II)V

    .line 775
    .local v27, "wcdmaCellInfo":Lcom/android/supl/loc/WcdmaCellInfo;
    invoke-virtual/range {v27 .. v27}, Lcom/android/supl/loc/WcdmaCellInfo;->getWCDMAInfo()[B

    move-result-object v5

    .line 776
    .local v5, "bLoc":[B
    array-length v9, v5

    goto/16 :goto_98

    .line 763
    .end local v27    # "wcdmaCellInfo":Lcom/android/supl/loc/WcdmaCellInfo;
    .local v5, "bLoc":[B
    :cond_2e6
    const/16 v29, 0x8

    move/from16 v0, p3

    move/from16 v1, v29

    if-eq v0, v1, :cond_28e

    .line 764
    const/16 v29, 0x9

    move/from16 v0, p3

    move/from16 v1, v29

    if-eq v0, v1, :cond_28e

    .line 765
    const/16 v29, 0xf

    move/from16 v0, p3

    move/from16 v1, v29

    if-eq v0, v1, :cond_28e

    .line 766
    const/16 v29, 0x13

    move/from16 v0, p3

    move/from16 v1, v29

    if-eq v0, v1, :cond_28e

    .line 767
    const/16 v29, 0x11

    move/from16 v0, p3

    move/from16 v1, v29

    if-eq v0, v1, :cond_28e

    .line 781
    const/16 v29, 0x14

    move/from16 v0, p3

    move/from16 v1, v29

    if-ne v0, v1, :cond_332

    .line 782
    const/16 v19, 0x1

    .line 783
    new-instance v26, Lcom/android/supl/loc/UMBCellInfo;

    invoke-direct/range {v26 .. v26}, Lcom/android/supl/loc/UMBCellInfo;-><init>()V

    .line 784
    .local v26, "umbCellInfo":Lcom/android/supl/loc/UMBCellInfo;
    invoke-virtual/range {v26 .. v26}, Lcom/android/supl/loc/UMBCellInfo;->setDummyData()V

    .line 785
    invoke-virtual/range {v26 .. v26}, Lcom/android/supl/loc/UMBCellInfo;->getUMBCellInfo()[B

    move-result-object v5

    .line 786
    .local v5, "bLoc":[B
    array-length v9, v5

    goto/16 :goto_98

    .line 779
    .end local v26    # "umbCellInfo":Lcom/android/supl/loc/UMBCellInfo;
    .local v5, "bLoc":[B
    :cond_327
    const-string/jumbo v29, "SUPL20_LocMan"

    const-string/jumbo v30, "Network type is UMTS but CellLocation is Cdma, just return."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_98

    .line 787
    :cond_332
    const/16 v29, 0x15

    move/from16 v0, p3

    move/from16 v1, v29

    if-ne v0, v1, :cond_357

    .line 788
    const/16 v22, 0x1

    .line 789
    if-eqz p4, :cond_343

    .line 790
    move-object/from16 v5, p4

    .line 797
    .local v5, "bLoc":[B
    :goto_340
    array-length v9, v5

    goto/16 :goto_98

    .line 793
    .local v5, "bLoc":[B
    :cond_343
    new-instance v28, Lcom/android/supl/loc/wifi/WIFIParameter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/supl/loc/NetInfo;->getWiFiMACAddress()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/android/supl/loc/wifi/WIFIParameter;-><init>(Ljava/lang/String;)V

    .line 794
    .local v28, "wifiParameter":Lcom/android/supl/loc/wifi/WIFIParameter;
    invoke-virtual/range {v28 .. v28}, Lcom/android/supl/loc/wifi/WIFIParameter;->getWIFIParameterInfo()[B

    move-result-object v5

    .local v5, "bLoc":[B
    goto :goto_340

    .line 798
    .end local v28    # "wifiParameter":Lcom/android/supl/loc/wifi/WIFIParameter;
    .local v5, "bLoc":[B
    :cond_357
    const/16 v29, 0xd

    move/from16 v0, p3

    move/from16 v1, v29

    if-ne v0, v1, :cond_98

    .line 799
    const-string/jumbo v29, "SUPL20_LocMan"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Network type is 4G, type is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/16 v23, 0x0

    .line 801
    .local v23, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    sget v29, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v30, 0x11

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_409

    .line 802
    if-eqz p5, :cond_3ec

    .line 803
    const/16 v29, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/supl/loc/LTECellInfo;->getCellInfo_To_LTECellInfo(Ljava/util/List;Ljava/util/List;)Lcom/android/supl/loc/LTECellInfo;

    move-result-object v23

    .line 817
    .end local v23    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    :cond_395
    :goto_395
    if-nez v23, :cond_3c5

    .line 818
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v29, v0

    if-eqz v29, :cond_3c5

    .line 819
    move-object/from16 v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/supl/loc/SETLocationManager;->checkLteCellLocationValid(Landroid/telephony/gsm/GsmCellLocation;)Z

    move-result v29

    .line 818
    if-eqz v29, :cond_3c5

    .line 821
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/supl/loc/LTECellInfo;->getCellLocation_To_LTECellInfo(Landroid/telephony/CellLocation;II)Lcom/android/supl/loc/LTECellInfo;

    move-result-object v23

    .line 825
    :cond_3c5
    if-eqz v23, :cond_414

    .line 826
    invoke-virtual/range {v23 .. v23}, Lcom/android/supl/loc/LTECellInfo;->getLTECellInfo()[B

    move-result-object v5

    .line 827
    .local v5, "bLoc":[B
    array-length v9, v5

    .line 828
    const-string/jumbo v29, "SUPL20_LocMan"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "LTE data send.."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/16 v18, 0x1

    goto/16 :goto_98

    .line 806
    .local v5, "bLoc":[B
    .restart local v23    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    :cond_3ec
    const-string/jumbo v29, "ro.config.report_cell_info_list"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 807
    .local v7, "getallcellinfo_flag":Ljava/lang/String;
    const-string/jumbo v29, "true"

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_395

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/supl/loc/LTECellInfo;->getAPILTECellInfo(Landroid/content/Context;)Lcom/android/supl/loc/LTECellInfo;

    move-result-object v23

    .local v23, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    goto :goto_395

    .line 814
    .end local v7    # "getallcellinfo_flag":Ljava/lang/String;
    .local v23, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    :cond_409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/supl/loc/LTECellInfo;->getNONAPILTECellInfo(Landroid/content/Context;)Lcom/android/supl/loc/LTECellInfo;

    move-result-object v23

    .local v23, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    goto :goto_395

    .line 832
    .end local v23    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    :cond_414
    const/16 v18, 0x0

    .line 833
    const-string/jumbo v29, "SUPL20_LocMan"

    const-string/jumbo v30, "LTE data  is null"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_98

    .line 859
    .end local v5    # "bLoc":[B
    .restart local v4    # "bData":[B
    .restart local v10    # "iLocationIDStatusLen":I
    .restart local v11    # "iLocationSetStatusLen":I
    .restart local v12    # "iMesageCodeLen":I
    .restart local v13    # "iSendPacketSize":I
    .restart local v14    # "iStaleBitLocation":I
    .restart local v24    # "offset":I
    .restart local v25    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :cond_421
    const/16 v29, 0x0

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    goto/16 :goto_f3

    .line 869
    :cond_42d
    const/16 v29, 0x0

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    goto/16 :goto_116

    .line 878
    :cond_439
    const/16 v29, 0x0

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    goto/16 :goto_139

    .line 888
    :cond_445
    const/16 v29, 0x0

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    goto/16 :goto_15c

    .line 897
    :cond_451
    const/16 v29, 0x0

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    goto/16 :goto_17f

    .line 906
    :cond_45d
    const/16 v29, 0x0

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    goto/16 :goto_1a2

    .line 915
    :cond_469
    const/16 v29, 0x0

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    goto/16 :goto_1c5

    .line 924
    :cond_475
    const/16 v29, 0x0

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v24

    goto/16 :goto_1e8

    .line 940
    :cond_481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    move-object/from16 v29, v0

    if-nez v29, :cond_498

    .line 941
    new-instance v29, Lcom/android/supl/loc/StaleLocationInfo;

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v14}, Lcom/android/supl/loc/StaleLocationInfo;-><init>([BI)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    goto/16 :goto_242

    .line 943
    :cond_498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v14}, Lcom/android/supl/loc/StaleLocationInfo;->upDateInfo([BI)V
    :try_end_4a3
    .catchall {:try_start_25a .. :try_end_4a3} :catchall_24f

    goto/16 :goto_242
.end method

.method private fillGSMCellinfo(Landroid/telephony/CellLocation;)Lcom/android/supl/loc/GsmCellInfo;
    .registers 5
    .param p1, "cellLoc"    # Landroid/telephony/CellLocation;

    .prologue
    move-object v0, p1

    .line 615
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 616
    .local v0, "gsmCell":Landroid/telephony/gsm/GsmCellLocation;
    new-instance v1, Lcom/android/supl/loc/GsmCellInfo;

    invoke-direct {v1}, Lcom/android/supl/loc/GsmCellInfo;-><init>()V

    .line 618
    .local v1, "gsmCellInfo":Lcom/android/supl/loc/GsmCellInfo;
    iget v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    iput v2, v1, Lcom/android/supl/loc/GsmCellInfo;->m_iMNC:I

    .line 619
    iget v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    iput v2, v1, Lcom/android/supl/loc/GsmCellInfo;->m_iMCC:I

    .line 620
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    iput v2, v1, Lcom/android/supl/loc/GsmCellInfo;->m_iLAC:I

    .line 621
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    iput v2, v1, Lcom/android/supl/loc/GsmCellInfo;->m_iCellID:I

    .line 623
    return-object v1
.end method

.method private getLocationEnableState(Landroid/content/Context;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 1095
    invoke-direct {p0}, Lcom/android/supl/loc/SETLocationManager;->isGlobalVersion()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1097
    return v6

    .line 1100
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "location"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 1102
    .local v1, "locationManager":Landroid/location/LocationManager;
    const-string/jumbo v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 1103
    .local v0, "gps":Z
    const-string/jumbo v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 1105
    .local v2, "network":Z
    const-string/jumbo v3, "SUPL20_LocMan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "gps switch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " network switch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    if-nez v0, :cond_4c

    if-eqz v2, :cond_4d

    .line 1108
    :cond_4c
    return v6

    .line 1111
    :cond_4d
    const/4 v3, 0x0

    return v3
.end method

.method private getNetworkTypeString(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 627
    const-string/jumbo v0, "Unknown"

    .line 629
    .local v0, "typeString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_56

    .line 688
    :pswitch_6
    const-string/jumbo v0, "NOT RETERIVE"

    .line 696
    :goto_9
    return-object v0

    .line 631
    :pswitch_a
    const-string/jumbo v0, "EDGE"

    goto :goto_9

    .line 634
    :pswitch_e
    const-string/jumbo v0, "GPRS"

    goto :goto_9

    .line 637
    :pswitch_12
    const-string/jumbo v0, "UMTS"

    goto :goto_9

    .line 640
    :pswitch_16
    const-string/jumbo v0, "CDMA"

    goto :goto_9

    .line 643
    :pswitch_1a
    const-string/jumbo v0, "UNKNOWN"

    goto :goto_9

    .line 646
    :pswitch_1e
    const-string/jumbo v0, "1xRTT"

    goto :goto_9

    .line 649
    :pswitch_22
    const-string/jumbo v0, "EVDO_0"

    goto :goto_9

    .line 652
    :pswitch_26
    const-string/jumbo v0, "EVDO_A"

    goto :goto_9

    .line 655
    :pswitch_2a
    const-string/jumbo v0, "HSPA"

    goto :goto_9

    .line 658
    :pswitch_2e
    const-string/jumbo v0, "HSDPA"

    goto :goto_9

    .line 661
    :pswitch_32
    const-string/jumbo v0, "HSUPA"

    goto :goto_9

    .line 664
    :pswitch_36
    const-string/jumbo v0, "HSPAP"

    goto :goto_9

    .line 667
    :pswitch_3a
    const-string/jumbo v0, "IDEN"

    goto :goto_9

    .line 670
    :pswitch_3e
    const-string/jumbo v0, "EVDO_B"

    goto :goto_9

    .line 673
    :pswitch_42
    const-string/jumbo v0, "LTE"

    goto :goto_9

    .line 676
    :pswitch_46
    const-string/jumbo v0, "EHRPD"

    goto :goto_9

    .line 679
    :pswitch_4a
    const-string/jumbo v0, "GSM"

    goto :goto_9

    .line 682
    :pswitch_4e
    const-string/jumbo v0, "TDS"

    goto :goto_9

    .line 685
    :pswitch_52
    const-string/jumbo v0, "TDS-DPA"

    goto :goto_9

    .line 629
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_e
        :pswitch_a
        :pswitch_12
        :pswitch_16
        :pswitch_22
        :pswitch_26
        :pswitch_1e
        :pswitch_2e
        :pswitch_32
        :pswitch_2a
        :pswitch_3a
        :pswitch_3e
        :pswitch_42
        :pswitch_46
        :pswitch_36
        :pswitch_4a
        :pswitch_4e
        :pswitch_6
        :pswitch_52
    .end packed-switch
.end method

.method private getPhoneTypeString(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 575
    const-string/jumbo v0, "Unknown"

    .line 577
    .local v0, "typeString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_16

    .line 589
    const-string/jumbo v0, "NOT RETERIVE"

    .line 593
    :goto_9
    return-object v0

    .line 579
    :pswitch_a
    const-string/jumbo v0, "GSM"

    goto :goto_9

    .line 582
    :pswitch_e
    const-string/jumbo v0, "CDMA"

    goto :goto_9

    .line 586
    :pswitch_12
    const-string/jumbo v0, "UNKNOWN"

    goto :goto_9

    .line 577
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_a
        :pswitch_e
    .end packed-switch
.end method

.method private isGlobalVersion()Z
    .registers 3

    .prologue
    .line 1312
    const-string/jumbo v0, "zh"

    const-string/jumbo v1, "ro.product.locale.language"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1313
    const-string/jumbo v0, "CN"

    const-string/jumbo v1, "ro.product.locale.region"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1312
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x1

    goto :goto_20
.end method

.method private isSIMEnabled()Z
    .registers 6

    .prologue
    .line 303
    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 304
    .local v1, "state":I
    const/4 v0, 0x0

    .line 305
    .local v0, "isSIMStateEnabled":Z
    packed-switch v1, :pswitch_data_2a

    .line 324
    :goto_a
    const-string/jumbo v2, "SUPL20_LocMan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SIM state :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v0

    .line 308
    :pswitch_25
    const/4 v0, 0x1

    .line 309
    goto :goto_a

    .line 317
    :pswitch_27
    const/4 v0, 0x0

    .line 318
    goto :goto_a

    .line 305
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_25
    .end packed-switch
.end method

.method private sendWIFIScanResult(Ljava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1115
    .local p1, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz p1, :cond_b7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b7

    .line 1116
    const/4 v12, 0x0

    .line 1117
    .local v12, "iSize":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    .line 1118
    .local v14, "nScanResults":I
    const/16 v1, 0x14

    if-le v14, v1, :cond_13

    .line 1119
    const/16 v14, 0x14

    .line 1121
    :cond_13
    new-instance v18, Ljava/util/Vector;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/util/Vector;-><init>(I)V

    .line 1122
    .local v18, "vecScanDataRes":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1b
    if-ge v10, v14, :cond_63

    .line 1123
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/ScanResult;

    .line 1125
    .local v16, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v16, :cond_60

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v1, :cond_60

    .line 1126
    new-instance v15, Lcom/android/supl/loc/wifi/WIFIParameter;

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v15, v1}, Lcom/android/supl/loc/wifi/WIFIParameter;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v15, "parameter":Lcom/android/supl/loc/wifi/WIFIParameter;
    if-eqz v15, :cond_60

    .line 1128
    const/4 v13, 0x0

    .line 1129
    .local v13, "isServeWIFI":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    if-eqz v1, :cond_53

    .line 1130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    invoke-virtual {v1}, Lcom/android/supl/loc/NetInfo;->getWiFiMACAddress()Ljava/lang/String;

    move-result-object v17

    .line 1131
    .local v17, "stMAcAddress":Ljava/lang/String;
    if-eqz v17, :cond_53

    .line 1132
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1136
    .end local v13    # "isServeWIFI":Z
    .end local v17    # "stMAcAddress":Ljava/lang/String;
    :cond_53
    invoke-virtual {v15, v13}, Lcom/android/supl/loc/wifi/WIFIParameter;->getScanWIFIParameterInfo(Z)[B

    move-result-object v9

    .line 1137
    .local v9, "bWifiInfoData":[B
    if-eqz v9, :cond_60

    .line 1138
    array-length v1, v9

    add-int/2addr v12, v1

    .line 1139
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1122
    .end local v9    # "bWifiInfoData":[B
    .end local v15    # "parameter":Lcom/android/supl/loc/wifi/WIFIParameter;
    :cond_60
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b

    .line 1145
    .end local v16    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_63
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_b7

    .line 1146
    add-int/lit8 v12, v12, 0x1

    .line 1147
    new-array v5, v12, [B

    .line 1149
    .local v5, "bScanData":[B
    const/4 v11, 0x0

    .line 1151
    .local v11, "iOffset":I
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-static {v5, v11, v1}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v11

    .line 1153
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "b$iterator":Ljava/util/Iterator;
    :cond_7a
    :goto_7a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1154
    .local v7, "b":[B
    if-eqz v7, :cond_7a

    .line 1155
    array-length v1, v7

    const/4 v2, 0x0

    invoke-static {v7, v2, v5, v11, v1}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 1156
    array-length v1, v7

    add-int/2addr v11, v1

    goto :goto_7a

    .line 1159
    .end local v7    # "b":[B
    :cond_90
    if-eq v11, v12, :cond_b8

    .line 1160
    const-string/jumbo v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wifi sacn result length invalid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    .end local v5    # "bScanData":[B
    .end local v8    # "b$iterator":Ljava/util/Iterator;
    .end local v10    # "i":I
    .end local v11    # "iOffset":I
    .end local v12    # "iSize":I
    .end local v14    # "nScanResults":I
    .end local v18    # "vecScanDataRes":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    :cond_b7
    :goto_b7
    return-void

    .line 1162
    .restart local v5    # "bScanData":[B
    .restart local v8    # "b$iterator":Ljava/util/Iterator;
    .restart local v10    # "i":I
    .restart local v11    # "iOffset":I
    .restart local v12    # "iSize":I
    .restart local v14    # "nScanResults":I
    .restart local v18    # "vecScanDataRes":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    :cond_b8
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "Wifi sacn result send"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x15

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/supl/loc/SETLocationManager;->fillCellInfo(Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    goto :goto_b7
.end method

.method private startListener()V
    .registers 4

    .prologue
    .line 330
    iget-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isStartListen:Z

    if-nez v1, :cond_23

    .line 331
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isStartListen:Z

    .line 332
    const/16 v0, 0xd1

    .line 337
    .local v0, "events":I
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 338
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "Registered MyPhoneStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isLocationSwithEnable:Z

    if-eqz v1, :cond_24

    .line 341
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 342
    invoke-virtual {p0}, Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V

    .line 347
    .end local v0    # "events":I
    :cond_23
    :goto_23
    return-void

    .line 344
    .restart local v0    # "events":I
    :cond_24
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "Location switch is OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private upDatePhoneInfo()V
    .registers 7

    .prologue
    .line 218
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->m_stIMSI:Ljava/lang/String;

    .line 220
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/supl/loc/SETLocationManager;->getPhoneTypeString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->m_stPhoneType:Ljava/lang/String;

    .line 221
    const-string/jumbo v3, "SUPL20_LocMan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Phone type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/supl/loc/SETLocationManager;->m_stPhoneType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/supl/loc/SETLocationManager;->getNetworkTypeString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->m_stBearerNetworkType:Ljava/lang/String;

    .line 225
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    .line 226
    .local v0, "configManager":Lcom/android/supl/config/ConfigManager;
    const-string/jumbo v3, "msisdn"

    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getPrefSetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 227
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->m_stMSISDN:Ljava/lang/String;

    .line 234
    :cond_55
    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "networkOperator":Ljava/lang/String;
    if-eqz v2, :cond_a4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a4

    .line 237
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_65
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    .line 238
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    .line 239
    const-string/jumbo v3, "SUPL20_LocMan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Network Op Mnc= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " MCC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_a3} :catch_ae

    .line 247
    :goto_a3
    return-void

    .line 245
    :cond_a4
    const-string/jumbo v3, "SUPL20_LocMan"

    const-string/jumbo v4, "NULL Value received for network operator"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 240
    :catch_ae
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_a3
.end method

.method private updateNoSIM_MNC_MCC(Lcom/android/supl/nc/SendToServer;I)V
    .registers 6
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;
    .param p2, "sSessionID"    # I

    .prologue
    .line 291
    const/16 v1, 0xe

    new-array v1, v1, [B

    iput-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "iOffset":I
    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    iget-object v2, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x4

    invoke-static {v1, v0, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 297
    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    const/16 v2, 0x119

    invoke-static {v1, v0, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 298
    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    invoke-static {v1, v0, p2}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 299
    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 301
    return-void
.end method


# virtual methods
.method public forceCellLocationUpdate()V
    .registers 2

    .prologue
    .line 350
    new-instance v0, Lcom/android/supl/loc/SETLocationManager$2;

    invoke-direct {v0, p0}, Lcom/android/supl/loc/SETLocationManager$2;-><init>(Lcom/android/supl/loc/SETLocationManager;)V

    .line 367
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 368
    return-void
.end method

.method public getSIM_Mnc_MCC(I)Lcom/android/supl/nc/SendToServer;
    .registers 9
    .param p1, "sSessionID"    # I

    .prologue
    .line 255
    new-instance v2, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v2}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 256
    .local v2, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_a5

    .line 257
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "stSimOperator":Ljava/lang/String;
    if-eqz v3, :cond_98

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_98

    .line 260
    const/16 v4, 0x12

    :try_start_19
    new-array v4, v4, [B

    iput-object v4, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 264
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    .line 265
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, "iOffset":I
    iget-object v4, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 269
    iget-object v5, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x4

    .line 268
    invoke-static {v4, v1, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 270
    iget-object v4, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 271
    const/16 v5, 0x119

    .line 270
    invoke-static {v4, v1, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 272
    iget-object v4, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    invoke-static {v4, v1, p1}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 273
    iget-object v4, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 274
    iget-object v4, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    iget v5, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    invoke-static {v4, v1, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 275
    iget-object v4, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    iget v5, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    invoke-static {v4, v1, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 276
    const-string/jumbo v4, "SUPL20_LocMan"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Sim Operator Mnc= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " MCC = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_8e} :catch_b2

    .line 287
    .end local v1    # "iOffset":I
    .end local v3    # "stSimOperator":Ljava/lang/String;
    :goto_8e
    const-string/jumbo v4, "SUPL20_LocMan"

    const-string/jumbo v5, " Msg  MSG_PCM_UPDATE_SIM_MCC_MNC"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-object v2

    .line 280
    .restart local v3    # "stSimOperator":Ljava/lang/String;
    :cond_98
    invoke-direct {p0, v2, p1}, Lcom/android/supl/loc/SETLocationManager;->updateNoSIM_MNC_MCC(Lcom/android/supl/nc/SendToServer;I)V

    .line 281
    const-string/jumbo v4, "SUPL20_LocMan"

    const-string/jumbo v5, "NULL Value received for Sim Operator "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 284
    .end local v3    # "stSimOperator":Ljava/lang/String;
    :cond_a5
    invoke-direct {p0, v2, p1}, Lcom/android/supl/loc/SETLocationManager;->updateNoSIM_MNC_MCC(Lcom/android/supl/nc/SendToServer;I)V

    .line 285
    const-string/jumbo v4, "SUPL20_LocMan"

    const-string/jumbo v5, "NULL Value received for TelephonyManager "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 277
    .restart local v3    # "stSimOperator":Ljava/lang/String;
    :catch_b2
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_8e
.end method

.method public registerEmergencyReceiver()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 371
    iget-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCallListen:Z

    if-nez v1, :cond_31

    .line 372
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "register the Emergency Receiver "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->outGoingCallReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->intentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "supl20servicePermission"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 374
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCallListen:Z

    .line 375
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    if-nez v1, :cond_28

    .line 376
    new-instance v1, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    invoke-direct {v1, p0, v5}, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;-><init>(Lcom/android/supl/loc/SETLocationManager;Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;)V

    iput-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    .line 378
    :cond_28
    const/16 v0, 0x20

    .line 379
    .local v0, "iEvent":I
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 381
    .end local v0    # "iEvent":I
    :cond_31
    return-void
.end method

.method public sendCellStaleLocation()V
    .registers 3

    .prologue
    .line 950
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    if-eqz v1, :cond_16

    .line 951
    new-instance v0, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v0}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 952
    .local v0, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    invoke-virtual {v1}, Lcom/android/supl/loc/StaleLocationInfo;->getStaleLocation()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 953
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v1, v0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 955
    .end local v0    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :cond_16
    return-void
.end method

.method public sendSETIDInfo(II)V
    .registers 8
    .param p1, "iSetIDType"    # I
    .param p2, "sSessionId"    # I

    .prologue
    .line 959
    iget-boolean v4, p0, Lcom/android/supl/loc/SETLocationManager;->isLocationSwithEnable:Z

    if-eqz v4, :cond_7

    .line 960
    invoke-direct {p0}, Lcom/android/supl/loc/SETLocationManager;->upDatePhoneInfo()V

    .line 963
    :cond_7
    new-instance v2, Lcom/android/supl/loc/SetID;

    invoke-direct {v2, p1}, Lcom/android/supl/loc/SetID;-><init>(I)V

    .line 964
    .local v2, "setID":Lcom/android/supl/loc/SetID;
    new-instance v1, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v1}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 965
    .local v1, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/4 v0, 0x0

    .line 966
    .local v0, "bData":[B
    packed-switch p1, :pswitch_data_76

    .line 1019
    const-string/jumbo v4, ""

    invoke-virtual {v2, p2, v4}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 1020
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 1025
    :goto_1e
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v4, v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 1026
    return-void

    .line 969
    .local v0, "bData":[B
    :pswitch_24
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager;->m_stMSISDN:Ljava/lang/String;

    invoke-virtual {v2, p2, v4}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 970
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_1e

    .line 975
    .local v0, "bData":[B
    :pswitch_2d
    const-string/jumbo v4, ""

    invoke-virtual {v2, p2, v4}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 976
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_1e

    .line 981
    .local v0, "bData":[B
    :pswitch_37
    const-string/jumbo v4, ""

    invoke-virtual {v2, p2, v4}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 982
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_1e

    .line 987
    .local v0, "bData":[B
    :pswitch_41
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager;->m_stIMSI:Ljava/lang/String;

    invoke-virtual {v2, p2, v4}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 988
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_1e

    .line 993
    .local v0, "bData":[B
    :pswitch_4a
    const-string/jumbo v4, ""

    invoke-virtual {v2, p2, v4}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 994
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_1e

    .line 999
    .local v0, "bData":[B
    :pswitch_54
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    invoke-virtual {v4}, Lcom/android/supl/loc/NetInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    .line 1000
    .local v3, "stIPAddress":Ljava/lang/String;
    invoke-virtual {v2, p2, v3}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 1001
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_1e

    .line 1006
    .end local v3    # "stIPAddress":Ljava/lang/String;
    .local v0, "bData":[B
    :pswitch_61
    const-string/jumbo v4, ""

    invoke-virtual {v2, p2, v4}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 1007
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_1e

    .line 1013
    .local v0, "bData":[B
    :pswitch_6b
    const-string/jumbo v4, ""

    invoke-virtual {v2, p2, v4}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 1014
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_1e

    .line 966
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2d
        :pswitch_37
        :pswitch_41
        :pswitch_4a
        :pswitch_54
        :pswitch_61
        :pswitch_6b
    .end packed-switch
.end method

.method public setCommProcessor(Lcom/android/supl/commprocessor/NDKCommProcessor;)V
    .registers 2
    .param p1, "commProcessor"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 155
    return-void
.end method

.method public startLocationIdListener()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string/jumbo v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    if-nez v1, :cond_3b

    .line 168
    new-instance v1, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;-><init>(Lcom/android/supl/loc/SETLocationManager;)V

    iput-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    .line 170
    :cond_3b
    iget-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isWifiRegister:Z

    if-nez v1, :cond_4c

    .line 171
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    const-string/jumbo v3, "supl20servicePermission"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isWifiRegister:Z

    .line 175
    :cond_4c
    invoke-direct {p0}, Lcom/android/supl/loc/SETLocationManager;->isSIMEnabled()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 176
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, " sim is enable on the SET"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/android/supl/loc/SETLocationManager;->startListener()V

    .line 184
    :goto_5e
    return-void

    .line 181
    :cond_5f
    invoke-direct {p0}, Lcom/android/supl/loc/SETLocationManager;->startListener()V

    .line 182
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, " sim is not enabled on the SET"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e
.end method

.method public stopListening()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 434
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isWifiRegister:Z

    if-eqz v0, :cond_12

    .line 435
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 436
    iput-boolean v2, p0, Lcom/android/supl/loc/SETLocationManager;->isWifiRegister:Z

    .line 438
    :cond_12
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isStartListen:Z

    if-eqz v0, :cond_30

    .line 439
    iput-boolean v2, p0, Lcom/android/supl/loc/SETLocationManager;->isStartListen:Z

    .line 440
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 441
    const-string/jumbo v0, "SUPL20_LocMan"

    const-string/jumbo v1, "De-Registered MyPhoneStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_30
    return-void
.end method

.method public unregisterEmergencyReceiver()V
    .registers 4

    .prologue
    .line 385
    iget-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCallListen:Z

    if-eqz v1, :cond_1f

    .line 386
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->outGoingCallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "iEvents":I
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 389
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCallListen:Z

    .line 390
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "unregister the Emergency Receiver "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v0    # "iEvents":I
    :cond_1f
    return-void
.end method
