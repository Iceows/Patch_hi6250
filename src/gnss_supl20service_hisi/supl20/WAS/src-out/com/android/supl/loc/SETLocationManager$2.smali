.class Lcom/android/supl/loc/SETLocationManager$2;
.super Ljava/lang/Thread;
.source "SETLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/supl/loc/SETLocationManager;->forceCellLocationUpdate()V
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
    .line 1
    iput-object p1, p0, Lcom/android/supl/loc/SETLocationManager$2;->this$0:Lcom/android/supl/loc/SETLocationManager;

    .line 350
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 353
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$2;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v0}, Lcom/android/supl/loc/SETLocationManager;->-get1(Lcom/android/supl/loc/SETLocationManager;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 354
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$2;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v0}, Lcom/android/supl/loc/SETLocationManager;->-get4(Lcom/android/supl/loc/SETLocationManager;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 355
    .local v3, "iNetWorkType":I
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$2;->this$0:Lcom/android/supl/loc/SETLocationManager;

    invoke-static {v0}, Lcom/android/supl/loc/SETLocationManager;->-get4(Lcom/android/supl/loc/SETLocationManager;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 356
    .local v1, "cellLoc":Landroid/telephony/CellLocation;
    if-nez v1, :cond_29

    .line 357
    const-string/jumbo v0, "SUPL20_LocMan"

    const-string/jumbo v2, "tm.getCellLocation() returned null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v1    # "cellLoc":Landroid/telephony/CellLocation;
    .end local v3    # "iNetWorkType":I
    :goto_28
    return-void

    .line 359
    .restart local v1    # "cellLoc":Landroid/telephony/CellLocation;
    .restart local v3    # "iNetWorkType":I
    :cond_29
    const-string/jumbo v0, "SUPL20_LocMan"

    const-string/jumbo v2, "tm.getCellLocation() returned non-null "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/supl/loc/SETLocationManager$2;->this$0:Lcom/android/supl/loc/SETLocationManager;

    const/4 v2, 0x0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/supl/loc/SETLocationManager;->-wrap2(Lcom/android/supl/loc/SETLocationManager;Landroid/telephony/CellLocation;ZI[BLjava/util/List;)V

    goto :goto_28

    .line 363
    .end local v1    # "cellLoc":Landroid/telephony/CellLocation;
    .end local v3    # "iNetWorkType":I
    :cond_3a
    const-string/jumbo v0, "SUPL20_LocMan"

    const-string/jumbo v2, "Location switch is OFF"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method
