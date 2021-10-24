.class public Lcom/android/supl/SuplApplication;
.super Landroid/app/Application;
.source "SuplApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SUPL20_Main"

.field private static context:Landroid/content/Context;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/supl/SuplApplication;->context:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/supl/SuplApplication;->context:Landroid/content/Context;

    return-object v0
.end method

.method private startSuplServices()V
    .registers 5

    .prologue
    .line 26
    const-string/jumbo v2, "is_hisi_connectivity_chip"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "chipType":Ljava/lang/String;
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 29
    const-string/jumbo v2, "SUPL20_Main"

    const-string/jumbo v3, "Not hisi chip, quit now!"

    invoke-static {v2, v3}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void

    .line 32
    :cond_1a
    new-instance v1, Lcom/android/supl/SuplApplication$1;

    invoke-direct {v1, p0}, Lcom/android/supl/SuplApplication$1;-><init>(Lcom/android/supl/SuplApplication;)V

    .line 45
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 46
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 20
    const-string/jumbo v0, "SUPL20_Main"

    const-string/jumbo v1, "Starting supl application"

    invoke-static {v0, v1}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/supl/SuplApplication;->context:Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/android/supl/SuplApplication;->startSuplServices()V

    .line 23
    return-void
.end method
