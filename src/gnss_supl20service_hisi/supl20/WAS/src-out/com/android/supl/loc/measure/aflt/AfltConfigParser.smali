.class public Lcom/android/supl/loc/measure/aflt/AfltConfigParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "AfltConfigParser.java"


# static fields
.field private static final AFLTMEASUREMENT:Ljava/lang/String; = "afltmeasurement"

.field private static final BANDCLASS:Ljava/lang/String; = "bandclass"

.field private static final BASESTATIONID:Ljava/lang/String; = "basestationid"

.field private static final BMEASUREMENTVALID:Ljava/lang/String; = "bmeasurementvalid"

.field private static final CDMAFREQUENCY:Ljava/lang/String; = "cdmafrequency"

.field private static final ISOFFSETINCLUDED:Ljava/lang/String; = "isOffsetincluded"

.field private static final MSTIMEOFFSET:Ljava/lang/String; = "mstimeOffset"

.field private static final NETWORKIDENTIFICATION:Ljava/lang/String; = "networkidentification"

.field private static final PILOTMEASUREDPHASE:Ljava/lang/String; = "pilotmeasuredphase"

.field private static final PILOTPHASEDOPPLER:Ljava/lang/String; = "pilotphasedoppler"

.field private static final PILOTPHASEFALSEALARMPROBABILITY:Ljava/lang/String; = "pilotphasefalsealarmprobability"

.field private static final PILOTPHASEFALSEALARMRANGE:Ljava/lang/String; = "pilotphasefalsealarmrange"

.field private static final PILOTPHASEMEASUREMENTERROR:Ljava/lang/String; = "pilotphasemeasurementerror"

.field private static final PILOTPHASERECORD:Ljava/lang/String; = "pilotphaserecord"

.field private static final PILOTSTRENGTH:Ljava/lang/String; = "pilotstrength"

.field private static final PSEUDODOPPLERRMSERROR:Ljava/lang/String; = "pseudodopplerrmserror"

.field private static final REFERENCEPILOTSTRENGTH:Ljava/lang/String; = "referencepilotstrength"

.field private static final REFERENCEPN:Ljava/lang/String; = "referencepn"

.field private static final REPEATERDETECTIONSTATUS:Ljava/lang/String; = "repeaterdetectionstatus"

.field private static final REPEATERID:Ljava/lang/String; = "repeaterid"

.field private static final REPEATERTYPE:Ljava/lang/String; = "repeatertype"

.field private static final RMSERRORPHASE:Ljava/lang/String; = "rmserrorphase"

.field private static final SYSTEMIDENTIFICATION:Ljava/lang/String; = "systemidentification"

.field private static final TIMEREFERENCE:Ljava/lang/String; = "timereference"

.field private static final TOTALNUMBEROFPILOTS:Ljava/lang/String; = "totalnumberofpilots"

.field private static final TOTALRECEIVEDPOWER:Ljava/lang/String; = "totalreceivedpower"


# instance fields
.field public afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

.field private iIndex:I

.field private isMeasurementValid:Z

.field private isOffsetIncluded:Z

.field private isRequiredTag:Z

.field private repeaterId:Ljava/lang/String;

.field private stData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 83
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isMeasurementValid:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isOffsetIncluded:Z

    .line 85
    iput-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->repeaterId:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    .line 87
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    .line 90
    iput-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    .line 99
    invoke-virtual {p0}, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->init()V

    .line 100
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
    .line 418
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    if-eqz v0, :cond_13

    .line 420
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    .line 428
    :goto_12
    return-void

    .line 425
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

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

    .line 287
    const-string/jumbo v2, "bmeasurementvalid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 289
    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_36

    :goto_15
    iput-boolean v0, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->bMeasurementValid:Z

    .line 290
    const-string/jumbo v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.bMeasurementValid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-boolean v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->bMeasurementValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_35
    :goto_35
    return-void

    :cond_36
    move v0, v1

    .line 289
    goto :goto_15

    .line 292
    :cond_38
    const-string/jumbo v2, "timereference"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 294
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TimeReference:I

    .line 295
    const-string/jumbo v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.TimeReference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TimeReference:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 297
    :cond_6a
    const-string/jumbo v2, "isOffsetincluded"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 299
    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_9e

    :goto_7d
    iput-boolean v0, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->IsOffsetIncluded:Z

    .line 300
    const-string/jumbo v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.IsOffsetIncluded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-boolean v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->IsOffsetIncluded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_9e
    move v0, v1

    .line 299
    goto :goto_7d

    .line 302
    :cond_a0
    const-string/jumbo v0, "mstimeOffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 304
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->MSTimeOffset:I

    .line 305
    const-string/jumbo v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.MSTimeOffset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->MSTimeOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 307
    :cond_d3
    const-string/jumbo v0, "referencepn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 309
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->ReferencePN:I

    .line 310
    const-string/jumbo v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.ReferencePN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->ReferencePN:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 312
    :cond_106
    const-string/jumbo v0, "referencepilotstrength"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 314
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->ReferencePilotStrength:I

    .line 315
    const-string/jumbo v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.ReferencePilotStrength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->ReferencePilotStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 317
    :cond_139
    const-string/jumbo v0, "bandclass"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 319
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->BandClass:I

    .line 320
    const-string/jumbo v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.BandClass : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->BandClass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 322
    :cond_16c
    const-string/jumbo v0, "cdmafrequency"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 324
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->CDMAFrequency:I

    .line 325
    const-string/jumbo v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.CDMAFrequency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->CDMAFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 327
    :cond_19f
    const-string/jumbo v0, "basestationid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    .line 329
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->BaseStationID:I

    .line 330
    const-string/jumbo v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.BaseStationID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->BaseStationID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 332
    :cond_1d2
    const-string/jumbo v0, "systemidentification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_205

    .line 334
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->SystemIdentification:I

    .line 335
    const-string/jumbo v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.SystemIdentification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->SystemIdentification:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 337
    :cond_205
    const-string/jumbo v0, "networkidentification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_238

    .line 339
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->NetworkIdentification:I

    .line 340
    const-string/jumbo v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.NetworkIdentification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->NetworkIdentification:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 342
    :cond_238
    const-string/jumbo v0, "totalreceivedpower"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26b

    .line 344
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TotalReceivedPower:I

    .line 345
    const-string/jumbo v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.TotalReceivedPower : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TotalReceivedPower:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 347
    :cond_26b
    const-string/jumbo v0, "totalnumberofpilots"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29e

    .line 349
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TotalNumberOfPilots:I

    .line 350
    const-string/jumbo v0, "AFLT_CONFIG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.TotalNumberOfPilots : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget v2, v2, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->TotalNumberOfPilots:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 352
    :cond_29e
    const-string/jumbo v0, "pilotphaserecord"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bd

    .line 354
    iget v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    .line 355
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    new-instance v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    invoke-direct {v2}, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_35

    .line 357
    :cond_2bd
    const-string/jumbo v0, "pilotmeasuredphase"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_304

    .line 359
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotMeasuredPhase:I

    .line 360
    const-string/jumbo v1, "AFLT_CONFIG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.phaseRecord.get(iIndex).PilotMeasuredPhase : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v0, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotMeasuredPhase:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 362
    :cond_304
    const-string/jumbo v0, "pilotstrength"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34b

    .line 364
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotStrength:I

    .line 365
    const-string/jumbo v1, "AFLT_CONFIG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.phaseRecord.get(iIndex).PilotStrength : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v0, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotStrength:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 367
    :cond_34b
    const-string/jumbo v0, "rmserrorphase"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_392

    .line 369
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RMSErrorPhase:I

    .line 370
    const-string/jumbo v1, "AFLT_CONFIG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.phaseRecord.get(iIndex).RMSErrorPhase : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v0, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RMSErrorPhase:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 372
    :cond_392
    const-string/jumbo v0, "pilotphasemeasurementerror"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d9

    .line 374
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotPhaseMeasurementError:I

    .line 375
    const-string/jumbo v1, "AFLT_CONFIG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.phaseRecord.get(iIndex).PilotPhaseMeasurementError : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v0, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotPhaseMeasurementError:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 377
    :cond_3d9
    const-string/jumbo v0, "repeaterdetectionstatus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_420

    .line 379
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RepeaterDetectionStatus:I

    .line 380
    const-string/jumbo v1, "AFLT_CONFIG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.phaseRecord.get(iIndex).RepeaterDetectionStatus : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v0, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RepeaterDetectionStatus:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 382
    :cond_420
    const-string/jumbo v0, "repeatertype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_467

    .line 384
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RepeaterType:I

    .line 385
    const-string/jumbo v1, "AFLT_CONFIG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.phaseRecord.get(iIndex).RepeaterType : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v0, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RepeaterType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 387
    :cond_467
    const-string/jumbo v0, "repeaterid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ae

    .line 389
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RepeaterID:[B

    .line 390
    const-string/jumbo v1, "AFLT_CONFIG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.phaseRecord.get(iIndex).RepeaterID : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->RepeaterID:[B

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 392
    :cond_4ae
    const-string/jumbo v0, "pilotphasedoppler"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f5

    .line 394
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotPhaseDoppler:I

    .line 395
    const-string/jumbo v1, "AFLT_CONFIG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.phaseRecord.get(iIndex).PilotPhaseDoppler : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v0, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotPhaseDoppler:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 397
    :cond_4f5
    const-string/jumbo v0, "pseudodopplerrmserror"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53c

    .line 399
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PseudoDopplerRMSError:I

    .line 400
    const-string/jumbo v1, "AFLT_CONFIG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.phaseRecord.get(iIndex).PseudoDopplerRMSError : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v0, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PseudoDopplerRMSError:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 402
    :cond_53c
    const-string/jumbo v0, "pilotphasefalsealarmprobability"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_583

    .line 404
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotphaseFalseAlarmProbability:I

    .line 405
    const-string/jumbo v1, "AFLT_CONFIG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.phaseRecord.get(iIndex).PilotphaseFalseAlarmRange : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v0, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotphaseFalseAlarmProbability:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 407
    :cond_583
    const-string/jumbo v0, "pilotphasefalsealarmrange"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 409
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget-object v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotphaseFalseAlarmRange:I

    .line 410
    const-string/jumbo v1, "AFLT_CONFIG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "afltmeasure.phaseRecord.get(iIndex).PilotphaseFalseAlarmRange : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    iget v0, v0, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;->PilotphaseFalseAlarmRange:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35
.end method

.method public getAFLTMeasInfo()Lcom/android/supl/loc/measure/aflt/AfltMeasure;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    return-object v0
.end method

.method public init()V
    .registers 11

    .prologue
    .line 105
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 106
    .local v7, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v6, 0x0

    .line 107
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    const/4 v8, 0x0

    .line 108
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    const/4 v4, 0x0

    .line 112
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_7
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    .line 113
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    .line 114
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    invoke-interface {v8, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_12} :catch_5f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_12} :catch_84
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_12} :catch_75
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_12} :catch_66
    .catchall {:try_start_7 .. :try_end_12} :catchall_93

    .line 118
    :try_start_12
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v9, "/system/etc/gps/config/aflt.xml"

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1a} :catch_31
    .catchall {:try_start_12 .. :try_end_1a} :catchall_58

    .line 119
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1a
    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_22} :catch_ae
    .catchall {:try_start_1a .. :try_end_22} :catchall_ab

    .line 129
    if-eqz v5, :cond_27

    .line 131
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

    .line 153
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    if-eqz v4, :cond_2d

    .line 157
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

    .line 122
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    .local v7, "spf":Ljavax/xml/parsers/SAXParserFactory;
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    :catch_31
    move-exception v0

    .line 123
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_32
    :try_start_32
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v9, "/data/gnss/aflt.xml"

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_58

    .line 125
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :try_start_3a
    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_ab

    .line 129
    if-eqz v5, :cond_27

    .line 131
    :try_start_44
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_47} :catch_48
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_a2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_44 .. :try_end_47} :catch_a5
    .catch Lorg/xml/sax/SAXException; {:try_start_44 .. :try_end_47} :catch_a8
    .catchall {:try_start_44 .. :try_end_47} :catchall_9f

    goto :goto_27

    .line 136
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_48
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .line 137
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :goto_4a
    :try_start_4a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_93

    .line 153
    if-eqz v4, :cond_2d

    .line 157
    :try_start_4f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_2d

    .line 160
    :catch_53
    move-exception v1

    .line 161
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    .line 128
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catchall_58
    move-exception v9

    .line 129
    :goto_59
    if-eqz v4, :cond_5e

    .line 131
    :try_start_5b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 128
    :cond_5e
    throw v9
    :try_end_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_5f} :catch_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5f} :catch_84
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5b .. :try_end_5f} :catch_75
    .catch Lorg/xml/sax/SAXException; {:try_start_5b .. :try_end_5f} :catch_66
    .catchall {:try_start_5b .. :try_end_5f} :catchall_93

    .line 136
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_5f
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_4a

    .line 160
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

    .line 148
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_66
    move-exception v3

    .line 149
    .local v3, "e1":Lorg/xml/sax/SAXException;
    :goto_67
    :try_start_67
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_93

    .line 153
    if-eqz v4, :cond_2d

    .line 157
    :try_start_6c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_2d

    .line 160
    :catch_70
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    .line 144
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    :catch_75
    move-exception v2

    .line 145
    .local v2, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_76
    :try_start_76
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_93

    .line 153
    if-eqz v4, :cond_2d

    .line 157
    :try_start_7b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_2d

    .line 160
    :catch_7f
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_84
    move-exception v1

    .line 141
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_85
    :try_start_85
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_93

    .line 153
    if-eqz v4, :cond_2d

    .line 157
    :try_start_8a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_2d

    .line 160
    :catch_8e
    move-exception v1

    .line 161
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_93
    move-exception v9

    .line 153
    :goto_94
    if-eqz v4, :cond_99

    .line 157
    :try_start_96
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    .line 152
    :cond_99
    :goto_99
    throw v9

    .line 160
    :catch_9a
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_99

    .line 152
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

    .line 140
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_a2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_85

    .line 144
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

    .line 148
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

    .line 128
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_ab
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_59

    .line 122
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
    .registers 8
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
    const/4 v1, 0x1

    .line 175
    const-string/jumbo v0, "afltmeasurement"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 177
    new-instance v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/aflt/AfltMeasure;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    .line 282
    :cond_11
    :goto_11
    return-void

    .line 179
    :cond_12
    const-string/jumbo v0, "bmeasurementvalid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 181
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_11

    .line 183
    :cond_1e
    const-string/jumbo v0, "timereference"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 185
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_11

    .line 187
    :cond_2a
    const-string/jumbo v0, "isOffsetincluded"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 189
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_11

    .line 191
    :cond_36
    const-string/jumbo v0, "mstimeOffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 193
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_11

    .line 195
    :cond_42
    const-string/jumbo v0, "referencepn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 197
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_11

    .line 199
    :cond_4e
    const-string/jumbo v0, "referencepilotstrength"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 201
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_11

    .line 203
    :cond_5a
    const-string/jumbo v0, "bandclass"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 205
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_11

    .line 207
    :cond_66
    const-string/jumbo v0, "cdmafrequency"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 209
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_11

    .line 211
    :cond_72
    const-string/jumbo v0, "basestationid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 213
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_11

    .line 215
    :cond_7e
    const-string/jumbo v0, "systemidentification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 217
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_11

    .line 219
    :cond_8a
    const-string/jumbo v0, "networkidentification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 221
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_11

    .line 223
    :cond_97
    const-string/jumbo v0, "totalreceivedpower"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 225
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_11

    .line 227
    :cond_a4
    const-string/jumbo v0, "totalnumberofpilots"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 229
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_11

    .line 231
    :cond_b1
    const-string/jumbo v0, "pilotphaserecord"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 233
    iget v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    .line 234
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    if-nez v0, :cond_cf

    .line 235
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    .line 236
    :cond_cf
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    new-instance v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    invoke-direct {v2}, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_11

    .line 238
    :cond_df
    const-string/jumbo v0, "pilotmeasuredphase"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 240
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_11

    .line 242
    :cond_ec
    const-string/jumbo v0, "pilotstrength"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 244
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_11

    .line 246
    :cond_f9
    const-string/jumbo v0, "rmserrorphase"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 248
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_11

    .line 250
    :cond_106
    const-string/jumbo v0, "pilotphasemeasurementerror"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_113

    .line 252
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_11

    .line 254
    :cond_113
    const-string/jumbo v0, "repeaterdetectionstatus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 256
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_11

    .line 258
    :cond_120
    const-string/jumbo v0, "repeatertype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 260
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_11

    .line 262
    :cond_12d
    const-string/jumbo v0, "repeaterid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 264
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_11

    .line 266
    :cond_13a
    const-string/jumbo v0, "pilotphasedoppler"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 268
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_11

    .line 270
    :cond_147
    const-string/jumbo v0, "pseudodopplerrmserror"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 272
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_11

    .line 274
    :cond_154
    const-string/jumbo v0, "pilotphasefalsealarmprobability"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    .line 276
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_11

    .line 278
    :cond_161
    const-string/jumbo v0, "pilotphasefalsealarmrange"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 280
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_11
.end method
