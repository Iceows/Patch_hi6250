.class Lcom/android/supl/commprocessor/NDKCommProcessor$1;
.super Landroid/os/Handler;
.source "NDKCommProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/commprocessor/NDKCommProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;


# direct methods
.method constructor <init>(Lcom/android/supl/commprocessor/NDKCommProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/NDKCommProcessor;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 247
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 212
    return-void

    .line 216
    :pswitch_0
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->-get1(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->-get1(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->registerEmergencyReceiver()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .local v0, "argumentException":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 225
    .end local v0    # "argumentException":Ljava/lang/IllegalArgumentException;
    :pswitch_1
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->-get1(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 227
    :try_start_1
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->-get1(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->unregisterEmergencyReceiver()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 228
    :catch_1
    move-exception v0

    .restart local v0    # "argumentException":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 234
    .end local v0    # "argumentException":Ljava/lang/IllegalArgumentException;
    :pswitch_2
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->-get1(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->-get1(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->startLocationIdListener()V

    goto :goto_0

    .line 239
    :pswitch_3
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->-get1(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/supl/commprocessor/NDKCommProcessor$1;->this$0:Lcom/android/supl/commprocessor/NDKCommProcessor;

    invoke-static {v1}, Lcom/android/supl/commprocessor/NDKCommProcessor;->-get1(Lcom/android/supl/commprocessor/NDKCommProcessor;)Lcom/android/supl/loc/SETLocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/supl/loc/SETLocationManager;->stopListening()V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
