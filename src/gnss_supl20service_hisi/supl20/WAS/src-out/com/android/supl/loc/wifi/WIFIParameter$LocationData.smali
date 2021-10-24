.class Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;
.super Ljava/lang/Object;
.source "WIFIParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/wifi/WIFIParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationData"
.end annotation


# instance fields
.field public bIsLocationAccuInfoPresent:Z

.field public stLocationValue:Lcom/android/supl/loc/BitString;

.field final synthetic this$0:Lcom/android/supl/loc/wifi/WIFIParameter;

.field public ulLocationAccu:J


# direct methods
.method private constructor <init>(Lcom/android/supl/loc/wifi/WIFIParameter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/supl/loc/wifi/WIFIParameter;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;->this$0:Lcom/android/supl/loc/wifi/WIFIParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;->bIsLocationAccuInfoPresent:Z

    .line 424
    return-void
.end method


# virtual methods
.method public getLocationInfo()[B
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 432
    const/4 v2, 0x0

    .line 433
    .local v2, "iOffset":I
    const/4 v3, 0x4

    .line 434
    .local v3, "iSize":I
    iget-boolean v4, p0, Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;->bIsLocationAccuInfoPresent:Z

    if-eqz v4, :cond_9

    .line 435
    const/16 v3, 0xc

    .line 437
    :cond_9
    iget-object v4, p0, Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;->stLocationValue:Lcom/android/supl/loc/BitString;

    invoke-virtual {v4}, Lcom/android/supl/loc/BitString;->getBitStringInfo()[B

    move-result-object v0

    .line 438
    .local v0, "bBitStringData":[B
    array-length v4, v0

    add-int/2addr v3, v4

    .line 439
    new-array v1, v3, [B

    .line 440
    .local v1, "bData":[B
    iget-boolean v4, p0, Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;->bIsLocationAccuInfoPresent:Z

    if-eqz v4, :cond_33

    .line 441
    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 442
    iget-wide v4, p0, Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;->ulLocationAccu:J

    invoke-static {v1, v2, v4, v5}, Lcom/android/bytewriter/IO;->put8([BIJ)I

    move-result v2

    .line 446
    :goto_22
    array-length v4, v0

    invoke-static {v0, v6, v1, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 447
    array-length v4, v0

    add-int/2addr v2, v4

    .line 448
    if-eq v2, v3, :cond_32

    .line 449
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "LocationData length error"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 451
    :cond_32
    return-object v1

    .line 444
    :cond_33
    invoke-static {v1, v2, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    goto :goto_22
.end method
