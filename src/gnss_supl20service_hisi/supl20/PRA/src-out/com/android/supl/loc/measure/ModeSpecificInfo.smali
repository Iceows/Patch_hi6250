.class public Lcom/android/supl/loc/measure/ModeSpecificInfo;
.super Ljava/lang/Object;
.source "ModeSpecificInfo.java"


# static fields
.field public static final MODE_SPECIFIC_INFO_TYPE_FDD:I = 0x1

.field public static final MODE_SPECIFIC_INFO_TYPE_TDD:I = 0x2


# instance fields
.field private ienModeSpecificInfoType:I

.field private mFdd:Lcom/android/supl/loc/measure/ModeFDD;

.field private mModeTDD:Lcom/android/supl/loc/measure/ModeTDD;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .registers 5
    .param p1, "ienModeSpecificInfoType"    # I
    .param p2, "objMode"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->mFdd:Lcom/android/supl/loc/measure/ModeFDD;

    .line 47
    iput-object v0, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->mModeTDD:Lcom/android/supl/loc/measure/ModeTDD;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->ienModeSpecificInfoType:I

    .line 52
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 53
    check-cast p2, Lcom/android/supl/loc/measure/ModeFDD;

    .end local p2    # "objMode":Ljava/lang/Object;
    iput-object p2, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->mFdd:Lcom/android/supl/loc/measure/ModeFDD;

    .line 59
    :goto_12
    return-void

    .line 54
    .restart local p2    # "objMode":Ljava/lang/Object;
    :cond_13
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1b

    .line 55
    check-cast p2, Lcom/android/supl/loc/measure/ModeTDD;

    .end local p2    # "objMode":Ljava/lang/Object;
    iput-object p2, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->mModeTDD:Lcom/android/supl/loc/measure/ModeTDD;

    goto :goto_12

    .line 57
    .restart local p2    # "objMode":Ljava/lang/Object;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid ModeSpecificInfo type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getModeSpecificInfo()[B
    .registers 7

    .prologue
    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, "iOffset":I
    const/4 v3, 0x4

    .line 64
    .local v3, "iSize":I
    const/4 v1, 0x0

    .line 65
    .local v1, "bModeData":[B
    iget v4, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->ienModeSpecificInfoType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    .line 66
    iget-object v4, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->mFdd:Lcom/android/supl/loc/measure/ModeFDD;

    invoke-virtual {v4}, Lcom/android/supl/loc/measure/ModeFDD;->getModeFDDInfo()[B

    move-result-object v1

    .line 67
    .local v1, "bModeData":[B
    array-length v4, v1

    add-int/lit8 v3, v4, 0x4

    .line 73
    .end local v1    # "bModeData":[B
    :cond_11
    :goto_11
    new-array v0, v3, [B

    .line 74
    .local v0, "bData":[B
    iget v4, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->ienModeSpecificInfoType:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 75
    if-eqz v1, :cond_22

    .line 76
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v0, v2, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 77
    array-length v4, v1

    add-int/2addr v2, v4

    .line 79
    :cond_22
    if-eq v2, v3, :cond_2c

    .line 80
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "ModeSpecificInfo length error"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    :cond_2c
    return-object v0

    .line 68
    .end local v0    # "bData":[B
    .local v1, "bModeData":[B
    :cond_2d
    iget v4, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->ienModeSpecificInfoType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    .line 69
    iget-object v4, p0, Lcom/android/supl/loc/measure/ModeSpecificInfo;->mModeTDD:Lcom/android/supl/loc/measure/ModeTDD;

    invoke-virtual {v4}, Lcom/android/supl/loc/measure/ModeTDD;->getModeTDDInfo()[B

    move-result-object v1

    .line 70
    .local v1, "bModeData":[B
    array-length v4, v1

    add-int/lit8 v3, v4, 0x4

    goto :goto_11
.end method
