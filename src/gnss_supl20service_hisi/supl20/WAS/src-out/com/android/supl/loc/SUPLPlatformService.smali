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

    .line 70
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

    .line 73
    return-void
.end method

.method private start()V
    .registers 9

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->isInit:Z

    .line 127
    new-instance v0, Lcom/android/supl/loc/SETLocationManager;

    iget-object v1, p0, Lcom/android/supl/loc/SUPLPlatformService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/supl/loc/SETLocationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->mLocationManager:Lcom/android/supl/loc/SETLocationManager;

    .line 128
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v7

    .line 129
    .local v7, "configManager":Lcom/android/supl/config/ConfigManager;
    invoke-virtual {v7}, Lcom/android/supl/config/ConfigManager;->getPCMPort()I

    move-result v3

    .line 130
    .local v3, "iPCMport":I
    invoke-virtual {v7}, Lcom/android/supl/config/ConfigManager;->getPCMIpAdress()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "stPCMIPAddress":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/supl/config/ConfigManager;->getNwTimeout()I

    move-result v5

    .line 132
    .local v5, "iTimeOut":I
    invoke-virtual {v7}, Lcom/android/supl/config/ConfigManager;->getNwRetries()I

    move-result v6

    .line 134
    .local v6, "iRetries":I
    new-instance v0, Lcom/android/supl/commprocessor/NDKCommProcessor;

    iget-object v4, p0, Lcom/android/supl/loc/SUPLPlatformService;->mLocationManager:Lcom/android/supl/loc/SETLocationManager;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/supl/commprocessor/NDKCommProcessor;-><init>(ZLjava/lang/String;ILcom/android/supl/loc/SETLocationManager;II)V

    iput-object v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->mNDKCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    .line 137
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/supl/loc/SUPLPlatformService$PCMConnectionThread;

    invoke-direct {v1, p0}, Lcom/android/supl/loc/SUPLPlatformService$PCMConnectionThread;-><init>(Lcom/android/supl/loc/SUPLPlatformService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->pcmThread:Ljava/lang/Thread;

    .line 138
    iget-object v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->pcmThread:Ljava/lang/Thread;

    const-string/jumbo v1, "PCM handsake thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/supl/loc/SUPLPlatformService;->pcmThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 140
    const-string/jumbo v0, "SUPL20_PCMService"

    const-string/jumbo v1, "SUPL20 service version :2.13.0.3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string/jumbo v0, "SUPL20_PCMService"

    const-string/jumbo v1, "Platform Service Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
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

    .line 94
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
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 6

    .prologue
    .line 106
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    .line 107
    .local v0, "configManager":Lcom/android/supl/config/ConfigManager;
    const-string/jumbo v3, "SUPL20_PCMService"

    const-string/jumbo v4, "SUPL20 service version :2.13.0.3"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getSUPLVersion()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_43

    .line 109
    iget-object v3, p0, Lcom/android/supl/loc/SUPLPlatformService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/supl/SUPLManager;->getInstance(Landroid/content/Context;)Lcom/android/supl/SUPLManager;

    move-result-object v2

    .line 111
    .local v2, "suplManager":Lcom/android/supl/SUPLManager;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->checkGPSEnabled()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 112
    invoke-virtual {v2, p0}, Lcom/android/supl/SUPLManager;->addGpsListener(Lcom/android/supl/GpsOnOffListener;)Z

    .line 113
    iget-object v3, p0, Lcom/android/supl/loc/SUPLPlatformService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 114
    const-string/jumbo v4, "location_providers_allowed"

    .line 113
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "provider":Ljava/lang/String;
    if-eqz v1, :cond_3e

    const-string/jumbo v3, "gps"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 116
    invoke-direct {p0}, Lcom/android/supl/loc/SUPLPlatformService;->start()V

    .line 104
    .end local v1    # "provider":Ljava/lang/String;
    .end local v2    # "suplManager":Lcom/android/supl/SUPLManager;
    :cond_3e
    :goto_3e
    return-void

    .line 119
    .restart local v2    # "suplManager":Lcom/android/supl/SUPLManager;
    :cond_3f
    invoke-direct {p0}, Lcom/android/supl/loc/SUPLPlatformService;->start()V

    goto :goto_3e

    .line 122
    .end local v2    # "suplManager":Lcom/android/supl/SUPLManager;
    :cond_43
    invoke-direct {p0}, Lcom/android/supl/loc/SUPLPlatformService;->start()V

    goto :goto_3e
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 226
    invoke-static {}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->getInstance()Lcom/android/supl/trigger/PeriodicTriggerHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->clear()V

    .line 227
    iget-object v2, p0, Lcom/android/supl/loc/SUPLPlatformService;->mLocationManager:Lcom/android/supl/loc/SETLocationManager;

    if-eqz v2, :cond_10

    .line 228
    iget-object v2, p0, Lcom/android/supl/loc/SUPLPlatformService;->mLocationManager:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v2}, Lcom/android/supl/loc/SETLocationManager;->stopListening()V

    .line 230
    :cond_10
    iget-object v2, p0, Lcom/android/supl/loc/SUPLPlatformService;->mNDKCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    if-eqz v2, :cond_19

    .line 231
    iget-object v2, p0, Lcom/android/supl/loc/SUPLPlatformService;->mNDKCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v2}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendByeMessage()V

    .line 234
    :cond_19
    const-wide/16 v2, 0x3e8

    :try_start_1b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_36

    .line 240
    :goto_1e
    iget-object v2, p0, Lcom/android/supl/loc/SUPLPlatformService;->mNDKCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    if-eqz v2, :cond_27

    .line 241
    iget-object v2, p0, Lcom/android/supl/loc/SUPLPlatformService;->mNDKCommProcessor:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-virtual {v2}, Lcom/android/supl/commprocessor/NDKCommProcessor;->stopNetWork()V

    .line 243
    :cond_27
    iget-object v2, p0, Lcom/android/supl/loc/SUPLPlatformService;->pcmThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 245
    iget-object v2, p0, Lcom/android/supl/loc/SUPLPlatformService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/supl/SUPLManager;->getInstance(Landroid/content/Context;)Lcom/android/supl/SUPLManager;

    move-result-object v1

    .line 246
    .local v1, "suplManager":Lcom/android/supl/SUPLManager;
    invoke-virtual {v1, p0}, Lcom/android/supl/SUPLManager;->removeGpsListener(Lcom/android/supl/GpsOnOffListener;)Z

    .line 223
    return-void

    .line 235
    .end local v1    # "suplManager":Lcom/android/supl/SUPLManager;
    :catch_36
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

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

    .line 84
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

    .line 79
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 213
    const-string/jumbo v0, "SUPL20_PCMService"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method
