.class Lcom/android/supl/commprocessor/ServerCommProcessor$1;
.super Ljava/lang/Thread;
.source "ServerCommProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/supl/commprocessor/ServerCommProcessor;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;


# direct methods
.method constructor <init>(Lcom/android/supl/commprocessor/ServerCommProcessor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 496
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->-get5(Lcom/android/supl/commprocessor/ServerCommProcessor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 497
    :try_start_7
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->-get0(Lcom/android/supl/commprocessor/ServerCommProcessor;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 498
    const-string/jumbo v1, "SUPL20_SCM"

    const-string/jumbo v3, "SCM pause invoked"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->-get3(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/nc/NetworkController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v3}, Lcom/android/supl/commprocessor/ServerCommProcessor;->-get5(Lcom/android/supl/commprocessor/ServerCommProcessor;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_5f

    .line 501
    :try_start_29
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->-get5(Lcom/android/supl/commprocessor/ServerCommProcessor;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_32} :catch_5a
    .catchall {:try_start_29 .. :try_end_32} :catchall_5f

    .line 505
    :goto_32
    :try_start_32
    const-string/jumbo v1, "SUPL20_SCM"

    const-string/jumbo v3, "SCM pauseLock release"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->-get4(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor$ReadPacket;->stopRead()V

    .line 508
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->stopListening()V

    .line 509
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/ServerCommProcessor;->-get2(Lcom/android/supl/commprocessor/ServerCommProcessor;)Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->disConnectAllNetWork()V

    .line 510
    iget-object v1, p0, Lcom/android/supl/commprocessor/ServerCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/ServerCommProcessor;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/supl/commprocessor/ServerCommProcessor;->-set0(Lcom/android/supl/commprocessor/ServerCommProcessor;Z)Z
    :try_end_58
    .catchall {:try_start_32 .. :try_end_58} :catchall_5f

    :cond_58
    monitor-exit v2

    .line 495
    return-void

    .line 502
    :catch_5a
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5b
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_32

    .line 496
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_5f
    move-exception v1

    monitor-exit v2

    throw v1
.end method
