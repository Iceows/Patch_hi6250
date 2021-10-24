.class Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;
.super Landroid/telephony/PhoneStateListener;
.source "SETLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/SETLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyCallListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/loc/SETLocationManager;


# direct methods
.method private constructor <init>(Lcom/android/supl/loc/SETLocationManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/supl/loc/SETLocationManager;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/supl/loc/SETLocationManager;Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/supl/loc/SETLocationManager;
    .param p2, "-this1"    # Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;-><init>(Lcom/android/supl/loc/SETLocationManager;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 10
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 398
    const-string/jumbo v0, "UNKNOWN"

    .line 400
    .local v0, "callState":Ljava/lang/String;
    packed-switch p1, :pswitch_data_94

    .line 430
    :cond_7
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 431
    return-void

    .line 402
    :pswitch_b
    const-string/jumbo v0, "IDLE"

    .line 403
    iget-object v5, p0, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v5}, Lcom/android/supl/loc/SETLocationManager;->-get0(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 404
    iget-object v5, p0, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v5, v4}, Lcom/android/supl/loc/SETLocationManager;->-set0(Lcom/android/supl/loc/SETLocationManager;Z)Z

    .line 405
    new-instance v3, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v3}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 406
    .local v3, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v2, 0xc

    .line 408
    .local v2, "iSize":I
    new-array v5, v2, [B

    iput-object v5, v3, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 409
    const/4 v1, 0x0

    .line 410
    .local v1, "iOffset":I
    iget-object v5, v3, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 411
    const/16 v6, 0x8

    .line 410
    invoke-static {v5, v1, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 412
    iget-object v5, v3, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 413
    const/16 v6, 0x116

    .line 412
    invoke-static {v5, v1, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 414
    iget-object v5, v3, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 415
    iget-object v6, p0, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v6}, Lcom/android/supl/loc/SETLocationManager;->-get0(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v6

    if-eqz v6, :cond_42

    const/4 v4, 0x1

    .line 414
    :cond_42
    invoke-static {v5, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 416
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager$EmergencyCallListener;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v4}, Lcom/android/supl/loc/SETLocationManager;->-get2(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/commprocessor/NDKCommProcessor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 417
    const-string/jumbo v4, "SUPL20_LocMan"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCallStateChanged "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " on Emergency call End"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 422
    .end local v1    # "iOffset":I
    .end local v2    # "iSize":I
    .end local v3    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :pswitch_71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ringing ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 425
    :pswitch_8e
    const-string/jumbo v0, "Offhook"

    goto/16 :goto_7

    .line 400
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_b
        :pswitch_71
        :pswitch_8e
    .end packed-switch
.end method
