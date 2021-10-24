.class public Lcom/android/supl/loc/measure/FrequencyInfoFdd;
.super Ljava/lang/Object;
.source "FrequencyInfoFdd.java"


# instance fields
.field private bIsUarfcn_UL_Present:Z

.field private usUarfcn_DL:S

.field private usUarfcn_UL:S


# direct methods
.method public constructor <init>(SS)V
    .registers 4
    .param p1, "usUarfcn_UL"    # S
    .param p2, "usUarfcn_DL"    # S

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-short p1, p0, Lcom/android/supl/loc/measure/FrequencyInfoFdd;->usUarfcn_UL:S

    .line 48
    iput-short p2, p0, Lcom/android/supl/loc/measure/FrequencyInfoFdd;->usUarfcn_DL:S

    .line 49
    const/4 v0, -0x1

    if-eq p1, v0, :cond_e

    const/4 v0, 0x1

    :goto_b
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/FrequencyInfoFdd;->bIsUarfcn_UL_Present:Z

    .line 50
    return-void

    .line 49
    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public getFrequencyInfoFdd()[B
    .registers 6

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "iOffset":I
    const/4 v2, 0x4

    .line 55
    .local v2, "iSize":I
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/FrequencyInfoFdd;->bIsUarfcn_UL_Present:Z

    if-eqz v3, :cond_8

    .line 56
    const/16 v2, 0x8

    .line 58
    :cond_8
    new-array v0, v2, [B

    .line 59
    .local v0, "bData":[B
    iget-boolean v3, p0, Lcom/android/supl/loc/measure/FrequencyInfoFdd;->bIsUarfcn_UL_Present:Z

    if-eqz v3, :cond_2a

    .line 60
    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 61
    iget-short v3, p0, Lcom/android/supl/loc/measure/FrequencyInfoFdd;->usUarfcn_UL:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 65
    :goto_19
    iget-short v3, p0, Lcom/android/supl/loc/measure/FrequencyInfoFdd;->usUarfcn_DL:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 66
    if-eq v1, v2, :cond_29

    .line 67
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "FrequencyInfoFdd length invalid"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    :cond_29
    return-object v0

    .line 63
    :cond_2a
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    goto :goto_19
.end method
