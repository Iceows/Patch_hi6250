.class Lcom/android/supl/nc/NetworkController$3;
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

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    iput-boolean p2, p0, Lcom/android/supl/nc/NetworkController$3;->val$ConnectAgain:Z

    iput-boolean p3, p0, Lcom/android/supl/nc/NetworkController$3;->val$isStop:Z

    iput-object p4, p0, Lcom/android/supl/nc/NetworkController$3;->val$pauseLock:Ljava/lang/Object;

    .line 760
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 764
    iget-boolean v1, p0, Lcom/android/supl/nc/NetworkController$3;->val$ConnectAgain:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get0(Lcom/android/supl/nc/NetworkController;)I

    move-result v1

    if-nez v1, :cond_11a

    .line 766
    :cond_c
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get4(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 767
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get4(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v2, v2, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/supl/nc/WriterThread;->setStopLock(Ljava/lang/Object;)V

    .line 768
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get4(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/nc/WriterThread;->stopWrite()V

    .line 770
    :cond_2a
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v2, v1, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    monitor-enter v2

    .line 773
    :goto_2f
    :try_start_2f
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get4(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 774
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get4(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/nc/WriterThread;->isReadyForColse()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 773
    if-eqz v1, :cond_63

    .line 776
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v3, "On write wait"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v1, v1, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 778
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v3, "On write notified"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_5e} :catch_5f
    .catchall {:try_start_2f .. :try_end_5e} :catchall_111

    goto :goto_2f

    .line 781
    :catch_5f
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_111

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_63
    monitor-exit v2

    .line 786
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get4(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v1

    if-eqz v1, :cond_75

    .line 787
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get4(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/WriterThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/nc/WriterThread;->closeWrite()V

    .line 789
    :cond_75
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v2, "On write wait release"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get3(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;

    move-result-object v1

    if-eqz v1, :cond_9c

    .line 792
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get3(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v2, v2, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/android/supl/nc/ReaderThread;->setStopLock(Ljava/lang/Object;)V

    .line 793
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get3(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/nc/ReaderThread;->stopRead()V

    .line 796
    :cond_9c
    iget-boolean v1, p0, Lcom/android/supl/nc/NetworkController$3;->val$isStop:Z

    if-eqz v1, :cond_a5

    .line 797
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->closeConnection()V

    .line 800
    :cond_a5
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v2, v1, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    monitor-enter v2

    .line 803
    :goto_aa
    :try_start_aa
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get3(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;

    move-result-object v1

    if-eqz v1, :cond_de

    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-get3(Lcom/android/supl/nc/NetworkController;)Lcom/android/supl/nc/ReaderThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/nc/ReaderThread;->isReadyForColse()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_de

    .line 805
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v3, "On read wait"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    iget-object v1, v1, Lcom/android/supl/nc/NetworkController;->objLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 807
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v3, "On read notified"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catch Ljava/lang/InterruptedException; {:try_start_aa .. :try_end_d9} :catch_da
    .catchall {:try_start_aa .. :try_end_d9} :catchall_114

    goto :goto_aa

    .line 810
    :catch_da
    move-exception v0

    .line 812
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_db
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_de
    .catchall {:try_start_db .. :try_end_de} :catchall_114

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_de
    monitor-exit v2

    .line 815
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v2, "On read wait release"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->val$pauseLock:Ljava/lang/Object;

    if-eqz v1, :cond_fe

    .line 818
    iget-object v2, p0, Lcom/android/supl/nc/NetworkController$3;->val$pauseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 819
    :try_start_ef
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->val$pauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_f4
    .catchall {:try_start_ef .. :try_end_f4} :catchall_117

    monitor-exit v2

    .line 821
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v2, "On pauseLock notify"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_fe
    iget-boolean v1, p0, Lcom/android/supl/nc/NetworkController$3;->val$ConnectAgain:Z

    if-eqz v1, :cond_110

    .line 826
    const-string/jumbo v1, "SUPL20_NC"

    const-string/jumbo v2, "Trying to reconnect again"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v1, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v1}, Lcom/android/supl/nc/NetworkController;->-wrap0(Lcom/android/supl/nc/NetworkController;)V

    .line 833
    :cond_110
    :goto_110
    return-void

    .line 770
    :catchall_111
    move-exception v1

    monitor-exit v2

    throw v1

    .line 800
    :catchall_114
    move-exception v1

    monitor-exit v2

    throw v1

    .line 818
    :catchall_117
    move-exception v1

    monitor-exit v2

    throw v1

    .line 831
    :cond_11a
    const-string/jumbo v1, "SUPL20_NC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Close connection Thread Connection Count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/supl/nc/NetworkController$3;->this$0:Lcom/android/supl/nc/NetworkController;

    invoke-static {v3}, Lcom/android/supl/nc/NetworkController;->-get0(Lcom/android/supl/nc/NetworkController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_110
.end method
