.class public Lcom/android/supl/nc/ReaderThread;
.super Ljava/lang/Object;
.source "ReaderThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SUPL20_SLP-RECEIVING"


# instance fields
.field private cp:Lcom/android/supl/commprocessor/CommandProcessor;

.field private iNetworkID:I

.field private in:Ljava/io/BufferedInputStream;

.field private isRead:Z

.field private isReadyForClose:Z

.field private m_CilentSocket:Ljava/net/Socket;

.field private m_LocalSocket:Landroid/net/LocalSocket;

.field private nc:Lcom/android/supl/nc/NetworkController;

.field public objMyReadLock:Ljava/lang/Object;

.field private workerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/android/supl/commprocessor/CommandProcessor;I)V
    .locals 3
    .param p1, "cp"    # Lcom/android/supl/commprocessor/CommandProcessor;
    .param p2, "iNetworkID"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/android/supl/nc/ReaderThread;->m_CilentSocket:Ljava/net/Socket;

    .line 59
    iput-object v1, p0, Lcom/android/supl/nc/ReaderThread;->m_LocalSocket:Landroid/net/LocalSocket;

    .line 61
    iput-boolean v2, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    .line 63
    iput-object v1, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    .line 65
    iput-object v1, p0, Lcom/android/supl/nc/ReaderThread;->in:Ljava/io/BufferedInputStream;

    .line 67
    iput-object v1, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    .line 71
    iput-object v1, p0, Lcom/android/supl/nc/ReaderThread;->nc:Lcom/android/supl/nc/NetworkController;

    .line 205
    iput-object v1, p0, Lcom/android/supl/nc/ReaderThread;->objMyReadLock:Ljava/lang/Object;

    .line 206
    iput-boolean v2, p0, Lcom/android/supl/nc/ReaderThread;->isReadyForClose:Z

    .line 73
    iput-object p1, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 74
    iput p2, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    .line 72
    return-void
.end method

.method private closeInputStream()V
    .locals 4

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->in:Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_1

    .line 248
    :try_start_0
    iget v1, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 249
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 250
    const-string/jumbo v1, "SUPL20_SLP-RECEIVING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " InputStream closed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_0
    const-string/jumbo v1, "SUPL20_SLP-RECEIVING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " close"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "SUPL20_SLP-RECEIVING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " close exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendError()V
    .locals 7

    .prologue
    .line 213
    iget v4, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 214
    iget-object v4, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    instance-of v4, v4, Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    if-eqz v4, :cond_0

    .line 215
    const/16 v3, 0x9

    .line 216
    .local v3, "iSize":I
    const/16 v4, 0xd

    new-array v0, v4, [B

    .line 217
    .local v0, "bData":[B
    const/4 v2, 0x0

    .line 218
    .local v2, "iOffset":I
    invoke-static {v0, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 219
    const/16 v4, 0x209

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 220
    iget v4, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 221
    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 222
    new-instance v1, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v1}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 223
    .local v1, "fs":Lcom/android/supl/commprocessor/FromServer;
    iput-object v0, v1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 224
    const-string/jumbo v4, "SUPL20_SLP-RECEIVING"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " send connection error msg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v4, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    invoke-interface {v4, v1}, Lcom/android/supl/commprocessor/CommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    .line 211
    .end local v0    # "bData":[B
    .end local v1    # "fs":Lcom/android/supl/commprocessor/FromServer;
    .end local v2    # "iOffset":I
    .end local v3    # "iSize":I
    :cond_0
    return-void
.end method

.method private sendOnReceiveData(I[BLcom/android/supl/commprocessor/FromServer;)V
    .locals 5
    .param p1, "iReadDataLen"    # I
    .param p2, "bdata"    # [B
    .param p3, "fs"    # Lcom/android/supl/commprocessor/FromServer;

    .prologue
    .line 190
    add-int/lit8 v2, p1, 0x8

    add-int/lit8 v0, v2, 0x1

    .line 192
    .local v0, "iPacketSize":I
    add-int/lit8 v2, v0, 0x4

    new-array v2, v2, [B

    iput-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 193
    const/4 v1, 0x0

    .line 195
    .local v1, "offset":I
    iget-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    invoke-static {v2, v1, v0}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 196
    iget-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    const/16 v3, 0x208

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 197
    iget-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    invoke-static {v2, v1, p1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 198
    iget-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    const/4 v3, 0x0

    invoke-static {p2, v3, v2, v1, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 199
    add-int/2addr v1, p1

    .line 200
    iget-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    iget v3, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 201
    const-string/jumbo v2, "SUPL20_SLP-RECEIVING"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 202
    const-string/jumbo v4, " OnReceiveData from the "

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 202
    iget-object v4, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method


# virtual methods
.method public closeConnection()V
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->objMyReadLock:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->objMyReadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/supl/nc/ReaderThread;->isReadyForClose:Z

    .line 233
    const-string/jumbo v0, "SUPL20_SLP-RECEIVING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " notify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->objMyReadLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/android/supl/nc/ReaderThread;->closeInputStream()V

    .line 229
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isReadyForColse()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/supl/nc/ReaderThread;->isReadyForClose:Z

    return v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 84
    :try_start_0
    iget v9, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    if-ne v9, v12, :cond_2

    .line 86
    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v10, p0, Lcom/android/supl/nc/ReaderThread;->m_LocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v10}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v9, p0, Lcom/android/supl/nc/ReaderThread;->in:Ljava/io/BufferedInputStream;

    .line 92
    :goto_0
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 93
    .local v0, "bdata":[B
    :cond_0
    :goto_1
    iget-boolean v9, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    if-eqz v9, :cond_1

    .line 94
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 95
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " received the interrupt so breaking out and closing the thread."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    .line 81
    .end local v0    # "bdata":[B
    :goto_3
    return-void

    .line 90
    :cond_2
    :try_start_1
    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v10, p0, Lcom/android/supl/nc/ReaderThread;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v9, p0, Lcom/android/supl/nc/ReaderThread;->in:Ljava/io/BufferedInputStream;
    :try_end_1
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v3

    .line 146
    .local v3, "e":Ljavax/net/ssl/SSLProtocolException;
    :try_start_2
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    invoke-virtual {v3}, Ljavax/net/ssl/SSLProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    invoke-direct {p0}, Lcom/android/supl/nc/ReaderThread;->sendError()V

    .line 148
    iget-object v9, p0, Lcom/android/supl/nc/ReaderThread;->nc:Lcom/android/supl/nc/NetworkController;

    if-eqz v9, :cond_3

    .line 149
    iget-object v9, p0, Lcom/android/supl/nc/ReaderThread;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v9}, Lcom/android/supl/nc/NetworkController;->removeSLPSession()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    :cond_3
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    goto :goto_3

    .line 99
    .end local v3    # "e":Ljavax/net/ssl/SSLProtocolException;
    .restart local v0    # "bdata":[B
    :cond_4
    const/4 v8, -0x1

    .line 105
    .local v8, "iReadData":I
    :try_start_3
    iget-object v9, p0, Lcom/android/supl/nc/ReaderThread;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v9, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    if-eq v8, v12, :cond_6

    .line 107
    new-instance v7, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v7}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 108
    .local v7, "fs":Lcom/android/supl/commprocessor/FromServer;
    iget v9, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    if-ne v9, v12, :cond_5

    .line 109
    new-array v9, v8, [B

    iput-object v9, v7, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 110
    iget-object v9, v7, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 111
    iget-object v9, v7, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v9, v11, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 118
    :goto_4
    iget-object v9, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    invoke-interface {v9, v7}, Lcom/android/supl/commprocessor/CommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    .line 119
    const/4 v9, 0x0

    invoke-static {v0, v9}, Ljava/util/Arrays;->fill([BB)V

    goto/16 :goto_1

    .line 129
    .end local v7    # "fs":Lcom/android/supl/commprocessor/FromServer;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/net/SocketTimeoutException;
    goto/16 :goto_1

    .line 113
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    .restart local v7    # "fs":Lcom/android/supl/commprocessor/FromServer;
    :cond_5
    invoke-direct {p0, v8, v0, v7}, Lcom/android/supl/nc/ReaderThread;->sendOnReceiveData(I[BLcom/android/supl/commprocessor/FromServer;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 134
    .end local v7    # "fs":Lcom/android/supl/commprocessor/FromServer;
    :catch_2
    move-exception v1

    .line 135
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Try Again"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget v9, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    if-eq v9, v12, :cond_0

    .line 137
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    .line 138
    return-void

    .line 124
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_5
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "iReadData : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    const-string/jumbo v10, "Socket closed on other side so closing the read thread"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 158
    .end local v0    # "bdata":[B
    .end local v8    # "iReadData":I
    :catch_3
    move-exception v5

    .line 160
    .local v5, "ex":Ljava/net/SocketException;
    :try_start_6
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    const-string/jumbo v10, "Calling nc.stop with reconnect as true"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v9, p0, Lcom/android/supl/nc/ReaderThread;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z

    .line 163
    iget-boolean v9, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    if-eqz v9, :cond_8

    .line 164
    invoke-direct {p0}, Lcom/android/supl/nc/ReaderThread;->sendError()V

    .line 165
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    invoke-virtual {v5}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 179
    :goto_5
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    goto/16 :goto_3

    .line 170
    .end local v5    # "ex":Ljava/net/SocketException;
    :catch_4
    move-exception v4

    .line 172
    .local v4, "ex":Ljava/io/IOException;
    :try_start_7
    iget-boolean v9, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    if-eqz v9, :cond_7

    .line 173
    invoke-direct {p0}, Lcom/android/supl/nc/ReaderThread;->sendError()V

    .line 174
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 179
    :goto_6
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    goto/16 :goto_3

    .line 176
    :cond_7
    :try_start_8
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "! ignore this error.Read is finished. Caught "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 178
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 179
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    .line 178
    throw v9

    .line 167
    .restart local v5    # "ex":Ljava/net/SocketException;
    :cond_8
    :try_start_9
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " colsed by socket close"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 151
    .end local v5    # "ex":Ljava/net/SocketException;
    :catch_5
    move-exception v6

    .line 152
    .local v6, "ex":Ljava/net/SocketTimeoutException;
    iget-boolean v9, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    if-eqz v9, :cond_9

    .line 153
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    invoke-virtual {v6}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 179
    :goto_7
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    goto/16 :goto_3

    .line 155
    :cond_9
    :try_start_a
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "! ignore this error.Read is finished.Caught "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7
.end method

.method public setClientSocket(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 3
    .param p1, "m_CilentSocket"    # Ljava/net/Socket;
    .param p2, "stThreadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 296
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "socket object must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "socket is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 301
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v1

    .line 300
    if-eqz v1, :cond_3

    .line 302
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "socket is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :cond_3
    if-nez p2, :cond_4

    .line 305
    const-string/jumbo p2, "ReadThread"

    .line 307
    :cond_4
    iget v1, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 308
    const-string/jumbo v1, "SUPL20_SLP-RECEIVING"

    const-string/jumbo v2, "readerThread initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " NW:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 324
    :goto_0
    iput-object p1, p0, Lcom/android/supl/nc/ReaderThread;->m_CilentSocket:Ljava/net/Socket;

    .line 325
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    .line 326
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    .line 327
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 294
    return-void

    .line 318
    :cond_5
    const/16 v1, 0xc8

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLocalClientSocket(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .locals 4
    .param p1, "m_LocalCilentSocket"    # Landroid/net/LocalSocket;
    .param p2, "stThreadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 333
    if-nez p1, :cond_0

    .line 334
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "socket object must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 337
    :cond_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 338
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "socket is not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 344
    :cond_1
    if-nez p2, :cond_2

    .line 345
    const-string/jumbo p2, "ReadThread"

    .line 347
    :cond_2
    iget v2, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " NW:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 367
    :goto_0
    iput-object p1, p0, Lcom/android/supl/nc/ReaderThread;->m_LocalSocket:Landroid/net/LocalSocket;

    .line 368
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    .line 369
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    .line 370
    iget-object v2, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 332
    return-void

    .line 357
    :cond_3
    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 358
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 362
    .end local v1    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v0

    .line 363
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setNetworkController(Lcom/android/supl/nc/NetworkController;)V
    .locals 0
    .param p1, "networkController"    # Lcom/android/supl/nc/NetworkController;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/supl/nc/ReaderThread;->nc:Lcom/android/supl/nc/NetworkController;

    .line 376
    return-void
.end method

.method public setStopLock(Ljava/lang/Object;)V
    .locals 0
    .param p1, "objLock"    # Ljava/lang/Object;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/supl/nc/ReaderThread;->objMyReadLock:Ljava/lang/Object;

    .line 259
    return-void
.end method

.method public stopRead()V
    .locals 4

    .prologue
    .line 270
    :try_start_0
    const-string/jumbo v1, "SUPL20_SLP-RECEIVING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " stopRead invoked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    .line 272
    const-string/jumbo v1, "SUPL20_SLP-RECEIVING"

    const-string/jumbo v2, " stopRead by invoke closeInputStream()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0}, Lcom/android/supl/nc/ReaderThread;->closeInputStream()V

    .line 274
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/supl/nc/ReaderThread;->isReadyForClose:Z

    .line 275
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->m_CilentSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 279
    const-string/jumbo v1, "SUPL20_SLP-RECEIVING"

    const-string/jumbo v2, " stopRead by isReadyForClose is true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "SUPL20_SLP-RECEIVING"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
