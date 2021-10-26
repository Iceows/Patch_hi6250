.class public Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SETLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/SETLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/loc/SETLocationManager;


# direct methods
.method public constructor <init>(Lcom/android/supl/loc/SETLocationManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/supl/loc/SETLocationManager;

    .prologue
    .line 971
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 974
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 976
    .local v7, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 978
    const-string/jumbo v1, "wifi"

    .line 977
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 979
    .local v13, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v14

    .line 980
    .local v14, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " num scan results="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 981
    if-nez v14, :cond_55

    const-string/jumbo v1, "0"

    .line 980
    :goto_2d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 982
    .local v12, "updateMsg":Ljava/lang/String;
    const-string/jumbo v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WIFI_STATE result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1, v14}, Lcom/android/supl/loc/SETLocationManager;->-wrap1(Lcom/android/supl/loc/SETLocationManager;Ljava/util/List;)V

    .line 973
    .end local v12    # "updateMsg":Ljava/lang/String;
    .end local v13    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v14    # "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_54
    :goto_54
    return-void

    .line 981
    .restart local v13    # "wifiManager":Landroid/net/wifi/WifiManager;
    .restart local v14    # "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_55
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2d

    .line 984
    .end local v13    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v14    # "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_5e
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 987
    const-string/jumbo v1, "noConnectivity"

    const/4 v2, 0x0

    .line 986
    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 988
    .local v8, "noConnectivity":Z
    if-eqz v8, :cond_91

    .line 989
    const-string/jumbo v12, "no connectivity"

    .line 993
    .restart local v12    # "updateMsg":Ljava/lang/String;
    :goto_76
    const-string/jumbo v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connectivity result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 991
    .end local v12    # "updateMsg":Ljava/lang/String;
    :cond_91
    const-string/jumbo v12, "connection available"

    .restart local v12    # "updateMsg":Ljava/lang/String;
    goto :goto_76

    .line 995
    .end local v8    # "noConnectivity":Z
    .end local v12    # "updateMsg":Ljava/lang/String;
    :cond_95
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 996
    const-string/jumbo v1, "wifi_state"

    .line 997
    const/4 v2, 0x4

    .line 996
    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 999
    .local v10, "state":I
    const-string/jumbo v11, "unknown"

    .line 1000
    .local v11, "stateString":Ljava/lang/String;
    packed-switch v10, :pswitch_data_114

    .line 1029
    :goto_ae
    const-string/jumbo v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WIFI_STATE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 1002
    :pswitch_c9
    const-string/jumbo v11, "disabled"

    .line 1003
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1}, Lcom/android/supl/loc/SETLocationManager;->-get2(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/loc/NetInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v2}, Lcom/android/supl/loc/SETLocationManager;->-get1(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/commprocessor/NDKCommProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/supl/loc/NetInfo;->sendStaleLocationInfo(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    goto :goto_ae

    .line 1006
    :pswitch_dc
    const-string/jumbo v11, "disabling"

    goto :goto_ae

    .line 1009
    :pswitch_e0
    const-string/jumbo v11, "enabled"

    .line 1010
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1}, Lcom/android/supl/loc/SETLocationManager;->-get2(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/loc/NetInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/loc/NetInfo;->getWiFiMACAddress()Ljava/lang/String;

    move-result-object v9

    .line 1011
    .local v9, "stMACAddress":Ljava/lang/String;
    if-eqz v9, :cond_105

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_105

    .line 1012
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$NetworkStateBroadcastReceiver;->this$0:Lcom/android/supl/loc/SETLocationManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x15

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/supl/loc/SETLocationManager;->-wrap0(Lcom/android/supl/loc/SETLocationManager;Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    goto :goto_ae

    .line 1014
    :cond_105
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "WIFI_STATE not have mac address"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    .line 1018
    .end local v9    # "stMACAddress":Ljava/lang/String;
    :pswitch_10f
    const-string/jumbo v11, "enabling"

    goto :goto_ae

    .line 1000
    nop

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_c9
        :pswitch_10f
        :pswitch_e0
    .end packed-switch
.end method
