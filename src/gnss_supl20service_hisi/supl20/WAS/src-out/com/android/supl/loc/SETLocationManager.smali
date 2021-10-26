.class public Lcom/android/supl/loc/SETLocationManager;
.super Ljava/lang/Object;
.source "SETLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;,
        Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;,
        Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;,
        Lcom/android/supl/loc/SETLocationManager$1;
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

    iget-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCall:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/commprocessor/NDKCommProcessor;
    .registers 2

    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/loc/NetInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/supl/loc/SETLocationManager;)Landroid/telephony/TelephonyManager;
    .registers 2

    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/supl/loc/SETLocationManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCall:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/supl/loc/SETLocationManager;Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V
    .registers 6
    .param p1, "cellLocation"    # Landroid/telephony/CellLocation;
    .param p2, "isFake"    # Z
    .param p3, "iNetWorkType"    # I
    .param p4, "bScanData"    # [B
    .param p5, "cellInfoList"    # Ljava/util/List;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/supl/loc/SETLocationManager;->fillCellInfo(Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/supl/loc/SETLocationManager;Ljava/util/List;)V
    .registers 2
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

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    .line 73
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_stIMSI:Ljava/lang/String;

    .line 78
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_stMSISDN:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_stBearerNetworkType:Ljava/lang/String;

    .line 88
    iput v0, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    .line 93
    iput v0, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    .line 95
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_stPhoneType:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    .line 99
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    .line 101
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    .line 103
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 107
    iput-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isStartListen:Z

    .line 119
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    .line 129
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    .line 130
    iput-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isWifiRegister:Z

    .line 132
    iput-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCall:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCallListen:Z

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->intentFilter:Landroid/content/IntentFilter;

    .line 180
    new-instance v0, Lcom/android/supl/loc/SETLocationManager$1;

    invoke-direct {v0, p0}, Lcom/android/supl/loc/SETLocationManager$1;-><init>(Lcom/android/supl/loc/SETLocationManager;)V

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->outGoingCallReceiver:Landroid/content/BroadcastReceiver;

    .line 358
    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    .line 137
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    .line 138
    new-instance v0, Lcom/android/supl/loc/NetInfo;

    invoke-direct {v0, p1}, Lcom/android/supl/loc/NetInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    .line 140
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    .line 142
    new-instance v0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    invoke-direct {v0, p0, v2}, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;-><init>(Lcom/android/supl/loc/SETLocationManager;Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;)V

    iput-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    .line 136
    return-void
.end method

.method private fakeGSMData()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 676
    new-instance v1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v1}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 677
    .local v1, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    const/16 v0, 0xc83

    const v2, 0xcb1935

    invoke-virtual {v1, v0, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 678
    const/16 v0, 0x194

    iput v0, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    .line 679
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    .line 680
    const-string/jumbo v0, "SUPL20_LocMan"

    const-string/jumbo v2, "fakeGSMData called"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/supl/loc/SETLocationManager;->fillCellInfo(Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    .line 675
    return-void
.end method

.method private fakeLTEData()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 685
    const-string/jumbo v0, "SUPL20_LocMan"

    const-string/jumbo v2, "fakeLTEData called"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const/4 v2, 0x1

    const/16 v3, 0xd

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/supl/loc/SETLocationManager;->fillCellInfo(Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    .line 684
    return-void
.end method

.method private fillCDMACellinfo(Landroid/telephony/CellLocation;)Lcom/android/supl/loc/CdmaCellInfo;
    .registers 5
    .param p1, "cellLoc"    # Landroid/telephony/CellLocation;

    .prologue
    move-object v1, p1

    .line 573
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 574
    .local v1, "cdmaLocation":Landroid/telephony/cdma/CdmaCellLocation;
    new-instance v0, Lcom/android/supl/loc/CdmaCellInfo;

    invoke-direct {v0}, Lcom/android/supl/loc/CdmaCellInfo;-><init>()V

    .line 575
    .local v0, "cdmaCellInfo":Lcom/android/supl/loc/CdmaCellInfo;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v2

    iput v2, v0, Lcom/android/supl/loc/CdmaCellInfo;->m_iBASELAT:I

    .line 576
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v2

    iput v2, v0, Lcom/android/supl/loc/CdmaCellInfo;->m_iBASELONG:I

    .line 577
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v0, Lcom/android/supl/loc/CdmaCellInfo;->m_sBASEID:S

    .line 578
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v0, Lcom/android/supl/loc/CdmaCellInfo;->m_sSID:S

    .line 579
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v0, Lcom/android/supl/loc/CdmaCellInfo;->m_sNID:S

    .line 586
    return-object v0
.end method

.method private declared-synchronized fillCellInfo(Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V
    .registers 36
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

    .line 691
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/supl/loc/SETLocationManager;->upDatePhoneInfo()V

    .line 692
    const/4 v14, 0x0

    .line 693
    .local v14, "isGSM":Z
    const/16 v18, 0x0

    .line 694
    .local v18, "isWCDMA":Z
    const/4 v13, 0x0

    .line 695
    .local v13, "isCDMA":Z
    const/4 v15, 0x0

    .line 696
    .local v15, "isHRDP":Z
    const/16 v17, 0x0

    .line 697
    .local v17, "isUMB":Z
    const/16 v16, 0x0

    .line 698
    .local v16, "isLTE":Z
    const/16 v20, 0x0

    .line 699
    .local v20, "isWLAN_AP":Z
    const/16 v19, 0x0

    .line 700
    .local v19, "isWIMAXBS":Z
    const/4 v5, 0x0

    .line 701
    .local v5, "bLoc":[B
    const/4 v8, 0x0

    .line 702
    .local v8, "iLocDataLen":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/supl/loc/SETLocationManager;->getNetworkTypeString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/supl/loc/SETLocationManager;->m_stBearerNetworkType:Ljava/lang/String;

    .line 703
    const-string/jumbo v27, "SUPL20_LocMan"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "cellInfo NetworkType:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/loc/SETLocationManager;->m_stBearerNetworkType:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-eq v0, v1, :cond_60

    .line 706
    const/16 v27, 0x1

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_218

    .line 707
    :cond_60
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v27, v0

    if-eqz v27, :cond_20a

    .line 708
    const/4 v14, 0x1

    .line 709
    invoke-direct/range {p0 .. p1}, Lcom/android/supl/loc/SETLocationManager;->fillGSMCellinfo(Landroid/telephony/CellLocation;)Lcom/android/supl/loc/GsmCellInfo;

    move-result-object v7

    .line 710
    .local v7, "gsmCellInfo":Lcom/android/supl/loc/GsmCellInfo;
    invoke-virtual {v7}, Lcom/android/supl/loc/GsmCellInfo;->getGSMInfo()[B

    move-result-object v5

    .line 711
    .local v5, "bLoc":[B
    array-length v8, v5

    .line 784
    .end local v5    # "bLoc":[B
    .end local v7    # "gsmCellInfo":Lcom/android/supl/loc/GsmCellInfo;
    :cond_72
    :goto_72
    const/4 v12, 0x0

    .line 785
    .local v12, "iStaleBitLocation":I
    new-instance v23, Lcom/android/supl/nc/SendToServer;

    invoke-direct/range {v23 .. v23}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 786
    .local v23, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/4 v9, 0x4

    .line 787
    .local v9, "iLocationIDStatusLen":I
    const/4 v10, 0x4

    .line 790
    .local v10, "iMesageCodeLen":I
    if-nez v14, :cond_7e

    if-eqz v13, :cond_38f

    .line 794
    :cond_7e
    :goto_7e
    add-int v27, v8, v9

    add-int/lit8 v27, v27, 0x20

    add-int/lit8 v11, v27, 0x4

    .line 796
    .local v11, "iSendPacketSize":I
    add-int/lit8 v27, v11, 0x4

    move/from16 v0, v27

    new-array v4, v0, [B

    .line 798
    .local v4, "bData":[B
    const/16 v22, 0x4

    .line 799
    .local v22, "offset":I
    const/16 v27, 0x10b

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 800
    if-eqz v14, :cond_399

    .line 801
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 802
    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v22

    invoke-static {v5, v0, v4, v1, v8}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 803
    add-int v22, v22, v8

    .line 804
    move/from16 v12, v22

    .line 805
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 810
    :goto_b9
    if-eqz v18, :cond_3a5

    .line 811
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 812
    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v22

    invoke-static {v5, v0, v4, v1, v8}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 813
    add-int v22, v22, v8

    .line 814
    move/from16 v12, v22

    .line 815
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 819
    :goto_dc
    if-eqz v13, :cond_3b1

    .line 820
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 821
    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v22

    invoke-static {v5, v0, v4, v1, v8}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 822
    add-int v22, v22, v8

    .line 823
    move/from16 v12, v22

    .line 824
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 829
    :goto_ff
    if-eqz v15, :cond_3bd

    .line 830
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 831
    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v22

    invoke-static {v5, v0, v4, v1, v8}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 832
    add-int v22, v22, v8

    .line 833
    move/from16 v12, v22

    .line 834
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 838
    :goto_122
    if-eqz v17, :cond_3c9

    .line 839
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 840
    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v22

    invoke-static {v5, v0, v4, v1, v8}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 841
    add-int v22, v22, v8

    .line 842
    move/from16 v12, v22

    .line 843
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 847
    :goto_145
    if-eqz v16, :cond_3d5

    .line 848
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 849
    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v22

    invoke-static {v5, v0, v4, v1, v8}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 850
    add-int v22, v22, v8

    .line 851
    move/from16 v12, v22

    .line 852
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 856
    :goto_168
    if-eqz v20, :cond_3e1

    .line 857
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 858
    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v22

    invoke-static {v5, v0, v4, v1, v8}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 859
    add-int v22, v22, v8

    .line 860
    move/from16 v12, v22

    .line 861
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 865
    :goto_18b
    if-eqz v19, :cond_3ed

    .line 866
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 867
    const/16 v27, 0x0

    move/from16 v0, v27

    move/from16 v1, v22

    invoke-static {v5, v0, v4, v1, v8}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 868
    add-int v22, v22, v8

    .line 869
    move/from16 v12, v22

    .line 870
    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    .line 875
    :goto_1ae
    add-int/lit8 v27, v22, -0x4

    move/from16 v0, v27

    if-eq v11, v0, :cond_1dd

    .line 876
    const-string/jumbo v27, "SUPL20_LocMan"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "invalid size "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ": "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    add-int/lit8 v29, v22, -0x4

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_1dd
    add-int/lit8 v27, v22, -0x4

    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    .line 879
    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 882
    if-eqz v12, :cond_208

    .line 884
    if-eqz v20, :cond_3f9

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v12}, Lcom/android/supl/loc/NetInfo;->setStaleLocationInfo([BI)V
    :try_end_208
    .catchall {:try_start_1 .. :try_end_208} :catchall_215

    :cond_208
    :goto_208
    monitor-exit p0

    .line 690
    return-void

    .line 713
    .end local v4    # "bData":[B
    .end local v9    # "iLocationIDStatusLen":I
    .end local v10    # "iMesageCodeLen":I
    .end local v11    # "iSendPacketSize":I
    .end local v12    # "iStaleBitLocation":I
    .end local v22    # "offset":I
    .end local v23    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    .local v5, "bLoc":[B
    :cond_20a
    :try_start_20a
    const-string/jumbo v27, "SUPL20_LocMan"

    const-string/jumbo v28, "Network type is UMTS but CellLocation is Cdma, just return."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_213
    .catchall {:try_start_20a .. :try_end_213} :catchall_215

    goto/16 :goto_72

    .end local v5    # "bLoc":[B
    .end local v8    # "iLocDataLen":I
    .end local v13    # "isCDMA":Z
    .end local v14    # "isGSM":Z
    .end local v15    # "isHRDP":Z
    .end local v16    # "isLTE":Z
    .end local v17    # "isUMB":Z
    .end local v18    # "isWCDMA":Z
    .end local v19    # "isWIMAXBS":Z
    .end local v20    # "isWLAN_AP":Z
    :catchall_215
    move-exception v27

    monitor-exit p0

    throw v27

    .line 716
    .restart local v5    # "bLoc":[B
    .restart local v8    # "iLocDataLen":I
    .restart local v13    # "isCDMA":Z
    .restart local v14    # "isGSM":Z
    .restart local v15    # "isHRDP":Z
    .restart local v16    # "isLTE":Z
    .restart local v17    # "isUMB":Z
    .restart local v18    # "isWCDMA":Z
    .restart local v19    # "isWIMAXBS":Z
    .restart local v20    # "isWLAN_AP":Z
    :cond_218
    const/16 v27, 0x4

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_22c

    .line 718
    const/4 v13, 0x1

    .line 719
    :try_start_221
    invoke-direct/range {p0 .. p1}, Lcom/android/supl/loc/SETLocationManager;->fillCDMACellinfo(Landroid/telephony/CellLocation;)Lcom/android/supl/loc/CdmaCellInfo;

    move-result-object v6

    .line 720
    .local v6, "cdmaCellInfo":Lcom/android/supl/loc/CdmaCellInfo;
    invoke-virtual {v6}, Lcom/android/supl/loc/CdmaCellInfo;->getCDMAInfo()[B

    move-result-object v5

    .line 721
    .local v5, "bLoc":[B
    array-length v8, v5

    goto/16 :goto_72

    .line 722
    .end local v6    # "cdmaCellInfo":Lcom/android/supl/loc/CdmaCellInfo;
    .local v5, "bLoc":[B
    :cond_22c
    const/16 v27, 0x3

    move/from16 v0, p3

    move/from16 v1, v27

    if-eq v0, v1, :cond_23c

    .line 723
    const/16 v27, 0xa

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_284

    .line 730
    :cond_23c
    const-string/jumbo v27, "SUPL20_LocMan"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Network type is 3G, type is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v27, v0

    if-eqz v27, :cond_2c5

    .line 732
    const/16 v18, 0x1

    .line 733
    new-instance v25, Lcom/android/supl/loc/WcdmaCellInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/supl/loc/WcdmaCellInfo;-><init>(Landroid/telephony/CellLocation;II)V

    .line 734
    .local v25, "wcdmaCellInfo":Lcom/android/supl/loc/WcdmaCellInfo;
    invoke-virtual/range {v25 .. v25}, Lcom/android/supl/loc/WcdmaCellInfo;->getWCDMAInfo()[B

    move-result-object v5

    .line 735
    .local v5, "bLoc":[B
    array-length v8, v5

    goto/16 :goto_72

    .line 724
    .end local v25    # "wcdmaCellInfo":Lcom/android/supl/loc/WcdmaCellInfo;
    .local v5, "bLoc":[B
    :cond_284
    const/16 v27, 0x8

    move/from16 v0, p3

    move/from16 v1, v27

    if-eq v0, v1, :cond_23c

    .line 725
    const/16 v27, 0x9

    move/from16 v0, p3

    move/from16 v1, v27

    if-eq v0, v1, :cond_23c

    .line 726
    const/16 v27, 0xf

    move/from16 v0, p3

    move/from16 v1, v27

    if-eq v0, v1, :cond_23c

    .line 727
    const/16 v27, 0x12

    move/from16 v0, p3

    move/from16 v1, v27

    if-eq v0, v1, :cond_23c

    .line 728
    const/16 v27, 0x11

    move/from16 v0, p3

    move/from16 v1, v27

    if-eq v0, v1, :cond_23c

    .line 739
    const/16 v27, 0x14

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_2d0

    .line 740
    const/16 v17, 0x1

    .line 741
    new-instance v24, Lcom/android/supl/loc/UMBCellInfo;

    invoke-direct/range {v24 .. v24}, Lcom/android/supl/loc/UMBCellInfo;-><init>()V

    .line 742
    .local v24, "umbCellInfo":Lcom/android/supl/loc/UMBCellInfo;
    invoke-virtual/range {v24 .. v24}, Lcom/android/supl/loc/UMBCellInfo;->setDummyData()V

    .line 743
    invoke-virtual/range {v24 .. v24}, Lcom/android/supl/loc/UMBCellInfo;->getUMBCellInfo()[B

    move-result-object v5

    .line 744
    .local v5, "bLoc":[B
    array-length v8, v5

    goto/16 :goto_72

    .line 737
    .end local v24    # "umbCellInfo":Lcom/android/supl/loc/UMBCellInfo;
    .local v5, "bLoc":[B
    :cond_2c5
    const-string/jumbo v27, "SUPL20_LocMan"

    const-string/jumbo v28, "Network type is UMTS but CellLocation is Cdma, just return."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_72

    .line 745
    :cond_2d0
    const/16 v27, 0x15

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_2f5

    .line 746
    const/16 v20, 0x1

    .line 747
    if-eqz p4, :cond_2e1

    .line 748
    move-object/from16 v5, p4

    .line 755
    .local v5, "bLoc":[B
    :goto_2de
    array-length v8, v5

    goto/16 :goto_72

    .line 751
    .local v5, "bLoc":[B
    :cond_2e1
    new-instance v26, Lcom/android/supl/loc/wifi/WIFIParameter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/supl/loc/NetInfo;->getWiFiMACAddress()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lcom/android/supl/loc/wifi/WIFIParameter;-><init>(Ljava/lang/String;)V

    .line 752
    .local v26, "wifiParameter":Lcom/android/supl/loc/wifi/WIFIParameter;
    invoke-virtual/range {v26 .. v26}, Lcom/android/supl/loc/wifi/WIFIParameter;->getWIFIParameterInfo()[B

    move-result-object v5

    .local v5, "bLoc":[B
    goto :goto_2de

    .line 756
    .end local v26    # "wifiParameter":Lcom/android/supl/loc/wifi/WIFIParameter;
    .local v5, "bLoc":[B
    :cond_2f5
    const/16 v27, 0xd

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_72

    .line 757
    const-string/jumbo v27, "SUPL20_LocMan"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Network type is 4G, type is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/16 v21, 0x0

    .line 759
    .local v21, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    sget v27, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v28, 0x11

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_377

    .line 760
    if-eqz p5, :cond_36c

    .line 761
    invoke-static/range {p5 .. p5}, Lcom/android/supl/loc/LTECellInfo;->getCellInfo_To_LTECellInfo(Ljava/util/List;)Lcom/android/supl/loc/LTECellInfo;

    move-result-object v21

    .line 770
    .local v21, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    :goto_32d
    if-nez v21, :cond_345

    .line 771
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/supl/loc/LTECellInfo;->getCellLocation_To_LTECellInfo(Landroid/telephony/CellLocation;II)Lcom/android/supl/loc/LTECellInfo;

    move-result-object v21

    .line 773
    :cond_345
    if-eqz v21, :cond_382

    .line 774
    invoke-virtual/range {v21 .. v21}, Lcom/android/supl/loc/LTECellInfo;->getLTECellInfo()[B

    move-result-object v5

    .line 775
    .local v5, "bLoc":[B
    array-length v8, v5

    .line 776
    const-string/jumbo v27, "SUPL20_LocMan"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "LTE data send.."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const/16 v16, 0x1

    goto/16 :goto_72

    .line 764
    .local v5, "bLoc":[B
    .local v21, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    :cond_36c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/supl/loc/LTECellInfo;->getAPILTECellInfo(Landroid/content/Context;)Lcom/android/supl/loc/LTECellInfo;

    move-result-object v21

    .local v21, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    goto :goto_32d

    .line 768
    .local v21, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    :cond_377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/supl/loc/LTECellInfo;->getNONAPILTECellInfo(Landroid/content/Context;)Lcom/android/supl/loc/LTECellInfo;

    move-result-object v21

    .local v21, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    goto :goto_32d

    .line 780
    :cond_382
    const/16 v16, 0x0

    .line 781
    const-string/jumbo v27, "SUPL20_LocMan"

    const-string/jumbo v28, "LTE data  is null"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_72

    .line 790
    .end local v5    # "bLoc":[B
    .end local v21    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .restart local v9    # "iLocationIDStatusLen":I
    .restart local v10    # "iMesageCodeLen":I
    .restart local v12    # "iStaleBitLocation":I
    .restart local v23    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :cond_38f
    if-nez v18, :cond_7e

    if-nez v20, :cond_7e

    if-nez v16, :cond_7e

    .line 791
    const/4 v8, 0x0

    .line 792
    const/4 v9, 0x0

    goto/16 :goto_7e

    .line 807
    .restart local v4    # "bData":[B
    .restart local v11    # "iSendPacketSize":I
    .restart local v22    # "offset":I
    :cond_399
    const/16 v27, 0x0

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    goto/16 :goto_b9

    .line 817
    :cond_3a5
    const/16 v27, 0x0

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    goto/16 :goto_dc

    .line 826
    :cond_3b1
    const/16 v27, 0x0

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    goto/16 :goto_ff

    .line 836
    :cond_3bd
    const/16 v27, 0x0

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    goto/16 :goto_122

    .line 845
    :cond_3c9
    const/16 v27, 0x0

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    goto/16 :goto_145

    .line 854
    :cond_3d5
    const/16 v27, 0x0

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    goto/16 :goto_168

    .line 863
    :cond_3e1
    const/16 v27, 0x0

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    goto/16 :goto_18b

    .line 872
    :cond_3ed
    const/16 v27, 0x0

    move/from16 v0, v22

    move/from16 v1, v27

    invoke-static {v4, v0, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v22

    goto/16 :goto_1ae

    .line 888
    :cond_3f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    move-object/from16 v27, v0

    if-nez v27, :cond_410

    .line 889
    new-instance v27, Lcom/android/supl/loc/StaleLocationInfo;

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v12}, Lcom/android/supl/loc/StaleLocationInfo;-><init>([BI)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    goto/16 :goto_208

    .line 891
    :cond_410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v12}, Lcom/android/supl/loc/StaleLocationInfo;->upDateInfo([BI)V
    :try_end_41b
    .catchall {:try_start_221 .. :try_end_41b} :catchall_215

    goto/16 :goto_208
.end method

.method private fillGSMCellinfo(Landroid/telephony/CellLocation;)Lcom/android/supl/loc/GsmCellInfo;
    .registers 5
    .param p1, "cellLoc"    # Landroid/telephony/CellLocation;

    .prologue
    move-object v0, p1

    .line 591
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 592
    .local v0, "gsmCell":Landroid/telephony/gsm/GsmCellLocation;
    new-instance v1, Lcom/android/supl/loc/GsmCellInfo;

    invoke-direct {v1}, Lcom/android/supl/loc/GsmCellInfo;-><init>()V

    .line 594
    .local v1, "gsmCellInfo":Lcom/android/supl/loc/GsmCellInfo;
    iget v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    iput v2, v1, Lcom/android/supl/loc/GsmCellInfo;->m_iMNC:I

    .line 595
    iget v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    iput v2, v1, Lcom/android/supl/loc/GsmCellInfo;->m_iMCC:I

    .line 596
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    iput v2, v1, Lcom/android/supl/loc/GsmCellInfo;->m_iLAC:I

    .line 597
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    iput v2, v1, Lcom/android/supl/loc/GsmCellInfo;->m_iCellID:I

    .line 599
    return-object v1
.end method

.method private getNetworkTypeString(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 603
    const-string/jumbo v0, "Unknown"

    .line 605
    .local v0, "typeString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_56

    .line 664
    const-string/jumbo v0, "NOT RETERIVE"

    .line 672
    :goto_9
    return-object v0

    .line 607
    :pswitch_a
    const-string/jumbo v0, "EDGE"

    goto :goto_9

    .line 610
    :pswitch_e
    const-string/jumbo v0, "GPRS"

    goto :goto_9

    .line 613
    :pswitch_12
    const-string/jumbo v0, "UMTS"

    goto :goto_9

    .line 616
    :pswitch_16
    const-string/jumbo v0, "CDMA"

    goto :goto_9

    .line 619
    :pswitch_1a
    const-string/jumbo v0, "UNKNOWN"

    goto :goto_9

    .line 622
    :pswitch_1e
    const-string/jumbo v0, "1xRTT"

    goto :goto_9

    .line 625
    :pswitch_22
    const-string/jumbo v0, "EVDO_0"

    goto :goto_9

    .line 628
    :pswitch_26
    const-string/jumbo v0, "EVDO_A"

    goto :goto_9

    .line 631
    :pswitch_2a
    const-string/jumbo v0, "HSPA"

    goto :goto_9

    .line 634
    :pswitch_2e
    const-string/jumbo v0, "HSDPA"

    goto :goto_9

    .line 637
    :pswitch_32
    const-string/jumbo v0, "HSUPA"

    goto :goto_9

    .line 640
    :pswitch_36
    const-string/jumbo v0, "HSPAP"

    goto :goto_9

    .line 643
    :pswitch_3a
    const-string/jumbo v0, "IDEN"

    goto :goto_9

    .line 646
    :pswitch_3e
    const-string/jumbo v0, "EVDO_B"

    goto :goto_9

    .line 649
    :pswitch_42
    const-string/jumbo v0, "LTE"

    goto :goto_9

    .line 652
    :pswitch_46
    const-string/jumbo v0, "EHRPD"

    goto :goto_9

    .line 655
    :pswitch_4a
    const-string/jumbo v0, "GSM"

    goto :goto_9

    .line 658
    :pswitch_4e
    const-string/jumbo v0, "TDS"

    goto :goto_9

    .line 661
    :pswitch_52
    const-string/jumbo v0, "TDS-DPA"

    goto :goto_9

    .line 605
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
        :pswitch_52
    .end packed-switch
.end method

.method private getPhoneTypeString(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 551
    const-string/jumbo v0, "Unknown"

    .line 553
    .local v0, "typeString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_16

    .line 565
    const-string/jumbo v0, "NOT RETERIVE"

    .line 569
    :goto_9
    return-object v0

    .line 555
    :pswitch_a
    const-string/jumbo v0, "GSM"

    goto :goto_9

    .line 558
    :pswitch_e
    const-string/jumbo v0, "CDMA"

    goto :goto_9

    .line 562
    :pswitch_12
    const-string/jumbo v0, "UNKNOWN"

    goto :goto_9

    .line 553
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_a
        :pswitch_e
    .end packed-switch
.end method

.method private isSIMEnabled()Z
    .registers 6

    .prologue
    .line 290
    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 291
    .local v1, "state":I
    const/4 v0, 0x0

    .line 292
    .local v0, "isSIMStateEnabled":Z
    packed-switch v1, :pswitch_data_2a

    .line 311
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

    .line 312
    return v0

    .line 295
    :pswitch_25
    const/4 v0, 0x1

    .line 296
    goto :goto_a

    .line 304
    :pswitch_27
    const/4 v0, 0x0

    .line 305
    goto :goto_a

    .line 292
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
    .line 1035
    .local p1, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz p1, :cond_b7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b7

    .line 1036
    const/4 v12, 0x0

    .line 1037
    .local v12, "iSize":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    .line 1038
    .local v14, "nScanResults":I
    const/16 v1, 0x14

    if-le v14, v1, :cond_13

    .line 1039
    const/16 v14, 0x14

    .line 1041
    :cond_13
    new-instance v18, Ljava/util/Vector;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/util/Vector;-><init>(I)V

    .line 1042
    .local v18, "vecScanDataRes":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1b
    if-ge v10, v14, :cond_63

    .line 1043
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/ScanResult;

    .line 1045
    .local v16, "scanResult":Landroid/net/wifi/ScanResult;
    if-eqz v16, :cond_60

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v1, :cond_60

    .line 1046
    new-instance v15, Lcom/android/supl/loc/wifi/WIFIParameter;

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v15, v1}, Lcom/android/supl/loc/wifi/WIFIParameter;-><init>(Ljava/lang/String;)V

    .line 1047
    .local v15, "parameter":Lcom/android/supl/loc/wifi/WIFIParameter;
    if-eqz v15, :cond_60

    .line 1048
    const/4 v13, 0x0

    .line 1049
    .local v13, "isServeWIFI":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    if-eqz v1, :cond_53

    .line 1050
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    invoke-virtual {v1}, Lcom/android/supl/loc/NetInfo;->getWiFiMACAddress()Ljava/lang/String;

    move-result-object v17

    .line 1051
    .local v17, "stMAcAddress":Ljava/lang/String;
    if-eqz v17, :cond_53

    .line 1052
    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1056
    .end local v13    # "isServeWIFI":Z
    .end local v17    # "stMAcAddress":Ljava/lang/String;
    :cond_53
    invoke-virtual {v15, v13}, Lcom/android/supl/loc/wifi/WIFIParameter;->getScanWIFIParameterInfo(Z)[B

    move-result-object v9

    .line 1057
    .local v9, "bWifiInfoData":[B
    if-eqz v9, :cond_60

    .line 1058
    array-length v1, v9

    add-int/2addr v12, v1

    .line 1059
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1042
    .end local v9    # "bWifiInfoData":[B
    .end local v15    # "parameter":Lcom/android/supl/loc/wifi/WIFIParameter;
    :cond_60
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b

    .line 1065
    .end local v16    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_63
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_b7

    .line 1066
    add-int/lit8 v12, v12, 0x1

    .line 1067
    new-array v5, v12, [B

    .line 1069
    .local v5, "bScanData":[B
    const/4 v11, 0x0

    .line 1071
    .local v11, "iOffset":I
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-static {v5, v11, v1}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v11

    .line 1073
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

    .line 1074
    .local v7, "b":[B
    if-eqz v7, :cond_7a

    .line 1075
    array-length v1, v7

    const/4 v2, 0x0

    invoke-static {v7, v2, v5, v11, v1}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 1076
    array-length v1, v7

    add-int/2addr v11, v1

    goto :goto_7a

    .line 1079
    .end local v7    # "b":[B
    :cond_90
    if-eq v11, v12, :cond_b8

    .line 1080
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

    .line 1034
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

    .line 1082
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

    .line 1083
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
    .line 317
    iget-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isStartListen:Z

    if-nez v1, :cond_1f

    .line 318
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isStartListen:Z

    .line 319
    const/16 v0, 0xd1

    .line 324
    .local v0, "events":I
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 325
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "Registered MyPhoneStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 327
    invoke-virtual {p0}, Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V

    .line 315
    .end local v0    # "events":I
    :cond_1f
    return-void
.end method

.method private upDatePhoneInfo()V
    .registers 6

    .prologue
    .line 211
    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_stIMSI:Ljava/lang/String;

    .line 212
    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/supl/loc/SETLocationManager;->getPhoneTypeString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_stPhoneType:Ljava/lang/String;

    .line 213
    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/supl/loc/SETLocationManager;->getNetworkTypeString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_stBearerNetworkType:Ljava/lang/String;

    .line 214
    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_stMSISDN:Ljava/lang/String;

    .line 215
    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/supl/loc/SETLocationManager;->getPhoneTypeString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_stPhoneType:Ljava/lang/String;

    .line 216
    const-string/jumbo v2, "SUPL20_LocMan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Phone type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager;->m_stPhoneType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "networkOperator":Ljava/lang/String;
    if-eqz v1, :cond_9f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9f

    .line 224
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_60
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    .line 225
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    .line 226
    const-string/jumbo v2, "SUPL20_LocMan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Network Op Mnc= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " MCC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_9e} :catch_a9

    .line 209
    :goto_9e
    return-void

    .line 232
    :cond_9f
    const-string/jumbo v2, "SUPL20_LocMan"

    const-string/jumbo v3, "NULL Value received for network operator"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 227
    :catch_a9
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_9e
.end method

.method private updateNoSIM_MNC_MCC(Lcom/android/supl/nc/SendToServer;I)V
    .registers 6
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;
    .param p2, "sSessionID"    # I

    .prologue
    .line 278
    const/16 v1, 0xe

    new-array v1, v1, [B

    iput-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "iOffset":I
    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    iget-object v2, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x4

    invoke-static {v1, v0, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 284
    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    const/16 v2, 0x119

    invoke-static {v1, v0, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 285
    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    invoke-static {v1, v0, p2}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v0

    .line 286
    iget-object v1, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 277
    return-void
.end method


# virtual methods
.method public forceCellLocationUpdate()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 336
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 337
    .local v3, "iNetWorkType":I
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 338
    .local v1, "cellLoc":Landroid/telephony/CellLocation;
    if-nez v1, :cond_19

    .line 339
    const-string/jumbo v0, "SUPL20_LocMan"

    const-string/jumbo v2, "tm.getCellLocation() returned null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_18
    return-void

    .line 341
    :cond_19
    const-string/jumbo v0, "SUPL20_LocMan"

    const-string/jumbo v2, "tm.getCellLocation() returned non-null "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/supl/loc/SETLocationManager;->fillCellInfo(Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    goto :goto_18
.end method

.method public getSIM_Mnc_MCC(I)Lcom/android/supl/nc/SendToServer;
    .registers 9
    .param p1, "sSessionID"    # I

    .prologue
    .line 242
    new-instance v2, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v2}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 243
    .local v2, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_a5

    .line 244
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "stSimOperator":Ljava/lang/String;
    if-eqz v3, :cond_98

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_98

    .line 247
    const/16 v4, 0x12

    :try_start_19
    new-array v4, v4, [B

    iput-object v4, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 251
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    .line 252
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "iOffset":I
    iget-object v4, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 256
    iget-object v5, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x4

    .line 255
    invoke-static {v4, v1, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 257
    iget-object v4, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 258
    const/16 v5, 0x119

    .line 257
    invoke-static {v4, v1, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 259
    iget-object v4, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    invoke-static {v4, v1, p1}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 260
    iget-object v4, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 261
    iget-object v4, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    iget v5, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMcc:I

    invoke-static {v4, v1, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 262
    iget-object v4, v2, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    iget v5, p0, Lcom/android/supl/loc/SETLocationManager;->m_iMnc:I

    invoke-static {v4, v1, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 263
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

    .line 274
    .end local v1    # "iOffset":I
    .end local v3    # "stSimOperator":Ljava/lang/String;
    :goto_8e
    const-string/jumbo v4, "SUPL20_LocMan"

    const-string/jumbo v5, " Msg  MSG_PCM_UPDATE_SIM_MCC_MNC"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-object v2

    .line 267
    .restart local v3    # "stSimOperator":Ljava/lang/String;
    :cond_98
    invoke-direct {p0, v2, p1}, Lcom/android/supl/loc/SETLocationManager;->updateNoSIM_MNC_MCC(Lcom/android/supl/nc/SendToServer;I)V

    .line 268
    const-string/jumbo v4, "SUPL20_LocMan"

    const-string/jumbo v5, "NULL Value received for Sim Operator "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 271
    .end local v3    # "stSimOperator":Ljava/lang/String;
    :cond_a5
    invoke-direct {p0, v2, p1}, Lcom/android/supl/loc/SETLocationManager;->updateNoSIM_MNC_MCC(Lcom/android/supl/nc/SendToServer;I)V

    .line 272
    const-string/jumbo v4, "SUPL20_LocMan"

    const-string/jumbo v5, "NULL Value received for TelephonyManager "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 264
    .restart local v3    # "stSimOperator":Ljava/lang/String;
    :catch_b2
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_8e
.end method

.method public registerEmergencyReceiver()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 347
    iget-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCallListen:Z

    if-nez v1, :cond_2e

    .line 348
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "register the Emergency Receiver "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->outGoingCallReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/supl/loc/SETLocationManager;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 350
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCallListen:Z

    .line 351
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    if-nez v1, :cond_25

    .line 352
    new-instance v1, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    invoke-direct {v1, p0, v4}, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;-><init>(Lcom/android/supl/loc/SETLocationManager;Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;)V

    iput-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    .line 354
    :cond_25
    const/16 v0, 0x20

    .line 355
    .local v0, "iEvent":I
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 346
    .end local v0    # "iEvent":I
    :cond_2e
    return-void
.end method

.method public sendCellStaleLocation()V
    .registers 3

    .prologue
    .line 898
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    if-eqz v1, :cond_16

    .line 899
    new-instance v0, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v0}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 900
    .local v0, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    invoke-virtual {v1}, Lcom/android/supl/loc/StaleLocationInfo;->getStaleLocation()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 901
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v1, v0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 897
    .end local v0    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :cond_16
    return-void
.end method

.method public sendSETIDInfo(II)V
    .registers 8
    .param p1, "iSetIDType"    # I
    .param p2, "sSessionId"    # I

    .prologue
    .line 905
    invoke-direct {p0}, Lcom/android/supl/loc/SETLocationManager;->upDatePhoneInfo()V

    .line 906
    new-instance v2, Lcom/android/supl/loc/SetID;

    invoke-direct {v2, p1}, Lcom/android/supl/loc/SetID;-><init>(I)V

    .line 907
    .local v2, "setID":Lcom/android/supl/loc/SetID;
    new-instance v1, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v1}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 908
    .local v1, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/4 v0, 0x0

    .line 909
    .local v0, "bData":[B
    packed-switch p1, :pswitch_data_72

    .line 962
    const-string/jumbo v4, ""

    invoke-virtual {v2, p2, v4}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 963
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 968
    :goto_1a
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v4, v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 904
    return-void

    .line 912
    .local v0, "bData":[B
    :pswitch_20
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager;->m_stMSISDN:Ljava/lang/String;

    invoke-virtual {v2, p2, v4}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 913
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_1a

    .line 918
    .local v0, "bData":[B
    :pswitch_29
    const-string/jumbo v4, ""

    invoke-virtual {v2, p2, v4}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 919
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_1a

    .line 924
    .local v0, "bData":[B
    :pswitch_33
    const-string/jumbo v4, ""

    invoke-virtual {v2, p2, v4}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 925
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_1a

    .line 930
    .local v0, "bData":[B
    :pswitch_3d
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager;->m_stIMSI:Ljava/lang/String;

    invoke-virtual {v2, p2, v4}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 931
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_1a

    .line 936
    .local v0, "bData":[B
    :pswitch_46
    const-string/jumbo v4, ""

    invoke-virtual {v2, p2, v4}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 937
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_1a

    .line 942
    .local v0, "bData":[B
    :pswitch_50
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager;->mNetInfo:Lcom/android/supl/loc/NetInfo;

    invoke-virtual {v4}, Lcom/android/supl/loc/NetInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    .line 943
    .local v3, "stIPAddress":Ljava/lang/String;
    invoke-virtual {v2, p2, v3}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 944
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_1a

    .line 949
    .end local v3    # "stIPAddress":Ljava/lang/String;
    .local v0, "bData":[B
    :pswitch_5d
    const-string/jumbo v4, ""

    invoke-virtual {v2, p2, v4}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 950
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_1a

    .line 956
    .local v0, "bData":[B
    :pswitch_67
    const-string/jumbo v4, ""

    invoke-virtual {v2, p2, v4}, Lcom/android/supl/loc/SetID;->getSetIDBuff(ILjava/lang/String;)[B

    move-result-object v0

    .line 957
    .local v0, "bData":[B
    iput-object v0, v1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    goto :goto_1a

    .line 909
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_20
        :pswitch_29
        :pswitch_33
        :pswitch_3d
        :pswitch_46
        :pswitch_50
        :pswitch_5d
        :pswitch_67
    .end packed-switch
.end method

.method public setCommProcessor(Lcom/android/supl/commprocessor/NDKCommProcessor;)V
    .registers 2
    .param p1, "commProcessor"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager;->mCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 146
    return-void
.end method

.method public startLocationIdListener()V
    .registers 4

    .prologue
    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string/jumbo v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    if-nez v1, :cond_34

    .line 161
    new-instance v1, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;-><init>(Lcom/android/supl/loc/SETLocationManager;)V

    iput-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    .line 163
    :cond_34
    iget-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isWifiRegister:Z

    if-nez v1, :cond_42

    .line 164
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isWifiRegister:Z

    .line 168
    :cond_42
    invoke-direct {p0}, Lcom/android/supl/loc/SETLocationManager;->isSIMEnabled()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 169
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, " sim is enable on the SET"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0}, Lcom/android/supl/loc/SETLocationManager;->startListener()V

    .line 151
    :goto_54
    return-void

    .line 174
    :cond_55
    invoke-direct {p0}, Lcom/android/supl/loc/SETLocationManager;->startListener()V

    .line 175
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, " sim is not enabled on the SET"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method public stopListening()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 410
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isWifiRegister:Z

    if-eqz v0, :cond_12

    .line 411
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mWIFIReceiver:Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 412
    iput-boolean v2, p0, Lcom/android/supl/loc/SETLocationManager;->isWifiRegister:Z

    .line 414
    :cond_12
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/android/supl/loc/SETLocationManager;->isStartListen:Z

    if-eqz v0, :cond_30

    .line 415
    iput-boolean v2, p0, Lcom/android/supl/loc/SETLocationManager;->isStartListen:Z

    .line 416
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mMyPhoneStateListener:Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 417
    const-string/jumbo v0, "SUPL20_LocMan"

    const-string/jumbo v1, "De-Registered MyPhoneStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_30
    return-void
.end method

.method public unregisterEmergencyReceiver()V
    .registers 4

    .prologue
    .line 361
    iget-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCallListen:Z

    if-eqz v1, :cond_1f

    .line 362
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->outGoingCallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "iEvents":I
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager;->tm:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager;->mCallListener:Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 365
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/loc/SETLocationManager;->isEmergencyCallListen:Z

    .line 366
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "unregister the Emergency Receiver "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v0    # "iEvents":I
    :cond_1f
    return-void
.end method
