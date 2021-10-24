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
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;

    .prologue
    iget-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->myJobDeque:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/supl/commprocessor/NDKCommProcessor;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/NDKCommProcessor;
    .param p2, "stThreadName"    # Ljava/lang/String;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->isStopRead:Z

    .line 797
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->myJobDeque:Ljava/util/concurrent/BlockingQueue;

    .line 799
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->myJobDeque:Ljava/util/concurrent/BlockingQueue;

    .line 800
    invoke-virtual {p0, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 802
    return-void
.end method


# virtual methods
.method public getThreadName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 840
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 6

    .prologue
    .line 815
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->isStopRead:Z

    if-nez v2, :cond_a

    .line 817
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 838
    :cond_a
    :goto_a
    return-void

    .line 821
    :cond_b
    iget-object v2, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->myJobDeque:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/supl/commprocessor/FromServer;

    .line 822
    .local v1, "fromServer":Lcom/android/supl/commprocessor/FromServer;
    if-eqz v1, :cond_0

    .line 826
    iget-object v2, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v2, v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->process(Lcom/android/supl/commprocessor/FromServer;)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_1a} :catch_1b

    goto :goto_0

    .line 828
    .end local v1    # "fromServer":Lcom/android/supl/commprocessor/FromServer;
    :catch_1b
    move-exception v0

    .line 830
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "SUPL20_PCM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " allowed to exit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public stopRead()V
    .registers 2

    .prologue
    .line 808
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$ReadPacket;->isStopRead:Z

    .line 811
    return-void
.end method
