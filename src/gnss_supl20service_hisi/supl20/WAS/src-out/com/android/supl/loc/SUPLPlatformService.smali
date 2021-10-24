.class public Lcom/android/supl/loc/SUPLPlatformService;
.super Landroid/app/Service;
.source "SUPLPlatformService.java"

# interfaces
.implements Lcom/android/supl/GpsOnOffListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/loc/SUPLPlatformService$PCMConnectionThread;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private isInit:Z

.field private mContext:Landroid/content/Context;

.field private mLocationManager:Lcom/android/supl/loc/SETLocationManager;

.field private mNDKCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

.field private pcmThread:Ljava/lang/Thread;


# direct methods
.method static synthetic -get0(Lcom/android/supl/loc/SUPLPlatformService;)Lcom/android/supl/commprocessor/NDKCommProcessor;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/loc/SUPLPlatformService;

    .prologue
    iget-object v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->mNDKCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/android/supl/loc/SUPLPlatformService;->mLocationManager:Lcom/android/supl/loc/SETLocationManager;

    .line 57
    iput-object v1, p0, Lcom/android/supl/loc/SUPLPlatformService;->mNDKCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 59
    iput-object v1, p0, Lcom/android/supl/loc/SUPLPlatformService;->pcmThread:Ljava/lang/Thread;

    .line 61
    const-string/jumbo v0, "SUPL20_PCMService"

    iput-object v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->LOG_TAG:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/android/supl/loc/SUPLPlatformService;->mContext:Landroid/content/Context;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->isInit:Z

    .line 71
    iput-object p0, p0, Lcom/android/supl/loc/SUPLPlatformService;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/android/supl/loc/SUPLPlatformService;->mLocationManager:Lcom/android/supl/loc/SETLocationManager;

    .line 57
    iput-object v1, p0, Lcom/android/supl/loc/SUPLPlatformService;->mNDKCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 59
    iput-object v1, p0, Lcom/android/supl/loc/SUPLPlatformService;->pcmThread:Ljava/lang/Thread;

    .line 61
    const-string/jumbo v0, "SUPL20_PCMService"

    iput-object v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->LOG_TAG:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/android/supl/loc/SUPLPlatformService;->mContext:Landroid/content/Context;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->isInit:Z

    .line 74
    iput-object p1, p0, Lcom/android/supl/loc/SUPLPlatformService;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p0}, Lcom/android/supl/loc/SUPLPlatformService;->onCreate()V

    .line 76
    return-void
.end method

.method private start()V
    .registers 9

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->isInit:Z

    .line 112
    new-instance v0, Lcom/android/supl/loc/SETLocationManager;

    iget-object v1, p0, Lcom/android/supl/loc/SUPLPlatformService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/supl/loc/SETLocationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->mLocationManager:Lcom/android/supl/loc/SETLocationManager;

    .line 113
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v7

    .line 114
    .local v7, "configManager":Lcom/android/supl/config/ConfigManager;
    invoke-virtual {v7}, Lcom/android/supl/config/ConfigManager;->getPCMPort()I

    move-result v3

    .line 115
    .local v3, "iPCMport":I
    invoke-virtual {v7}, Lcom/android/supl/config/ConfigManager;->getPCMIpAdress()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "stPCMIPAddress":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/supl/config/ConfigManager;->getNwTimeout()I

    move-result v5

    .line 117
    .local v5, "iTimeOut":I
    invoke-virtual {v7}, Lcom/android/supl/config/ConfigManager;->getNwRetries()I

    move-result v6

    .line 119
    .local v6, "iRetries":I
    new-instance v0, Lcom/android/supl/commprocessor/NDKCommProcessor;

    iget-object v4, p0, Lcom/android/supl/loc/SUPLPlatformService;->mLocationManager:Lcom/android/supl/loc/SETLocationManager;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/supl/commprocessor/NDKCommProcessor;-><init>(ZLjava/lang/String;ILcom/android/supl/loc/SETLocationManager;II)V

    iput-object v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->mNDKCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 122
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/supl/loc/SUPLPlatformService$PCMConnectionThread;

    invoke-direct {v1, p0}, Lcom/android/supl/loc/SUPLPlatformService$PCMConnectionThread;-><init>(Lcom/android/supl/loc/SUPLPlatformService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->pcmThread:Ljava/lang/Thread;

    .line 123
    iget-object v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->pcmThread:Ljava/lang/Thread;

    const-string/jumbo v1, "PCM handsake thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->pcmThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    const-string/jumbo v0, "SUPL20_PCMService"

    const-string/jumbo v1, "SUPL20 service version :2.13.2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string/jumbo v0, "SUPL20_PCMService"

    const-string/jumbo v1, "Platform Service Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method private startPCM()V
    .registers 3

    .prologue
    .line 96
    const-string/jumbo v0, "SUPL20_PCMService"

    const-string/jumbo v1, "Send startPCM "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-boolean v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->isInit:Z

    if-eqz v0, :cond_1c

    .line 98
    iget-object v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->mNDKCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->reInit()V

    .line 102
    :goto_12
    const-string/jumbo v0, "SUPL20_PCMService"

    const-string/jumbo v1, "Send startPCM finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 100
    :cond_1c
    invoke-direct {p0}, Lcom/android/supl/loc/SUPLPlatformService;->start()V

    goto :goto_12
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 106
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    .line 107
    .local v0, "configManager":Lcom/android/supl/config/ConfigManager;
    const-string/jumbo v1, "SUPL20_PCMService"

    const-string/jumbo v2, "SUPL20 service version :2.13.2.0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0}, Lcom/android/supl/loc/SUPLPlatformService;->start()V

    .line 109
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 211
    invoke-static {}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->getInstance()Lcom/android/supl/trigger/PeriodicTriggerHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->clear()V

    .line 212
    iget-object v2, p0, Lcom/android/supl/loc/SUPLPlatformService;->mLocationManager:Lcom/android/supl/loc/SETLocationManager;

    if-eqz v2, :cond_10

    .line 213
    iget-object v2, p0, Lcom/android/supl/loc/SUPLPlatformService;->mLocationManager:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v2}, Lcom/android/supl/loc/SETLocationManager;->stopListening()V

    .line 215
    :cond_10
    iget-object v2, p0, Lcom/android/supl/loc/SUPLPlatformService;->mNDKCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    if-eqz v2, :cond_19

    .line 216
    iget-object v2, p0, Lcom/android/supl/loc/SUPLPlatformService;->mNDKCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v2}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendByeMessage()V

    .line 219
    :cond_19
    const-wide/16 v2, 0x3e8

    :try_start_1b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_36

    .line 225
    :goto_1e
    iget-object v2, p0, Lcom/android/supl/loc/SUPLPlatformService;->mNDKCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    if-eqz v2, :cond_27

    .line 226
    iget-object v2, p0, Lcom/android/supl/loc/SUPLPlatformService;->mNDKCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v2}, Lcom/android/supl/commprocessor/NDKCommProcessor;->stopNetWork()V

    .line 228
    :cond_27
    iget-object v2, p0, Lcom/android/supl/loc/SUPLPlatformService;->pcmThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 230
    iget-object v2, p0, Lcom/android/supl/loc/SUPLPlatformService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/supl/SUPLManager;->getInstance(Landroid/content/Context;)Lcom/android/supl/SUPLManager;

    move-result-object v1

    .line 231
    .local v1, "suplManager":Lcom/android/supl/SUPLManager;
    invoke-virtual {v1, p0}, Lcom/android/supl/SUPLManager;->removeGpsListener(Lcom/android/supl/GpsOnOffListener;)Z

    .line 232
    return-void

    .line 220
    .end local v1    # "suplManager":Lcom/android/supl/SUPLManager;
    :catch_36
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1e
.end method

.method public onGPSLocationProviderDisabled()V
    .registers 3

    .prologue
    .line 85
    const-string/jumbo v0, "SUPL20_PCMService"

    const-string/jumbo v1, " onGPSLocationProviderDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-boolean v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->isInit:Z

    if-eqz v0, :cond_1c

    .line 87
    const-string/jumbo v0, "SUPL20_PCMService"

    const-string/jumbo v1, "PCM Service running. Will pause it."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->mNDKCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v0}, Lcom/android/supl/commprocessor/NDKCommProcessor;->pause()V

    .line 92
    :goto_1b
    return-void

    .line 90
    :cond_1c
    const-string/jumbo v0, "SUPL20_PCMService"

    const-string/jumbo v1, "PCM Service not already created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public onGPSLocationProviderEnabled()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/supl/loc/SUPLPlatformService;->startPCM()V

    .line 81
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 198
    const-string/jumbo v0, "SUPL20_PCMService"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method
