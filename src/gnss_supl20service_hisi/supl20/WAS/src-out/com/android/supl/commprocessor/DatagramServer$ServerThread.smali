.class Lcom/android/supl/commprocessor/DatagramServer$ServerThread;
.super Ljava/lang/Thread;
.source "DatagramServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/commprocessor/DatagramServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerThread"
.end annotation


# instance fields
.field private isStop:Z

.field private receiveData:[B

.field private serverSocket:Ljava/net/DatagramSocket;

.field final synthetic this$0:Lcom/android/supl/commprocessor/DatagramServer;


# direct methods
.method static synthetic -wrap0(Lcom/android/supl/commprocessor/DatagramServer$ServerThread;)V
    .registers 1
    .param p0, "-this"    # Lcom/android/supl/commprocessor/DatagramServer$ServerThread;

    .prologue
    invoke-direct {p0}, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->stopThread()V

    return-void
.end method

.method public constructor <init>(Lcom/android/supl/commprocessor/DatagramServer;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/DatagramServer;
    .param p2, "stThreadName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 107
    iput-object p1, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->this$0:Lcom/android/supl/commprocessor/DatagramServer;

    .line 108
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 101
    iput-object v1, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->receiveData:[B

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->isStop:Z

    .line 105
    iput-object v1, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    .line 109
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->receiveData:[B

    .line 110
    return-void
.end method

.method private stopThread()V
    .registers 2

    .prologue
    .line 182
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->isStop:Z

    .line 184
    iget-object v0, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_f

    .line 185
    iget-object v0, p0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 187
    :cond_f
    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 118
    :try_start_0
    const-string/jumbo v14, "SUPL20_DGS"

    const-string/jumbo v15, "UDP server thread execution"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v14, Ljava/net/DatagramSocket;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->this$0:Lcom/android/supl/commprocessor/DatagramServer;

    invoke-static {v15}, Lcom/android/supl/commprocessor/DatagramServer;->-get0(Lcom/android/supl/commprocessor/DatagramServer;)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/net/DatagramSocket;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    .line 121
    new-instance v11, Ljava/net/DatagramPacket;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->receiveData:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->receiveData:[B

    array-length v15, v15

    invoke-direct {v11, v14, v15}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 123
    .local v11, "receivePacket":Ljava/net/DatagramPacket;
    :cond_28
    :goto_28
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->isStop:Z
    :try_end_2c
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_2c} :catch_f1

    if-nez v14, :cond_fb

    .line 126
    :try_start_2e
    const-string/jumbo v14, "SUPL20_DGS"

    const-string/jumbo v15, " Datagram ServerThread start receive"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->serverSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v14, v11}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 128
    const-string/jumbo v14, "SUPL20_DGS"

    const-string/jumbo v15, " Datagram ServerThread after receive"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eqz v11, :cond_28

    .line 130
    invoke-virtual {v11}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v7

    .line 131
    .local v7, "iOffset":I
    invoke-virtual {v11}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    .line 132
    .local v6, "iLength":I
    const-string/jumbo v14, "SUPL20_DGS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "  Receive Offset= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " Length= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v11}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 135
    .local v1, "IPAddress":Ljava/net/InetAddress;
    invoke-virtual {v11}, Ljava/net/DatagramPacket;->getPort()I

    move-result v10

    .line 136
    .local v10, "port":I
    if-eqz v1, :cond_a5

    .line 137
    const-string/jumbo v14, "SUPL20_DGS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "RECEIVED IP Address: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " port="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_a5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->this$0:Lcom/android/supl/commprocessor/DatagramServer;

    invoke-static {v14}, Lcom/android/supl/commprocessor/DatagramServer;->-get1(Lcom/android/supl/commprocessor/DatagramServer;)Lcom/android/supl/commprocessor/ServerCommProcessor;

    move-result-object v14

    if-eqz v14, :cond_28

    .line 141
    invoke-virtual {v11}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v13

    .line 142
    .local v13, "src":[B
    new-instance v12, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v12}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 143
    .local v12, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/4 v9, 0x0

    .line 144
    .local v9, "offset":I
    add-int/lit8 v8, v6, 0xc

    .line 148
    .local v8, "iSize":I
    new-array v2, v8, [B

    .line 150
    .local v2, "bData":[B
    add-int/lit8 v14, v8, -0x4

    invoke-static {v2, v9, v14}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v9

    .line 151
    const/16 v14, 0x20d

    invoke-static {v2, v9, v14}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v9

    .line 152
    invoke-static {v2, v9, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v9

    .line 153
    invoke-static {v13, v7, v2, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 155
    iput-object v2, v12, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->this$0:Lcom/android/supl/commprocessor/DatagramServer;

    invoke-static {v14}, Lcom/android/supl/commprocessor/DatagramServer;->-get1(Lcom/android/supl/commprocessor/DatagramServer;)Lcom/android/supl/commprocessor/ServerCommProcessor;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/android/supl/commprocessor/ServerCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V
    :try_end_dd
    .catch Ljava/net/SocketException; {:try_start_2e .. :try_end_dd} :catch_df
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_dd} :catch_fc

    goto/16 :goto_28

    .line 159
    .end local v1    # "IPAddress":Ljava/net/InetAddress;
    .end local v2    # "bData":[B
    .end local v6    # "iLength":I
    .end local v7    # "iOffset":I
    .end local v8    # "iSize":I
    .end local v9    # "offset":I
    .end local v10    # "port":I
    .end local v12    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    .end local v13    # "src":[B
    :catch_df
    move-exception v4

    .line 160
    .local v4, "e1":Ljava/net/SocketException;
    :try_start_e0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->isStop:Z

    if-eqz v14, :cond_119

    .line 161
    const-string/jumbo v14, "SUPL20_DGS"

    const-string/jumbo v15, " DatagramSocket closed"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ef
    .catch Ljava/net/SocketException; {:try_start_e0 .. :try_end_ef} :catch_f1

    goto/16 :goto_28

    .line 174
    .end local v4    # "e1":Ljava/net/SocketException;
    .end local v11    # "receivePacket":Ljava/net/DatagramPacket;
    :catch_f1
    move-exception v5

    .line 175
    .local v5, "e2":Ljava/net/SocketException;
    const-string/jumbo v14, "SUPL20_DGS"

    const-string/jumbo v15, " DatagramSocket create exception "

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v5    # "e2":Ljava/net/SocketException;
    :cond_fb
    return-void

    .line 166
    .restart local v11    # "receivePacket":Ljava/net/DatagramPacket;
    :catch_fc
    move-exception v3

    .line 167
    .local v3, "e":Ljava/io/IOException;
    :try_start_fd
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/supl/commprocessor/DatagramServer$ServerThread;->isStop:Z

    if-eqz v14, :cond_10e

    .line 168
    const-string/jumbo v14, "SUPL20_DGS"

    const-string/jumbo v15, " DatagramSocket closed"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 170
    :cond_10e
    const-string/jumbo v14, "SUPL20_DGS"

    const-string/jumbo v15, " DatagramSocket exception "

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 163
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "e1":Ljava/net/SocketException;
    :cond_119
    const-string/jumbo v14, "SUPL20_DGS"

    const-string/jumbo v15, " DatagramSocket exception "

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_122
    .catch Ljava/net/SocketException; {:try_start_fd .. :try_end_122} :catch_f1

    goto/16 :goto_28
.end method
