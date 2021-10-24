.class public Lcom/android/supl/receiver/BootUpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootUpReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static is_service_start:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/supl/receiver/BootUpReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/supl/receiver/BootUpReceiver;)Landroid/content/Context;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/receiver/BootUpReceiver;

    .prologue
    iget-object v0, p0, Lcom/android/supl/receiver/BootUpReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

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
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/receiver/BootUpReceiver;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private startSuplServices(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/supl/receiver/BootUpReceiver;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Lcom/android/supl/receiver/BootUpReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/supl/receiver/BootUpReceiver$1;-><init>(Lcom/android/supl/receiver/BootUpReceiver;)V

    .line 103
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 104
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    const-string/jumbo v2, "is_hisi_connectivity_chip"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "chipType":Ljava/lang/String;
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 64
    sget-object v2, Lcom/android/supl/receiver/BootUpReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "BootUpReceiver onReceive called, but quit now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 68
    :cond_19
    const-string/jumbo v2, "ro.connectivity.sub_chiptype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string/jumbo v2, "hi1102"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 70
    sget-object v2, Lcom/android/supl/receiver/BootUpReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "supl application quit now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 74
    :cond_32
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

    .line 76
    const-string/jumbo v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 78
    .local v0, "ACTION_SIM_STATE_CHANGED":Ljava/lang/String;
    sget-boolean v2, Lcom/android/supl/receiver/BootUpReceiver;->is_service_start:Z

    if-nez v2, :cond_86

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_86

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 79
    if-nez v2, :cond_80

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 79
    if-eqz v2, :cond_86

    .line 82
    :cond_80
    invoke-direct {p0, p1}, Lcom/android/supl/receiver/BootUpReceiver;->startSuplServices(Landroid/content/Context;)V

    .line 83
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/supl/receiver/BootUpReceiver;->is_service_start:Z

    .line 86
    :cond_86
    return-void
.end method
