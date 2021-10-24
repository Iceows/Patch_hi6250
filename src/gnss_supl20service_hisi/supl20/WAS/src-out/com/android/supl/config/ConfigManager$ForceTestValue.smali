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

    .line 686
    iput-object p1, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->this$0:Lcom/android/supl/config/ConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput v2, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMnc:I

    .line 688
    iput v2, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMcc:I

    .line 689
    iput v2, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iLac:I

    .line 690
    iput v2, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iCI:I

    .line 691
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMSISDN:J

    .line 692
    iput-boolean v2, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->isFillTAandNMR:Z

    .line 693
    iput v2, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iTA:I

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    .line 686
    return-void
.end method


# virtual methods
.method public getForceTest()[B
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 697
    const/16 v3, 0x20

    .line 699
    .local v3, "iSize":I
    iget-boolean v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->isFillTAandNMR:Z

    if-eqz v4, :cond_9

    .line 700
    const/16 v3, 0x24

    .line 702
    :cond_9
    iget-object v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    if-eqz v4, :cond_15

    .line 703
    add-int/lit8 v3, v3, 0x4

    .line 704
    iget-object v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    .line 706
    :cond_15
    new-array v0, v3, [B

    .line 707
    .local v0, "bData":[B
    const/4 v2, 0x0

    .line 708
    .local v2, "iOffset":I
    const/16 v4, 0x6f

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 709
    add-int/lit8 v4, v3, -0x4

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 710
    iget v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMcc:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 711
    iget v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMnc:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 712
    iget v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iLac:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 713
    iget v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iCI:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 714
    iget-wide v6, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iMSISDN:J

    invoke-static {v0, v2, v6, v7}, Lcom/android/bytewriter/IO;->put8([BIJ)I

    move-result v2

    .line 715
    iget-boolean v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->isFillTAandNMR:Z

    if-eqz v4, :cond_6e

    const/4 v4, 0x1

    :goto_47
    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 716
    iget-boolean v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->isFillTAandNMR:Z

    if-eqz v4, :cond_55

    .line 717
    iget v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->iTA:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 719
    :cond_55
    iget-object v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    if-eqz v4, :cond_70

    .line 720
    iget-object v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    array-length v4, v4

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 721
    iget-object v4, p0, Lcom/android/supl/config/ConfigManager$ForceTestValue;->aNMR:[I

    array-length v6, v4

    :goto_63
    if-ge v5, v6, :cond_74

    aget v1, v4, v5

    .line 722
    .local v1, "iNmr":I
    invoke-static {v0, v2, v1}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 721
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    .end local v1    # "iNmr":I
    :cond_6e
    move v4, v5

    .line 715
    goto :goto_47

    .line 725
    :cond_70
    invoke-static {v0, v2, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 727
    :cond_74
    return-object v0
.end method
