.class Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SETLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/SETLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/loc/SETLocationManager;


# direct methods
.method private constructor <init>(Lcom/android/supl/loc/SETLocationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/loc/SETLocationManager;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/supl/loc/SETLocationManager;Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/loc/SETLocationManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;-><init>(Lcom/android/supl/loc/SETLocationManager;)V

    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const/4 v1, 0x0

    .line 437
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v0}, Lcom/android/supl/loc/SETLocationManager;->-get3(Lcom/android/supl/loc/SETLocationManager;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 438
    .local v3, "iNetWorkType":I
    const-string/jumbo v0, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCellInfoChanged network type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/16 v0, 0xd

    if-ne v3, v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    const/4 v2, 0x0

    move-object v4, v1

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/supl/loc/SETLocationManager;->-wrap0(Lcom/android/supl/loc/SETLocationManager;Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    .line 442
    :cond_0
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    .line 435
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 6
    .param p1, "cellLoc"    # Landroid/telephony/CellLocation;

    .prologue
    const/4 v4, 0x0

    .line 429
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v0}, Lcom/android/supl/loc/SETLocationManager;->-get3(Lcom/android/supl/loc/SETLocationManager;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 430
    .local v3, "iNetWorkType":I
    const-string/jumbo v0, "SUPL20_LocMan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCellLocationChanged network type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/supl/loc/SETLocationManager;->-wrap0(Lcom/android/supl/loc/SETLocationManager;Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    .line 432
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    .line 428
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 523
    const-string/jumbo v0, "Unknown"

    .line 525
    .local v0, "connectionState":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    :goto_0
    const-string/jumbo v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataConnectionStateChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V

    .line 546
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 522
    return-void

    .line 527
    :pswitch_0
    const-string/jumbo v0, "Connected"

    goto :goto_0

    .line 530
    :pswitch_1
    const-string/jumbo v0, "Connecting"

    goto :goto_0

    .line 533
    :pswitch_2
    const-string/jumbo v0, "Disconnected"

    goto :goto_0

    .line 536
    :pswitch_3
    const-string/jumbo v0, "Suspended"

    goto :goto_0

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 488
    const-string/jumbo v0, "Unknown"

    .line 490
    .local v0, "connectionState":Ljava/lang/String;
    const-string/jumbo v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataConnectionStateChanged networkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    packed-switch p1, :pswitch_data_0

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    const-string/jumbo v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataConnectionStateChanged state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_0
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V

    .line 515
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 487
    return-void

    .line 493
    :pswitch_0
    const-string/jumbo v0, "Connected"

    .line 494
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "onDataConnectionStateChanged TelephonyManager.DATA_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 497
    :pswitch_1
    const-string/jumbo v0, "Connecting"

    .line 498
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "onDataConnectionStateChanged TelephonyManager.DATA_CONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 501
    :pswitch_2
    const-string/jumbo v0, "Disconnected"

    .line 502
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "onDataConnectionStateChanged TelephonyManager.DATA_DISCONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 505
    :pswitch_3
    const-string/jumbo v0, "Suspended"

    .line 506
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "onDataConnectionStateChanged TelephonyManager.DATA_SUSPENDED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "iNotInService":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 469
    const/4 v0, 0x1

    .line 470
    const-string/jumbo v1, "SUPL20_LocMan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceStateChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->sendCellStaleLocation()V

    .line 476
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1}, Lcom/android/supl/loc/SETLocationManager;->-get2(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/loc/NetInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v2}, Lcom/android/supl/loc/SETLocationManager;->-get1(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/commprocessor/NDKCommProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/supl/loc/NetInfo;->sendStaleLocationInfo(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    .line 481
    :goto_1
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 449
    return-void

    .line 454
    :pswitch_0
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "onServiceStateChanged ServiceState.STATE_IN_SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :pswitch_1
    const/4 v0, 0x1

    .line 458
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "onServiceStateChanged ServiceState.STATE_EMERGENCY_ONLY"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 461
    :pswitch_2
    const/4 v0, 0x1

    .line 462
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "onServiceStateChanged ServiceState.STATE_OUT_OF_SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    :pswitch_3
    const/4 v0, 0x1

    .line 466
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "onServiceStateChanged ServiceState.STATE_POWER_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V

    goto :goto_1

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
