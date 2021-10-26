.class public Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;
.super Ljava/lang/Object;
.source "OTD_MSRofOtherSets.java"


# instance fields
.field public bIsIdentityPresent:Z

.field public stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOTD_MSRofOtherSets()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, "iOffset":I
    const/4 v3, 0x4

    .line 53
    .local v3, "iSize":I
    const/4 v1, 0x0

    .line 54
    .local v1, "bOTSMsr":[B
    iget-object v4, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    if-eqz v4, :cond_0

    .line 55
    iget-object v4, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    invoke-virtual {v4}, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->getOTDOtherSets()[B

    move-result-object v1

    .line 56
    .local v1, "bOTSMsr":[B
    array-length v4, v1

    add-int/lit8 v3, v4, 0x4

    .line 58
    .end local v1    # "bOTSMsr":[B
    :cond_0
    new-array v0, v3, [B

    .line 59
    .local v0, "bData":[B
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->bIsIdentityPresent:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 60
    if-eqz v1, :cond_1

    .line 62
    array-length v4, v1

    invoke-static {v1, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 63
    array-length v4, v1

    add-int/2addr v2, v4

    .line 65
    :cond_1
    return-object v0

    :cond_2
    move v4, v5

    .line 59
    goto :goto_0
.end method
