.class Lcom/android/supl/nc/NetworkController$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/nc/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/nc/NetworkController;


# direct methods
.method constructor <init>(Lcom/android/supl/nc/NetworkController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/supl/nc/NetworkController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/supl/nc/NetworkController$1;->this$0:Lcom/android/supl/nc/NetworkController;

    .line 1111
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 10
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v7, 0x0

    .line 1114
    iget-object v4, p0, Lcom/android/supl/nc/NetworkController$1;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v4}, Lcom/android/supl/nc/NetworkController;->-get1(Lcom/android/supl/nc/NetworkController;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1115
    .local v2, "info":Landroid/net/NetworkInfo;
    if-nez v2, :cond_e

    .line 1116
    return-void

    .line 1118
    :cond_e
    const-string/jumbo v4, "SUPL20_NC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Network onAvailable NetworkInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 1120
    .local v3, "isConnected":Z
    if-eqz v3, :cond_71

    .line 1122
    iget-object v4, p0, Lcom/android/supl/nc/NetworkController$1;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v4}, Lcom/android/supl/nc/NetworkController;->-get2(Lcom/android/supl/nc/NetworkController;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 1123
    iget-object v4, p0, Lcom/android/supl/nc/NetworkController$1;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v4, v4, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-nez v4, :cond_6b

    .line 1125
    :try_start_3c
    iget-object v4, p0, Lcom/android/supl/nc/NetworkController$1;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v4}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 1126
    .local v1, "inetList":[Ljava/net/InetAddress;
    iget-object v4, p0, Lcom/android/supl/nc/NetworkController$1;->this$0:Lcom/android/supl/nc/NetworkController;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    iput-object v5, v4, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1127
    const-string/jumbo v4, "SUPL20_NC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DNS query(use network.getAllByName) success: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/supl/nc/NetworkController$1;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v6, v6, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/net/UnknownHostException; {:try_start_3c .. :try_end_6b} :catch_72

    .line 1135
    .end local v1    # "inetList":[Ljava/net/InetAddress;
    :cond_6b
    iget-object v4, p0, Lcom/android/supl/nc/NetworkController$1;->this$0:Lcom/android/supl/nc/NetworkController;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/supl/nc/NetworkController;->-set0(Lcom/android/supl/nc/NetworkController;Z)Z

    .line 1137
    :cond_71
    return-void

    .line 1128
    :catch_72
    move-exception v0

    .line 1129
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v4, "SUPL20_NC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DNS query(use network.getAllByName) fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/supl/nc/NetworkController$1;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v6}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1130
    iget-object v4, p0, Lcom/android/supl/nc/NetworkController$1;->this$0:Lcom/android/supl/nc/NetworkController;

    iput-object v7, v4, Lcom/android/supl/nc/NetworkController;->agpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1131
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 1141
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$1;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get1(Lcom/android/supl/nc/NetworkController;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1142
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_d

    .line 1143
    return-void

    .line 1145
    :cond_d
    const-string/jumbo v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Network onLost NetworkInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    return-void
.end method

.method public onUnavailable()V
    .registers 3

    .prologue
    .line 1150
    const-string/jumbo v0, "SUPL20_NC"

    const-string/jumbo v1, "Network onUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return-void
.end method
