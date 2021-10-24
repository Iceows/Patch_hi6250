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
    .registers 2
    .param p1, "this$0"    # Lcom/android/supl/loc/SETLocationManager;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/supl/loc/SETLocationManager;Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/supl/loc/SETLocationManager;
    .param p2, "-this1"    # Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;-><init>(Lcom/android/supl/loc/SETLocationManager;)V

    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;)V
    .registers 8
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

    .line 461
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v0}, Lcom/android/supl/loc/SETLocationManager;->-get4(Lcom/android/supl/loc/SETLocationManager;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 462
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

    .line 463
    const/16 v0, 0xd

    if-ne v3, v0, :cond_31

    .line 464
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    const/4 v2, 0x0

    move-object v4, v1

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/supl/loc/SETLocationManager;->-wrap2(Lcom/android/supl/loc/SETLocationManager;Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    .line 466
    :cond_31
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    .line 467
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 8
    .param p1, "cellLoc"    # Landroid/telephony/CellLocation;

    .prologue
    const/4 v4, 0x0

    .line 453
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v0}, Lcom/android/supl/loc/SETLocationManager;->-get4(Lcom/android/supl/loc/SETLocationManager;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 454
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

    .line 455
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/supl/loc/SETLocationManager;->-wrap2(Lcom/android/supl/loc/SETLocationManager;Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    .line 456
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    .line 457
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 547
    const-string/jumbo v0, "Unknown"

    .line 549
    .local v0, "connectionState":Ljava/lang/String;
    packed-switch p1, :pswitch_data_4e

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    :goto_1a
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

    .line 568
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V

    .line 570
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 571
    return-void

    .line 551
    :pswitch_3d
    const-string/jumbo v0, "Connected"

    goto :goto_1a

    .line 554
    :pswitch_41
    const-string/jumbo v0, "Connecting"

    goto :goto_1a

    .line 557
    :pswitch_45
    const-string/jumbo v0, "Disconnected"

    goto :goto_1a

    .line 560
    :pswitch_49
    const-string/jumbo v0, "Suspended"

    goto :goto_1a

    .line 549
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_49
    .end packed-switch
.end method

.method public onDataConnectionStateChanged(II)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 512
    const-string/jumbo v0, "Unknown"

    .line 514
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

    .line 515
    packed-switch p1, :pswitch_data_8c

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
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

    .line 537
    :goto_4e
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V

    .line 539
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 540
    return-void

    .line 517
    :pswitch_57
    const-string/jumbo v0, "Connected"

    .line 518
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "onDataConnectionStateChanged TelephonyManager.DATA_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 521
    :pswitch_64
    const-string/jumbo v0, "Connecting"

    .line 522
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "onDataConnectionStateChanged TelephonyManager.DATA_CONNECTING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 525
    :pswitch_71
    const-string/jumbo v0, "Disconnected"

    .line 526
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "onDataConnectionStateChanged TelephonyManager.DATA_DISCONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 529
    :pswitch_7e
    const-string/jumbo v0, "Suspended"

    .line 530
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "onDataConnectionStateChanged TelephonyManager.DATA_SUSPENDED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 515
    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_71
        :pswitch_64
        :pswitch_57
        :pswitch_7e
    .end packed-switch
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 6
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "iNotInService":I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_74

    .line 493
    const/4 v0, 0x1

    .line 494
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

    .line 498
    :goto_27
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6d

    .line 499
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->sendCellStaleLocation()V

    .line 500
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v1}, Lcom/android/supl/loc/SETLocationManager;->-get3(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/loc/NetInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v2}, Lcom/android/supl/loc/SETLocationManager;->-get2(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/commprocessor/NDKCommProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/supl/loc/NetInfo;->sendStaleLocationInfo(Lcom/android/supl/commprocessor/NDKCommProcessor;)V

    .line 505
    :goto_3e
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 506
    return-void

    .line 478
    :pswitch_42
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "onServiceStateChanged ServiceState.STATE_IN_SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 481
    :pswitch_4c
    const/4 v0, 0x1

    .line 482
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "onServiceStateChanged ServiceState.STATE_EMERGENCY_ONLY"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 485
    :pswitch_57
    const/4 v0, 0x1

    .line 486
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "onServiceStateChanged ServiceState.STATE_OUT_OF_SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 489
    :pswitch_62
    const/4 v0, 0x1

    .line 490
    const-string/jumbo v1, "SUPL20_LocMan"

    const-string/jumbo v2, "onServiceStateChanged ServiceState.STATE_POWER_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 502
    :cond_6d
    iget-object v1, p0, Lcom/android/supl/loc/SETLocationManager$MyPhoneStateListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V

    goto :goto_3e

    .line 476
    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_42
        :pswitch_57
        :pswitch_4c
        :pswitch_62
    .end packed-switch
.end method
