.class public Lcom/android/supl/config/ConfigManager$ForceTestValue;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/config/ConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForceTestValue"
.end annotation


# instance fields
.field public aNMR:[I

.field public iCI:I

.field public iLac:I

.field public iMSISDN:J

.field public iMcc:I

.field public iMnc:I

.field public iTA:I

.field public isFillTAandNMR:Z

.field final synthetic this$0:Lcom/android/supl/config/ConfigManager;


# direct methods
.method public constructor <init>(Lcom/android/supl/config/ConfigManager;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/supl/config/ConfigManager;

    .prologue
    const/4 v2, 0x0

    .line 634
    iput-object p1, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->this$0:Lcom/android/supl/config/ConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput v2, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMnc:I

    .line 636
    iput v2, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMcc:I

    .line 637
    iput v2, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iLac:I

    .line 638
    iput v2, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iCI:I

    .line 639
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMSISDN:J

    .line 640
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->isFillTAandNMR:Z

    .line 641
    iput v2, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iTA:I

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    .line 634
    return-void
.end method


# virtual methods
.method public getForceTest()[B
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 645
    const/16 v3, 0x20

    .line 647
    .local v3, "iSize":I
    iget-boolean v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->isFillTAandNMR:Z

    if-eqz v4, :cond_9

    .line 648
    const/16 v3, 0x24

    .line 650
    :cond_9
    iget-object v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    if-eqz v4, :cond_15

    .line 651
    add-int/lit8 v3, v3, 0x4

    .line 652
    iget-object v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    .line 654
    :cond_15
    new-array v0, v3, [B

    .line 655
    .local v0, "bData":[B
    const/4 v2, 0x0

    .line 656
    .local v2, "iOffset":I
    const/16 v4, 0x6f

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 657
    add-int/lit8 v4, v3, -0x4

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 658
    iget v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMcc:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 659
    iget v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMnc:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 660
    iget v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iLac:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 661
    iget v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iCI:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 662
    iget-wide v6, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMSISDN:J

    invoke-static {v0, v2, v6, v7}, Lcom/android/bytewriter/IO;->put8([BIJ)I

    move-result v2

    .line 663
    iget-boolean v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->isFillTAandNMR:Z

    if-eqz v4, :cond_6e

    const/4 v4, 0x1

    :goto_47
    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 664
    iget-boolean v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->isFillTAandNMR:Z

    if-eqz v4, :cond_55

    .line 665
    iget v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iTA:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 667
    :cond_55
    iget-object v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    if-eqz v4, :cond_70

    .line 668
    iget-object v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    array-length v4, v4

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 669
    iget-object v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    array-length v6, v4

    :goto_63
    if-ge v5, v6, :cond_74

    aget v1, v4, v5

    .line 670
    .local v1, "iNmr":I
    invoke-static {v0, v2, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 669
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    .end local v1    # "iNmr":I
    :cond_6e
    move v4, v5

    .line 663
    goto :goto_47

    .line 673
    :cond_70
    invoke-static {v0, v2, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 675
    :cond_74
    return-object v0
.end method
