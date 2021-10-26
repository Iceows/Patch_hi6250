.class Lcom/android/supl/commprocessor/NDKCommProcessor$2;
.super Ljava/lang/Thread;
.source "NDKCommProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/supl/commprocessor/NDKCommProcessor;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;


# direct methods
.method constructor <init>(Lcom/android/supl/commprocessor/NDKCommProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 705
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->-get3(Lcom/android/supl/commprocessor/NDKCommProcessor;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->-get0(Lcom/android/supl/commprocessor/NDKCommProcessor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    const-string/jumbo v1, "SUPL20_PCM"

    const-string/jumbo v3, "PCM pause invoked"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->-get2(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/nc/NetworkController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v3}, Lcom/android/supl/commprocessor/NDKCommProcessor;->-get3(Lcom/android/supl/commprocessor/NDKCommProcessor;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    :try_start_1
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->-get3(Lcom/android/supl/commprocessor/NDKCommProcessor;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    :goto_0
    :try_start_2
    const-string/jumbo v1, "SUPL20_PCM"

    const-string/jumbo v3, "PCM pauseLock release"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->-get4(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->stopRead()V

    .line 717
    invoke-static {}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->getInstance()Lcom/android/supl/trigger/PeriodicTriggerHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->pause()V

    .line 718
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$2;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/supl/commprocessor/NDKCommProcessor;->-set0(Lcom/android/supl/commprocessor/NDKCommProcessor;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v2

    .line 704
    return-void

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 705
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
