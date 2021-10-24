.class Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;
.super Ljava/lang/Object;
.source "SUPLHIDLInterface.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/SUPLHIDLInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HidlServiceDeathHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/SUPLHIDLInterface;


# direct methods
.method private constructor <init>(Lcom/android/supl/SUPLHIDLInterface;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/supl/SUPLHIDLInterface;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/supl/SUPLHIDLInterface;Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/supl/SUPLHIDLInterface;
    .param p2, "-this1"    # Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;-><init>(Lcom/android/supl/SUPLHIDLInterface;)V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 7
    .param p1, "cookie"    # J

    .prologue
    .line 124
    :try_start_0
    const-string/jumbo v1, "SUPLHIDL"

    const-string/jumbo v2, "HISUPL server died."

    invoke-static {v1, v2}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v1}, Lcom/android/supl/SUPLHIDLInterface;->-get1(Lcom/android/supl/SUPLHIDLInterface;)Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 126
    const-string/jumbo v1, "SUPLHIDL"

    const-string/jumbo v2, "HISUPL server died 00."

    invoke-static {v1, v2}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v1}, Lcom/android/supl/SUPLHIDLInterface;->-get1(Lcom/android/supl/SUPLHIDLInterface;)Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    invoke-static {v2}, Lcom/android/supl/SUPLHIDLInterface;->-get0(Lcom/android/supl/SUPLHIDLInterface;)Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    .line 128
    const-string/jumbo v1, "SUPLHIDL"

    const-string/jumbo v2, "HISUPL server died 01."

    invoke-static {v1, v2}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/android/supl/SUPLHIDLInterface$HidlServiceDeathHandler;->this$0:Lcom/android/supl/SUPLHIDLInterface;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/supl/SUPLHIDLInterface;->-set0(Lcom/android/supl/SUPLHIDLInterface;Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;)Lvendor/huawei/hardware/hisupl/V1_0/ISuplclienttoserverInterface;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_38} :catch_39

    .line 134
    :cond_38
    :goto_38
    return-void

    .line 131
    :catch_39
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SUPLHIDL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception unlinkToDeath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/supl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method
