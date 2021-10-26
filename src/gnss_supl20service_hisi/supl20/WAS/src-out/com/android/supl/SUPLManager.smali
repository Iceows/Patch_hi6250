.class public Lcom/android/supl/SUPLManager;
.super Ljava/lang/Object;
.source "SUPLManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/SUPLManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_SUPLManager"

.field public static final SUPL_SI:Ljava/lang/String; = "supl20mgr"

.field private static suplManager:Lcom/android/supl/SUPLManager;


# instance fields
.field private isGpsEnableReceReg:Z

.field private mContext:Landroid/content/Context;

.field private mPlatformService:Lcom/android/supl/loc/SUPLPlatformService;

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mSuplscmService:Lcom/android/supl/commprocessor/SUPLSCMService;

.field private m_Handler:Landroid/os/Handler;

.field private settingsObserver:Lcom/android/supl/SUPLManager$SettingsObserver;

.field private vecGpsListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/supl/GpsOnOffListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/supl/SUPLManager;Ljava/lang/String;)V
    .registers 2
    .param p1, "stProvider"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/supl/SUPLManager;->startCommnMgrs(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/android/supl/SUPLManager;->suplManager:Lcom/android/supl/SUPLManager;

    .line 62
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/android/supl/SUPLManager;->mPlatformService:Lcom/android/supl/loc/SUPLPlatformService;

    .line 65
    iput-object v1, p0, Lcom/android/supl/SUPLManager;->mSettings:Landroid/content/ContentQueryMap;

    .line 66
    iput-object v1, p0, Lcom/android/supl/SUPLManager;->mSuplscmService:Lcom/android/supl/commprocessor/SUPLSCMService;

    .line 67
    iput-object v1, p0, Lcom/android/supl/SUPLManager;->settingsObserver:Lcom/android/supl/SUPLManager$SettingsObserver;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/SUPLManager;->isGpsEnableReceReg:Z

    .line 69
    iput-object v1, p0, Lcom/android/supl/SUPLManager;->mContext:Landroid/content/Context;

    .line 71
    iput-object v1, p0, Lcom/android/supl/SUPLManager;->m_Handler:Landroid/os/Handler;

    .line 73
    iput-object v1, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/android/supl/SUPLManager;->mPlatformService:Lcom/android/supl/loc/SUPLPlatformService;

    .line 65
    iput-object v1, p0, Lcom/android/supl/SUPLManager;->mSettings:Landroid/content/ContentQueryMap;

    .line 66
    iput-object v1, p0, Lcom/android/supl/SUPLManager;->mSuplscmService:Lcom/android/supl/commprocessor/SUPLSCMService;

    .line 67
    iput-object v1, p0, Lcom/android/supl/SUPLManager;->settingsObserver:Lcom/android/supl/SUPLManager$SettingsObserver;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/SUPLManager;->isGpsEnableReceReg:Z

    .line 69
    iput-object v1, p0, Lcom/android/supl/SUPLManager;->mContext:Landroid/content/Context;

    .line 71
    iput-object v1, p0, Lcom/android/supl/SUPLManager;->m_Handler:Landroid/os/Handler;

    .line 73
    iput-object v1, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    .line 79
    sget-object v0, Lcom/android/supl/SUPLManager;->suplManager:Lcom/android/supl/SUPLManager;

    if-nez v0, :cond_2f

    .line 80
    sput-object p0, Lcom/android/supl/SUPLManager;->suplManager:Lcom/android/supl/SUPLManager;

    .line 84
    iput-object p1, p0, Lcom/android/supl/SUPLManager;->mContext:Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Lcom/android/supl/SUPLManager;->init()V

    .line 86
    new-instance v0, Lcom/android/supl/loc/SUPLPlatformService;

    invoke-direct {v0, p1}, Lcom/android/supl/loc/SUPLPlatformService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/supl/SUPLManager;->mPlatformService:Lcom/android/supl/loc/SUPLPlatformService;

    .line 87
    new-instance v0, Lcom/android/supl/commprocessor/SUPLSCMService;

    invoke-direct {v0, p1}, Lcom/android/supl/commprocessor/SUPLSCMService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/supl/SUPLManager;->mSuplscmService:Lcom/android/supl/commprocessor/SUPLSCMService;

    .line 77
    return-void

    .line 82
    :cond_2f
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Instance already created. call getIntance method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .registers 9
    .param p0, "delimitedString"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 207
    invoke-static {p0}, Lcom/android/supl/SUPLManager;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {p2}, Lcom/android/supl/SUPLManager;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 208
    :cond_e
    return v4

    .line 210
    :cond_f
    const/4 v2, -0x1

    .line 211
    .local v2, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 212
    .local v1, "length":I
    :cond_14
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_37

    .line 213
    if-lez v2, :cond_27

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_14

    .line 216
    :cond_27
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 217
    .local v0, "expectedDelimiterPos":I
    if-ne v0, v1, :cond_30

    .line 219
    return v5

    .line 221
    :cond_30
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_14

    .line 222
    return v5

    .line 225
    .end local v0    # "expectedDelimiterPos":I
    :cond_37
    return v4
.end method

.method private deregisterSettingObserver()V
    .registers 3

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/supl/SUPLManager;->isGpsEnableReceReg:Z

    if-eqz v0, :cond_e

    .line 165
    iget-object v0, p0, Lcom/android/supl/SUPLManager;->mSettings:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/supl/SUPLManager;->settingsObserver:Lcom/android/supl/SUPLManager$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/SUPLManager;->isGpsEnableReceReg:Z

    .line 163
    :cond_e
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/supl/SUPLManager;
    .registers 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/supl/SUPLManager;

    monitor-enter v1

    .line 93
    :try_start_3
    sget-object v0, Lcom/android/supl/SUPLManager;->suplManager:Lcom/android/supl/SUPLManager;

    if-nez v0, :cond_17

    .line 94
    new-instance v0, Lcom/android/supl/SUPLManager;

    invoke-direct {v0}, Lcom/android/supl/SUPLManager;-><init>()V

    sput-object v0, Lcom/android/supl/SUPLManager;->suplManager:Lcom/android/supl/SUPLManager;

    .line 95
    sget-object v0, Lcom/android/supl/SUPLManager;->suplManager:Lcom/android/supl/SUPLManager;

    iput-object p0, v0, Lcom/android/supl/SUPLManager;->mContext:Landroid/content/Context;

    .line 96
    sget-object v0, Lcom/android/supl/SUPLManager;->suplManager:Lcom/android/supl/SUPLManager;

    invoke-direct {v0}, Lcom/android/supl/SUPLManager;->init()V

    .line 98
    :cond_17
    sget-object v0, Lcom/android/supl/SUPLManager;->suplManager:Lcom/android/supl/SUPLManager;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init()V
    .registers 4

    .prologue
    .line 101
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/supl/SUPLManager;->m_Handler:Landroid/os/Handler;

    .line 102
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    .line 103
    .local v0, "configManager":Lcom/android/supl/config/ConfigManager;
    invoke-virtual {v0}, Lcom/android/supl/config/ConfigManager;->getSUPLVersion()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 104
    new-instance v1, Ljava/util/Vector;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    .line 105
    invoke-direct {p0}, Lcom/android/supl/SUPLManager;->registerSettingObserver()V

    .line 100
    :cond_1d
    return-void
.end method

.method private static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 200
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 201
    :cond_9
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_b
    return v1
.end method

.method private isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "provider"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "allowedProviders":Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p2}, Lcom/android/supl/SUPLManager;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private notifytoALLGpsDisableChanges()V
    .registers 4

    .prologue
    .line 130
    iget-object v2, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    if-eqz v2, :cond_1c

    .line 131
    iget-object v2, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "gpsOnOffListener$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/GpsOnOffListener;

    .line 132
    .local v0, "gpsOnOffListener":Lcom/android/supl/GpsOnOffListener;
    if-eqz v0, :cond_a

    .line 133
    invoke-interface {v0}, Lcom/android/supl/GpsOnOffListener;->onGPSLocationProviderDisabled()V

    goto :goto_a

    .line 129
    .end local v0    # "gpsOnOffListener":Lcom/android/supl/GpsOnOffListener;
    .end local v1    # "gpsOnOffListener$iterator":Ljava/util/Iterator;
    :cond_1c
    return-void
.end method

.method private notifytoALLGpsEnableChanges()V
    .registers 4

    .prologue
    .line 121
    iget-object v2, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    if-eqz v2, :cond_1c

    .line 122
    iget-object v2, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "gpsOnOffListener$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/GpsOnOffListener;

    .line 123
    .local v0, "gpsOnOffListener":Lcom/android/supl/GpsOnOffListener;
    if-eqz v0, :cond_a

    .line 124
    invoke-interface {v0}, Lcom/android/supl/GpsOnOffListener;->onGPSLocationProviderEnabled()V

    goto :goto_a

    .line 120
    .end local v0    # "gpsOnOffListener":Lcom/android/supl/GpsOnOffListener;
    .end local v1    # "gpsOnOffListener$iterator":Ljava/util/Iterator;
    :cond_1c
    return-void
.end method

.method private registerSettingObserver()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 140
    iget-boolean v1, p0, Lcom/android/supl/SUPLManager;->isGpsEnableReceReg:Z

    if-nez v1, :cond_3a

    .line 142
    iget-object v1, p0, Lcom/android/supl/SUPLManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 144
    const-string/jumbo v3, "(name=?)"

    .line 145
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "location_providers_allowed"

    const/4 v7, 0x0

    aput-object v5, v4, v7

    move-object v5, v2

    .line 143
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    .local v6, "settingsCursor":Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string/jumbo v3, "name"

    iget-object v4, p0, Lcom/android/supl/SUPLManager;->m_Handler:Landroid/os/Handler;

    invoke-direct {v1, v6, v3, v8, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/supl/SUPLManager;->mSettings:Landroid/content/ContentQueryMap;

    .line 148
    new-instance v1, Lcom/android/supl/SUPLManager$SettingsObserver;

    invoke-direct {v1, p0, v2}, Lcom/android/supl/SUPLManager$SettingsObserver;-><init>(Lcom/android/supl/SUPLManager;Lcom/android/supl/SUPLManager$SettingsObserver;)V

    iput-object v1, p0, Lcom/android/supl/SUPLManager;->settingsObserver:Lcom/android/supl/SUPLManager$SettingsObserver;

    .line 149
    iget-object v1, p0, Lcom/android/supl/SUPLManager;->mSettings:Landroid/content/ContentQueryMap;

    iget-object v2, p0, Lcom/android/supl/SUPLManager;->settingsObserver:Lcom/android/supl/SUPLManager$SettingsObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 150
    iput-boolean v8, p0, Lcom/android/supl/SUPLManager;->isGpsEnableReceReg:Z

    .line 139
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "settingsCursor":Landroid/database/Cursor;
    :cond_3a
    return-void
.end method

.method private startCommnMgrs(Ljava/lang/String;)V
    .registers 5
    .param p1, "stProvider"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/supl/SUPLManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 180
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v0, p1}, Lcom/android/supl/SUPLManager;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 181
    const-string/jumbo v1, "SUPL20_SUPLManager"

    const-string/jumbo v2, "Send GPS enable info"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/android/supl/SUPLManager;->notifytoALLGpsEnableChanges()V

    .line 177
    :goto_18
    return-void

    .line 184
    :cond_19
    const-string/jumbo v1, "SUPL20_SUPLManager"

    const-string/jumbo v2, "Send GPS disable info"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0}, Lcom/android/supl/SUPLManager;->notifytoALLGpsDisableChanges()V

    goto :goto_18
.end method


# virtual methods
.method public addGpsListener(Lcom/android/supl/GpsOnOffListener;)Z
    .registers 4
    .param p1, "gpsOnOffListener"    # Lcom/android/supl/GpsOnOffListener;

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "isAdded":Z
    iget-object v1, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    if-eqz v1, :cond_18

    if-eqz p1, :cond_18

    .line 111
    iget-object v1, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_12

    .line 112
    invoke-direct {p0}, Lcom/android/supl/SUPLManager;->registerSettingObserver()V

    .line 114
    :cond_12
    iget-object v1, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    .end local v0    # "isAdded":Z
    :cond_18
    return v0
.end method

.method public removeGpsListener(Lcom/android/supl/GpsOnOffListener;)Z
    .registers 4
    .param p1, "gpsOnOffListener"    # Lcom/android/supl/GpsOnOffListener;

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "isRemoved":Z
    iget-object v1, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    if-eqz v1, :cond_18

    if-eqz p1, :cond_18

    .line 156
    iget-object v1, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 157
    .local v0, "isRemoved":Z
    iget-object v1, p0, Lcom/android/supl/SUPLManager;->vecGpsListeners:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_18

    .line 158
    invoke-direct {p0}, Lcom/android/supl/SUPLManager;->deregisterSettingObserver()V

    .line 161
    .end local v0    # "isRemoved":Z
    :cond_18
    return v0
.end method
