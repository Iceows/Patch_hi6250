.class Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;
.super Ljava/lang/Thread;
.source "NDKCommProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/commprocessor/NDKCommProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadPacket"
.end annotation


# instance fields
.field private isStopRead:Z

.field private myJobDeque:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/supl/commprocessor/FromServer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;


# direct methods
.method static synthetic -get0(Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->myJobDeque:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/supl/commprocessor/NDKCommProcessor;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/NDKCommProcessor;
    .param p2, "stThreadName"    # Ljava/lang/String;

    .prologue
    .line 757
    iput-object p1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->isStopRead:Z

    .line 756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->myJobDeque:Ljava/util/concurrent/BlockingQueue;

    .line 758
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->myJobDeque:Ljava/util/concurrent/BlockingQueue;

    .line 759
    invoke-virtual {p0, p2}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->setName(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->start()V

    .line 757
    return-void
.end method


# virtual methods
.method public getThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 774
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->isStopRead:Z

    if-nez v2, :cond_1

    .line 776
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 773
    :cond_1
    :goto_1
    return-void

    .line 780
    :cond_2
    iget-object v2, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->myJobDeque:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/supl/commprocessor/FromServer;

    .line 781
    .local v1, "fromServer":Lcom/android/supl/commprocessor/FromServer;
    if-eqz v1, :cond_0

    .line 785
    iget-object v2, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v2, v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->process(Lcom/android/supl/commprocessor/FromServer;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 787
    .end local v1    # "fromServer":Lcom/android/supl/commprocessor/FromServer;
    :catch_0
    move-exception v0

    .line 789
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "SUPL20_PCM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " allowed to exit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stopRead()V
    .locals 1

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->interrupt()V

    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->isStopRead:Z

    .line 766
    return-void
.end method
