.class public Lcom/android/supl/loc/measure/ModeFDD;
.super Ljava/lang/Object;
.source "ModeFDD.java"


# instance fields
.field private isCpich_Ec_N0Present:Z

.field private isCpich_RSCPPresent:Z

.field private isPathLossPresent:Z

.field private ucCpich_Ec_N0:S

.field private ucCpich_RSCP:S

.field private ucPathloss:S

.field private usPrimaryScramblingCode:S


# direct methods
.method public constructor <init>(SSSS)V
    .registers 9
    .param p1, "usPrimaryScramblingCode"    # S
    .param p2, "ucCpich_Ec_N0"    # S
    .param p3, "ucCpich_RSCP"    # S
    .param p4, "ucPathloss"    # S

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-short p1, p0, Lcom/android/supl/loc/measure/ModeFDD;->usPrimaryScramblingCode:S

    .line 58
    iput-short p2, p0, Lcom/android/supl/loc/measure/ModeFDD;->ucCpich_Ec_N0:S

    .line 59
    iput-short p3, p0, Lcom/android/supl/loc/measure/ModeFDD;->ucCpich_RSCP:S

    .line 60
    iput-short p4, p0, Lcom/android/supl/loc/measure/ModeFDD;->ucPathloss:S

    .line 61
    if-eq p2, v3, :cond_1d

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/ModeFDD;->isCpich_Ec_N0Present:Z

    .line 62
    if-eq p3, v3, :cond_1f

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/ModeFDD;->isCpich_RSCPPresent:Z

    .line 63
    if-eq p4, v3, :cond_21

    :goto_1a
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/ModeFDD;->isPathLossPresent:Z

    .line 64
    return-void

    :cond_1d
    move v0, v2

    .line 61
    goto :goto_11

    :cond_1f
    move v0, v2

    .line 62
    goto :goto_16

    :cond_21
    move v1, v2

    .line 63
    goto :goto_1a
.end method


# virtual methods
.method public getModeFDDInfo()[B
    .registers 6

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "iOffset":I
    const/16 v2, 0xe

    .line 70
    .local v2, "iSize":I
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->isCpich_Ec_N0Present:Z

    if-eqz v3, :cond_9

    .line 71
    const/16 v2, 0xf

    .line 73
    :cond_9
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->isCpich_RSCPPresent:Z

    if-eqz v3, :cond_f

    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 76
    :cond_f
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->isPathLossPresent:Z

    if-eqz v3, :cond_15

    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 80
    :cond_15
    new-array v0, v2, [B

    .line 81
    .local v0, "bData":[B
    iget-short v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->usPrimaryScramblingCode:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 83
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->isCpich_Ec_N0Present:Z

    if-eqz v3, :cond_27

    .line 84
    iget-short v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->ucCpich_Ec_N0:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 86
    :cond_27
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->isCpich_RSCPPresent:Z

    if-eqz v3, :cond_31

    .line 87
    iget-short v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->ucCpich_RSCP:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 89
    :cond_31
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->isPathLossPresent:Z

    if-eqz v3, :cond_3b

    .line 90
    iget-short v3, p0, Lcom/android/supl/loc/measure/ModeFDD;->ucPathloss:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 92
    :cond_3b
    if-eq v2, v1, :cond_45

    .line 93
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "ModeFDD length error"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    :cond_45
    return-object v0
.end method
