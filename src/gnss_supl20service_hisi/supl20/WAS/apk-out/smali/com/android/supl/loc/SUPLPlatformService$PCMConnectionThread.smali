.class public Lcom/android/supl/loc/SUPLPlatformService$PCMConnectionThread;
.super Ljava/lang/Object;
.source "SUPLPlatformService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/SUPLPlatformService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PCMConnectionThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/loc/SUPLPlatformService;


# direct methods
.method public constructor <init>(Lcom/android/supl/loc/SUPLPlatformService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/loc/SUPLPlatformService;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/supl/loc/SUPLPlatformService$PCMConnectionThread;->this$0:Lcom/android/supl/loc/SUPLPlatformService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 156
    const/4 v3, 0x1

    .line 157
    .local v3, "isLogEnable":Z
    const/4 v0, 0x0

    .line 159
    .local v0, "connected":Z
    if-eqz v3, :cond_0

    .line 161
    :try_start_0
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "PCM try to connect.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "SUPL Services version:2.13.0.3"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "running"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 166
    const/4 v4, 0x1

    .line 167
    .end local v0    # "connected":Z
    .local v4, "isOneTimeLog":Z
    :cond_1
    :goto_0
    if-nez v0, :cond_4

    .line 170
    if-nez v0, :cond_3

    .line 171
    if-eqz v3, :cond_2

    .line 173
    :try_start_1
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "PCM try to connect.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "SUPL Services version:2.13.0.3"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_2
    const-wide/16 v6, 0x7d0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 177
    const/4 v4, 0x1

    .line 179
    :cond_3
    iget-object v5, p0, Lcom/android/supl/loc/SUPLPlatformService$PCMConnectionThread;->this$0:Lcom/android/supl/loc/SUPLPlatformService;

    invoke-static {v5}, Lcom/android/supl/loc/SUPLPlatformService;->-get0(Lcom/android/supl/loc/SUPLPlatformService;)Lcom/android/supl/commprocessor/NDKCommProcessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/supl/commprocessor/NDKCommProcessor;->init()Z

    move-result v0

    .line 181
    .local v0, "connected":Z
    if-eqz v0, :cond_5

    .line 182
    if-eqz v4, :cond_1

    .line 183
    const/4 v4, 0x0

    .line 184
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "PCM connect.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 193
    .end local v0    # "connected":Z
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "PCM: connection exit"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 155
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "isOneTimeLog":Z
    :cond_4
    :goto_1
    return-void

    .line 189
    .restart local v0    # "connected":Z
    .restart local v4    # "isOneTimeLog":Z
    :cond_5
    :try_start_3
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "PCM not connect.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 196
    .end local v0    # "connected":Z
    :catch_1
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "PCM: Error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 202
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "isOneTimeLog":Z
    :catch_2
    move-exception v1

    .line 203
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "PCM Connection: Error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    const/4 v0, 0x0

    .local v0, "connected":Z
    goto :goto_1
.end method
