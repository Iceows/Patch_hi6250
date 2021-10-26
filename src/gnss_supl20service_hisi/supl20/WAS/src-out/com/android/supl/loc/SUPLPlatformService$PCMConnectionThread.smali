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
    .registers 2
    .param p1, "this$0"    # Lcom/android/supl/loc/SUPLPlatformService;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/supl/loc/SUPLPlatformService$PCMConnectionThread;->this$0:Lcom/android/supl/loc/SUPLPlatformService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 156
    const/4 v3, 0x1

    .line 157
    .local v3, "isLogEnable":Z
    const/4 v0, 0x0

    .line 159
    .local v0, "connected":Z
    if-eqz v3, :cond_16

    .line 161
    :try_start_4
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "PCM try to connect.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "SUPL Services version:2.13.0.3"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_16
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "running"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1f} :catch_77

    .line 166
    const/4 v4, 0x1

    .line 167
    .end local v0    # "connected":Z
    .local v4, "isOneTimeLog":Z
    :cond_20
    :goto_20
    if-nez v0, :cond_61

    .line 170
    if-nez v0, :cond_3e

    .line 171
    if-eqz v3, :cond_38

    .line 173
    :try_start_26
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "PCM try to connect.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "SUPL Services version:2.13.0.3"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_38
    const-wide/16 v6, 0x7d0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 177
    const/4 v4, 0x1

    .line 179
    :cond_3e
    iget-object v5, p0, Lcom/android/supl/loc/SUPLPlatformService$PCMConnectionThread;->this$0:Lcom/android/supl/loc/SUPLPlatformService;

    invoke-static {v5}, Lcom/android/supl/loc/SUPLPlatformService;->-get0(Lcom/android/supl/loc/SUPLPlatformService;)Lcom/android/supl/commprocessor/NDKCommProcessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/supl/commprocessor/NDKCommProcessor;->init()Z

    move-result v0

    .line 181
    .local v0, "connected":Z
    if-eqz v0, :cond_62

    .line 182
    if-eqz v4, :cond_20

    .line 183
    const/4 v4, 0x0

    .line 184
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "PCM connect.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_56} :catch_57
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_56} :catch_6c

    goto :goto_20

    .line 193
    .end local v0    # "connected":Z
    :catch_57
    move-exception v2

    .line 194
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_58
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "PCM: connection exit"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_61} :catch_77

    .line 155
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "isOneTimeLog":Z
    :cond_61
    :goto_61
    return-void

    .line 189
    .restart local v0    # "connected":Z
    .restart local v4    # "isOneTimeLog":Z
    :cond_62
    :try_start_62
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "PCM not connect.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_6b} :catch_57
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6b} :catch_6c

    goto :goto_61

    .line 196
    .end local v0    # "connected":Z
    :catch_6c
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6d
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "PCM: Error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_76} :catch_77

    goto :goto_20

    .line 202
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "isOneTimeLog":Z
    :catch_77
    move-exception v1

    .line 203
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SUPL20_PCMService"

    const-string/jumbo v6, "PCM Connection: Error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    const/4 v0, 0x0

    .local v0, "connected":Z
    goto :goto_61
.end method
