.class public Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "OTDOAConfigParser.java"


# static fields
.field private static final BCELLIDPARAMVALID:Ljava/lang/String; = "bcellidparamvalid"

.field private static final BURSTTYPE:Ljava/lang/String; = "bursttype"

.field private static final CELLPARAMID:Ljava/lang/String; = "cellparamid"

.field private static final CELLPARAMSID:Ljava/lang/String; = "cellparamsid"

.field private static final MEASUREINFOTYPE:Ljava/lang/String; = "measureinfotype"

.field private static final MIDAMBLESHIFT:Ljava/lang/String; = "midambleshift"

.field private static final MODEFDD:Ljava/lang/String; = "modeFDD"

.field private static final MODESPECIFICMEASURE:Ljava/lang/String; = "modespecificmeasure"

.field private static final MODETDD:Ljava/lang/String; = "modeTDD"

.field private static final MODETYPE:Ljava/lang/String; = "modetype"

.field private static final NEIGHBOURCOUNT:Ljava/lang/String; = "neighbourcount"

.field private static final NEIGHBOURLIST:Ljava/lang/String; = "neighbourlist"

.field private static final NEIGHBOURMEAS:Ljava/lang/String; = "neighbourmeas"

.field private static final NEIGHBOURPRESENT:Ljava/lang/String; = "neighbourpresent"

.field private static final NOOFMEASUREMENTS:Ljava/lang/String; = "noofmeasurements"

.field private static final OTDOAMEASURE:Ljava/lang/String; = "otdoameasure"

.field private static final PRIMSCRAMBCODE:Ljava/lang/String; = "primscrambcode"

.field private static final PRIMSCRAMBCODEPRESENT:Ljava/lang/String; = "primscrambcodepresent"

.field private static final RXTXTIMEDIFFTYPE:Ljava/lang/String; = "rxtxtimedifftype"

.field private static final RXTXTIMEDIFFVALID:Ljava/lang/String; = "rxtxtimediffvalid"

.field private static final SFN:Ljava/lang/String; = "sfn"

.field private static final SFNSFNOBSTIMEDIFF:Ljava/lang/String; = "sfnsfnobstimediff"

.field private static final STDDEVOTDOAMEAS:Ljava/lang/String; = "stddevOTDOAmeas"

.field private static final STDVALUE:Ljava/lang/String; = "stdvalue"

.field private static final TIMESLOT:Ljava/lang/String; = "timeslot"

.field private static final VALID:Ljava/lang/String; = "valid"


# instance fields
.field private iMeasIndex:I

.field private isModeSpecMeas:Z

.field private isNeighbourMeas:Z

.field private isNeighbourMeasData:Z

.field private isRequiredTag:Z

.field private otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

.field private stData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 101
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    .line 109
    iput-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    .line 255
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    .line 114
    invoke-virtual {p0}, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->init()V

    .line 116
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    if-eqz v0, :cond_13

    .line 415
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    .line 421
    :goto_12
    return-void

    .line 418
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    goto :goto_12
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 260
    const-string/jumbo v2, "valid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 261
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_18

    :goto_15
    iput-boolean v0, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bMeasurementValid:Z

    .line 410
    :cond_17
    :goto_17
    return-void

    :cond_18
    move v0, v1

    .line 261
    goto :goto_15

    .line 262
    :cond_1a
    const-string/jumbo v2, "sfn"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 263
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->lSFN:J

    goto :goto_17

    .line 264
    :cond_2e
    const-string/jumbo v2, "measureinfotype"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 265
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->eModeSpecInfoType:I

    goto :goto_17

    .line 266
    :cond_42
    const-string/jumbo v2, "modespecificmeasure"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 267
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    goto :goto_17

    .line 268
    :cond_4e
    const-string/jumbo v2, "primscrambcodepresent"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 269
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v2, :cond_76

    .line 270
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v2, :cond_17

    .line 271
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    .line 272
    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 271
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_74

    :goto_71
    iput-boolean v0, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bPrimaryScramblingCodePresent:Z

    goto :goto_17

    :cond_74
    move v0, v1

    goto :goto_71

    .line 273
    :cond_76
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v2, :cond_17

    .line 274
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v2, :cond_17

    .line 275
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    .line 276
    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 275
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_a0

    :goto_9c
    iput-boolean v0, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bPrimaryScramblingCodePresent:Z

    goto/16 :goto_17

    :cond_a0
    move v0, v1

    goto :goto_9c

    .line 278
    :cond_a2
    const-string/jumbo v2, "primscrambcode"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 279
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_c7

    .line 280
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_17

    .line 281
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    .line 282
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 281
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->lPrimaryScramblingCode:J

    goto/16 :goto_17

    .line 283
    :cond_c7
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_17

    .line 284
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_17

    .line 285
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    .line 286
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 285
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->lPrimaryScramblingCode:J

    goto/16 :goto_17

    .line 289
    :cond_ef
    const-string/jumbo v2, "rxtxtimediffvalid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_144

    .line 290
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v2, :cond_118

    .line 291
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v2, :cond_17

    .line 292
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    .line 293
    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 292
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_116

    :goto_112
    iput-boolean v0, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bRxTxTimeDiffValid:Z

    goto/16 :goto_17

    :cond_116
    move v0, v1

    goto :goto_112

    .line 294
    :cond_118
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v2, :cond_17

    .line 295
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v2, :cond_17

    .line 296
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    .line 297
    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 296
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_142

    :goto_13e
    iput-boolean v0, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bRxTxTimeDiffValid:Z

    goto/16 :goto_17

    :cond_142
    move v0, v1

    goto :goto_13e

    .line 299
    :cond_144
    const-string/jumbo v2, "rxtxtimedifftype"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_191

    .line 300
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_169

    .line 301
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_17

    .line 302
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    .line 303
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 302
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->lRxTxTimeDiffType2:J

    goto/16 :goto_17

    .line 304
    :cond_169
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_17

    .line 305
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_17

    .line 306
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    .line 307
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 306
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->lRxTxTimeDiffType2:J

    goto/16 :goto_17

    .line 309
    :cond_191
    const-string/jumbo v2, "stdvalue"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f4

    .line 310
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_1b6

    .line 311
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_17

    .line 312
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    .line 313
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 312
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucStdValue:S

    goto/16 :goto_17

    .line 314
    :cond_1b6
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_17

    .line 316
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    if-eqz v0, :cond_1d0

    .line 317
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    .line 318
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 317
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->ucStdValue:S

    goto/16 :goto_17

    .line 319
    :cond_1d0
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_17

    .line 320
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    .line 321
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 320
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucStdValue:S

    goto/16 :goto_17

    .line 323
    :cond_1f4
    const-string/jumbo v2, "noofmeasurements"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_257

    .line 324
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_219

    .line 325
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_17

    .line 326
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    .line 327
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 326
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucNoOfMeasurements:S

    goto/16 :goto_17

    .line 328
    :cond_219
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_17

    .line 330
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    if-eqz v0, :cond_233

    .line 331
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    .line 332
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 331
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->ucNoOfMeasurements:S

    goto/16 :goto_17

    .line 333
    :cond_233
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_17

    .line 334
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    .line 335
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 334
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucNoOfMeasurements:S

    goto/16 :goto_17

    .line 337
    :cond_257
    const-string/jumbo v2, "stddevOTDOAmeas"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ba

    .line 338
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_27c

    .line 339
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_17

    .line 340
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    .line 341
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 340
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucStdDevOTDOAMeas:S

    goto/16 :goto_17

    .line 342
    :cond_27c
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_17

    .line 343
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    if-eqz v0, :cond_296

    .line 344
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    .line 345
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 344
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->ucStdDevOTDOAMeas:S

    goto/16 :goto_17

    .line 346
    :cond_296
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_17

    .line 347
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    .line 348
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 347
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->ucStdDevOTDOAMeas:S

    goto/16 :goto_17

    .line 350
    :cond_2ba
    const-string/jumbo v2, "sfnsfnobstimediff"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d9

    .line 351
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    if-eqz v0, :cond_17

    .line 352
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    .line 353
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 352
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->lSFNSFNObsTimeDiff2:J

    goto/16 :goto_17

    .line 356
    :cond_2d9
    const-string/jumbo v2, "bcellidparamvalid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2fe

    .line 357
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    if-eqz v2, :cond_17

    .line 358
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    .line 359
    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 358
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_2fc

    :goto_2f8
    iput-boolean v0, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;->bCellIDParamValid:Z

    goto/16 :goto_17

    :cond_2fc
    move v0, v1

    goto :goto_2f8

    .line 361
    :cond_2fe
    const-string/jumbo v2, "cellparamsid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31f

    .line 362
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    if-eqz v0, :cond_17

    .line 363
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    .line 364
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 363
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;->lCellParamsID:J

    goto/16 :goto_17

    .line 366
    :cond_31f
    const-string/jumbo v2, "neighbourpresent"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33f

    .line 367
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_333

    move v1, v0

    :cond_333
    iput-boolean v1, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bNeighbourListPresent:Z

    .line 368
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-boolean v1, v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bNeighbourListPresent:Z

    if-eqz v1, :cond_17

    .line 369
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    goto/16 :goto_17

    .line 371
    :cond_33f
    const-string/jumbo v2, "neighbourcount"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35e

    .line 372
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->ucNoOfNeighbourList:S

    .line 373
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-short v1, v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->ucNoOfNeighbourList:S

    new-array v1, v1, [Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    goto/16 :goto_17

    .line 374
    :cond_35e
    const-string/jumbo v2, "neighbourmeas"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36b

    .line 375
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    goto/16 :goto_17

    .line 376
    :cond_36b
    const-string/jumbo v2, "neighbourlist"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_378

    .line 377
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    goto/16 :goto_17

    .line 379
    :cond_378
    const-string/jumbo v2, "modetype"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_393

    .line 380
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    .line 381
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 380
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->eModeType:I

    goto/16 :goto_17

    .line 382
    :cond_393
    const-string/jumbo v2, "bursttype"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c0

    .line 383
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    if-eqz v0, :cond_17

    .line 384
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    .line 385
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 384
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;->eBurstType:I

    goto/16 :goto_17

    .line 387
    :cond_3c0
    const-string/jumbo v2, "midambleshift"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3ed

    .line 388
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    if-eqz v0, :cond_17

    .line 389
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    .line 390
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 389
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;->lMidAmbleShift:J

    goto/16 :goto_17

    .line 392
    :cond_3ed
    const-string/jumbo v2, "timeslot"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41a

    .line 393
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    if-eqz v0, :cond_17

    .line 394
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    .line 395
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 394
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;->lTimeSlot:J

    goto/16 :goto_17

    .line 397
    :cond_41a
    const-string/jumbo v2, "cellparamid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_447

    .line 398
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    if-eqz v0, :cond_17

    .line 399
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    .line 400
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 399
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;->lCellParamID:J

    goto/16 :goto_17

    .line 402
    :cond_447
    const-string/jumbo v2, "modeTDD"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 403
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v2, :cond_458

    .line 404
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    goto/16 :goto_17

    .line 406
    :cond_458
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    goto/16 :goto_17
.end method

.method public getOtdoa_Measurement()Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    return-object v0
.end method

.method public init()V
    .registers 11

    .prologue
    .line 119
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 120
    .local v7, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v6, 0x0

    .line 121
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    const/4 v8, 0x0

    .line 122
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    const/4 v4, 0x0

    .line 124
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_7
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    .line 126
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    .line 128
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    invoke-interface {v8, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_12} :catch_5f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_12} :catch_84
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_12} :catch_75
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_12} :catch_66
    .catchall {:try_start_7 .. :try_end_12} :catchall_93

    .line 131
    :try_start_12
    new-instance v5, Ljava/io/FileInputStream;

    .line 132
    const-string/jumbo v9, "/system/etc/gps/config/otdoa.xml"

    .line 131
    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1a} :catch_31
    .catchall {:try_start_12 .. :try_end_1a} :catchall_58

    .line 133
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1a
    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_22} :catch_ae
    .catchall {:try_start_1a .. :try_end_22} :catchall_ab

    .line 139
    if-eqz v5, :cond_27

    .line 140
    :try_start_24
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_27} :catch_48
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_a2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_24 .. :try_end_27} :catch_a5
    .catch Lorg/xml/sax/SAXException; {:try_start_24 .. :try_end_27} :catch_a8
    .catchall {:try_start_24 .. :try_end_27} :catchall_9f

    :cond_27
    :goto_27
    move-object v4, v5

    .line 156
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    if-eqz v4, :cond_2d

    .line 158
    :try_start_2a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_61

    .line 166
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :cond_2d
    :goto_2d
    const/4 v7, 0x0

    .line 167
    .local v7, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v6, 0x0

    .line 168
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    const/4 v8, 0x0

    .line 169
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    return-void

    .line 134
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    .local v7, "spf":Ljavax/xml/parsers/SAXParserFactory;
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    :catch_31
    move-exception v0

    .line 135
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_32
    :try_start_32
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v9, "/data/gnss/otdoa.xml"

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_58

    .line 137
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :try_start_3a
    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_ab

    .line 139
    if-eqz v5, :cond_27

    .line 140
    :try_start_44
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_47} :catch_48
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_a2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_44 .. :try_end_47} :catch_a5
    .catch Lorg/xml/sax/SAXException; {:try_start_44 .. :try_end_47} :catch_a8
    .catchall {:try_start_44 .. :try_end_47} :catchall_9f

    goto :goto_27

    .line 143
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_48
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .line 145
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :goto_4a
    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_93

    .line 156
    if-eqz v4, :cond_2d

    .line 158
    :try_start_4f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_2d

    .line 159
    :catch_53
    move-exception v1

    .line 161
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    .line 138
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catchall_58
    move-exception v9

    .line 139
    :goto_59
    if-eqz v4, :cond_5e

    .line 140
    :try_start_5b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 138
    :cond_5e
    throw v9
    :try_end_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_5f} :catch_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5f} :catch_84
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5b .. :try_end_5f} :catch_75
    .catch Lorg/xml/sax/SAXException; {:try_start_5b .. :try_end_5f} :catch_66
    .catchall {:try_start_5b .. :try_end_5f} :catchall_93

    .line 143
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_5f
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_4a

    .line 159
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_61
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_66
    move-exception v3

    .line 154
    .local v3, "e1":Lorg/xml/sax/SAXException;
    :goto_67
    :try_start_67
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_93

    .line 156
    if-eqz v4, :cond_2d

    .line 158
    :try_start_6c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_2d

    .line 159
    :catch_70
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    .line 149
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    :catch_75
    move-exception v2

    .line 151
    .local v2, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_76
    :try_start_76
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_93

    .line 156
    if-eqz v4, :cond_2d

    .line 158
    :try_start_7b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_2d

    .line 159
    :catch_7f
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    .line 146
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_84
    move-exception v1

    .line 148
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_85
    :try_start_85
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_93

    .line 156
    if-eqz v4, :cond_2d

    .line 158
    :try_start_8a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_2d

    .line 159
    :catch_8e
    move-exception v1

    .line 161
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    .line 155
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_93
    move-exception v9

    .line 156
    :goto_94
    if-eqz v4, :cond_99

    .line 158
    :try_start_96
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    .line 155
    :cond_99
    :goto_99
    throw v9

    .line 159
    :catch_9a
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_99

    .line 155
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catchall_9f
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_94

    .line 146
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_a2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_85

    .line 149
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_a5
    move-exception v2

    .restart local v2    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_76

    .line 152
    .end local v2    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_a8
    move-exception v3

    .restart local v3    # "e1":Lorg/xml/sax/SAXException;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_67

    .line 138
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_ab
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_59

    .line 134
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_ae
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_32
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 181
    const-string/jumbo v0, "otdoameasure"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 182
    new-instance v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    .line 253
    :cond_12
    :goto_12
    return-void

    .line 183
    :cond_13
    const-string/jumbo v0, "valid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 184
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto :goto_12

    .line 185
    :cond_1f
    const-string/jumbo v0, "sfn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 186
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto :goto_12

    .line 187
    :cond_2b
    const-string/jumbo v0, "measureinfotype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 188
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto :goto_12

    .line 189
    :cond_37
    const-string/jumbo v0, "modespecificmeasure"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 190
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    new-instance v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    .line 191
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    goto :goto_12

    .line 192
    :cond_4c
    const-string/jumbo v0, "modeFDD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 193
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_6b

    .line 194
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->eModeSpecInfoType:I

    if-ne v0, v2, :cond_12

    .line 195
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    new-instance v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    goto :goto_12

    .line 197
    :cond_6b
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_12

    .line 198
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->eModeType:I

    if-ne v0, v2, :cond_12

    .line 199
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    new-instance v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    goto :goto_12

    .line 203
    :cond_8d
    const-string/jumbo v0, "primscrambcodepresent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 204
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12

    .line 205
    :cond_9a
    const-string/jumbo v0, "primscrambcode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 206
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12

    .line 207
    :cond_a7
    const-string/jumbo v0, "rxtxtimediffvalid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 208
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12

    .line 209
    :cond_b4
    const-string/jumbo v0, "rxtxtimedifftype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 210
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12

    .line 211
    :cond_c1
    const-string/jumbo v0, "stdvalue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 212
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12

    .line 213
    :cond_ce
    const-string/jumbo v0, "noofmeasurements"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 214
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12

    .line 215
    :cond_db
    const-string/jumbo v0, "stddevOTDOAmeas"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 216
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12

    .line 217
    :cond_e8
    const-string/jumbo v0, "modeTDD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 218
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_108

    .line 219
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->eModeSpecInfoType:I

    if-ne v0, v3, :cond_12

    .line 220
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    new-instance v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    goto/16 :goto_12

    .line 222
    :cond_108
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_12

    .line 223
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->eModeType:I

    if-ne v0, v3, :cond_12

    .line 224
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    new-instance v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    goto/16 :goto_12

    .line 228
    :cond_12b
    const-string/jumbo v0, "bcellidparamvalid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 229
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12

    .line 230
    :cond_138
    const-string/jumbo v0, "cellparamsid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 231
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12

    .line 232
    :cond_145
    const-string/jumbo v0, "neighbourpresent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_152

    .line 233
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12

    .line 234
    :cond_152
    const-string/jumbo v0, "neighbourcount"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 235
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12

    .line 236
    :cond_15f
    const-string/jumbo v0, "neighbourmeas"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18c

    .line 237
    iget v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    .line 238
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    new-instance v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    invoke-direct {v2}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;-><init>()V

    aput-object v2, v0, v1

    .line 239
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    new-instance v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    goto/16 :goto_12

    .line 240
    :cond_18c
    const-string/jumbo v0, "modetype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_199

    .line 241
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12

    .line 242
    :cond_199
    const-string/jumbo v0, "bursttype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 243
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12

    .line 244
    :cond_1a6
    const-string/jumbo v0, "midambleshift"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 245
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12

    .line 246
    :cond_1b3
    const-string/jumbo v0, "timeslot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c0

    .line 247
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12

    .line 248
    :cond_1c0
    const-string/jumbo v0, "cellparamid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cd

    .line 249
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12

    .line 250
    :cond_1cd
    const-string/jumbo v0, "sfnsfnobstimediff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 251
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_12
.end method
