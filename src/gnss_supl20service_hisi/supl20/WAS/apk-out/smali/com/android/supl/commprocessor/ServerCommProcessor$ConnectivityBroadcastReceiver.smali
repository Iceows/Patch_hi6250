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
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/supl/commprocessor/ServerCommProcessor;Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;-><init>(Lcom/android/supl/commprocessor/ServerCommProcessor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 596
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v6}, Lcom/android/supl/commprocessor/ServerCommProcessor;->-get1(Lcom/android/supl/commprocessor/ServerCommProcessor;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 599
    :cond_0
    return-void

    .line 603
    :cond_1
    const-string/jumbo v6, "noConnectivity"

    .line 602
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 604
    .local v2, "noConnectivity":Z
    new-instance v4, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v4}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 606
    .local v4, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v6, 0x8

    new-array v1, v6, [B

    .line 607
    .local v1, "bData":[B
    const/4 v3, 0x0

    .line 608
    .local v3, "offset":I
    const/4 v6, 0x4

    invoke-static {v1, v3, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 609
    if-eqz v2, :cond_2

    .line 610
    const/16 v6, 0x20b

    invoke-static {v1, v3, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 614
    :goto_0
    const-string/jumbo v6, "SUPL20_SCM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Network connection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iput-object v1, v4, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 616
    iget-object v5, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$ConnectivityBroadcastReceiver;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v5}, Lcom/android/supl/commprocessor/ServerCommProcessor;->-get3(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/nc/NetworkController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 595
    return-void

    .line 612
    :cond_2
    const/16 v6, 0x20a

    invoke-static {v1, v3, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    goto :goto_0

    .line 614
    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method
