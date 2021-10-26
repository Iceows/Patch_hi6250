.class Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;
.super Ljava/lang/Thread;
.source "NetworkCommandProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/supl/commprocessor/NetworkCommandProcessor;->connect(Ljava/lang/String;IIIIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

.field final synthetic val$iConnTimeOut:I

.field final synthetic val$iHandShakeTimeOut:I

.field final synthetic val$iReqID:I

.field final synthetic val$iSecure:I

.field final synthetic val$iSessionID:I

.field final synthetic val$networkController:Lcom/android/supl/nc/NetworkController;

.field final synthetic val$port:I

.field final synthetic val$stIP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/supl/commprocessor/NetworkCommandProcessor;Lcom/android/supl/nc/NetworkController;IILjava/lang/String;IIII)V
    .registers 10
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/NetworkCommandProcessor;
    .param p2, "val$networkController"    # Lcom/android/supl/nc/NetworkController;
    .param p3, "val$iSessionID"    # I
    .param p4, "val$iReqID"    # I
    .param p5, "val$stIP"    # Ljava/lang/String;
    .param p6, "val$port"    # I
    .param p7, "val$iSecure"    # I
    .param p8, "val$iHandShakeTimeOut"    # I
    .param p9, "val$iConnTimeOut"    # I

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->this$0:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    iput-object p2, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    iput p3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSessionID:I

    iput p4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iReqID:I

    iput-object p5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$stIP:Ljava/lang/String;

    iput p6, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$port:I

    iput p7, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSecure:I

    iput p8, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iHandShakeTimeOut:I

    iput p9, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iConnTimeOut:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "isConnected":Z
    new-array v0, v8, [I

    .line 257
    .local v0, "iFailStatus":[I
    iget-object v3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    if-nez v3, :cond_42

    .line 258
    const-string/jumbo v3, "SUPL20_NetCP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Session id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSessionID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Req id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iReqID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not connect for no more connection allowed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->this$0:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    iget v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSessionID:I

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iReqID:I

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sendNotConnectionStatus(II[I)V

    .line 261
    return-void

    .line 263
    :cond_42
    iget-object v3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->this$0:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$stIP:Ljava/lang/String;

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$port:I

    iget v6, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSecure:I

    iget-object v7, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v7}, Lcom/android/supl/nc/NetworkController;->getNetWorkID()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->getNetKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "stKey":Ljava/lang/String;
    const-string/jumbo v3, "SUPL20_NetCP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Session id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSessionID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Req id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iReqID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is trying to connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v5}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    iget v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iHandShakeTimeOut:I

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iConnTimeOut:I

    invoke-virtual {v3, v4, v5}, Lcom/android/supl/nc/NetworkController;->SetTimeOuts(II)V

    .line 269
    iget-object v3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    iget v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iConnTimeOut:I

    invoke-virtual {v3, v4, v8}, Lcom/android/supl/nc/NetworkController;->setServer_conn_Timeout_Retries(II)V

    .line 271
    iget-object v3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/supl/nc/NetworkController;->connect([IZ)Z

    move-result v1

    .line 272
    .local v1, "isConnected":Z
    if-eqz v1, :cond_f1

    .line 273
    const-string/jumbo v3, "SUPL20_NetCP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Session id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSessionID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Req id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iReqID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is connected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v5}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->this$0:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    iget v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSessionID:I

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iReqID:I

    iget-object v6, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v6}, Lcom/android/supl/nc/NetworkController;->getNetWorkID()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sendOnConnectionStatus(III)V

    .line 253
    :goto_f0
    return-void

    .line 276
    :cond_f1
    const-string/jumbo v3, "SUPL20_NetCP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Session id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSessionID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Req id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iReqID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not connected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v5}, Lcom/android/supl/nc/NetworkController;->getServerIPAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->this$0:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    invoke-static {v3}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->-get0(Lcom/android/supl/commprocessor/NetworkCommandProcessor;)Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v4}, Lcom/android/supl/nc/NetworkController;->getNetWorkID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 278
    iget-object v3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v3}, Lcom/android/supl/nc/NetworkController;->getConnectionCount()I

    move-result v3

    if-ne v3, v8, :cond_155

    .line 279
    iget-object v3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->this$0:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    invoke-virtual {v3, v2}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->removeFailerSession(Ljava/lang/String;)V

    .line 283
    :goto_14b
    iget-object v3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->this$0:Lcom/android/supl/commprocessor/NetworkCommandProcessor;

    iget v4, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iSessionID:I

    iget v5, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$iReqID:I

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/supl/commprocessor/NetworkCommandProcessor;->sendNotConnectionStatus(II[I)V

    goto :goto_f0

    .line 281
    :cond_155
    iget-object v3, p0, Lcom/android/supl/commprocessor/NetworkCommandProcessor$1;->val$networkController:Lcom/android/supl/nc/NetworkController;

    invoke-virtual {v3}, Lcom/android/supl/nc/NetworkController;->decrementConnectionCount()V

    goto :goto_14b
.end method
