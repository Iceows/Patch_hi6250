.class Lcom/android/supl/loc/wifi/WIFIParameter$RTD;
.super Ljava/lang/Object;
.source "WIFIParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/wifi/WIFIParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RTD"
.end annotation


# static fields
.field private static final hundrednanosec:I = 0x1

.field private static final microsec:I = 0x0

.field private static final nanosec:I = 0x3

.field private static final tensnanosec:I = 0x2

.field private static final tenthofnanosec:I = 0x4


# instance fields
.field public bIsRTDAccuInfoPresent:Z

.field public ieRTDunits:I

.field final synthetic this$0:Lcom/android/supl/loc/wifi/WIFIParameter;

.field public ucRTDAccuracy:S

.field public uiRTDValue:I


# direct methods
.method private constructor <init>(Lcom/android/supl/loc/wifi/WIFIParameter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/supl/loc/wifi/WIFIParameter;

    .prologue
    const/4 v0, 0x0

    .line 356
    iput-object p1, p0, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->this$0:Lcom/android/supl/loc/wifi/WIFIParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->ieRTDunits:I

    .line 371
    iput-boolean v0, p0, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->bIsRTDAccuInfoPresent:Z

    .line 356
    return-void
.end method


# virtual methods
.method public getRTDInfo()[B
    .registers 6

    .prologue
    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, "iOffset":I
    const/16 v2, 0xc

    .line 378
    .local v2, "iSize":I
    iget-boolean v3, p0, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->bIsRTDAccuInfoPresent:Z

    if-eqz v3, :cond_9

    .line 379
    const/16 v2, 0xd

    .line 382
    :cond_9
    new-array v0, v2, [B

    .line 383
    .local v0, "bData":[B
    iget v3, p0, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->uiRTDValue:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 384
    iget v3, p0, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->ieRTDunits:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 385
    iget-boolean v3, p0, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->bIsRTDAccuInfoPresent:Z

    if-eqz v3, :cond_31

    .line 386
    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 390
    :goto_20
    iget-short v3, p0, Lcom/android/supl/loc/wifi/WIFIParameter$RTD;->ucRTDAccuracy:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 392
    if-eq v1, v2, :cond_30

    .line 393
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "RTD length error"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 395
    :cond_30
    return-object v0

    .line 388
    :cond_31
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    goto :goto_20
.end method
