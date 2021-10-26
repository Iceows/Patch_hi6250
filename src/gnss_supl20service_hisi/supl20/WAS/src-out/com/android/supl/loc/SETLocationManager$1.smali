.class Lcom/android/supl/loc/SETLocationManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SETLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/SETLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/loc/SETLocationManager;


# direct methods
.method constructor <init>(Lcom/android/supl/loc/SETLocationManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/supl/loc/SETLocationManager;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager$1;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 185
    const-string/jumbo v4, "android.intent.extra.PHONE_NUMBER"

    .line 184
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "outgoingno":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/supl/loc/SETLocationManager$1;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v2}, Lcom/android/supl/loc/EmergencyUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6d

    .line 190
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    .line 188
    :goto_14
    invoke-static {v6, v4}, Lcom/android/supl/loc/SETLocationManager;->-set0(Lcom/android/supl/loc/SETLocationManager;Z)Z

    .line 192
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager$1;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v4}, Lcom/android/supl/loc/SETLocationManager;->-get0(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 193
    const-string/jumbo v4, "SUPL20_LocMan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " on Emergency call is going.."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v3, Lcom/android/supl/nc/SendToServer;

    invoke-direct {v3}, Lcom/android/supl/nc/SendToServer;-><init>()V

    .line 195
    .local v3, "sendToServer":Lcom/android/supl/nc/SendToServer;
    const/16 v1, 0xc

    .line 197
    .local v1, "iSize":I
    new-array v4, v1, [B

    iput-object v4, v3, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "iOffset":I
    iget-object v4, v3, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 200
    const/16 v6, 0x8

    .line 199
    invoke-static {v4, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 201
    iget-object v4, v3, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 202
    const/16 v6, 0x116

    .line 201
    invoke-static {v4, v0, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 203
    iget-object v4, v3, Lcom/android/supl/nc/SendToServer;->m_bPacket:[B

    .line 204
    iget-object v6, p0, Lcom/android/supl/loc/SETLocationManager$1;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v6}, Lcom/android/supl/loc/SETLocationManager;->-get0(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 203
    :goto_5f
    invoke-static {v4, v0, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v0

    .line 205
    iget-object v4, p0, Lcom/android/supl/loc/SETLocationManager$1;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v4}, Lcom/android/supl/loc/SETLocationManager;->-get1(Lcom/android/supl/loc/SETLocationManager;)Lcom/android/supl/commprocessor/NDKCommProcessor;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/supl/commprocessor/NDKCommProcessor;->sendServer(Lcom/android/supl/nc/SendToServer;)V

    .line 182
    .end local v0    # "iOffset":I
    .end local v1    # "iSize":I
    .end local v3    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :cond_6c
    return-void

    :cond_6d
    move v4, v5

    .line 188
    goto :goto_14

    .line 204
    .restart local v0    # "iOffset":I
    .restart local v1    # "iSize":I
    .restart local v3    # "sendToServer":Lcom/android/supl/nc/SendToServer;
    :cond_6f
    const/4 v5, 0x0

    goto :goto_5f
.end method
