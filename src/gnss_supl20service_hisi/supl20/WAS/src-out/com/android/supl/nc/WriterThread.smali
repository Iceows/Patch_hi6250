.class public Lcom/android/supl/nc/WriterThread;
.super Ljava/lang/Object;
.source "WriterThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_SPIMESLP-SENDING"

.field private static final m_iBufferSize:I = 0xa


# instance fields
.field private deque:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/supl/nc/SendToServer;",
            ">;"
        }
    .end annotation
.end field

.field private iNetWorkID:I

.field private iNumberOfMessageOnQueue:I

.field private transient isBrokenPipe:Z

.field private isReadyForColse:Z

.field private isStopWrite:Z

.field private m_CilentSocket:Ljava/net/Socket;

.field private nc:Lcom/android/supl/nc/NetworkController;

.field private objMyWriteLock:Ljava/lang/Object;

.field private out:Ljava/io/OutputStream;

.field private workerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/supl/nc/NetworkController;I)V
    .registers 7
    .param p2, "nc"    # Lcom/android/supl/nc/NetworkController;
    .param p3, "iNetWorkID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/supl/nc/SendToServer;",
            ">;",
            "Lcom/android/supl/nc/NetworkController;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p1, "deque":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/android/supl/nc/SendToServer;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/android/supl/nc/WriterThread;->deque:Ljava/util/concurrent/BlockingQueue;

    .line 56
    iput-object v1, p0, Lcom/android/supl/nc/WriterThread;->m_CilentSocket:Ljava/net/Socket;

    .line 57
    iput-boolean v2, p0, Lcom/android/supl/nc/WriterThread;->isStopWrite:Z

    .line 58
    iput-object v1, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    .line 59
    iput-object v1, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    .line 62
    iput-object v1, p0, Lcom/android/supl/nc/WriterThread;->out:Ljava/io/OutputStream;

    .line 63
    iput-boolean v2, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    .line 142
    iput v2, p0, Lcom/android/supl/nc/WriterThread;->iNumberOfMessageOnQueue:I

    .line 143
    iput-object v1, p0, Lcom/android/supl/nc/WriterThread;->objMyWriteLock:Ljava/lang/Object;

    .line 144
    iput-boolean v2, p0, Lcom/android/supl/nc/WriterThread;->isReadyForColse:Z

    .line 69
    if-nez p1, :cond_27

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "deque object  must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_27
    iput-object p1, p0, Lcom/android/supl/nc/WriterThread;->deque:Ljava/util/concurrent/BlockingQueue;

    .line 74
    iput p3, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    .line 75
    iput-object p2, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    .line 77
    return-void
.end method

.method private notifyToCloseConnection()V
    .registers 3

    .prologue
    .line 147
    iget-object v1, p0, Lcom/android/supl/nc/WriterThread;->objMyWriteLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isReadyForColse:Z

    .line 153
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->objMyWriteLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    monitor-exit v1

    .line 155
    return-void

    .line 147
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendError()V
    .registers 9

    .prologue
    .line 228
    iget-object v5, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    if-eqz v5, :cond_5b

    .line 229
    iget-object v5, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v5}, Lcom/android/supl/nc/NetworkController;->getNetworkCommandProcessor()Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    move-result-object v1

    .line 230
    .local v1, "cp":Lcom/android/supl/commprocessor/CommandProcessor;
    iget v5, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5b

    .line 231
    if-eqz v1, :cond_5b

    instance-of v5, v1, Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    if-eqz v5, :cond_5b

    .line 232
    const/16 v4, 0x9

    .line 233
    .local v4, "iSize":I
    const/16 v5, 0xd

    new-array v0, v5, [B

    .line 234
    .local v0, "bData":[B
    const/4 v3, 0x0

    .line 235
    .local v3, "iOffset":I
    invoke-static {v0, v3, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 236
    const/16 v5, 0x209

    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 237
    iget v5, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v3

    .line 238
    const/4 v5, 0x1

    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 239
    new-instance v2, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v2}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 240
    .local v2, "fs":Lcom/android/supl/commprocessor/FromServer;
    iput-object v0, v2, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 241
    const-string/jumbo v5, "SUPL20_SPIMESLP-SENDING"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " send connection error msg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-interface {v1, v2}, Lcom/android/supl/commprocessor/CommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    .line 246
    .end local v0    # "bData":[B
    .end local v1    # "cp":Lcom/android/supl/commprocessor/CommandProcessor;
    .end local v2    # "fs":Lcom/android/supl/commprocessor/FromServer;
    .end local v3    # "iOffset":I
    .end local v4    # "iSize":I
    :cond_5b
    return-void
.end method

.method private write(Lcom/android/supl/nc/SendToServer;)V
    .registers 9
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;

    .prologue
    .line 173
    :try_start_0
    iget v3, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_ad

    .line 174
    iget-object v3, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v3}, Lcom/android/supl/nc/NetworkController;->IsSCM()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 175
    invoke-static {}, Lcom/android/supl/nc/SuplServiceMgr;->getInstance()Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/supl/nc/SuplServiceMgr;->writeToScm(Lcom/android/supl/nc/SendToServer;)V
    :try_end_14
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_0 .. :try_end_14} :catch_49
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_14} :catch_10c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_14a
    .catchall {:try_start_0 .. :try_end_14} :catchall_1ac

    .line 220
    :goto_14
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bBrokenPipe = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v3, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    if-eqz v3, :cond_40

    .line 222
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    const-string/jumbo v4, "Adding packet to queue since pipe is broken"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/supl/nc/WriterThread;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 226
    :cond_40
    :goto_40
    return-void

    .line 177
    :cond_41
    :try_start_41
    invoke-static {}, Lcom/android/supl/nc/SuplServiceMgr;->getInstance()Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/supl/nc/SuplServiceMgr;->writeToPcm(Lcom/android/supl/nc/SendToServer;)V
    :try_end_48
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_41 .. :try_end_48} :catch_49
    .catch Ljava/net/SocketException; {:try_start_41 .. :try_end_48} :catch_10c
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_48} :catch_14a
    .catchall {:try_start_41 .. :try_end_48} :catchall_1ac

    goto :goto_14

    .line 196
    :catch_49
    move-exception v0

    .line 197
    .local v0, "e":Ljavax/net/ssl/SSLProtocolException;
    :try_start_4a
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    invoke-direct {p0}, Lcom/android/supl/nc/WriterThread;->sendError()V

    .line 199
    iget-object v3, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    if-eqz v3, :cond_80

    iget-boolean v3, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    if-nez v3, :cond_80

    .line 200
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Removing SLP Session for nc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v3, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v3}, Lcom/android/supl/nc/NetworkController;->removeSLPSession()V
    :try_end_80
    .catchall {:try_start_4a .. :try_end_80} :catchall_1ac

    .line 220
    :cond_80
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bBrokenPipe = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v3, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    if-eqz v3, :cond_40

    .line 222
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    const-string/jumbo v4, "Adding packet to queue since pipe is broken"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/supl/nc/WriterThread;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    goto :goto_40

    .line 181
    .end local v0    # "e":Ljavax/net/ssl/SSLProtocolException;
    :cond_ad
    :try_start_ad
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " onSendData"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v3, p0, Lcom/android/supl/nc/WriterThread;->out:Ljava/io/OutputStream;

    iget-object v4, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 186
    iget-object v3, p0, Lcom/android/supl/nc/WriterThread;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 187
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "m_bPacket.length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10a
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_ad .. :try_end_10a} :catch_49
    .catch Ljava/net/SocketException; {:try_start_ad .. :try_end_10a} :catch_10c
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_10a} :catch_14a
    .catchall {:try_start_ad .. :try_end_10a} :catchall_1ac

    goto/16 :goto_14

    .line 203
    :catch_10c
    move-exception v2

    .line 204
    .local v2, "ex":Ljava/net/SocketException;
    :try_start_10d
    invoke-direct {p0}, Lcom/android/supl/nc/WriterThread;->sendError()V

    .line 205
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    iget-boolean v3, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z
    :try_end_11c
    .catchall {:try_start_10d .. :try_end_11c} :catchall_1ac

    .line 220
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bBrokenPipe = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v3, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    if-eqz v3, :cond_40

    .line 222
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    const-string/jumbo v4, "Adding packet to queue since pipe is broken"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/supl/nc/WriterThread;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    goto/16 :goto_40

    .line 211
    .end local v2    # "ex":Ljava/net/SocketException;
    :catch_14a
    move-exception v1

    .line 212
    .local v1, "ex":Ljava/io/IOException;
    :try_start_14b
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    const-string/jumbo v4, "Inside the IOException block of write--brokenpipe"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0}, Lcom/android/supl/nc/WriterThread;->sendError()V

    .line 214
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    .line 216
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    const-string/jumbo v4, "calling nc.stop with reconnect as true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v3, p0, Lcom/android/supl/nc/WriterThread;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z

    .line 218
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    const-string/jumbo v4, "addPacket after broken pipe"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17e
    .catchall {:try_start_14b .. :try_end_17e} :catchall_1ac

    .line 220
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bBrokenPipe = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v3, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    if-eqz v3, :cond_40

    .line 222
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    const-string/jumbo v4, "Adding packet to queue since pipe is broken"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/supl/nc/WriterThread;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    goto/16 :goto_40

    .line 219
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_1ac
    move-exception v3

    .line 220
    const-string/jumbo v4, "SUPL20_SPIMESLP-SENDING"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bBrokenPipe = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-boolean v4, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    if-eqz v4, :cond_1d9

    .line 222
    const-string/jumbo v4, "SUPL20_SPIMESLP-SENDING"

    const-string/jumbo v5, "Adding packet to queue since pipe is broken"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/supl/nc/WriterThread;->addPacket(Lcom/android/supl/nc/SendToServer;)V

    .line 219
    :cond_1d9
    throw v3
.end method


# virtual methods
.method public addPacket(Lcom/android/supl/nc/SendToServer;)V
    .registers 6
    .param p1, "sendToServer"    # Lcom/android/supl/nc/SendToServer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_17

    .line 89
    :try_start_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "packet must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_b} :catch_b

    .line 99
    :catch_b
    move-exception v0

    .line 100
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "SUPL20_SPIMESLP-SENDING"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :goto_16
    return-void

    .line 92
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/android/supl/nc/WriterThread;->deque:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4a

    .line 94
    const-string/jumbo v1, "SUPL20_SPIMESLP-SENDING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBrokenPipe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "isStopWrite: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/supl/nc/WriterThread;->isStopWrite:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_4a
    invoke-virtual {p0}, Lcom/android/supl/nc/WriterThread;->incrementMessageCount()V

    .line 98
    iget-object v1, p0, Lcom/android/supl/nc/WriterThread;->deque:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_52} :catch_b

    goto :goto_16
.end method

.method public closeWrite()V
    .registers 5

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/android/supl/nc/WriterThread;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_2e

    .line 256
    iget v1, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    .line 257
    iget-object v1, p0, Lcom/android/supl/nc/WriterThread;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 258
    const-string/jumbo v1, "SUPL20_SPIMESLP-SENDING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " close the write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 265
    :cond_2e
    :goto_2e
    return-void

    .line 261
    :catch_2f
    move-exception v0

    .line 263
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "SUPL20_SPIMESLP-SENDING"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method

.method public declared-synchronized decrementMessageCount()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 109
    :try_start_1
    iget v0, p0, Lcom/android/supl/nc/WriterThread;->iNumberOfMessageOnQueue:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/supl/nc/WriterThread;->iNumberOfMessageOnQueue:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 110
    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageCount()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 113
    :try_start_1
    iget v0, p0, Lcom/android/supl/nc/WriterThread;->iNumberOfMessageOnQueue:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized incrementMessageCount()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 105
    :try_start_1
    iget v0, p0, Lcom/android/supl/nc/WriterThread;->iNumberOfMessageOnQueue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/supl/nc/WriterThread;->iNumberOfMessageOnQueue:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 106
    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isReadyForColse()Z
    .registers 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isReadyForColse:Z

    return v0
.end method

.method public isSessionRunning()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    iget-object v3, p0, Lcom/android/supl/nc/WriterThread;->deque:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    xor-int/lit8 v0, v3, 0x1

    .line 249
    .local v0, "isRunning":Z
    const-string/jumbo v3, "SUPL20_SPIMESLP-SENDING"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSessionRunning deque size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/supl/nc/WriterThread;->deque:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", getMessageCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 250
    invoke-virtual {p0}, Lcom/android/supl/nc/WriterThread;->getMessageCount()I

    move-result v5

    .line 249
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 250
    const-string/jumbo v5, ", isBrokenPipe : "

    .line 249
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 250
    iget-boolean v5, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    .line 249
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-nez v0, :cond_4e

    invoke-virtual {p0}, Lcom/android/supl/nc/WriterThread;->getMessageCount()I

    move-result v3

    if-lez v3, :cond_4f

    :cond_4e
    :goto_4e
    return v1

    :cond_4f
    move v1, v2

    goto :goto_4e
.end method

.method public run()V
    .registers 6

    .prologue
    .line 120
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    if-nez v2, :cond_40

    iget-boolean v2, p0, Lcom/android/supl/nc/WriterThread;->isStopWrite:Z

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/android/supl/nc/WriterThread;->isSessionRunning()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 122
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/supl/nc/WriterThread;->deque:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/supl/nc/SendToServer;

    .line 123
    .local v1, "sendToServer":Lcom/android/supl/nc/SendToServer;
    if-eqz v1, :cond_0

    .line 126
    invoke-direct {p0, v1}, Lcom/android/supl/nc/WriterThread;->write(Lcom/android/supl/nc/SendToServer;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/supl/nc/WriterThread;->decrementMessageCount()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_1e} :catch_1f

    goto :goto_0

    .line 129
    .end local v1    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :catch_1f
    move-exception v0

    .line 130
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "SUPL20_SPIMESLP-SENDING"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Allowed to exit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_40
    iget-boolean v2, p0, Lcom/android/supl/nc/WriterThread;->isStopWrite:Z

    if-eqz v2, :cond_4d

    .line 136
    invoke-virtual {p0}, Lcom/android/supl/nc/WriterThread;->isSessionRunning()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 137
    invoke-direct {p0}, Lcom/android/supl/nc/WriterThread;->notifyToCloseConnection()V

    .line 140
    :cond_4d
    return-void
.end method

.method public setClientSocket(Ljava/net/Socket;Ljava/lang/String;)V
    .registers 7
    .param p1, "m_CilentSocket"    # Ljava/net/Socket;
    .param p2, "stThreadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 290
    if-nez p1, :cond_b

    .line 291
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "socket object must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_b
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 294
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "socket is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_1a
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_26

    .line 296
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v1

    .line 295
    if-eqz v1, :cond_2f

    .line 297
    :cond_26
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "socket is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_2f
    if-nez p2, :cond_34

    .line 301
    const-string/jumbo p2, "WriterThread"

    .line 303
    :cond_34
    iget v1, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6f

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " NW:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 305
    const-string/jumbo v1, "SUPL20_SPIMESLP-SENDING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setClientSocket :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_6f
    iput-object p1, p0, Lcom/android/supl/nc/WriterThread;->m_CilentSocket:Ljava/net/Socket;

    .line 309
    :try_start_71
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/supl/nc/WriterThread;->out:Ljava/io/OutputStream;
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_77} :catch_89

    .line 313
    :goto_77
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    .line 314
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    .line 315
    iget-object v1, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 316
    iput-object p1, p0, Lcom/android/supl/nc/WriterThread;->m_CilentSocket:Ljava/net/Socket;

    .line 317
    return-void

    .line 310
    :catch_89
    move-exception v0

    .line 311
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_77
.end method

.method public setStopLock(Ljava/lang/Object;)V
    .registers 2
    .param p1, "objLock"    # Ljava/lang/Object;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/supl/nc/WriterThread;->objMyWriteLock:Ljava/lang/Object;

    .line 164
    return-void
.end method

.method public startThread()V
    .registers 3

    .prologue
    .line 320
    const-string/jumbo v0, "SUPL20_SPIMESLP-SENDING"

    const-string/jumbo v1, "startThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget v0, p0, Lcom/android/supl/nc/WriterThread;->iNetWorkID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    .line 323
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v1, "WriterThread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    .line 324
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 326
    invoke-static {}, Lcom/android/supl/nc/SuplServiceMgr;->getInstance()Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/supl/nc/SuplServiceMgr;->getSUPLHILDInterface()V

    .line 330
    :goto_27
    return-void

    .line 328
    :cond_28
    const-string/jumbo v0, "SUPL20_SPIMESLP-SENDING"

    const-string/jumbo v1, "socket don\'t start write thread here."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method public stopWrite()V
    .registers 2

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isBrokenPipe:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/supl/nc/WriterThread;->isSessionRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    .line 271
    :cond_c
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_15

    .line 272
    iget-object v0, p0, Lcom/android/supl/nc/WriterThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 274
    :cond_15
    invoke-direct {p0}, Lcom/android/supl/nc/WriterThread;->notifyToCloseConnection()V

    .line 276
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/nc/WriterThread;->isStopWrite:Z

    .line 278
    return-void
.end method
