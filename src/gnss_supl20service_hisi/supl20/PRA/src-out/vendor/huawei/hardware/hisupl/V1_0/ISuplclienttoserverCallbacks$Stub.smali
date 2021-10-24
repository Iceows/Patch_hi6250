.class public abstract Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;
.super Landroid/os/HwBinder;
.source "ISuplclienttoserverCallbacks.java"

# interfaces
.implements Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 285
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .prologue
    .line 288
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 5

    .prologue
    .line 330
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 331
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 332
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 333
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 307
    new-array v2, v4, [B

    fill-array-data v2, :array_20

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 308
    new-array v2, v4, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 306
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 307
    nop

    :array_20
    .array-data 1
        -0x73t
        -0x2et
        -0x47t
        0x46t
        0x40t
        0x20t
        0x3ct
        0x1et
        0x39t
        0xct
        -0x3ft
        0x23t
        0x55t
        -0x30t
        0x62t
        -0x68t
        0x21t
        0x1t
        -0x7et
        0x50t
        -0x52t
        -0x20t
        0x10t
        0x31t
        -0x71t
        -0x4bt
        -0x6et
        0x43t
        0xdt
        -0x80t
        0x69t
        -0x4at
    .end array-data

    .line 308
    :array_34
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 294
    const-string/jumbo v2, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverCallbacks"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 295
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 293
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 300
    const-string/jumbo v0, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverCallbacks"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .prologue
    .line 338
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 339
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 23
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 367
    sparse-switch p1, :sswitch_data_12a

    .line 496
    :goto_3
    :sswitch_3
    return-void

    .line 370
    :sswitch_4
    const-string/jumbo v15, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverCallbacks"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    new-instance v13, Lvendor/huawei/hardware/hisupl/V1_0/server2client;

    invoke-direct {v13}, Lvendor/huawei/hardware/hisupl/V1_0/server2client;-><init>()V

    .line 373
    .local v13, "pcmMsg":Lvendor/huawei/hardware/hisupl/V1_0/server2client;
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lvendor/huawei/hardware/hisupl/V1_0/server2client;->readFromParcel(Landroid/os/HwParcel;)V

    .line 374
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->suplPcmCb(Lvendor/huawei/hardware/hisupl/V1_0/server2client;)V

    .line 375
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 382
    .end local v13    # "pcmMsg":Lvendor/huawei/hardware/hisupl/V1_0/server2client;
    :sswitch_25
    const-string/jumbo v15, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverCallbacks"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    new-instance v14, Lvendor/huawei/hardware/hisupl/V1_0/server2client;

    invoke-direct {v14}, Lvendor/huawei/hardware/hisupl/V1_0/server2client;-><init>()V

    .line 385
    .local v14, "scmMsg":Lvendor/huawei/hardware/hisupl/V1_0/server2client;
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lvendor/huawei/hardware/hisupl/V1_0/server2client;->readFromParcel(Landroid/os/HwParcel;)V

    .line 386
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->suplScmCb(Lvendor/huawei/hardware/hisupl/V1_0/server2client;)V

    .line 387
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 394
    .end local v14    # "scmMsg":Lvendor/huawei/hardware/hisupl/V1_0/server2client;
    :sswitch_46
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v8

    .line 397
    .local v8, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 398
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 399
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 405
    .end local v8    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_61
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 414
    :sswitch_73
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v7

    .line 417
    .local v7, "_hidl_out_descriptor":Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 418
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 425
    .end local v7    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_8f
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v9

    .line 428
    .local v9, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 430
    new-instance v4, Landroid/os/HwBlob;

    const/16 v15, 0x10

    invoke-direct {v4, v15}, Landroid/os/HwBlob;-><init>(I)V

    .line 432
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 433
    .local v11, "_hidl_vec_size":I
    const-wide/16 v16, 0x8

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1, v11}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 434
    const-wide/16 v16, 0xc

    const/4 v15, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1, v15}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 435
    new-instance v12, Landroid/os/HwBlob;

    mul-int/lit8 v15, v11, 0x20

    invoke-direct {v12, v15}, Landroid/os/HwBlob;-><init>(I)V

    .line 436
    .local v12, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_c3
    if-ge v5, v11, :cond_e2

    .line 438
    mul-int/lit8 v15, v5, 0x20

    int-to-long v2, v15

    .line 439
    .local v2, "_hidl_array_offset_1":J
    const/4 v6, 0x0

    .local v6, "_hidl_index_1_0":I
    :goto_c9
    const/16 v15, 0x20

    if-ge v6, v15, :cond_df

    .line 440
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    aget-byte v15, v15, v6

    invoke-virtual {v12, v2, v3, v15}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 441
    const-wide/16 v16, 0x1

    add-long v2, v2, v16

    .line 439
    add-int/lit8 v6, v6, 0x1

    goto :goto_c9

    .line 436
    :cond_df
    add-int/lit8 v5, v5, 0x1

    goto :goto_c3

    .line 445
    .end local v2    # "_hidl_array_offset_1":J
    .end local v6    # "_hidl_index_1_0":I
    :cond_e2
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1, v12}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 447
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 455
    .end local v4    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5    # "_hidl_index_0":I
    .end local v9    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v11    # "_hidl_vec_size":I
    .end local v12    # "childBlob":Landroid/os/HwBlob;
    :sswitch_f3
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->setHALInstrumentation()V

    goto/16 :goto_3

    .line 473
    :sswitch_100
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v10

    .line 476
    .local v10, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 477
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 484
    .end local v10    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_11c
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3

    .line 367
    nop

    :sswitch_data_12a
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_25
        0xf43484e -> :sswitch_46
        0xf444247 -> :sswitch_61
        0xf445343 -> :sswitch_73
        0xf485348 -> :sswitch_8f
        0xf494e54 -> :sswitch_f3
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_100
        0xf535953 -> :sswitch_11c
        0xf555444 -> :sswitch_3
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .prologue
    .line 324
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 349
    const-string/jumbo v0, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverCallbacks"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 350
    return-object p0

    .line 352
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .prologue
    .line 315
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .prologue
    .line 343
    const/4 v0, 0x1

    return v0
.end method
