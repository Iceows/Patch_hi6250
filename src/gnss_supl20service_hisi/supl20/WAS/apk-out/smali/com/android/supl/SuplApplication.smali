.class public Lcom/android/supl/SuplApplication;
.super Landroid/app/Application;
.source "SuplApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/android/supl/SuplApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/supl/SuplApplication;->TAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 16
    sget-object v1, Lcom/android/supl/SuplApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Application started"

    invoke-static {v1, v2}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 18
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/supl/receiver/BootUpReceiver;

    invoke-direct {v1}, Lcom/android/supl/receiver/BootUpReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/android/supl/SuplApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 14
    return-void
.end method
