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
    .locals 2

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

    .line 113
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
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

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    .line 413
    :goto_0
    return-void

    .line 418
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
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

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    iput-boolean v0, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bMeasurementValid:Z

    .line 259
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 261
    goto :goto_0

    .line 262
    :cond_2
    const-string/jumbo v2, "sfn"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 263
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->lSFN:J

    goto :goto_1

    .line 264
    :cond_3
    const-string/jumbo v2, "measureinfotype"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 265
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->eModeSpecInfoType:I

    goto :goto_1

    .line 266
    :cond_4
    const-string/jumbo v2, "modespecificmeasure"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 267
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    goto :goto_1

    .line 268
    :cond_5
    const-string/jumbo v2, "primscrambcodepresent"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 269
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v2, :cond_7

    .line 270
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    .line 272
    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 271
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_6

    :goto_2
    iput-boolean v0, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bPrimaryScramblingCodePresent:Z

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    .line 273
    :cond_7
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v2, :cond_0

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

    if-ne v3, v0, :cond_8

    :goto_3
    iput-boolean v0, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bPrimaryScramblingCodePresent:Z

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto :goto_3

    .line 278
    :cond_9
    const-string/jumbo v2, "primscrambcode"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 279
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_a

    .line 280
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_0

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

    goto/16 :goto_1

    .line 283
    :cond_a
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_0

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

    goto/16 :goto_1

    .line 289
    :cond_b
    const-string/jumbo v2, "rxtxtimediffvalid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 290
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v2, :cond_d

    .line 291
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    .line 293
    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 292
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_c

    :goto_4
    iput-boolean v0, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bRxTxTimeDiffValid:Z

    goto/16 :goto_1

    :cond_c
    move v0, v1

    goto :goto_4

    .line 294
    :cond_d
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v2, :cond_0

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

    if-ne v3, v0, :cond_e

    :goto_5
    iput-boolean v0, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;->bRxTxTimeDiffValid:Z

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto :goto_5

    .line 299
    :cond_f
    const-string/jumbo v2, "rxtxtimedifftype"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 300
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_10

    .line 301
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_0

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

    goto/16 :goto_1

    .line 304
    :cond_10
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_0

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

    goto/16 :goto_1

    .line 309
    :cond_11
    const-string/jumbo v2, "stdvalue"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 310
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_12

    .line 311
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_0

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

    goto/16 :goto_1

    .line 314
    :cond_12
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_0

    .line 316
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    if-eqz v0, :cond_13

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

    goto/16 :goto_1

    .line 319
    :cond_13
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_0

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

    goto/16 :goto_1

    .line 323
    :cond_14
    const-string/jumbo v2, "noofmeasurements"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 324
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_15

    .line 325
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_0

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

    goto/16 :goto_1

    .line 328
    :cond_15
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_0

    .line 330
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    if-eqz v0, :cond_16

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

    goto/16 :goto_1

    .line 333
    :cond_16
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_0

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

    goto/16 :goto_1

    .line 337
    :cond_17
    const-string/jumbo v2, "stddevOTDOAmeas"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 338
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_18

    .line 339
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_0

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

    goto/16 :goto_1

    .line 342
    :cond_18
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_0

    .line 343
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    if-eqz v0, :cond_19

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

    goto/16 :goto_1

    .line 346
    :cond_19
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    if-eqz v0, :cond_0

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

    goto/16 :goto_1

    .line 350
    :cond_1a
    const-string/jumbo v2, "sfnsfnobstimediff"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 351
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    if-eqz v0, :cond_0

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

    goto/16 :goto_1

    .line 356
    :cond_1b
    const-string/jumbo v2, "bcellidparamvalid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 357
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    if-eqz v2, :cond_0

    .line 358
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v2, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    .line 359
    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    .line 358
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_1c

    :goto_6
    iput-boolean v0, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;->bCellIDParamValid:Z

    goto/16 :goto_1

    :cond_1c
    move v0, v1

    goto :goto_6

    .line 361
    :cond_1d
    const-string/jumbo v2, "cellparamsid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 362
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    if-eqz v0, :cond_0

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

    goto/16 :goto_1

    .line 366
    :cond_1e
    const-string/jumbo v2, "neighbourpresent"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 367
    iget-object v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v3, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_1f

    move v1, v0

    :cond_1f
    iput-boolean v1, v2, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bNeighbourListPresent:Z

    .line 368
    iget-object v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-boolean v1, v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->bNeighbourListPresent:Z

    if-eqz v1, :cond_0

    .line 369
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    goto/16 :goto_1

    .line 371
    :cond_20
    const-string/jumbo v2, "neighbourcount"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

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

    goto/16 :goto_1

    .line 374
    :cond_21
    const-string/jumbo v2, "neighbourmeas"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 375
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    goto/16 :goto_1

    .line 376
    :cond_22
    const-string/jumbo v2, "neighbourlist"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 377
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    goto/16 :goto_1

    .line 379
    :cond_23
    const-string/jumbo v2, "modetype"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

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

    goto/16 :goto_1

    .line 382
    :cond_24
    const-string/jumbo v2, "bursttype"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 383
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    if-eqz v0, :cond_0

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

    goto/16 :goto_1

    .line 387
    :cond_25
    const-string/jumbo v2, "midambleshift"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 388
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    if-eqz v0, :cond_0

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

    goto/16 :goto_1

    .line 392
    :cond_26
    const-string/jumbo v2, "timeslot"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 393
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    if-eqz v0, :cond_0

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

    goto/16 :goto_1

    .line 397
    :cond_27
    const-string/jumbo v2, "cellparamid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 398
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    if-eqz v0, :cond_0

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

    goto/16 :goto_1

    .line 402
    :cond_28
    const-string/jumbo v2, "modeTDD"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    iget-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v2, :cond_29

    .line 404
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    goto/16 :goto_1

    .line 406
    :cond_29
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeasData:Z

    goto/16 :goto_1
.end method

.method public getOtdoa_Measurement()Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    return-object v0
.end method

.method public init()V
    .locals 10

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
    :try_start_0
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    .line 126
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    .line 128
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    invoke-interface {v8, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    .line 132
    const-string/jumbo v9, "/system/etc/gps/config/otdoa.xml"

    .line 131
    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 139
    if-eqz v5, :cond_0

    .line 140
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    :goto_0
    move-object v4, v5

    .line 156
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    if-eqz v4, :cond_1

    .line 158
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 166
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :cond_1
    :goto_1
    const/4 v7, 0x0

    .line 167
    .local v7, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v6, 0x0

    .line 168
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    const/4 v8, 0x0

    .line 118
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    return-void

    .line 134
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    .local v7, "spf":Ljavax/xml/parsers/SAXParserFactory;
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 135
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v9, "/data/gnss/otdoa.xml"

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 139
    if-eqz v5, :cond_0

    .line 140
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    .line 143
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .line 145
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 156
    if-eqz v4, :cond_1

    .line 158
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 159
    :catch_2
    move-exception v1

    .line 161
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catchall_0
    move-exception v9

    .line 139
    :goto_4
    if-eqz v4, :cond_2

    .line 140
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 138
    :cond_2
    throw v9
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 143
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    .line 159
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_4
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_5
    move-exception v3

    .line 154
    .local v3, "e1":Lorg/xml/sax/SAXException;
    :goto_5
    :try_start_b
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 156
    if-eqz v4, :cond_1

    .line 158
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_1

    .line 159
    :catch_6
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 149
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    :catch_7
    move-exception v2

    .line 151
    .local v2, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_6
    :try_start_d
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 156
    if-eqz v4, :cond_1

    .line 158
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_1

    .line 159
    :catch_8
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 146
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_9
    move-exception v1

    .line 148
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 156
    if-eqz v4, :cond_1

    .line 158
    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_1

    .line 159
    :catch_a
    move-exception v1

    .line 161
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 155
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 156
    :goto_8
    if-eqz v4, :cond_3

    .line 158
    :try_start_11
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 155
    :cond_3
    :goto_9
    throw v9

    .line 159
    :catch_b
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 155
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_8

    .line 146
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 149
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_d
    move-exception v2

    .restart local v2    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 152
    .end local v2    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_e
    move-exception v3

    .restart local v3    # "e1":Lorg/xml/sax/SAXException;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 138
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 134
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_f
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
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

    if-eqz v0, :cond_1

    .line 182
    new-instance v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string/jumbo v0, "valid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 185
    :cond_2
    const-string/jumbo v0, "sfn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 187
    :cond_3
    const-string/jumbo v0, "measureinfotype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 189
    :cond_4
    const-string/jumbo v0, "modespecificmeasure"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    new-instance v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    .line 191
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    goto :goto_0

    .line 192
    :cond_5
    const-string/jumbo v0, "modeFDD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 193
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_6

    .line 194
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->eModeSpecInfoType:I

    if-ne v0, v2, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    new-instance v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    goto :goto_0

    .line 197
    :cond_6
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->eModeType:I

    if-ne v0, v2, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    new-instance v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificFDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeasFDD;

    goto :goto_0

    .line 203
    :cond_7
    const-string/jumbo v0, "primscrambcodepresent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 204
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 205
    :cond_8
    const-string/jumbo v0, "primscrambcode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 206
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 207
    :cond_9
    const-string/jumbo v0, "rxtxtimediffvalid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 208
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 209
    :cond_a
    const-string/jumbo v0, "rxtxtimedifftype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 210
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 211
    :cond_b
    const-string/jumbo v0, "stdvalue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 212
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 213
    :cond_c
    const-string/jumbo v0, "noofmeasurements"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 214
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 215
    :cond_d
    const-string/jumbo v0, "stddevOTDOAmeas"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 216
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 217
    :cond_e
    const-string/jumbo v0, "modeTDD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 218
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isModeSpecMeas:Z

    if-eqz v0, :cond_f

    .line 219
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->eModeSpecInfoType:I

    if-ne v0, v3, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stModeSpecMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;

    new-instance v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_ModeSpecMeansTDD;

    goto/16 :goto_0

    .line 222
    :cond_f
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isNeighbourMeas:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->eModeType:I

    if-ne v0, v3, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->otdoa_Measurement:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_Measurement;->stNeighbourMeasList:[Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;

    iget v1, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->iMeasIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighbourMeas;->stNeighbourMeasInfo:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;

    new-instance v1, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_NeighModeSpecMeas;->stModeSpecificTDDMeas:Lcom/android/supl/loc/measure/odtoa/SUPL_OTDOA_MDSpecINF_TDD;

    goto/16 :goto_0

    .line 228
    :cond_10
    const-string/jumbo v0, "bcellidparamvalid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 229
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 230
    :cond_11
    const-string/jumbo v0, "cellparamsid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 231
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 232
    :cond_12
    const-string/jumbo v0, "neighbourpresent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 233
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 234
    :cond_13
    const-string/jumbo v0, "neighbourcount"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 235
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 236
    :cond_14
    const-string/jumbo v0, "neighbourmeas"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

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

    goto/16 :goto_0

    .line 240
    :cond_15
    const-string/jumbo v0, "modetype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 241
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 242
    :cond_16
    const-string/jumbo v0, "bursttype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 243
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 244
    :cond_17
    const-string/jumbo v0, "midambleshift"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 245
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 246
    :cond_18
    const-string/jumbo v0, "timeslot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 247
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 248
    :cond_19
    const-string/jumbo v0, "cellparamid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 249
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 250
    :cond_1a
    const-string/jumbo v0, "sfnsfnobstimediff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/odtoa/OTDOAConfigParser;->isRequiredTag:Z

    goto/16 :goto_0
.end method
