.class Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;
.super Ljava/util/TimerTask;
.source "PeriodicTriggerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/trigger/PeriodicTriggerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemainderTask"
.end annotation


# instance fields
.field private mTimer:Ljava/util/Timer;

.field private m_ucTriggerId:S

.field private m_unPeriod:I

.field private m_unTime:I

.field private sSessionID:I

.field final synthetic this$0:Lcom/android/supl/trigger/PeriodicTriggerHandler;


# direct methods
.method public constructor <init>(Lcom/android/supl/trigger/PeriodicTriggerHandler;IIISI)V
    .registers 13
    .param p1, "this$0"    # Lcom/android/supl/trigger/PeriodicTriggerHandler;
    .param p2, "sSessionID"    # I
    .param p3, "iDelayToStart"    # I
    .param p4, "iIntervelTimeMin"    # I
    .param p5, "m_ucTriggerId"    # S
    .param p6, "m_unTime"    # I

    .prologue
    const/4 v1, 0x0

    .line 209
    iput-object p1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->this$0:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->sSessionID:I

    .line 201
    iput-short v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_ucTriggerId:S

    .line 203
    iput v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unPeriod:I

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->mTimer:Ljava/util/Timer;

    .line 207
    iput v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    .line 212
    iput p2, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->sSessionID:I

    .line 213
    iput p4, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unPeriod:I

    .line 214
    iput-short p5, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_ucTriggerId:S

    .line 215
    iput p6, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    .line 216
    new-instance v0, Ljava/util/Timer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trigger thr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->mTimer:Ljava/util/Timer;

    .line 218
    iget-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->mTimer:Ljava/util/Timer;

    int-to-long v2, p3

    iget v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unPeriod:I

    int-to-long v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 219
    const-string/jumbo v0, "SUPL20_Trigger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start Trigger SID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " TI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " TimeCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    const-string/jumbo v2, " Delay to Start:"

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    const-string/jumbo v2, " Interval Time:"

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 226
    const-string/jumbo v0, "SUPL20_Trigger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendOnTriggerPeriodic SID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->sSessionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " TI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_ucTriggerId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    const-string/jumbo v2, " TimeIX:"

    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    iget v2, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->this$0:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    iget v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->sSessionID:I

    iget-short v2, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_ucTriggerId:S

    iget v3, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->sendOnTriggerPeriodic(III)V

    .line 229
    iget v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    if-eqz v0, :cond_52

    .line 230
    iget v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    .line 231
    iget v0, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    if-nez v0, :cond_52

    .line 232
    invoke-virtual {p0}, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->stopTrigger()V

    .line 225
    :cond_52
    return-void
.end method

.method public stopTrigger()V
    .registers 5

    .prologue
    .line 238
    const-string/jumbo v1, "SUPL20_Trigger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopTrigger SID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->sSessionID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " TI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_ucTriggerId:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " TimeIX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 239
    iget v3, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_unTime:I

    .line 241
    iget-object v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->this$0:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    iget v2, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->sSessionID:I

    iget-short v3, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->m_ucTriggerId:S

    invoke-static {v1, v2, v3}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->-wrap0(Lcom/android/supl/trigger/PeriodicTriggerHandler;IS)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "stKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->this$0:Lcom/android/supl/trigger/PeriodicTriggerHandler;

    invoke-static {v1}, Lcom/android/supl/trigger/PeriodicTriggerHandler;->-get0(Lcom/android/supl/trigger/PeriodicTriggerHandler;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v1, p0, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 244
    invoke-virtual {p0}, Lcom/android/supl/trigger/PeriodicTriggerHandler$RemainderTask;->cancel()Z

    .line 237
    return-void
.end method
