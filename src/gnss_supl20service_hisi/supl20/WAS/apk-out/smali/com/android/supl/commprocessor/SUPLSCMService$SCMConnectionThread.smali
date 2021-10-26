.class public Lcom/android/supl/commprocessor/SUPLSCMService$SCMConnectionThread;
.super Ljava/lang/Object;
.source "SUPLSCMService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/commprocessor/SUPLSCMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCMConnectionThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/commprocessor/SUPLSCMService;


# direct methods
.method public constructor <init>(Lcom/android/supl/commprocessor/SUPLSCMService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/SUPLSCMService;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/supl/commprocessor/SUPLSCMService$SCMConnectionThread;->this$0:Lcom/android/supl/commprocessor/SUPLSCMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 131
    const/4 v3, 0x1

    .line 132
    .local v3, "isLogEnable":Z
    const/4 v0, 0x0

    .line 135
    .local v0, "connected":Z
    const/4 v4, 0x1

    .line 136
    .end local v0    # "connected":Z
    .local v4, "isOneTimeLog":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 138
    if-nez v0, :cond_2

    .line 139
    if-eqz v3, :cond_1

    .line 141
    :try_start_0
    const-string/jumbo v5, "SUPL20_SCMService"

    const-string/jumbo v6, "SCM is trying to connect.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string/jumbo v5, "SUPL20_SCMService"

    const-string/jumbo v6, "SUPL Services version: 2.13.0.3"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    const-wide/16 v6, 0x7d0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 145
    const/4 v4, 0x1

    .line 148
    :cond_2
    iget-object v5, p0, Lcom/android/supl/commprocessor/SUPLSCMService$SCMConnectionThread;->this$0:Lcom/android/supl/commprocessor/SUPLSCMService;

    invoke-static {v5}, Lcom/android/supl/commprocessor/SUPLSCMService;->-get0(Lcom/android/supl/commprocessor/SUPLSCMService;)Lcom/android/supl/commprocessor/ServerCommProcessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/supl/commprocessor/ServerCommProcessor;->init()Z

    move-result v0

    .line 150
    .local v0, "connected":Z
    if-eqz v0, :cond_5

    .line 151
    if-eqz v4, :cond_3

    .line 152
    const/4 v4, 0x0

    .line 153
    const-string/jumbo v5, "SUPL20_SCMService"

    const-string/jumbo v6, "SCM connect.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_3
    iget-object v5, p0, Lcom/android/supl/commprocessor/SUPLSCMService$SCMConnectionThread;->this$0:Lcom/android/supl/commprocessor/SUPLSCMService;

    iget-object v5, v5, Lcom/android/supl/commprocessor/SUPLSCMService;->datagramServer:Lcom/android/supl/commprocessor/DatagramServer;

    if-eqz v5, :cond_0

    .line 163
    const-string/jumbo v5, "SUPL20_SCMService"

    const-string/jumbo v6, "Trying to start the UDP server"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v5, p0, Lcom/android/supl/commprocessor/SUPLSCMService$SCMConnectionThread;->this$0:Lcom/android/supl/commprocessor/SUPLSCMService;

    iget-object v5, v5, Lcom/android/supl/commprocessor/SUPLSCMService;->datagramServer:Lcom/android/supl/commprocessor/DatagramServer;

    invoke-virtual {v5}, Lcom/android/supl/commprocessor/DatagramServer;->startServer()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 167
    .end local v0    # "connected":Z
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string/jumbo v5, "SUPL20_SCMService"

    const-string/jumbo v6, "SCM: connection exit"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 130
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_4
    :goto_1
    return-void

    .line 158
    .restart local v0    # "connected":Z
    :cond_5
    :try_start_2
    const-string/jumbo v5, "SUPL20_SCMService"

    const-string/jumbo v6, "SCM not connect.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 170
    .end local v0    # "connected":Z
    :catch_1
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "SUPL20_SCMService"

    const-string/jumbo v6, "SCM: Error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 176
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 177
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SUPL20_SCMService"

    const-string/jumbo v6, "SCM Connection: Error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    const/4 v0, 0x0

    .local v0, "connected":Z
    goto :goto_1
.end method
