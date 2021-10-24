.class public Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;
.super Ljava/lang/Object;
.source "OTD_MSR_OtherSets_Union.java"


# instance fields
.field identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

.field identityPresent:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOTDOtherSets()[B
    .registers 3

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "bData":[B
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

    if-eqz v1, :cond_c

    .line 50
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

    invoke-virtual {v1}, Lcom/android/supl/loc/measure/eotd/OTDMeas;->getOTDMeas()[B

    move-result-object v0

    .line 54
    .end local v0    # "bData":[B
    :cond_b
    :goto_b
    return-object v0

    .line 51
    .restart local v0    # "bData":[B
    :cond_c
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityPresent:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    if-eqz v1, :cond_b

    .line 52
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityPresent:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    invoke-virtual {v1}, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->getOTDMeans_WithID()[B

    move-result-object v0

    .local v0, "bData":[B
    goto :goto_b
.end method
