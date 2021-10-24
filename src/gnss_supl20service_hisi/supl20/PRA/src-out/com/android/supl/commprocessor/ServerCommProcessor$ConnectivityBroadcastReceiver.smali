.class Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServerCommProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/commprocessor/ServerCommProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;


# direct methods
.method private constructor <init>(Lcom/android/supl/commprocessor/ServerCommProcessor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/supl/commprocessor/ServerCommProcessor;Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/ServerCommProcessor;
    .param p2, "-this1"    # Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 600
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v5}, Lcom/android/supl/commprocessor/ServerCommProcessor;->-get1(Lcom/android/supl/commprocessor/ServerCommProcessor;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 603
    :cond_15
    return-void

    .line 607
    :cond_16
    const-string/jumbo v5, "noConnectivity"

    const/4 v6, 0x0

    .line 606
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 608
    .local v2, "noConnectivity":Z
    new-instance v4, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v4}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 610
    .local v4, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v5, 0x8

    new-array v1, v5, [B

    .line 611
    .local v1, "bData":[B
    const/4 v3, 0x0

    .line 612
    .local v3, "offset":I
    const/4 v5, 0x4

    invoke-static {v1, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 613
    if-eqz v2, :cond_5d

    .line 614
    const/16 v5, 0x20b

    invoke-static {v1, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 618
    :goto_35
    const-string/jumbo v5, "SUPL20_SCM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Network connection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    xor-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iput-object v1, v4, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 620
    iget-object v5, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v5}, Lcom/android/supl/commprocessor/ServerCommProcessor;->-get3(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/nc/NetworkController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 623
    return-void

    .line 616
    :cond_5d
    const/16 v5, 0x20a

    invoke-static {v1, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    goto :goto_35
.end method
