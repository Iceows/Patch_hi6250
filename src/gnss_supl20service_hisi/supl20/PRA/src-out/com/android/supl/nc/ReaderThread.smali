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

.field private nc:Lcom/android/supl/nc/NetworkController;

.field public objMyReadLock:Ljava/lang/Object;

.field private workerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/android/supl/commprocessor/CommandProcessor;I)V
    .registers 6
    .param p1, "cp"    # Lcom/android/supl/commprocessor/CommandProcessor;
    .param p2, "iNetworkID"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/android/supl/nc/ReaderThread;->m_CilentSocket:Ljava/net/Socket;

    .line 59
    iput-boolean v2, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    .line 61
    iput-object v1, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    .line 63
    iput-object v1, p0, Lcom/android/supl/nc/ReaderThread;->in:Ljava/io/BufferedInputStream;

    .line 65
    iput-object v1, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    .line 69
    iput-object v1, p0, Lcom/android/supl/nc/ReaderThread;->nc:Lcom/android/supl/nc/NetworkController;

    .line 203
    iput-object v1, p0, Lcom/android/supl/nc/ReaderThread;->objMyReadLock:Ljava/lang/Object;

    .line 204
    iput-boolean v2, p0, Lcom/android/supl/nc/ReaderThread;->isReadyForClose:Z

    .line 71
    iput-object p1, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    .line 72
    iput p2, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    .line 74
    return-void
.end method

.method private closeInputStream()V
    .registers 5

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->in:Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_4e

    .line 246
    :try_start_4
    iget v1, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    .line 247
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 248
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
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_2e} :catch_4f

    .line 253
    :cond_2e
    :goto_2e
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

    .line 255
    :cond_4e
    return-void

    .line 250
    :catch_4f
    move-exception v0

    .line 251
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

    goto :goto_2e
.end method

.method private sendError()V
    .registers 8

    .prologue
    .line 211
    iget v4, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_57

    .line 212
    iget-object v4, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    if-eqz v4, :cond_57

    iget-object v4, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    instance-of v4, v4, Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    if-eqz v4, :cond_57

    .line 213
    const/16 v3, 0x9

    .line 214
    .local v3, "iSize":I
    const/16 v4, 0xd

    new-array v0, v4, [B

    .line 215
    .local v0, "bData":[B
    const/4 v2, 0x0

    .line 216
    .local v2, "iOffset":I
    invoke-static {v0, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 217
    const/16 v4, 0x209

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 218
    iget v4, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 219
    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 220
    new-instance v1, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v1}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 221
    .local v1, "fs":Lcom/android/supl/commprocessor/FromServer;
    iput-object v0, v1, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 222
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

    .line 223
    iget-object v4, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    invoke-interface {v4, v1}, Lcom/android/supl/commprocessor/CommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    .line 226
    .end local v0    # "bData":[B
    .end local v1    # "fs":Lcom/android/supl/commprocessor/FromServer;
    .end local v2    # "iOffset":I
    .end local v3    # "iSize":I
    :cond_57
    return-void
.end method

.method private sendOnReceiveData(I[BLcom/android/supl/commprocessor/FromServer;)V
    .registers 9
    .param p1, "iReadDataLen"    # I
    .param p2, "bdata"    # [B
    .param p3, "fs"    # Lcom/android/supl/commprocessor/FromServer;

    .prologue
    .line 188
    add-int/lit8 v2, p1, 0x8

    add-int/lit8 v0, v2, 0x1

    .line 190
    .local v0, "iPacketSize":I
    add-int/lit8 v2, v0, 0x4

    new-array v2, v2, [B

    iput-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 191
    const/4 v1, 0x0

    .line 193
    .local v1, "offset":I
    iget-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    invoke-static {v2, v1, v0}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 194
    iget-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    const/16 v3, 0x208

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 195
    iget-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    invoke-static {v2, v1, p1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 196
    iget-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    const/4 v3, 0x0

    invoke-static {p2, v3, v2, v1, p1}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 197
    add-int/2addr v1, p1

    .line 198
    iget-object v2, p3, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    iget v3, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    invoke-static {v2, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 199
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

    .line 200
    const-string/jumbo v4, " OnReceiveData from the "

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 200
    iget-object v4, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method


# virtual methods
.method public closeConnection()V
    .registers 5

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->objMyReadLock:Ljava/lang/Object;

    if-eqz v0, :cond_30

    .line 229
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->objMyReadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/android/supl/nc/ReaderThread;->isReadyForClose:Z

    .line 231
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

    .line 232
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->objMyReadLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_3d

    monitor-exit v1

    .line 236
    :cond_30
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_39

    .line 237
    iget-object v0, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 240
    :cond_39
    invoke-direct {p0}, Lcom/android/supl/nc/ReaderThread;->closeInputStream()V

    .line 242
    return-void

    .line 229
    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isReadyForColse()Z
    .registers 2

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/supl/nc/ReaderThread;->isReadyForClose:Z

    return v0
.end method

.method public run()V
    .registers 14

    .prologue
    const/4 v12, -0x1

    .line 81
    :try_start_1
    iget v9, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I
    :try_end_3
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_1 .. :try_end_3} :catch_b8
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_3} :catch_158
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_3} :catch_10f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3} :catch_d4
    .catchall {:try_start_1 .. :try_end_3} :catchall_10a

    if-ne v9, v12, :cond_9

    .line 177
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    .line 84
    return-void

    .line 88
    :cond_9
    :try_start_9
    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v10, p0, Lcom/android/supl/nc/ReaderThread;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v9, p0, Lcom/android/supl/nc/ReaderThread;->in:Ljava/io/BufferedInputStream;

    .line 90
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 91
    .local v0, "bdata":[B
    :cond_1a
    :goto_1a
    iget-boolean v9, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    if-eqz v9, :cond_44

    .line 92
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_48

    .line 93
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
    :try_end_44
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_9 .. :try_end_44} :catch_b8
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_44} :catch_158
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_44} :catch_10f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_44} :catch_d4
    .catchall {:try_start_9 .. :try_end_44} :catchall_10a

    .line 177
    :cond_44
    :goto_44
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    .line 179
    .end local v0    # "bdata":[B
    :goto_47
    return-void

    .line 97
    .restart local v0    # "bdata":[B
    :cond_48
    const/4 v8, -0x1

    .line 103
    .local v8, "iReadData":I
    :try_start_49
    iget-object v9, p0, Lcom/android/supl/nc/ReaderThread;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v9, v0}, Ljava/io/FilterInputStream;->read([B)I

    move-result v8

    if-eq v8, v12, :cond_94

    .line 105
    new-instance v7, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v7}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 106
    .local v7, "fs":Lcom/android/supl/commprocessor/FromServer;
    iget v9, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    if-ne v9, v12, :cond_77

    .line 107
    new-array v9, v8, [B

    iput-object v9, v7, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 108
    iget-object v9, v7, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 109
    iget-object v9, v7, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v9, v11, v8}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 116
    :goto_6b
    iget-object v9, p0, Lcom/android/supl/nc/ReaderThread;->cp:Lcom/android/supl/commprocessor/CommandProcessor;

    invoke-interface {v9, v7}, Lcom/android/supl/commprocessor/CommandProcessor;->writePacket(Lcom/android/supl/commprocessor/FromServer;)V

    .line 117
    const/4 v9, 0x0

    invoke-static {v0, v9}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_1a

    .line 127
    .end local v7    # "fs":Lcom/android/supl/commprocessor/FromServer;
    :catch_75
    move-exception v2

    .local v2, "e":Ljava/net/SocketTimeoutException;
    goto :goto_1a

    .line 111
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    .restart local v7    # "fs":Lcom/android/supl/commprocessor/FromServer;
    :cond_77
    invoke-direct {p0, v8, v0, v7}, Lcom/android/supl/nc/ReaderThread;->sendOnReceiveData(I[BLcom/android/supl/commprocessor/FromServer;)V
    :try_end_7a
    .catch Ljava/net/SocketTimeoutException; {:try_start_49 .. :try_end_7a} :catch_75
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_7a} :catch_7b
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_49 .. :try_end_7a} :catch_b8
    .catch Ljava/net/SocketException; {:try_start_49 .. :try_end_7a} :catch_10f
    .catchall {:try_start_49 .. :try_end_7a} :catchall_10a

    goto :goto_6b

    .line 132
    .end local v7    # "fs":Lcom/android/supl/commprocessor/FromServer;
    :catch_7b
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    :try_start_7c
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Try Again"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    iget v9, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    if-eq v9, v12, :cond_1a

    .line 135
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_90
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_7c .. :try_end_90} :catch_b8
    .catch Ljava/net/SocketTimeoutException; {:try_start_7c .. :try_end_90} :catch_158
    .catch Ljava/net/SocketException; {:try_start_7c .. :try_end_90} :catch_10f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_90} :catch_d4
    .catchall {:try_start_7c .. :try_end_90} :catchall_10a

    .line 177
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    .line 136
    return-void

    .line 122
    .end local v1    # "e":Ljava/io/IOException;
    :cond_94
    :try_start_94
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

    .line 123
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    const-string/jumbo v10, "Socket closed on other side so closing the read thread"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/net/SocketTimeoutException; {:try_start_94 .. :try_end_b7} :catch_75
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_b7} :catch_7b
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_94 .. :try_end_b7} :catch_b8
    .catch Ljava/net/SocketException; {:try_start_94 .. :try_end_b7} :catch_10f
    .catchall {:try_start_94 .. :try_end_b7} :catchall_10a

    goto :goto_44

    .line 143
    .end local v0    # "bdata":[B
    .end local v8    # "iReadData":I
    :catch_b8
    move-exception v3

    .line 144
    .local v3, "e":Ljavax/net/ssl/SSLProtocolException;
    :try_start_b9
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    invoke-direct {p0}, Lcom/android/supl/nc/ReaderThread;->sendError()V

    .line 146
    iget-object v9, p0, Lcom/android/supl/nc/ReaderThread;->nc:Lcom/android/supl/nc/NetworkController;

    if-eqz v9, :cond_cf

    .line 147
    iget-object v9, p0, Lcom/android/supl/nc/ReaderThread;->nc:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v9}, Lcom/android/supl/nc/NetworkController;->removeSLPSession()V
    :try_end_cf
    .catchall {:try_start_b9 .. :try_end_cf} :catchall_10a

    .line 177
    :cond_cf
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    goto/16 :goto_47

    .line 168
    .end local v3    # "e":Ljavax/net/ssl/SSLProtocolException;
    :catch_d4
    move-exception v4

    .line 170
    .local v4, "ex":Ljava/io/IOException;
    :try_start_d5
    iget-boolean v9, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    if-eqz v9, :cond_eb

    .line 171
    invoke-direct {p0}, Lcom/android/supl/nc/ReaderThread;->sendError()V

    .line 172
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e6
    .catchall {:try_start_d5 .. :try_end_e6} :catchall_10a

    .line 177
    :goto_e6
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    goto/16 :goto_47

    .line 174
    :cond_eb
    :try_start_eb
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "! ignore this error.Read is finished. Caught "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_109
    .catchall {:try_start_eb .. :try_end_109} :catchall_10a

    goto :goto_e6

    .line 176
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_10a
    move-exception v9

    .line 177
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    .line 176
    throw v9

    .line 156
    :catch_10f
    move-exception v5

    .line 158
    .local v5, "ex":Ljava/net/SocketException;
    :try_start_110
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    const-string/jumbo v10, "Calling nc.stop with reconnect as true"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v9, p0, Lcom/android/supl/nc/ReaderThread;->nc:Lcom/android/supl/nc/NetworkController;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/supl/nc/NetworkController;->stop(ZLjava/lang/Object;Z)Z

    .line 161
    iget-boolean v9, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    if-eqz v9, :cond_137

    .line 162
    invoke-direct {p0}, Lcom/android/supl/nc/ReaderThread;->sendError()V

    .line 163
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_132
    .catchall {:try_start_110 .. :try_end_132} :catchall_10a

    .line 177
    :goto_132
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    goto/16 :goto_47

    .line 165
    :cond_137
    :try_start_137
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

    goto :goto_132

    .line 149
    .end local v5    # "ex":Ljava/net/SocketException;
    :catch_158
    move-exception v6

    .line 150
    .local v6, "ex":Ljava/net/SocketTimeoutException;
    iget-boolean v9, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    if-eqz v9, :cond_16c

    .line 151
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_167
    .catchall {:try_start_137 .. :try_end_167} :catchall_10a

    .line 177
    :goto_167
    invoke-virtual {p0}, Lcom/android/supl/nc/ReaderThread;->closeConnection()V

    goto/16 :goto_47

    .line 153
    :cond_16c
    :try_start_16c
    const-string/jumbo v9, "SUPL20_SLP-RECEIVING"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "! ignore this error.Read is finished.Caught "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18a
    .catchall {:try_start_16c .. :try_end_18a} :catchall_10a

    goto :goto_167
.end method

.method public setClientSocket(Ljava/net/Socket;Ljava/lang/String;)V
    .registers 6
    .param p1, "m_CilentSocket"    # Ljava/net/Socket;
    .param p2, "stThreadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 293
    if-nez p1, :cond_b

    .line 294
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "socket object must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :cond_b
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 297
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "socket is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_1a
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_26

    .line 299
    invoke-virtual {p1}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v1

    .line 298
    if-eqz v1, :cond_2f

    .line 300
    :cond_26
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "socket is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_2f
    if-nez p2, :cond_34

    .line 303
    const-string/jumbo p2, "ReadThread"

    .line 305
    :cond_34
    iget v1, p0, Lcom/android/supl/nc/ReaderThread;->iNetworkID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6e

    .line 306
    const-string/jumbo v1, "SUPL20_SLP-RECEIVING"

    const-string/jumbo v2, "readerThread initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
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

    .line 316
    :goto_5c
    iput-object p1, p0, Lcom/android/supl/nc/ReaderThread;->m_CilentSocket:Ljava/net/Socket;

    .line 317
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    .line 318
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    .line 319
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 321
    return-void

    .line 310
    :cond_6e
    const/16 v1, 0xc8

    :try_start_70
    invoke-virtual {p1, v1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_73
    .catch Ljava/net/SocketException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_5c

    .line 311
    :catch_74
    move-exception v0

    .line 313
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5c
.end method

.method public setNetworkController(Lcom/android/supl/nc/NetworkController;)V
    .registers 2
    .param p1, "networkController"    # Lcom/android/supl/nc/NetworkController;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/supl/nc/ReaderThread;->nc:Lcom/android/supl/nc/NetworkController;

    .line 328
    return-void
.end method

.method public setStopLock(Ljava/lang/Object;)V
    .registers 2
    .param p1, "objLock"    # Ljava/lang/Object;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/supl/nc/ReaderThread;->objMyReadLock:Ljava/lang/Object;

    .line 259
    return-void
.end method

.method public stopRead()V
    .registers 5

    .prologue
    .line 268
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

    .line 269
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/nc/ReaderThread;->isRead:Z

    .line 270
    const-string/jumbo v1, "SUPL20_SLP-RECEIVING"

    const-string/jumbo v2, " stopRead by invoke closeInputStream()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Lcom/android/supl/nc/ReaderThread;->closeInputStream()V

    .line 272
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/supl/nc/ReaderThread;->isReadyForClose:Z

    .line 273
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->m_CilentSocket:Ljava/net/Socket;

    if-eqz v1, :cond_3b

    .line 274
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->m_CilentSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 276
    :cond_3b
    iget-object v1, p0, Lcom/android/supl/nc/ReaderThread;->workerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 277
    const-string/jumbo v1, "SUPL20_SLP-RECEIVING"

    const-string/jumbo v2, " stopRead by isReadyForClose is true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    .line 281
    :goto_49
    return-void

    .line 278
    :catch_4a
    move-exception v0

    .line 279
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "SUPL20_SLP-RECEIVING"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49
.end method
