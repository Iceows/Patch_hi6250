.class public Lcom/android/supl/loc/measure/FrequencyInfoTdd;
.super Ljava/lang/Object;
.source "FrequencyInfoTdd.java"


# instance fields
.field private usUarfcn_Nt:S


# direct methods
.method public constructor <init>(S)V
    .registers 2
    .param p1, "usUarfcn_Nt"    # S

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-short p1, p0, Lcom/android/supl/loc/measure/FrequencyInfoTdd;->usUarfcn_Nt:S

    .line 45
    return-void
.end method


# virtual methods
.method public getFrequencyInfoTdd()[B
    .registers 5

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, "iOffset":I
    const/4 v2, 0x2

    .line 49
    .local v2, "iSize":I
    new-array v0, v2, [B

    .line 50
    .local v0, "bData":[B
    iget-short v3, p0, Lcom/android/supl/loc/measure/FrequencyInfoTdd;->usUarfcn_Nt:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 51
    return-object v0
.end method
