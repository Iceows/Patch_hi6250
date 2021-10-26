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
    .locals 2

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

    .line 97
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
    .line 418
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    .line 416
    :goto_0
    return-void

    .line 425
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

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

    .line 287
    const-string/jumbo v2, "bmeasurementvalid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
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

    .line 285
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 289
    goto :goto_0

    .line 292
    :cond_2
    const-string/jumbo v2, "timereference"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

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

    goto :goto_1

    .line 297
    :cond_3
    const-string/jumbo v2, "isOffsetincluded"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 299
    iget-object v2, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v3, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_4

    :goto_2
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

    goto :goto_1

    :cond_4
    move v0, v1

    .line 299
    goto :goto_2

    .line 302
    :cond_5
    const-string/jumbo v0, "mstimeOffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

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

    goto/16 :goto_1

    .line 307
    :cond_6
    const-string/jumbo v0, "referencepn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

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

    goto/16 :goto_1

    .line 312
    :cond_7
    const-string/jumbo v0, "referencepilotstrength"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

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

    goto/16 :goto_1

    .line 317
    :cond_8
    const-string/jumbo v0, "bandclass"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

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

    goto/16 :goto_1

    .line 322
    :cond_9
    const-string/jumbo v0, "cdmafrequency"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

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

    goto/16 :goto_1

    .line 327
    :cond_a
    const-string/jumbo v0, "basestationid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

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

    goto/16 :goto_1

    .line 332
    :cond_b
    const-string/jumbo v0, "systemidentification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

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

    goto/16 :goto_1

    .line 337
    :cond_c
    const-string/jumbo v0, "networkidentification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

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

    goto/16 :goto_1

    .line 342
    :cond_d
    const-string/jumbo v0, "totalreceivedpower"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

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

    goto/16 :goto_1

    .line 347
    :cond_e
    const-string/jumbo v0, "totalnumberofpilots"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

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

    goto/16 :goto_1

    .line 352
    :cond_f
    const-string/jumbo v0, "pilotphaserecord"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

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

    goto/16 :goto_1

    .line 357
    :cond_10
    const-string/jumbo v0, "pilotmeasuredphase"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

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

    goto/16 :goto_1

    .line 362
    :cond_11
    const-string/jumbo v0, "pilotstrength"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

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

    goto/16 :goto_1

    .line 367
    :cond_12
    const-string/jumbo v0, "rmserrorphase"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

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

    goto/16 :goto_1

    .line 372
    :cond_13
    const-string/jumbo v0, "pilotphasemeasurementerror"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

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

    goto/16 :goto_1

    .line 377
    :cond_14
    const-string/jumbo v0, "repeaterdetectionstatus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

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

    goto/16 :goto_1

    .line 382
    :cond_15
    const-string/jumbo v0, "repeatertype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

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

    goto/16 :goto_1

    .line 387
    :cond_16
    const-string/jumbo v0, "repeaterid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

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

    goto/16 :goto_1

    .line 392
    :cond_17
    const-string/jumbo v0, "pilotphasedoppler"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

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

    goto/16 :goto_1

    .line 397
    :cond_18
    const-string/jumbo v0, "pseudodopplerrmserror"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

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

    goto/16 :goto_1

    .line 402
    :cond_19
    const-string/jumbo v0, "pilotphasefalsealarmprobability"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

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

    goto/16 :goto_1

    .line 407
    :cond_1a
    const-string/jumbo v0, "pilotphasefalsealarmrange"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

    goto/16 :goto_1
.end method

.method public getAFLTMeasInfo()Lcom/android/supl/loc/measure/aflt/AfltMeasure;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    return-object v0
.end method

.method public init()V
    .locals 10

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
    :try_start_0
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    .line 113
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    .line 114
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    invoke-interface {v8, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v9, "/system/etc/gps/config/aflt.xml"

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 129
    if-eqz v5, :cond_0

    .line 131
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

    .line 153
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    if-eqz v4, :cond_1

    .line 157
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

    .line 103
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    return-void

    .line 122
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    .local v7, "spf":Ljavax/xml/parsers/SAXParserFactory;
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 123
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v9, "/data/gnss/aflt.xml"

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 129
    if-eqz v5, :cond_0

    .line 131
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .line 137
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 153
    if-eqz v4, :cond_1

    .line 157
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 160
    :catch_2
    move-exception v1

    .line 161
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 128
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catchall_0
    move-exception v9

    .line 129
    :goto_4
    if-eqz v4, :cond_2

    .line 131
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 128
    :cond_2
    throw v9
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 136
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    .line 160
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

    .line 148
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_5
    move-exception v3

    .line 149
    .local v3, "e1":Lorg/xml/sax/SAXException;
    :goto_5
    :try_start_b
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 153
    if-eqz v4, :cond_1

    .line 157
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_1

    .line 160
    :catch_6
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 144
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    :catch_7
    move-exception v2

    .line 145
    .local v2, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_6
    :try_start_d
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 153
    if-eqz v4, :cond_1

    .line 157
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_1

    .line 160
    :catch_8
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_9
    move-exception v1

    .line 141
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 153
    if-eqz v4, :cond_1

    .line 157
    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_1

    .line 160
    :catch_a
    move-exception v1

    .line 161
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 153
    :goto_8
    if-eqz v4, :cond_3

    .line 157
    :try_start_11
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 152
    :cond_3
    :goto_9
    throw v9

    .line 160
    :catch_b
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 152
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

    .line 140
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 144
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

    .line 148
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

    .line 128
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 122
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
    .locals 3
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

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/aflt/AfltMeasure;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const-string/jumbo v0, "bmeasurementvalid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 183
    :cond_2
    const-string/jumbo v0, "timereference"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 187
    :cond_3
    const-string/jumbo v0, "isOffsetincluded"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 191
    :cond_4
    const-string/jumbo v0, "mstimeOffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 193
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 195
    :cond_5
    const-string/jumbo v0, "referencepn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 197
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 199
    :cond_6
    const-string/jumbo v0, "referencepilotstrength"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 201
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 203
    :cond_7
    const-string/jumbo v0, "bandclass"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 205
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 207
    :cond_8
    const-string/jumbo v0, "cdmafrequency"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 209
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 211
    :cond_9
    const-string/jumbo v0, "basestationid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 213
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 215
    :cond_a
    const-string/jumbo v0, "systemidentification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 217
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto :goto_0

    .line 219
    :cond_b
    const-string/jumbo v0, "networkidentification"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 221
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 223
    :cond_c
    const-string/jumbo v0, "totalreceivedpower"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 225
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 227
    :cond_d
    const-string/jumbo v0, "totalnumberofpilots"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 229
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 231
    :cond_e
    const-string/jumbo v0, "pilotphaserecord"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 233
    iget v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    .line 234
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 235
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    .line 236
    :cond_f
    iget-object v0, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->afltmeasure:Lcom/android/supl/loc/measure/aflt/AfltMeasure;

    iget-object v0, v0, Lcom/android/supl/loc/measure/aflt/AfltMeasure;->phaseRecord:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->iIndex:I

    new-instance v2, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;

    invoke-direct {v2}, Lcom/android/supl/loc/measure/aflt/SUPL_AFLT_PilotPhaseRecord;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 238
    :cond_10
    const-string/jumbo v0, "pilotmeasuredphase"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 240
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 242
    :cond_11
    const-string/jumbo v0, "pilotstrength"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 244
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 246
    :cond_12
    const-string/jumbo v0, "rmserrorphase"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 248
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 250
    :cond_13
    const-string/jumbo v0, "pilotphasemeasurementerror"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 252
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 254
    :cond_14
    const-string/jumbo v0, "repeaterdetectionstatus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 256
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 258
    :cond_15
    const-string/jumbo v0, "repeatertype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 260
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 262
    :cond_16
    const-string/jumbo v0, "repeaterid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 264
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 266
    :cond_17
    const-string/jumbo v0, "pilotphasedoppler"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 268
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 270
    :cond_18
    const-string/jumbo v0, "pseudodopplerrmserror"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 272
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 274
    :cond_19
    const-string/jumbo v0, "pilotphasefalsealarmprobability"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 276
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0

    .line 278
    :cond_1a
    const-string/jumbo v0, "pilotphasefalsealarmrange"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/aflt/AfltConfigParser;->isRequiredTag:Z

    goto/16 :goto_0
.end method
