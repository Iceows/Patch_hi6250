.class Lcom/android/supl/nc/NetworkController$2;
.super Ljava/lang/Thread;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/nc/NetworkController;

.field final synthetic val$ConnectAgain:Z

.field final synthetic val$isStop:Z

.field final synthetic val$pauseLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/supl/nc/NetworkController;ZZLjava/lang/Object;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/supl/nc/NetworkController;
    .param p2, "val$ConnectAgain"    # Z
    .param p3, "val$isStop"    # Z
    .param p4, "val$pauseLock"    # Ljava/lang/Object;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    iput-boolean p2, p0, Lcom/android/supl/nc/NetworkController$2;->val$ConnectAgain:Z

    iput-boolean p3, p0, Lcom/android/supl/nc/NetworkController$2;->val$isStop:Z

    iput-object p4, p0, Lcom/android/supl/nc/NetworkController$2;->val$pauseLock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 684
    iget-boolean v1, p0, Lcom/android/supl/nc/NetworkController$2;->val$ConnectAgain:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get0(Lcom/android/supl/nc/NetworkController;)I

    move-result v1

    if-nez v1, :cond_11b

    .line 686
    :cond_c
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get2(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 687
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get2(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v2, v2, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/supl/nc/WriterThread;->setStopLock(Ljava/lang/Object;)V

    .line 688
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get2(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/nc/WriterThread;->stopWrite()V

    .line 690
    :cond_2a
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v2, v1, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    monitor-enter v2

    .line 693
    :goto_2f
    :try_start_2f
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get2(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 694
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get2(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/nc/WriterThread;->isReadyForColse()Z
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_40} :catch_ec
    .catchall {:try_start_2f .. :try_end_40} :catchall_f2

    move-result v1

    if-eqz v1, :cond_d1

    :cond_43
    :goto_43
    monitor-exit v2

    .line 706
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get2(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 707
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get2(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/nc/WriterThread;->closeWrite()V

    .line 709
    :cond_55
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v2, "On write wait release"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get1(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;

    move-result-object v1

    if-eqz v1, :cond_7c

    .line 712
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get1(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v2, v2, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/supl/nc/ReaderThread;->setStopLock(Ljava/lang/Object;)V

    .line 713
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get1(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/nc/ReaderThread;->stopRead()V

    .line 716
    :cond_7c
    iget-boolean v1, p0, Lcom/android/supl/nc/NetworkController$2;->val$isStop:Z

    if-eqz v1, :cond_85

    .line 717
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->closeConnection()V

    .line 720
    :cond_85
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v2, v1, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    monitor-enter v2

    .line 723
    :goto_8a
    :try_start_8a
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get1(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;

    move-result-object v1

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get1(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/nc/ReaderThread;->isReadyForColse()Z
    :try_end_9b
    .catch Ljava/lang/InterruptedException; {:try_start_8a .. :try_end_9b} :catch_110
    .catchall {:try_start_8a .. :try_end_9b} :catchall_115

    move-result v1

    if-eqz v1, :cond_f5

    :cond_9e
    :goto_9e
    monitor-exit v2

    .line 735
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v2, "On read wait release"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->val$pauseLock:Ljava/lang/Object;

    if-eqz v1, :cond_be

    .line 738
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController$2;->val$pauseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 739
    :try_start_af
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->val$pauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_b4
    .catchall {:try_start_af .. :try_end_b4} :catchall_118

    monitor-exit v2

    .line 741
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v2, "On pauseLock notify"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_be
    iget-boolean v1, p0, Lcom/android/supl/nc/NetworkController$2;->val$ConnectAgain:Z

    if-eqz v1, :cond_d0

    .line 746
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v2, "Trying to reconnect again"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-wrap0(Lcom/android/supl/nc/NetworkController;)V

    .line 683
    :cond_d0
    :goto_d0
    return-void

    .line 696
    :cond_d1
    :try_start_d1
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v3, "On write wait"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v1, v1, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 698
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v3, "On write notified"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catch Ljava/lang/InterruptedException; {:try_start_d1 .. :try_end_ea} :catch_ec
    .catchall {:try_start_d1 .. :try_end_ea} :catchall_f2

    goto/16 :goto_2f

    .line 701
    :catch_ec
    move-exception v0

    .line 703
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_ed
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_f0
    .catchall {:try_start_ed .. :try_end_f0} :catchall_f2

    goto/16 :goto_43

    .line 690
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_f2
    move-exception v1

    monitor-exit v2

    throw v1

    .line 725
    :cond_f5
    :try_start_f5
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v3, "On read wait"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v1, v1, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 727
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v3, "On read notified"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catch Ljava/lang/InterruptedException; {:try_start_f5 .. :try_end_10e} :catch_110
    .catchall {:try_start_f5 .. :try_end_10e} :catchall_115

    goto/16 :goto_8a

    .line 730
    :catch_110
    move-exception v0

    .line 732
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_111
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_114
    .catchall {:try_start_111 .. :try_end_114} :catchall_115

    goto :goto_9e

    .line 720
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_115
    move-exception v1

    monitor-exit v2

    throw v1

    .line 738
    :catchall_118
    move-exception v1

    monitor-exit v2

    throw v1

    .line 751
    :cond_11b
    const-string/jumbo v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Close connection Thread Connection Count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController$2;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v3}, Lcom/android/supl/nc/NetworkController;->-get0(Lcom/android/supl/nc/NetworkController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0
.end method
