.class public Lcom/android/supl/si/SetTestAreaIDParams;
.super Ljava/lang/Object;
.source "SetTestAreaIDParams.java"


# static fields
.field public static final MSG_PCM_SET_TEST_AREA_ID:I = 0x11c


# instance fields
.field public nSetHomeAreaIDToBeSet:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "bSetHomeAreaID"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/si/SetTestAreaIDParams;->nSetHomeAreaIDToBeSet:I

    .line 14
    iput p1, p0, Lcom/android/supl/si/SetTestAreaIDParams;->nSetHomeAreaIDToBeSet:I

    .line 13
    return-void
.end method


# virtual methods
.method public getSetTestAreaIDInfo()[B
    .locals 5

    .prologue
    .line 18
    const/4 v2, 0x6

    .line 20
    .local v2, "iSize":I
    const/4 v1, 0x0

    .line 21
    .local v1, "iOffset":I
    const/16 v3, 0xa

    new-array v0, v3, [B

    .line 22
    .local v0, "bData":[B
    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 23
    const/16 v3, 0x11c

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 24
    iget v3, p0, Lcom/android/supl/si/SetTestAreaIDParams;->nSetHomeAreaIDToBeSet:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 25
    add-int/lit8 v3, v1, -0x4

    .line 18
    const/4 v4, 0x6

    .line 25
    if-eq v3, v4, :cond_0

    .line 26
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v4, "invalid length in  getSetTestAreaIDInfo"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    :cond_0
    return-object v0
.end method
