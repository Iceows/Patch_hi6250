.class public Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;
.super Ljava/lang/Object;
.source "SUPL_OTDOA_ModeSpecMeas.java"


# instance fields
.field public stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

.field public stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModeSpecMeas()[B
    .registers 3

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "bData":[B
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v1, :cond_c

    .line 52
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    invoke-virtual {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->getModeSpecMeasFDD()[B

    move-result-object v0

    .line 56
    .end local v0    # "bData":[B
    :cond_b
    :goto_b
    return-object v0

    .line 53
    .restart local v0    # "bData":[B
    :cond_c
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    if-eqz v1, :cond_b

    .line 54
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    invoke-virtual {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;->getModeSpecMeansTDD()[B

    move-result-object v0

    .local v0, "bData":[B
    goto :goto_b
.end method
