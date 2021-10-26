.class Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;
.super Ljava/lang/Object;
.source "WIFIParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/wifi/WIFIParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportedLocation"
.end annotation


# static fields
.field private static final ASN1:I = 0x1

.field private static final CI:I


# instance fields
.field public ieLocationEncodingDesc:I

.field public stLocationData:Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;

.field final synthetic this$0:Lcom/android/supl/loc/wifi/WIFIParameter;


# direct methods
.method private constructor <init>(Lcom/android/supl/loc/wifi/WIFIParameter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/supl/loc/wifi/WIFIParameter;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;->this$0:Lcom/android/supl/loc/wifi/WIFIParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;->ieLocationEncodingDesc:I

    .line 399
    return-void
.end method


# virtual methods
.method public getReportedLocationInfo()[B
    .locals 6

    .prologue
    .line 409
    const/4 v2, 0x0

    .line 411
    .local v2, "iOffset":I
    iget-object v4, p0, Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;->stLocationData:Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;

    invoke-virtual {v4}, Lcom/android/supl/loc/wifi/WIFIParameter$LocationData;->getLocationInfo()[B

    move-result-object v1

    .line 412
    .local v1, "bLocData":[B
    array-length v4, v1

    add-int/lit8 v3, v4, 0x4

    .line 413
    .local v3, "iSize":I
    new-array v0, v3, [B

    .line 414
    .local v0, "bData":[B
    iget v4, p0, Lcom/android/supl/loc/wifi/WIFIParameter$ReportedLocation;->ieLocationEncodingDesc:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 415
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 416
    array-length v4, v1

    add-int/2addr v2, v4

    .line 417
    if-eq v2, v3, :cond_0

    .line 418
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "ReportedLocation length error"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 420
    :cond_0
    return-object v0
.end method
