.class public Lcom/android/supl/loc/measure/CellMeasuredResults;
.super Ljava/lang/Object;
.source "CellMeasuredResults.java"


# instance fields
.field private bIsCellIdentityPresent:Z

.field private mModeSpecificInfo:Lcom/android/supl/loc/measure/ModeSpecificInfo;

.field private unCellIdentity:I


# direct methods
.method public constructor <init>(ILcom/android/supl/loc/measure/ModeSpecificInfo;)V
    .locals 2
    .param p1, "unCellIdentity"    # I
    .param p2, "mModeSpecificInfo"    # Lcom/android/supl/loc/measure/ModeSpecificInfo;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/supl/loc/measure/CellMeasuredResults;->mModeSpecificInfo:Lcom/android/supl/loc/measure/ModeSpecificInfo;

    .line 48
    if-nez p2, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ModeSpecificInfo should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput p1, p0, Lcom/android/supl/loc/measure/CellMeasuredResults;->unCellIdentity:I

    .line 52
    iput-object p2, p0, Lcom/android/supl/loc/measure/CellMeasuredResults;->mModeSpecificInfo:Lcom/android/supl/loc/measure/ModeSpecificInfo;

    .line 53
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/CellMeasuredResults;->bIsCellIdentityPresent:Z

    .line 47
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCellMeasuredResults()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "iOffset":I
    const/4 v3, 0x4

    .line 59
    .local v3, "iSize":I
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/CellMeasuredResults;->bIsCellIdentityPresent:Z

    if-eqz v4, :cond_0

    .line 60
    const/16 v3, 0x8

    .line 62
    :cond_0
    iget-object v4, p0, Lcom/android/supl/loc/measure/CellMeasuredResults;->mModeSpecificInfo:Lcom/android/supl/loc/measure/ModeSpecificInfo;

    invoke-virtual {v4}, Lcom/android/supl/loc/measure/ModeSpecificInfo;->getModeSpecificInfo()[B

    move-result-object v1

    .line 63
    .local v1, "bModeData":[B
    array-length v4, v1

    add-int/2addr v3, v4

    .line 64
    new-array v0, v3, [B

    .line 65
    .local v0, "bData":[B
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/CellMeasuredResults;->bIsCellIdentityPresent:Z

    if-eqz v4, :cond_2

    .line 66
    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 67
    iget v4, p0, Lcom/android/supl/loc/measure/CellMeasuredResults;->unCellIdentity:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 71
    :goto_0
    array-length v4, v1

    invoke-static {v1, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 72
    array-length v4, v1

    add-int/2addr v2, v4

    .line 73
    if-eq v2, v3, :cond_1

    .line 74
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "CellMeasuredResults length error"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    :cond_1
    return-object v0

    .line 69
    :cond_2
    invoke-static {v0, v2, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    goto :goto_0
.end method
