.class public abstract Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;
.super Landroid/os/HwBinder;
.source "ISuplclienttoserverInterface.java"

# interfaces
.implements Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 313
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .prologue
    .line 316
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 5

    .prologue
    .line 358
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 359
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 360
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 361
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

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    .line 335
    new-array v2, v4, [B

    fill-array-data v2, :array_20

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 336
    new-array v2, v4, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 334
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 335
    nop

    :array_20
    .array-data 1
        0x5t
        -0x5bt
        -0x58t
        -0x1t
        -0x2ft
        -0x6dt
        -0x1ft
        -0x28t
        0x29t
        0x11t
        0x12t
        -0x34t
        -0x50t
        0x53t
        -0x5ft
        0x59t
        -0x1ct
        -0x80t
        0x7at
        0x55t
        0x6dt
        0x6at
        0x2et
        0x56t
        -0x3dt
        -0x6dt
        0x24t
        -0x34t
        -0x51t
        -0x1ct
        -0x72t
        -0x36t
    .end array-data

    .line 336
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
    .line 321
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 322
    const-string/jumbo v2, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverInterface"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 323
    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 321
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 328
    const-string/jumbo v0, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverInterface"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .prologue
    .line 347
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .prologue
    .line 366
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 367
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 27
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
    .line 395
    sparse-switch p1, :sswitch_data_1a0

    .line 538
    :goto_3
    :sswitch_3
    return-void

    .line 398
    :sswitch_4
    const-string/jumbo v19, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;->asInterface(Landroid/os/IHwBinder;)Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;

    move-result-object v18

    .line 401
    .local v18, "suplCallbacks":Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->setCallback(Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;)Z

    move-result v13

    .line 402
    .local v13, "_hidl_out_success":Z
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 403
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 410
    .end local v13    # "_hidl_out_success":Z
    .end local v18    # "suplCallbacks":Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverCallbacks;
    :sswitch_30
    const-string/jumbo v19, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    new-instance v17, Lvendor/huawei/hardware/hisupl/V1_0/client2server;

    invoke-direct/range {v17 .. v17}, Lvendor/huawei/hardware/hisupl/V1_0/client2server;-><init>()V

    .line 413
    .local v17, "platMsg":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->readFromParcel(Landroid/os/HwParcel;)V

    .line 414
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->suplPlatformServiceSend2server(Lvendor/huawei/hardware/hisupl/V1_0/client2server;)Z

    move-result v13

    .line 415
    .restart local v13    # "_hidl_out_success":Z
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 416
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 417
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    .line 423
    .end local v13    # "_hidl_out_success":Z
    .end local v17    # "platMsg":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    :sswitch_60
    const-string/jumbo v19, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    new-instance v16, Lvendor/huawei/hardware/hisupl/V1_0/client2server;

    invoke-direct/range {v16 .. v16}, Lvendor/huawei/hardware/hisupl/V1_0/client2server;-><init>()V

    .line 426
    .local v16, "commMsg":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/hisupl/V1_0/client2server;->readFromParcel(Landroid/os/HwParcel;)V

    .line 427
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->suplCommServiceSend2server(Lvendor/huawei/hardware/hisupl/V1_0/client2server;)Z

    move-result v13

    .line 428
    .restart local v13    # "_hidl_out_success":Z
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 429
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 436
    .end local v13    # "_hidl_out_success":Z
    .end local v16    # "commMsg":Lvendor/huawei/hardware/hisupl/V1_0/client2server;
    :sswitch_91
    const-string/jumbo v19, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v10

    .line 439
    .local v10, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 440
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 441
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 447
    .end local v10    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_b2
    const-string/jumbo v19, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 456
    :sswitch_ca
    const-string/jumbo v19, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v9

    .line 459
    .local v9, "_hidl_out_descriptor":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 460
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 467
    .end local v9    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_eb
    const-string/jumbo v19, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v11

    .line 470
    .local v11, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 472
    new-instance v6, Landroid/os/HwBlob;

    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 474
    .local v6, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 475
    .local v14, "_hidl_vec_size":I
    const-wide/16 v20, 0x8

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1, v14}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 476
    const-wide/16 v20, 0xc

    const/16 v19, 0x0

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 477
    new-instance v15, Landroid/os/HwBlob;

    mul-int/lit8 v19, v14, 0x20

    move/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 478
    .local v15, "childBlob":Landroid/os/HwBlob;
    const/4 v7, 0x0

    .local v7, "_hidl_index_0":I
    :goto_12b
    if-ge v7, v14, :cond_150

    .line 480
    mul-int/lit8 v19, v7, 0x20

    move/from16 v0, v19

    int-to-long v4, v0

    .line 481
    .local v4, "_hidl_array_offset_1":J
    const/4 v8, 0x0

    .local v8, "_hidl_index_1_0":I
    :goto_133
    const/16 v19, 0x20

    move/from16 v0, v19

    if-ge v8, v0, :cond_14d

    .line 482
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [B

    aget-byte v19, v19, v8

    move/from16 v0, v19

    invoke-virtual {v15, v4, v5, v0}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 483
    const-wide/16 v20, 0x1

    add-long v4, v4, v20

    .line 481
    add-int/lit8 v8, v8, 0x1

    goto :goto_133

    .line 478
    :cond_14d
    add-int/lit8 v7, v7, 0x1

    goto :goto_12b

    .line 487
    .end local v4    # "_hidl_array_offset_1":J
    .end local v8    # "_hidl_index_1_0":I
    :cond_150
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1, v15}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 489
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 491
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 497
    .end local v6    # "_hidl_blob":Landroid/os/HwBlob;
    .end local v7    # "_hidl_index_0":I
    .end local v11    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v14    # "_hidl_vec_size":I
    .end local v15    # "childBlob":Landroid/os/HwBlob;
    :sswitch_161
    const-string/jumbo v19, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->setHALInstrumentation()V

    goto/16 :goto_3

    .line 515
    :sswitch_170
    const-string/jumbo v19, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v12

    .line 518
    .local v12, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 519
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    .line 526
    .end local v12    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_191
    const-string/jumbo v19, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3

    .line 395
    :sswitch_data_1a0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_30
        0x3 -> :sswitch_60
        0xf43484e -> :sswitch_91
        0xf444247 -> :sswitch_b2
        0xf445343 -> :sswitch_ca
        0xf485348 -> :sswitch_eb
        0xf494e54 -> :sswitch_161
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_170
        0xf535953 -> :sswitch_191
        0xf555444 -> :sswitch_3
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .prologue
    .line 352
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 377
    const-string/jumbo v0, "vendor.huawei.hardware.hisupl@1.0::ISuplclienttoserverInterface"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 378
    return-object p0

    .line 380
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
    .line 384
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .prologue
    .line 343
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    .line 371
    const/4 v0, 0x1

    return v0
.end method
