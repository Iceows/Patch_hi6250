.class public Lcom/android/supl/receiver/BootUpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootUpReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static is_service_start:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/supl/receiver/BootUpReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/supl/receiver/BootUpReceiver;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/supl/receiver/BootUpReceiver;->is_service_start:Z

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startSuplServices(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/supl/loc/SUPLPlatformService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    sget-object v1, Lcom/android/supl/receiver/BootUpReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Starting platform service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "serviceIntent":Landroid/content/Intent;
    const-class v1, Lcom/android/supl/commprocessor/SUPLSCMService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .restart local v0    # "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 88
    sget-object v1, Lcom/android/supl/receiver/BootUpReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Starting scm service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    const-string/jumbo v2, "is_hisi_connectivity_chip"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "chipType":Ljava/lang/String;
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    sget-object v2, Lcom/android/supl/receiver/BootUpReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "BootUpReceiver onReceive called, but quit now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 67
    :cond_0
    sget-object v2, Lcom/android/supl/receiver/BootUpReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BootUpReceiver got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string/jumbo v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 71
    .local v0, "ACTION_SIM_STATE_CHANGED":Ljava/lang/String;
    sget-boolean v2, Lcom/android/supl/receiver/BootUpReceiver;->is_service_start:Z

    if-nez v2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 72
    if-nez v2, :cond_1

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 72
    if-eqz v2, :cond_2

    .line 75
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/supl/receiver/BootUpReceiver;->startSuplServices(Landroid/content/Context;)V

    .line 76
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/supl/receiver/BootUpReceiver;->is_service_start:Z

    .line 59
    :cond_2
    return-void
.end method
