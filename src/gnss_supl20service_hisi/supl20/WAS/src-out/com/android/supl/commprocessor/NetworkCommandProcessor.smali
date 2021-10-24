.class public Lcom/android/supl/commprocessor/NetworkCommandProcessor;
.super Ljava/lang/Object;
.source "NetworkCommandProcessor.java"

# interfaces
.implements Lcom/android/supl/commprocessor/CommandProcessor;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_NetCP"

.field private static final MAX_NETWORK_ID:I = 0xff

.field public static sNetworkID:I


# instance fields
.field private configManager:Lcom/android/supl/config/ConfigManager;

.field private netWorkIDSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private scp:Lcom/android/supl/commprocessor/ServerCommProcessor;

.field private slpSession:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/supl/nc/NetworkController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/supl/commprocessor/NetworkCommandProcessor;)Ljava/util/HashSet;
    .registers 2
    .param p0, "-this"    # Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    .prologue
    iget-object v0, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->netWorkIDSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/supl/commprocessor/NetworkCommandProcessor;Lcom/android/supl/nc/NetworkController;Ljava/lang/String;)V
    .registers 3
    .param p0, "-this"    # Lcom/android/supl/commprocessor/NetworkCommandProcessor;
    .param p1, "nc"    # Lcom/android/supl/nc/NetworkController;
    .param p2, "stKey"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->removeConnectFailerSession(Lcom/android/supl/nc/NetworkController;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const/4 v0, -0x1

    sput v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/android/supl/commprocessor/ServerCommProcessor;)V
    .registers 3
    .param p1, "cp"    # Lcom/android/supl/commprocessor/ServerCommProcessor;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    .line 59
    iput-object v0, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->scp:Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 61
    iput-object v0, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->netWorkIDSet:Ljava/util/HashSet;

    .line 64
    invoke-static {}, Lcom/android/supl/config/ConfigManager;->getInstance()Lcom/android/supl/config/ConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->configManager:Lcom/android/supl/config/ConfigManager;

    .line 66
    iput-object p1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->scp:Lcom/android/supl/commprocessor/ServerCommProcessor;

    .line 67
    return-void
.end method

.method private removeConnectFailerSession(Lcom/android/supl/nc/NetworkController;Ljava/lang/String;)V
    .registers 8
    .param p1, "nc"    # Lcom/android/supl/nc/NetworkController;
    .param p2, "stKey"    # Ljava/lang/String;

    .prologue
    .line 442
    iget-object v2, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    monitor-enter v2

    .line 443
    :try_start_3
    invoke-virtual {p1}, Lcom/android/supl/nc/NetworkController;->getConnectionCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2e

    .line 444
    iget-object v1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/nc/NetworkController;

    .line 445
    .local v0, "networkController":Lcom/android/supl/nc/NetworkController;
    const-string/jumbo v1, "SUPL20_NetCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removed Session  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_32

    .end local v0    # "networkController":Lcom/android/supl/nc/NetworkController;
    :goto_2c
    monitor-exit v2

    .line 451
    return-void

    .line 448
    :cond_2e
    :try_start_2e
    invoke-virtual {p1}, Lcom/android/supl/nc/NetworkController;->decrementConnectionCount()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_2c

    .line 442
    :catchall_32
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public connect(Ljava/lang/String;IIIIII)Z
    .registers 21
    .param p1, "stIP"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "iSecure"    # I
    .param p4, "iSessionID"    # I
    .param p5, "iReqID"    # I
    .param p6, "iHandShakeTimeOut"    # I
    .param p7, "iConnTimeOut"    # I

    .prologue
    .line 249
    invoke-virtual/range {p0 .. p3}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->getSNC(Ljava/lang/String;II)Lcom/android/supl/nc/NetworkController;

    move-result-object v4

    .line 251
    .local v4, "networkController":Lcom/android/supl/nc/NetworkController;
    new-instance v2, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;

    move-object v3, p0

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v7, p1

    move v8, p2

    move/from16 v9, p3

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v2 .. v11}, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;-><init>(Lcom/android/supl/commprocessor/NetworkCommandProcessor;Lcom/android/supl/nc/NetworkController;IILjava/lang/String;IIII)V

    .line 283
    .local v2, "connThread":Ljava/lang/Thread;
    if-eqz v4, :cond_83

    .line 284
    invoke-virtual {v4, p0}, Lcom/android/supl/nc/NetworkController;->setNetworkCommProceeor(Lcom/android/supl/commprocessor/NetworkCommandProcessor;)V

    .line 285
    invoke-virtual {v4}, Lcom/android/supl/nc/NetworkController;->isConnected()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NetCM connection thread SID:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 301
    :goto_3d
    const/4 v3, 0x0

    return v3

    .line 289
    :cond_3f
    const-string/jumbo v3, "SUPL20_NetCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Req id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 290
    const-string/jumbo v6, " is connected to "

    .line 289
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 290
    invoke-virtual {v4}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v6

    .line 289
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v4}, Lcom/android/supl/nc/NetworkController;->getNetWorkID()I

    move-result v3

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sendOnConnectionStatus(III)V

    goto :goto_3d

    .line 295
    :cond_83
    const/4 v3, 0x1

    new-array v12, v3, [I

    .line 296
    .local v12, "iFailStatus":[I
    const-string/jumbo v3, "SUPL20_NetCP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Req id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 297
    const-string/jumbo v6, " is not connect for no more connection allowed"

    .line 296
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v3, v12, v5

    .line 299
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p0, v0, v1, v12}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sendNotConnectionStatus(II[I)V

    goto/16 :goto_3d
.end method

.method public disConnectAllNetWork()V
    .registers 9

    .prologue
    .line 198
    const-string/jumbo v4, "SUPL20_NetCP"

    const-string/jumbo v5, "disConnectAllNetWork Entry"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    if-eqz v4, :cond_6f

    .line 200
    iget-object v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    monitor-enter v5

    .line 201
    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 202
    .local v1, "ncSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "stNetKey$iterator":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 203
    .local v2, "stNetKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/nc/NetworkController;

    .line 204
    .local v0, "nc":Lcom/android/supl/nc/NetworkController;
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z

    .line 205
    const-string/jumbo v4, "SUPL20_NetCP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Stop network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_10 .. :try_end_57} :catchall_58

    goto :goto_1f

    .line 200
    .end local v0    # "nc":Lcom/android/supl/nc/NetworkController;
    .end local v1    # "ncSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "stNetKey":Ljava/lang/String;
    .end local v3    # "stNetKey$iterator":Ljava/util/Iterator;
    :catchall_58
    move-exception v4

    monitor-exit v5

    throw v4

    .line 207
    .restart local v1    # "ncSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "stNetKey$iterator":Ljava/util/Iterator;
    :cond_5b
    :try_start_5b
    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 208
    const-string/jumbo v4, "SUPL20_NetCP"

    const-string/jumbo v6, "Cleared slpSession"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->netWorkIDSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V
    :try_end_6e
    .catchall {:try_start_5b .. :try_end_6e} :catchall_58

    monitor-exit v5

    .line 212
    .end local v1    # "ncSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "stNetKey$iterator":Ljava/util/Iterator;
    :cond_6f
    const-string/jumbo v4, "SUPL20_NetCP"

    const-string/jumbo v5, "disConnectAllNetWork Exit"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method public disconnectByNetworkID(I)V
    .registers 10
    .param p1, "iNeworkID"    # I

    .prologue
    .line 220
    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    if-eqz v4, :cond_4c

    .line 221
    iget-object v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    monitor-enter v5

    .line 222
    :try_start_7
    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 223
    .local v1, "ncSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "stNetKey$iterator":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 224
    .local v2, "stNetKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/nc/NetworkController;

    .line 225
    .local v0, "nc":Lcom/android/supl/nc/NetworkController;
    invoke-virtual {v0, p1}, Lcom/android/supl/nc/NetworkController;->isNetWorkMatch(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 226
    const-string/jumbo v4, "SUPL20_NetCP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Stop network by NeworkID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_4d

    .end local v0    # "nc":Lcom/android/supl/nc/NetworkController;
    .end local v2    # "stNetKey":Ljava/lang/String;
    :cond_4b
    monitor-exit v5

    .line 235
    .end local v1    # "ncSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "stNetKey$iterator":Ljava/util/Iterator;
    :cond_4c
    return-void

    .line 221
    :catchall_4d
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getNetKey(Ljava/lang/String;III)Ljava/lang/String;
    .registers 10
    .param p1, "stIP"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "iSecure"    # I
    .param p4, "iNetWID"    # I

    .prologue
    .line 155
    const-string/jumbo v2, "SUPL20_NetCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNetKey Entry with stIP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "port:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "iSecure:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "NWID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, "st_key":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "st_key":Ljava/lang/String;
    return-object v1
.end method

.method public getSNC(Ljava/lang/String;II)Lcom/android/supl/nc/NetworkController;
    .registers 23
    .param p1, "stIP"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "iSecure"    # I

    .prologue
    .line 77
    const-string/jumbo v5, "SUPL20_NetCP"

    const-string/jumbo v6, "getSNC Entry"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v4, 0x0

    .line 79
    .local v4, "nc":Lcom/android/supl/nc/NetworkController;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    if-nez v5, :cond_19

    .line 80
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    .line 82
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->netWorkIDSet:Ljava/util/HashSet;

    if-nez v5, :cond_29

    .line 83
    new-instance v5, Ljava/util/HashSet;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->netWorkIDSet:Ljava/util/HashSet;

    .line 85
    :cond_29
    const/4 v15, 0x0

    .line 86
    .local v15, "isNoMoreFreeNetwork":Z
    const/4 v13, 0x0

    .local v13, "iNoNetIterateCount":I
    move-object/from16 v16, v4

    .line 88
    .end local v4    # "nc":Lcom/android/supl/nc/NetworkController;
    .local v16, "nc":Lcom/android/supl/nc/NetworkController;
    :goto_2d
    sget v5, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    const/16 v6, 0xff

    if-ne v5, v6, :cond_36

    .line 89
    const/4 v5, -0x1

    sput v5, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    .line 91
    :cond_36
    sget v5, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    .line 92
    add-int/lit8 v13, v13, 0x1

    .line 93
    sget v5, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->getNetKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v17

    .line 94
    .local v17, "st_key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 95
    :try_start_53
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13a

    .line 97
    new-instance v4, Lcom/android/supl/nc/NetworkController;

    const-string/jumbo v9, "NetCM read thread"

    .line 98
    const-string/jumbo v10, "NetCM write thread"

    const/4 v11, 0x0

    move/from16 v5, p3

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p0

    .line 97
    invoke-direct/range {v4 .. v11}, Lcom/android/supl/nc/NetworkController;-><init>(ILjava/lang/String;ILcom/android/supl/commprocessor/CommandProcessor;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_73
    .catchall {:try_start_53 .. :try_end_73} :catchall_14d

    .line 102
    .end local v16    # "nc":Lcom/android/supl/nc/NetworkController;
    .local v4, "nc":Lcom/android/supl/nc/NetworkController;
    const/4 v12, 0x0

    .line 103
    .local v12, "iIterateCount":I
    const/4 v14, 0x0

    .line 106
    .local v14, "isFreeNetWorkIDFound":Z
    :cond_75
    :try_start_75
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->netWorkIDSet:Ljava/util/HashSet;

    sget v6, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_fc

    .line 107
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->netWorkIDSet:Ljava/util/HashSet;

    sget v6, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    const/4 v14, 0x1

    .line 124
    :cond_93
    if-eqz v14, :cond_75

    .line 125
    const-string/jumbo v5, "SUPL20_NetCP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "New Network id :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is created"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget v5, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    invoke-virtual {v4, v5}, Lcom/android/supl/nc/NetworkController;->setNetWorkID(I)V

    .line 127
    sget v5, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->getNetKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v17

    .line 128
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .end local v12    # "iIterateCount":I
    .end local v14    # "isFreeNetWorkIDFound":Z
    :goto_d4
    invoke-virtual {v4}, Lcom/android/supl/nc/NetworkController;->upDateConnectionCount()V

    .line 147
    const-string/jumbo v5, "SUPL20_NetCP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSNC Exit with concount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/supl/nc/NetworkController;->getConnectionCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_75 .. :try_end_f5} :catchall_153

    monitor-exit v18

    .line 149
    if-eqz v15, :cond_152

    move-object/from16 v16, v4

    .end local v4    # "nc":Lcom/android/supl/nc/NetworkController;
    .restart local v16    # "nc":Lcom/android/supl/nc/NetworkController;
    goto/16 :goto_2d

    .line 110
    .end local v16    # "nc":Lcom/android/supl/nc/NetworkController;
    .restart local v4    # "nc":Lcom/android/supl/nc/NetworkController;
    .restart local v12    # "iIterateCount":I
    .restart local v14    # "isFreeNetWorkIDFound":Z
    :cond_fc
    const/4 v14, 0x0

    .line 111
    :try_start_fd
    sget v5, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    .line 112
    add-int/lit8 v12, v12, 0x1

    .line 113
    sget v5, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    const/16 v6, 0xff

    if-ne v5, v6, :cond_10e

    .line 114
    const/4 v5, -0x1

    sput v5, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    .line 116
    :cond_10e
    const-string/jumbo v5, "SUPL20_NetCP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No free Network id :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/16 v5, 0xff

    if-ne v12, v5, :cond_93

    .line 118
    const-string/jumbo v5, "SUPL20_NetCP"

    const-string/jumbo v6, "Never obtained free Network id "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_137
    .catchall {:try_start_fd .. :try_end_137} :catchall_153

    .line 120
    const/4 v5, 0x0

    monitor-exit v18

    return-object v5

    .line 142
    .end local v4    # "nc":Lcom/android/supl/nc/NetworkController;
    .end local v12    # "iIterateCount":I
    .end local v14    # "isFreeNetWorkIDFound":Z
    .restart local v16    # "nc":Lcom/android/supl/nc/NetworkController;
    :cond_13a
    :try_start_13a
    sget v5, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    add-int/lit8 v5, v5, -0x1

    sput v5, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    .line 143
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/supl/nc/NetworkController;
    :try_end_14c
    .catchall {:try_start_13a .. :try_end_14c} :catchall_14d

    .end local v16    # "nc":Lcom/android/supl/nc/NetworkController;
    .restart local v4    # "nc":Lcom/android/supl/nc/NetworkController;
    goto :goto_d4

    .line 94
    .end local v4    # "nc":Lcom/android/supl/nc/NetworkController;
    .restart local v16    # "nc":Lcom/android/supl/nc/NetworkController;
    :catchall_14d
    move-exception v5

    move-object/from16 v4, v16

    .end local v16    # "nc":Lcom/android/supl/nc/NetworkController;
    .restart local v4    # "nc":Lcom/android/supl/nc/NetworkController;
    :goto_150
    monitor-exit v18

    throw v5

    .line 150
    :cond_152
    return-object v4

    .line 94
    :catchall_153
    move-exception v5

    goto :goto_150
.end method

.method public init()Z
    .registers 2

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public process(Lcom/android/supl/commprocessor/FromServer;)V
    .registers 2
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;

    .prologue
    .line 431
    return-void
.end method

.method public removeFailerSession(Ljava/lang/String;)V
    .registers 7
    .param p1, "stKey"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v2, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    monitor-enter v2

    .line 455
    :try_start_3
    iget-object v1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/nc/NetworkController;

    .line 456
    .local v0, "networkController":Lcom/android/supl/nc/NetworkController;
    const-string/jumbo v1, "SUPL20_NetCP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removed Session  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    monitor-exit v2

    .line 458
    return-void

    .line 454
    .end local v0    # "networkController":Lcom/android/supl/nc/NetworkController;
    :catchall_27
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public sendByeMessage()V
    .registers 1

    .prologue
    .line 416
    return-void
.end method

.method public sendDataByNetworkID([BI)Z
    .registers 13
    .param p1, "bData"    # [B
    .param p2, "iNeworkID"    # I

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "isFindSLPSession":Z
    iget-object v7, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    monitor-enter v7

    .line 177
    :try_start_4
    iget-object v6, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 178
    .local v2, "ncSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "stNetKey$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_94

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 179
    .local v4, "stNetKey":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/supl/nc/NetworkController;

    .line 180
    .local v1, "nc":Lcom/android/supl/nc/NetworkController;
    const-string/jumbo v6, "SUPL20_NetCP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "nc stNetKey"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string/jumbo v6, "SUPL20_NetCP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "incoming network id ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "session networkid ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->getNetWorkID()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {v1, p2}, Lcom/android/supl/nc/NetworkController;->isNetWorkMatch(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 183
    new-instance v3, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v3}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 184
    .local v3, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iput-object p1, v3, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 185
    const-string/jumbo v6, "SUPL20_NetCP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NetworkCP Send to server "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v1, v3}, Lcom/android/supl/nc/NetworkController;->addPacket(Lcom/android/supl/nc/SendToServer;)V
    :try_end_93
    .catchall {:try_start_4 .. :try_end_93} :catchall_96

    .line 187
    const/4 v0, 0x1

    .end local v1    # "nc":Lcom/android/supl/nc/NetworkController;
    .end local v3    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    .end local v4    # "stNetKey":Ljava/lang/String;
    :cond_94
    monitor-exit v7

    .line 192
    return v0

    .line 176
    .end local v2    # "ncSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "stNetKey$iterator":Ljava/util/Iterator;
    :catchall_96
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public sendHelloMessage()V
    .registers 1

    .prologue
    .line 411
    return-void
.end method

.method public sendNotConnectionStatus(II[I)V
    .registers 8
    .param p1, "iSessionID"    # I
    .param p2, "iReqID"    # I
    .param p3, "iFailStatus"    # [I

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "bSendConnect":[B
    const/4 v2, 0x0

    .line 334
    .local v2, "offset":I
    const/16 v3, 0xf

    new-array v0, v3, [B

    .line 336
    .local v0, "bSendConnect":[B
    const/16 v3, 0xb

    invoke-static {v0, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 337
    const/16 v3, 0x207

    invoke-static {v0, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 338
    invoke-static {v0, v2, p1}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v2

    .line 339
    invoke-static {v0, v2, p2}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 340
    const/4 v3, 0x0

    aget v3, p3, v3

    invoke-static {v0, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 341
    new-instance v1, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v1}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 342
    .local v1, "fromServer":Lcom/android/supl/commprocessor/FromServer;
    iput-object v0, v1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 343
    invoke-virtual {p0, v1}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    .line 345
    return-void
.end method

.method public sendOnConnectionStatus(III)V
    .registers 9
    .param p1, "iSessionID"    # I
    .param p2, "iReqID"    # I
    .param p3, "iNwSID"    # I

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "bSendConnect":[B
    const/4 v2, 0x0

    .line 312
    .local v2, "offset":I
    const-string/jumbo v3, "SUPL20_NetCP"

    const-string/jumbo v4, "send sendOnConnectionStatus "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/16 v3, 0xc

    new-array v0, v3, [B

    .line 314
    .local v0, "bSendConnect":[B
    const/16 v3, 0x8

    invoke-static {v0, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 315
    const/16 v3, 0x206

    invoke-static {v0, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 316
    invoke-static {v0, v2, p1}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v2

    .line 317
    invoke-static {v0, v2, p2}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 318
    invoke-static {v0, v2, p3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 320
    new-instance v1, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v1}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 321
    .local v1, "fromServer":Lcom/android/supl/commprocessor/FromServer;
    iput-object v0, v1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 322
    invoke-virtual {p0, v1}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    .line 324
    return-void
.end method

.method public sendOnNetWorkSessionClose(I)V
    .registers 13
    .param p1, "iNwSID"    # I

    .prologue
    const/16 v10, 0x9

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "bSendConnect":[B
    const/4 v4, 0x0

    .line 373
    .local v4, "offset":I
    const-string/jumbo v7, "SUPL20_NetCP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Network id :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is closed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/16 v7, 0xd

    new-array v0, v7, [B

    .line 376
    .local v0, "bSendConnect":[B
    invoke-static {v0, v4, v10}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 377
    const/16 v7, 0x209

    invoke-static {v0, v4, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 378
    invoke-static {v0, v4, p1}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v4

    .line 379
    const/4 v7, 0x0

    invoke-static {v0, v4, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 380
    add-int/lit8 v7, v4, -0x4

    if-eq v7, v10, :cond_48

    .line 381
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, " invalid length"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 383
    :cond_48
    new-instance v1, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v1}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 384
    .local v1, "fromServer":Lcom/android/supl/commprocessor/FromServer;
    iput-object v0, v1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 385
    invoke-virtual {p0, v1}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    .line 386
    iget-object v8, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    monitor-enter v8

    .line 387
    :try_start_55
    iget-object v7, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 388
    .local v3, "ncSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "stNetKey$iterator":Ljava/util/Iterator;
    :cond_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 389
    .local v5, "stNetKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/supl/nc/NetworkController;

    .line 390
    .local v2, "nc":Lcom/android/supl/nc/NetworkController;
    invoke-virtual {v2, p1}, Lcom/android/supl/nc/NetworkController;->isNetWorkMatch(I)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 391
    iget-object v7, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->slpSession:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v7, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->netWorkIDSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 393
    const-string/jumbo v7, "SUPL20_NetCP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/supl/nc/NetworkController;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " remove from SLP session "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_55 .. :try_end_a5} :catchall_a8

    .line 394
    const/4 v2, 0x0

    .end local v2    # "nc":Lcom/android/supl/nc/NetworkController;
    .end local v5    # "stNetKey":Ljava/lang/String;
    :cond_a6
    monitor-exit v8

    .line 400
    return-void

    .line 386
    .end local v3    # "ncSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "stNetKey$iterator":Ljava/util/Iterator;
    :catchall_a8
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetworkController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sNetworkID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writePacket(Lcom/android/supl/commprocessor/FromServer;)V
    .registers 4
    .param p1, "fromServer"    # Lcom/android/supl/commprocessor/FromServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 422
    new-instance v0, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v0}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 423
    .local v0, "sendToServer":Lcom/android/supl/nc/SendToServer;
    iget-object v1, p1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    iput-object v1, v0, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 424
    iget-object v1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->scp:Lcom/android/supl/commprocessor/ServerCommProcessor;

    invoke-virtual {v1, v0}, Lcom/android/supl/commprocessor/ServerCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 426
    return-void
.end method
