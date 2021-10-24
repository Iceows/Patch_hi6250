.class Lcom/android/supl/receiver/BootUpReceiver$1;
.super Ljava/lang/Thread;
.source "BootUpReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/supl/receiver/BootUpReceiver;->startSuplServices(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/receiver/BootUpReceiver;


# direct methods
.method constructor <init>(Lcom/android/supl/receiver/BootUpReceiver;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/supl/receiver/BootUpReceiver;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/supl/receiver/BootUpReceiver$1;->this$0:Lcom/android/supl/receiver/BootUpReceiver;

    .line 90
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/supl/receiver/BootUpReceiver$1;->this$0:Lcom/android/supl/receiver/BootUpReceiver;

    invoke-static {v1}, Lcom/android/supl/receiver/BootUpReceiver;->-get1(Lcom/android/supl/receiver/BootUpReceiver;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/supl/loc/SUPLPlatformService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/supl/receiver/BootUpReceiver$1;->this$0:Lcom/android/supl/receiver/BootUpReceiver;

    invoke-static {v1}, Lcom/android/supl/receiver/BootUpReceiver;->-get1(Lcom/android/supl/receiver/BootUpReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 95
    invoke-static {}, Lcom/android/supl/receiver/BootUpReceiver;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Starting platform service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/supl/receiver/BootUpReceiver$1;->this$0:Lcom/android/supl/receiver/BootUpReceiver;

    invoke-static {v1}, Lcom/android/supl/receiver/BootUpReceiver;->-get1(Lcom/android/supl/receiver/BootUpReceiver;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/supl/commprocessor/SUPLSCMService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .restart local v0    # "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/supl/receiver/BootUpReceiver$1;->this$0:Lcom/android/supl/receiver/BootUpReceiver;

    invoke-static {v1}, Lcom/android/supl/receiver/BootUpReceiver;->-get1(Lcom/android/supl/receiver/BootUpReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 99
    invoke-static {}, Lcom/android/supl/receiver/BootUpReceiver;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Starting scm service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method
