.class public Lcom/android/supl/loc/NetInfo;
.super Ljava/lang/Object;
.source "NetInfo.java"


# instance fields
.field private connManager:Landroid/net/ConnectivityManager;

.field private context:Landroid/content/Context;

.field private mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

.field private wifiInfo:Landroid/net/wifi/WifiInfo;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->connManager:Landroid/net/ConnectivityManager;

    .line 60
    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 62
    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 64
    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->context:Landroid/content/Context;

    .line 66
    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    .line 68
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->connManager:Landroid/net/ConnectivityManager;

    .line 69
    iput-object p1, p0, Lcom/android/supl/loc/NetInfo;->context:Landroid/content/Context;

    .line 70
    invoke-virtual {p0}, Lcom/android/supl/loc/NetInfo;->initWIFIManager()V

    .line 67
    return-void
.end method


# virtual methods
.method public getCurrentNetworkType()I
    .registers 4

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "iConnType":I
    iget-object v2, p0, Lcom/android/supl/loc/NetInfo;->connManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_6

    .line 96
    return v0

    .line 98
    :cond_6
    iget-object v2, p0, Lcom/android/supl/loc/NetInfo;->connManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 99
    .local v1, "netinfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_12

    .line 100
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 102
    :cond_12
    return v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .registers 8

    .prologue
    .line 206
    const-string/jumbo v4, ""

    .line 209
    .local v4, "ipaddress":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 210
    .local v2, "enumnet":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    const/4 v5, 0x0

    .line 211
    .local v5, "netinterface":Ljava/net/NetworkInterface;
    if-eqz v2, :cond_35

    .line 212
    .end local v5    # "netinterface":Ljava/net/NetworkInterface;
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 213
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 215
    .local v5, "netinterface":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumip":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1a
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 217
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 219
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 220
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_2f} :catch_31

    move-result-object v4

    goto :goto_a

    .line 227
    .end local v1    # "enumip":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2    # "enumnet":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v5    # "netinterface":Ljava/net/NetworkInterface;
    :catch_31
    move-exception v0

    .line 228
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 231
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_35
    return-object v4
.end method

.method public getLinkSpeed()Ljava/lang/String;
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_c

    .line 168
    :cond_8
    const-string/jumbo v0, "0Mbs"

    return-object v0

    .line 170
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Mbs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupplicantDeatils()Ljava/lang/String;
    .registers 4

    .prologue
    .line 185
    iget-object v2, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    .line 186
    .local v1, "ss":Landroid/net/wifi/SupplicantState;
    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 187
    .local v0, "detailedState":Landroid/net/NetworkInfo$DetailedState;
    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getWiFiBSSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_c

    .line 158
    :cond_8
    const-string/jumbo v0, ""

    return-object v0

    .line 160
    :cond_c
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWiFiMACAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_c

    .line 128
    :cond_8
    const-string/jumbo v0, ""

    return-object v0

    .line 130
    :cond_c
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWiFiRssi()I
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_a

    .line 148
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_a
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    return v0
.end method

.method public getWiFiSSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_c

    .line 138
    :cond_8
    const-string/jumbo v0, ""

    return-object v0

    .line 140
    :cond_c
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiIpAddress()Ljava/lang/String;
    .registers 6

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_c

    .line 118
    :cond_8
    const-string/jumbo v1, ""

    return-object v1

    .line 120
    :cond_c
    iget-object v1, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 122
    .local v0, "ipAddress":I
    const-string/jumbo v1, "%d.%d.%d.%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    and-int/lit16 v3, v0, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 123
    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    shr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 122
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public initWIFIManager()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->context:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 77
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 75
    return-void
.end method

.method public isNetworkOn()Z
    .registers 5

    .prologue
    .line 108
    iget-object v2, p0, Lcom/android/supl/loc/NetInfo;->context:Landroid/content/Context;

    .line 109
    const-string/jumbo v3, "connectivity"

    .line 108
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 111
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_25

    .line 112
    const/4 v2, 0x1

    .line 111
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 112
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 111
    if-ne v2, v3, :cond_27

    :cond_25
    const/4 v1, 0x1

    .line 113
    .local v1, "connected":Z
    :goto_26
    return v1

    .line 111
    .end local v1    # "connected":Z
    :cond_27
    const/4 v1, 0x0

    .restart local v1    # "connected":Z
    goto :goto_26
.end method

.method public isOnline()Z
    .registers 5

    .prologue
    .line 84
    iget-object v2, p0, Lcom/android/supl/loc/NetInfo;->context:Landroid/content/Context;

    .line 85
    const-string/jumbo v3, "connectivity"

    .line 84
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 86
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 87
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 88
    const/4 v2, 0x1

    return v2

    .line 90
    :cond_19
    const/4 v2, 0x0

    return v2
.end method

.method public isWiFiEnabled()Z
    .registers 3

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_b

    .line 179
    iget-object v1, p0, Lcom/android/supl/loc/NetInfo;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 182
    .end local v0    # "isEnabled":Z
    :cond_b
    return v0
.end method

.method public sendStaleLocationInfo(Lcom/android/supl/commprocessor/NDKCommProcessor;)V
    .registers 4
    .param p1, "commandProcessor"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/supl/loc/NetInfo;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    if-eqz v1, :cond_14

    .line 191
    new-instance v0, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v0}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 192
    .local v0, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iget-object v1, p0, Lcom/android/supl/loc/NetInfo;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    invoke-virtual {v1}, Lcom/android/supl/loc/StaleLocationInfo;->getStaleLocation()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 193
    invoke-virtual {p1, v0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 189
    .end local v0    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :cond_14
    return-void
.end method

.method public setStaleLocationInfo([BI)V
    .registers 4
    .param p1, "bData"    # [B
    .param p2, "iStaleBitLocation"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    if-nez v0, :cond_c

    .line 199
    new-instance v0, Lcom/android/supl/loc/StaleLocationInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/supl/loc/StaleLocationInfo;-><init>([BI)V

    iput-object v0, p0, Lcom/android/supl/loc/NetInfo;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    .line 197
    :goto_b
    return-void

    .line 202
    :cond_c
    iget-object v0, p0, Lcom/android/supl/loc/NetInfo;->mStaleLocationInfo:Lcom/android/supl/loc/StaleLocationInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/supl/loc/StaleLocationInfo;->upDateInfo([BI)V

    goto :goto_b
.end method
