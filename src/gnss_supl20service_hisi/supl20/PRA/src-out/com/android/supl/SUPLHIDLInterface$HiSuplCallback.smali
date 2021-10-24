.class Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;
.super Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;
.source "SUPLHIDLInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/SUPLHIDLInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HiSuplCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/SUPLHIDLInterface;


# direct methods
.method constructor <init>(Lcom/android/supl/SUPLHIDLInterface;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/supl/SUPLHIDLInterface;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-direct {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public suplPcmCb(Lvendor/huawei/hardware/hisupl/V1_0/server2client;)V
    .registers 9
    .param p1, "pcmMsg"    # Lvendor/huawei/hardware/hisupl/V1_0/server2client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v1}, Lcom/android/supl/SUPLHIDLInterface;->-get2(Lcom/android/supl/SUPLHIDLInterface;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 141
    :try_start_7
    const-string/jumbo v1, "SUPLHIDL"

    const-string/jumbo v3, "suplPcmCb enter"

    invoke-static {v1, v3}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v0}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 143
    .local v0, "s2c":Lcom/android/supl/commprocessor/FromServer;
    iget v1, p1, Lvendor/huawei/hardware/hisupl/V1_0/server2client;->packetSize:I

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 144
    iget-object v1, p1, Lvendor/huawei/hardware/hisupl/V1_0/server2client;->s2c_packet:[B

    iget-object v3, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    iget v4, p1, Lvendor/huawei/hardware/hisupl/V1_0/server2client;->packetSize:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v5, v3, v6, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 145
    iget-object v1, p0, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v1}, Lcom/android/supl/SUPLHIDLInterface;->-get3(Lcom/android/supl/SUPLHIDLInterface;)Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 146
    iget-object v1, p0, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v1}, Lcom/android/supl/SUPLHIDLInterface;->-get3(Lcom/android/supl/SUPLHIDLInterface;)Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/supl/nc/SuplServiceMgr;->addPcmPacket(Lcom/android/supl/commprocessor/FromServer;)V
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_43

    :goto_37
    monitor-exit v2

    .line 151
    return-void

    .line 148
    :cond_39
    :try_start_39
    const-string/jumbo v1, "SUPLHIDL"

    const-string/jumbo v3, "mSuplServiceMgr is null"

    invoke-static {v1, v3}, Lcom/android/supl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_43

    goto :goto_37

    .line 140
    .end local v0    # "s2c":Lcom/android/supl/commprocessor/FromServer;
    :catchall_43
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public suplScmCb(Lvendor/huawei/hardware/hisupl/V1_0/server2client;)V
    .registers 9
    .param p1, "scmMsg"    # Lvendor/huawei/hardware/hisupl/V1_0/server2client;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v1}, Lcom/android/supl/SUPLHIDLInterface;->-get2(Lcom/android/supl/SUPLHIDLInterface;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 156
    :try_start_7
    const-string/jumbo v1, "SUPLHIDL"

    const-string/jumbo v3, "suplScmCb enter."

    invoke-static {v1, v3}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Lcom/android/supl/commprocessor/FromServer;

    invoke-direct {v0}, Lcom/android/supl/commprocessor/FromServer;-><init>()V

    .line 158
    .local v0, "s2c":Lcom/android/supl/commprocessor/FromServer;
    iget v1, p1, Lvendor/huawei/hardware/hisupl/V1_0/server2client;->packetSize:I

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    .line 159
    iget-object v1, p1, Lvendor/huawei/hardware/hisupl/V1_0/server2client;->s2c_packet:[B

    iget-object v3, v0, Lcom/android/supl/commprocessor/FromServer;->m_bPacket:[B

    iget v4, p1, Lvendor/huawei/hardware/hisupl/V1_0/server2client;->packetSize:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v5, v3, v6, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 160
    iget-object v1, p0, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v1}, Lcom/android/supl/SUPLHIDLInterface;->-get3(Lcom/android/supl/SUPLHIDLInterface;)Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 161
    iget-object v1, p0, Lcom/android/supl/SUPLHIDLInterface$HiSuplCallback;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v1}, Lcom/android/supl/SUPLHIDLInterface;->-get3(Lcom/android/supl/SUPLHIDLInterface;)Lcom/android/supl/nc/SuplServiceMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/supl/nc/SuplServiceMgr;->addScmPacket(Lcom/android/supl/commprocessor/FromServer;)V
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_43

    :goto_37
    monitor-exit v2

    .line 166
    return-void

    .line 163
    :cond_39
    :try_start_39
    const-string/jumbo v1, "SUPLHIDL"

    const-string/jumbo v3, "mSuplServiceMgr is null"

    invoke-static {v1, v3}, Lcom/android/supl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_43

    goto :goto_37

    .line 155
    .end local v0    # "s2c":Lcom/android/supl/commprocessor/FromServer;
    :catchall_43
    move-exception v1

    monitor-exit v2

    throw v1
.end method
