.class public final Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Proxy;
.super Ljava/lang/Object;
.source "ISuplclienttoserverInterface.java"

# interfaces
.implements Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IHwBinder;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 77
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 275
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 277
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 279
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf524546

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 280
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 281
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 283
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 284
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_2b

    .line 287
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 285
    return-object v0

    .line 286
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_2b
    move-exception v3

    .line 287
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 286
    throw v3
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v16, Landroid/os/HwParcel;

    invoke-direct/range {v16 .. v16}, Landroid/os/HwParcel;-><init>()V

    .line 198
    .local v16, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 200
    new-instance v3, Landroid/os/HwParcel;

    invoke-direct {v3}, Landroid/os/HwParcel;-><init>()V

    .line 202
    .local v3, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v5, 0xf485348

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 203
    invoke-virtual {v3}, Landroid/os/HwParcel;->verifySuccess()V

    .line 204
    invoke-virtual/range {v16 .. v16}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 206
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v15, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v4, 0x10

    invoke-virtual {v3, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 210
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v18

    .line 212
    .local v18, "_hidl_vec_size":I
    mul-int/lit8 v4, v18, 0x20

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    .line 213
    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    .line 211
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v19

    .line 215
    .local v19, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 216
    const/4 v11, 0x0

    .local v11, "_hidl_index_0":I
    :goto_48
    move/from16 v0, v18

    if-ge v11, v0, :cond_70

    .line 217
    const/16 v4, 0x20

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 219
    .local v17, "_hidl_vec_element":[B
    mul-int/lit8 v4, v11, 0x20

    int-to-long v12, v4

    .line 220
    .local v12, "_hidl_array_offset_1":J
    const/4 v14, 0x0

    .local v14, "_hidl_index_1_0":I
    :goto_56
    const/16 v4, 0x20

    if-ge v14, v4, :cond_68

    .line 221
    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v4

    aput-byte v4, v17, v14

    .line 222
    const-wide/16 v4, 0x1

    add-long/2addr v12, v4

    .line 220
    add-int/lit8 v14, v14, 0x1

    goto :goto_56

    .line 225
    :cond_68
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_12 .. :try_end_6d} :catchall_74

    .line 216
    add-int/lit8 v11, v11, 0x1

    goto :goto_48

    .line 231
    .end local v12    # "_hidl_array_offset_1":J
    .end local v14    # "_hidl_index_1_0":I
    .end local v17    # "_hidl_vec_element":[B
    :cond_70
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 229
    return-object v15

    .line 230
    .end local v2    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v11    # "_hidl_index_0":I
    .end local v15    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v18    # "_hidl_vec_size":I
    .end local v19    # "childBlob":Landroid/os/HwBlob;
    :catchall_74
    move-exception v4

    .line 231
    invoke-virtual {v3}, Landroid/os/HwParcel;->release()V

    .line 230
    throw v4
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 160
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 164
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf43484e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 165
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 166
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 168
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    move-result-object v0

    .line 171
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 169
    return-object v0

    .line 170
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_27
    move-exception v3

    .line 171
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 170
    throw v3
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 179
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "android.hidl.base@1.0::IBase"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 181
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 183
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v3, p0, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v4, 0xf445343

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 184
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 185
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 187
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_27

    move-result-object v0

    .line 190
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 188
    return-object v0

    .line 189
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_27
    move-exception v3

    .line 190
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 189
    throw v3
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 6
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public notifySyspropsChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 295
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 297
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 299
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v2, p0, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 300
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 302
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 304
    return-void

    .line 301
    :catchall_20
    move-exception v2

    .line 302
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 301
    throw v2
.end method

.method public ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 258
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 259
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 261
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 263
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v2, p0, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 264
    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    .line 265
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 267
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 269
    return-void

    .line 266
    :catchall_23
    move-exception v2

    .line 267
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 266
    throw v2
.end method

.method public setCallback(Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;)Z
    .registers 8
    .param p1, "suplCallbacks"    # Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 98
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 99
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v4, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverInterface"

    invoke-virtual {v2, v4}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 100
    if-nez p1, :cond_2b

    :goto_e
    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 102
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 104
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_16
    iget-object v3, p0, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 105
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 106
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 108
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_30

    move-result v0

    .line 111
    .local v0, "_hidl_out_success":Z
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 109
    return v0

    .line 100
    .end local v0    # "_hidl_out_success":Z
    .end local v1    # "_hidl_reply":Landroid/os/HwParcel;
    :cond_2b
    invoke-interface {p1}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    goto :goto_e

    .line 110
    .restart local v1    # "_hidl_reply":Landroid/os/HwParcel;
    :catchall_30
    move-exception v3

    .line 111
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 110
    throw v3
.end method

.method public setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 239
    .local v1, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 241
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 243
    .local v0, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_10
    iget-object v2, p0, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v0, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 244
    invoke-virtual {v1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_20

    .line 246
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 248
    return-void

    .line 245
    :catchall_20
    move-exception v2

    .line 246
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    .line 245
    throw v2
.end method

.method public suplCommServiceSend2server(Lvendor/huawei/hardware/hisupl/V1_0/client2server;)Z
    .registers 8
    .param p1, "commMsg"    # Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 139
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverInterface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1, v2}, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->writeToParcel(Landroid/os/HwParcel;)V

    .line 142
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 144
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_13
    iget-object v3, p0, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 145
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 146
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 148
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_28

    move-result v0

    .line 151
    .local v0, "_hidl_out_success":Z
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 149
    return v0

    .line 150
    .end local v0    # "_hidl_out_success":Z
    :catchall_28
    move-exception v3

    .line 151
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 150
    throw v3
.end method

.method public suplPlatformServiceSend2server(Lvendor/huawei/hardware/hisupl/V1_0/client2server;)Z
    .registers 8
    .param p1, "platMsg"    # Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    .line 119
    .local v2, "_hidl_request":Landroid/os/HwParcel;
    const-string/jumbo v3, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverInterface"

    invoke-virtual {v2, v3}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1, v2}, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->writeToParcel(Landroid/os/HwParcel;)V

    .line 122
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 124
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_13
    iget-object v3, p0, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v1, v5}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 125
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 126
    invoke-virtual {v2}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 128
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_28

    move-result v0

    .line 131
    .local v0, "_hidl_out_success":Z
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 129
    return v0

    .line 130
    .end local v0    # "_hidl_out_success":Z
    :catchall_28
    move-exception v3

    .line 131
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 130
    throw v3
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 87
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@Proxy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v1

    return-object v1

    .line 88
    :catch_19
    move-exception v0

    .line 91
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "[class or subclass of vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverInterface]@Proxy"

    return-object v1
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
