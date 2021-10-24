.class Lcom/android/supl/SuplApplication$1;
.super Ljava/lang/Thread;
.source "SuplApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/supl/SuplApplication;->startSuplServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/SuplApplication;


# direct methods
.method constructor <init>(Lcom/android/supl/SuplApplication;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/supl/SuplApplication;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/supl/SuplApplication$1;->this$0:Lcom/android/supl/SuplApplication;

    .line 32
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/android/supl/SuplApplication;->-get0()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/supl/loc/SUPLPlatformService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/supl/SuplApplication;->-get0()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    const-string/jumbo v1, "SUPL20_Main"

    const-string/jumbo v2, "Starting platform service"

    invoke-static {v1, v2}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "serviceIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/supl/SuplApplication;->-get0()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/supl/commprocessor/SUPLSCMService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .restart local v0    # "serviceIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/supl/SuplApplication;->-get0()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 41
    const-string/jumbo v1, "SUPL20_Main"

    const-string/jumbo v2, "Starting scm service"

    invoke-static {v1, v2}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method
