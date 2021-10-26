.class public Lcom/android/supl/loc/measure/eotd/EOTDParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "EOTDParser.java"


# static fields
.field private static final BCCHCARRIER:Ljava/lang/String; = "bcchcarrier"

.field private static final BSIC:Ljava/lang/String; = "bsic"

.field private static final BSICANDCARRIER:Ljava/lang/String; = "bsicandcarrier"

.field private static final CARRIER:Ljava/lang/String; = "carrier"

.field private static final CELLIDANDLAC:Ljava/lang/String; = "cellidandlac"

.field private static final COUNT:Ljava/lang/String; = "count"

.field private static final EOTDMEAS:Ljava/lang/String; = "eotdmeas"

.field private static final EOTDQUALITY:Ljava/lang/String; = "eotdquality"

.field private static final ISIDENTITYPRESENT:Ljava/lang/String; = "isidentitypresent"

.field private static final MEASR98EXT:Ljava/lang/String; = "measr98ext"

.field private static final MEASREL5EXT:Ljava/lang/String; = "measrel5ext"

.field private static final MEASWITHID:Ljava/lang/String; = "measwithid"

.field private static final MSRELECOMMON:Ljava/lang/String; = "msrelecommon"

.field private static final MSRELEFIRST:Ljava/lang/String; = "msrelefirst"

.field private static final MSRELEREST:Ljava/lang/String; = "msrelerest"

.field private static final MSROFOTHERSETS:Ljava/lang/String; = "msrofothersets"

.field private static final MSROTHERSETSUNION:Ljava/lang/String; = "msrothersetsunion"

.field private static final MULTIFRAMECARRIER:Ljava/lang/String; = "multiframecarrier"

.field private static final MULTIFRAMEOFFSET:Ljava/lang/String; = "multiframeoffset"

.field private static final NBORTIMESLOT:Ljava/lang/String; = "nbortimeslot"

.field private static final NBROFMEASUREMENTS:Ljava/lang/String; = "nbrofmeasurements"

.field private static final NEIGHBORIDENTITY:Ljava/lang/String; = "neighboridentity"

.field private static final NEIGHBORIDTYPE:Ljava/lang/String; = "neighboridtype"

.field private static final NEIGHBORIDUNION:Ljava/lang/String; = "neighboridunion"

.field private static final NOOFVALIDSETS:Ljava/lang/String; = "noofvalidsets"

.field private static final NUMOFMEASUREMENTS:Ljava/lang/String; = "numofmeasurements"

.field private static final OTDMEAS:Ljava/lang/String; = "otdmeas"

.field private static final OTDREL5PRESENT:Ljava/lang/String; = "otdrel5present"

.field private static final OTDREL98PRESENT:Ljava/lang/String; = "otdrel98present"

.field private static final OTDVALUE:Ljava/lang/String; = "otdvalue"

.field private static final REFERENCECI:Ljava/lang/String; = "referenceci"

.field private static final REFERENCELAC:Ljava/lang/String; = "referencelac"

.field private static final REFERENCETIMESLOT:Ljava/lang/String; = "referencetimeslot"

.field private static final REFFRAMENUMBER:Ljava/lang/String; = "refframenumber"

.field private static final REFQUALITY:Ljava/lang/String; = "refquality"

.field private static final REQUESTINDEX:Ljava/lang/String; = "requestindex"

.field private static final SETCOUNT:Ljava/lang/String; = "setcount"

.field private static final STDOFEOTD:Ljava/lang/String; = "stdofeotd"

.field private static final STDRESOLUTION:Ljava/lang/String; = "stdresolution"

.field private static final SYSTEMINFOINDEX:Ljava/lang/String; = "systeminfoindex"

.field private static final TACORRECTION:Ljava/lang/String; = "tacorrection"

.field private static final VALIDEOTDMEASUREMENT:Ljava/lang/String; = "valideotdmeasurement"


# instance fields
.field private eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

.field private eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

.field private eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

.field private iSetCount:I

.field private isEleRest:Z

.field private isMesare98:Z

.field private isMesarel5:Z

.field private isMsrelefirst:Z

.field private isNotValideotdMeasurement:Z

.field private isOTDMeas:Z

.field private isRequiredTag:Z

.field private means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

.field private otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

.field private quality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

.field private stData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 110
    iput-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    .line 111
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMsrelefirst:Z

    .line 112
    iput-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    .line 113
    iput v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->iSetCount:I

    .line 114
    iput-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    .line 115
    iput-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->quality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    .line 116
    iput-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    .line 117
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isEleRest:Z

    .line 118
    iput-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    .line 119
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesare98:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesarel5:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isOTDMeas:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isNotValideotdMeasurement:Z

    .line 135
    invoke-direct {p0}, Lcom/android/supl/loc/measure/eotd/EOTDParser;->init()V

    .line 134
    return-void
.end method

.method private init()V
    .registers 11

    .prologue
    .line 139
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 140
    .local v7, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v6, 0x0

    .line 141
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    const/4 v8, 0x0

    .line 142
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    const/4 v4, 0x0

    .line 144
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_7
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    .line 146
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    .line 148
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    invoke-interface {v8, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_12} :catch_5f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_12} :catch_84
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_12} :catch_75
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_12} :catch_66
    .catchall {:try_start_7 .. :try_end_12} :catchall_93

    .line 151
    :try_start_12
    new-instance v5, Ljava/io/FileInputStream;

    .line 152
    const-string/jumbo v9, "/system/etc/gps/config/eotd.xml"

    .line 151
    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1a} :catch_31
    .catchall {:try_start_12 .. :try_end_1a} :catchall_58

    .line 153
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1a
    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_22} :catch_ae
    .catchall {:try_start_1a .. :try_end_22} :catchall_ab

    .line 159
    if-eqz v5, :cond_27

    .line 160
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

    .line 176
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    if-eqz v4, :cond_2d

    .line 178
    :try_start_2a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_61

    .line 186
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :cond_2d
    :goto_2d
    const/4 v7, 0x0

    .line 187
    .local v7, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v6, 0x0

    .line 188
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    const/4 v8, 0x0

    .line 138
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    return-void

    .line 154
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    .local v6, "sp":Ljavax/xml/parsers/SAXParser;
    .local v7, "spf":Ljavax/xml/parsers/SAXParserFactory;
    .local v8, "xr":Lorg/xml/sax/XMLReader;
    :catch_31
    move-exception v0

    .line 155
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_32
    :try_start_32
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v9, "/data/gnss/eotd.xml"

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_58

    .line 157
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :try_start_3a
    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_ab

    .line 159
    if-eqz v5, :cond_27

    .line 160
    :try_start_44
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_47} :catch_48
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_a2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_44 .. :try_end_47} :catch_a5
    .catch Lorg/xml/sax/SAXException; {:try_start_44 .. :try_end_47} :catch_a8
    .catchall {:try_start_44 .. :try_end_47} :catchall_9f

    goto :goto_27

    .line 163
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_48
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .line 165
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :goto_4a
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_93

    .line 176
    if-eqz v4, :cond_2d

    .line 178
    :try_start_4f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_2d

    .line 179
    :catch_53
    move-exception v1

    .line 181
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    .line 158
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catchall_58
    move-exception v9

    .line 159
    :goto_59
    if-eqz v4, :cond_5e

    .line 160
    :try_start_5b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 158
    :cond_5e
    throw v9
    :try_end_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_5f} :catch_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5f} :catch_84
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5b .. :try_end_5f} :catch_75
    .catch Lorg/xml/sax/SAXException; {:try_start_5b .. :try_end_5f} :catch_66
    .catchall {:try_start_5b .. :try_end_5f} :catchall_93

    .line 163
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_5f
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_4a

    .line 179
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .local v4, "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .restart local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_61
    move-exception v1

    .line 181
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    .line 172
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v6    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v8    # "xr":Lorg/xml/sax/XMLReader;
    :catch_66
    move-exception v3

    .line 174
    .local v3, "e1":Lorg/xml/sax/SAXException;
    :goto_67
    :try_start_67
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_93

    .line 176
    if-eqz v4, :cond_2d

    .line 178
    :try_start_6c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_2d

    .line 179
    :catch_70
    move-exception v1

    .line 181
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    .line 169
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    :catch_75
    move-exception v2

    .line 171
    .local v2, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_76
    :try_start_76
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_93

    .line 176
    if-eqz v4, :cond_2d

    .line 178
    :try_start_7b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_2d

    .line 179
    :catch_7f
    move-exception v1

    .line 181
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    .line 166
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_84
    move-exception v1

    .line 168
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_85
    :try_start_85
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_93

    .line 176
    if-eqz v4, :cond_2d

    .line 178
    :try_start_8a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_2d

    .line 179
    :catch_8e
    move-exception v1

    .line 181
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    .line 175
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_93
    move-exception v9

    .line 176
    :goto_94
    if-eqz v4, :cond_99

    .line 178
    :try_start_96
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    .line 175
    :cond_99
    :goto_99
    throw v9

    .line 179
    :catch_9a
    move-exception v1

    .line 181
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_99

    .line 175
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

    .line 166
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_a2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_85

    .line 169
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

    .line 172
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

    .line 158
    .end local v3    # "e1":Lorg/xml/sax/SAXException;
    .end local v4    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_ab
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_59

    .line 154
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
    .line 486
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    if-eqz v0, :cond_13

    .line 487
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    .line 485
    :goto_12
    return-void

    .line 490
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

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
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 295
    const-string/jumbo v0, "valideotdmeasurement"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 296
    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_24

    move v0, v1

    :goto_17
    iput-boolean v0, v3, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bIsValidEOTDMeasurement:Z

    .line 298
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_26

    :goto_21
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isNotValideotdMeasurement:Z

    .line 294
    :cond_23
    :goto_23
    return-void

    :cond_24
    move v0, v2

    .line 297
    goto :goto_17

    :cond_26
    move v2, v1

    .line 298
    goto :goto_21

    .line 300
    :cond_28
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isNotValideotdMeasurement:Z

    if-eqz v0, :cond_2d

    .line 301
    return-void

    .line 302
    :cond_2d
    const-string/jumbo v0, "msrelefirst"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 303
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMsrelefirst:Z

    goto :goto_23

    .line 304
    :cond_39
    const-string/jumbo v0, "msrelecommon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 305
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMsrelefirst:Z

    if-eqz v0, :cond_51

    .line 306
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->otd_MsrComm:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    .line 310
    :cond_4e
    :goto_4e
    iput-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    goto :goto_23

    .line 307
    :cond_51
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isEleRest:Z

    if-eqz v0, :cond_4e

    .line 308
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrComm:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    goto :goto_4e

    .line 311
    :cond_5c
    const-string/jumbo v0, "refframenumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 312
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->usRefFrameNumber:I

    goto :goto_23

    .line 313
    :cond_70
    const-string/jumbo v0, "referencetimeslot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 314
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->ucReferenceTimeSlot:S

    goto :goto_23

    .line 315
    :cond_84
    const-string/jumbo v0, "refquality"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 316
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->ucRefQuality:S

    goto :goto_23

    .line 317
    :cond_98
    const-string/jumbo v0, "numofmeasurements"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 318
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->ucNumOfMeasurements:S

    goto/16 :goto_23

    .line 319
    :cond_ad
    const-string/jumbo v0, "stdresolution"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 320
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->ucStdResolution:S

    goto/16 :goto_23

    .line 321
    :cond_c2
    const-string/jumbo v0, "tacorrection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 322
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;->usTACorrection:I

    goto/16 :goto_23

    .line 323
    :cond_d7
    const-string/jumbo v0, "msrelecommon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 324
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMsrelefirst:Z

    if-eqz v0, :cond_f0

    .line 325
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->otd_MsrComm:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    .line 329
    :cond_ec
    :goto_ec
    iput-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    goto/16 :goto_23

    .line 326
    :cond_f0
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isEleRest:Z

    if-nez v0, :cond_fa

    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel5Present:Z

    if-eqz v0, :cond_ec

    .line 327
    :cond_fa
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrComm:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    goto :goto_ec

    .line 330
    :cond_101
    const-string/jumbo v0, "setcount"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 331
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMsrelefirst:Z

    if-eqz v0, :cond_11c

    .line 332
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->ucSetCount:S

    goto/16 :goto_23

    .line 333
    :cond_11c
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isEleRest:Z

    if-eqz v0, :cond_23

    .line 334
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->ucSetCount:S

    goto/16 :goto_23

    .line 336
    :cond_12c
    const-string/jumbo v0, "measwithid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    .line 337
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMsrelefirst:Z

    if-eqz v0, :cond_161

    .line 338
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->aWithIDs:Ljava/util/ArrayList;

    if-nez v0, :cond_152

    .line 339
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    new-instance v1, Ljava/util/ArrayList;

    .line 340
    iget-object v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v2, v2, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    iget-short v2, v2, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->ucSetCount:S

    .line 339
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->aWithIDs:Ljava/util/ArrayList;

    .line 341
    :cond_152
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->aWithIDs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_15d
    :goto_15d
    iput-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    goto/16 :goto_23

    .line 342
    :cond_161
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesare98:Z

    if-eqz v0, :cond_18a

    .line 343
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->otd_FirstSetMsrs:Ljava/util/ArrayList;

    if-nez v0, :cond_17e

    .line 344
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    new-instance v1, Ljava/util/ArrayList;

    .line 345
    iget-object v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v2, v2, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    iget-short v2, v2, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->ucCount:S

    .line 344
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->otd_FirstSetMsrs:Ljava/util/ArrayList;

    .line 347
    :cond_17e
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->otd_FirstSetMsrs:Ljava/util/ArrayList;

    .line 348
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    .line 347
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15d

    .line 349
    :cond_18a
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesarel5:Z

    if-eqz v0, :cond_15d

    .line 350
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->bIsIdentityPresent:Z

    if-eqz v0, :cond_15d

    .line 351
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityPresent:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    goto :goto_15d

    .line 356
    :cond_19d
    const-string/jumbo v0, "neighboridtype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 357
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->enIdType:I

    goto/16 :goto_23

    .line 358
    :cond_1b4
    const-string/jumbo v0, "carrier"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cf

    .line 359
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->bsicAndCarrier:Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;

    .line 360
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 359
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;->usCarrier:I

    goto/16 :goto_23

    .line 361
    :cond_1cf
    const-string/jumbo v0, "bsic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 362
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->bsicAndCarrier:Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;

    .line 363
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 362
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;->cBsic:S

    goto/16 :goto_23

    .line 364
    :cond_1ea
    const-string/jumbo v0, "referencelac"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_205

    .line 365
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->ciandlac:Lcom/android/supl/loc/measure/eotd/CellID_LAC;

    .line 366
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 365
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/CellID_LAC;->usReferenceLAC:S

    goto/16 :goto_23

    .line 367
    :cond_205
    const-string/jumbo v0, "referenceci"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_220

    .line 368
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->ciandlac:Lcom/android/supl/loc/measure/eotd/CellID_LAC;

    .line 369
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 368
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/CellID_LAC;->usReferenceCI:S

    goto/16 :goto_23

    .line 370
    :cond_220
    const-string/jumbo v0, "bcchcarrier"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23b

    .line 371
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->multiFrameCarrier:Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;

    .line 372
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 371
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;->usBCCHCarrier:I

    goto/16 :goto_23

    .line 373
    :cond_23b
    const-string/jumbo v0, "multiframeoffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_256

    .line 374
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->multiFrameCarrier:Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;

    .line 375
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 374
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;->ucMultiFrameOffset:S

    goto/16 :goto_23

    .line 376
    :cond_256
    const-string/jumbo v0, "nbortimeslot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27f

    .line 377
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isOTDMeas:Z

    if-eqz v0, :cond_273

    .line 378
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

    .line 379
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 378
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->ucNborTimeSlot:S

    goto/16 :goto_23

    .line 381
    :cond_273
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->ucNborTimeSlot:S

    goto/16 :goto_23

    .line 383
    :cond_27f
    const-string/jumbo v0, "nbrofmeasurements"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_294

    .line 384
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->quality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/EOTDQuality;->ucNbrOfMeasurements:S

    goto/16 :goto_23

    .line 385
    :cond_294
    const-string/jumbo v0, "stdofeotd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a9

    .line 386
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->quality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/EOTDQuality;->ucStdOfEOTD:S

    goto/16 :goto_23

    .line 387
    :cond_2a9
    const-string/jumbo v0, "eotdquality"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ca

    .line 389
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isOTDMeas:Z

    if-eqz v0, :cond_2c2

    .line 390
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->quality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    goto/16 :goto_23

    .line 392
    :cond_2c2
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->quality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    goto/16 :goto_23

    .line 394
    :cond_2ca
    const-string/jumbo v0, "otdvalue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f3

    .line 395
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isOTDMeas:Z

    if-eqz v0, :cond_2e7

    .line 396
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

    .line 397
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 396
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->usOTDValue:I

    goto/16 :goto_23

    .line 399
    :cond_2e7
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->usOTDValue:I

    goto/16 :goto_23

    .line 401
    :cond_2f3
    const-string/jumbo v0, "msrelefirst"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_307

    .line 402
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    iget v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->iSetCount:I

    int-to-short v1, v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;->ucSetCount:S

    goto/16 :goto_23

    .line 404
    :cond_307
    const-string/jumbo v0, "noofvalidsets"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32f

    .line 405
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->nNoOfValidSets:I

    .line 406
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->nNoOfValidSets:I

    if-lez v0, :cond_23

    .line 407
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    new-instance v1, Ljava/util/ArrayList;

    .line 408
    iget-object v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget v2, v2, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->nNoOfValidSets:I

    .line 407
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrRestSets:Ljava/util/ArrayList;

    goto/16 :goto_23

    .line 410
    :cond_32f
    const-string/jumbo v0, "msrelerest"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35d

    .line 411
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesarel5:Z

    if-nez v0, :cond_34d

    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isEleRest:Z

    if-eqz v0, :cond_34d

    .line 412
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrRestSets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_349
    :goto_349
    iput-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    goto/16 :goto_23

    .line 414
    :cond_34d
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesarel5:Z

    if-eqz v0, :cond_349

    .line 415
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_Rel_5_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->otdMsrRestSets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_349

    .line 420
    :cond_35d
    const-string/jumbo v0, "msrofothersets"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ad

    .line 421
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isEleRest:Z

    if-eqz v0, :cond_38a

    .line 422
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrsOfOtherSets:Ljava/util/ArrayList;

    if-nez v0, :cond_37d

    .line 423
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    new-instance v1, Ljava/util/ArrayList;

    .line 424
    iget-object v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-short v2, v2, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->ucSetCount:S

    .line 423
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrsOfOtherSets:Ljava/util/ArrayList;

    .line 426
    :cond_37d
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrsOfOtherSets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_386
    :goto_386
    iput-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    goto/16 :goto_23

    .line 427
    :cond_38a
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel5Present:Z

    if-eqz v0, :cond_386

    .line 428
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrsOfOtherSets:Ljava/util/ArrayList;

    if-nez v0, :cond_3a3

    .line 429
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    new-instance v1, Ljava/util/ArrayList;

    .line 430
    iget-object v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-short v2, v2, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->ucSetCount:S

    .line 429
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrsOfOtherSets:Ljava/util/ArrayList;

    .line 431
    :cond_3a3
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;->otd_MsrsOfOtherSets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_386

    .line 434
    :cond_3ad
    const-string/jumbo v0, "isidentitypresent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c6

    .line 435
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_3c4

    :goto_3c0
    iput-boolean v2, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->bIsIdentityPresent:Z

    goto/16 :goto_23

    :cond_3c4
    move v2, v1

    goto :goto_3c0

    .line 436
    :cond_3c6
    const-string/jumbo v0, "nbortimeslot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3df

    .line 437
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

    .line 438
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 437
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->ucNborTimeSlot:S

    goto/16 :goto_23

    .line 439
    :cond_3df
    const-string/jumbo v0, "otdvalue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f8

    .line 440
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

    .line 441
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 440
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->usOTDValue:I

    goto/16 :goto_23

    .line 442
    :cond_3f8
    const-string/jumbo v0, "otdmeas"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40f

    .line 443
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

    iget-object v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->quality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    iput-object v2, v0, Lcom/android/supl/loc/measure/eotd/OTDMeas;->eotdQuality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    .line 444
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isOTDMeas:Z

    goto/16 :goto_23

    .line 446
    :cond_40f
    const-string/jumbo v0, "otdrel98present"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43d

    .line 447
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_43b

    :goto_422
    iput-boolean v2, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel98Present:Z

    .line 448
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel98Present:Z

    iput-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesare98:Z

    .line 449
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel98Present:Z

    if-eqz v0, :cond_23

    .line 450
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    new-instance v1, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    goto/16 :goto_23

    :cond_43b
    move v2, v1

    .line 447
    goto :goto_422

    .line 452
    :cond_43d
    const-string/jumbo v0, "measr98ext"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44a

    .line 453
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesare98:Z

    goto/16 :goto_23

    .line 454
    :cond_44a
    const-string/jumbo v0, "count"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_499

    .line 455
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesare98:Z

    if-eqz v0, :cond_476

    .line 456
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    .line 457
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 456
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->ucCount:S

    .line 458
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    new-instance v1, Ljava/util/ArrayList;

    .line 459
    iget-object v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v2, v2, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_R98_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;

    iget-short v2, v2, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->ucCount:S

    .line 458
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MeasR98Ext;->otd_FirstSetMsrs:Ljava/util/ArrayList;

    goto/16 :goto_23

    .line 460
    :cond_476
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesarel5:Z

    if-eqz v0, :cond_23

    .line 462
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_Rel_5_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;

    .line 463
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 462
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->ucCount:S

    .line 464
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_Rel_5_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;

    new-instance v1, Ljava/util/ArrayList;

    .line 465
    iget-object v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v2, v2, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_Rel_5_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;

    iget-short v2, v2, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->ucCount:S

    .line 464
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;->otdMsrRestSets:Ljava/util/ArrayList;

    goto/16 :goto_23

    .line 467
    :cond_499
    const-string/jumbo v0, "otdrel5present"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4ce

    .line 468
    iget-object v3, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_4ca

    move v0, v2

    :goto_4ad
    iput-boolean v0, v3, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel5Present:Z

    .line 469
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->bOTDRel5Present:Z

    if-eqz v0, :cond_4be

    .line 470
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    new-instance v3, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;

    invoke-direct {v3}, Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;-><init>()V

    iput-object v3, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otd_MeasureInfo_Rel_5_Ext:Lcom/android/supl/loc/measure/eotd/OTD_MeasREL5Ext;

    .line 472
    :cond_4be
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_4cc

    :goto_4c6
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesarel5:Z

    goto/16 :goto_23

    :cond_4ca
    move v0, v1

    .line 468
    goto :goto_4ad

    :cond_4cc
    move v2, v1

    .line 472
    goto :goto_4c6

    .line 473
    :cond_4ce
    const-string/jumbo v0, "measrel5ext"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4db

    .line 474
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMesarel5:Z

    goto/16 :goto_23

    .line 475
    :cond_4db
    const-string/jumbo v0, "requestindex"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f4

    .line 476
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    .line 477
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 476
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->ucRequestIndex:S

    goto/16 :goto_23

    .line 478
    :cond_4f4
    const-string/jumbo v0, "systeminfoindex"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 479
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    .line 480
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->stData:Ljava/lang/String;

    .line 479
    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->ucSystemInfoIndex:S

    goto/16 :goto_23
.end method

.method public getEotdMeasInfo()Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    return-object v0
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
    const/4 v2, 0x1

    .line 195
    const-string/jumbo v0, "valideotdmeasurement"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 196
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    .line 193
    :cond_c
    :goto_c
    return-void

    .line 197
    :cond_d
    const-string/jumbo v0, "eotdmeas"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 198
    new-instance v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    goto :goto_c

    .line 199
    :cond_1e
    iget-boolean v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isNotValideotdMeasurement:Z

    if-eqz v0, :cond_23

    .line 200
    return-void

    .line 201
    :cond_23
    const-string/jumbo v0, "msrelefirst"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 202
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eotdMeasInfo:Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;

    new-instance v1, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/SUPL_EOTDMeasInfo;->otdMsrFirstSet:Lcom/android/supl/loc/measure/eotd/OTD_MsrEleFirst;

    .line 203
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isMsrelefirst:Z

    goto :goto_c

    .line 204
    :cond_38
    const-string/jumbo v0, "msrelecommon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 205
    new-instance v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleCommon:Lcom/android/supl/loc/measure/eotd/OTD_MSREleCommon;

    goto :goto_c

    .line 206
    :cond_49
    const-string/jumbo v0, "refframenumber"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 207
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto :goto_c

    .line 208
    :cond_55
    const-string/jumbo v0, "referencetimeslot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 209
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto :goto_c

    .line 210
    :cond_61
    const-string/jumbo v0, "refquality"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 211
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto :goto_c

    .line 212
    :cond_6d
    const-string/jumbo v0, "numofmeasurements"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 213
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto :goto_c

    .line 214
    :cond_79
    const-string/jumbo v0, "stdresolution"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 215
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto :goto_c

    .line 216
    :cond_85
    const-string/jumbo v0, "tacorrection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 217
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 218
    :cond_92
    const-string/jumbo v0, "setcount"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 219
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 220
    :cond_9f
    const-string/jumbo v0, "measwithid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 221
    new-instance v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    goto/16 :goto_c

    .line 222
    :cond_b1
    const-string/jumbo v0, "neighboridentity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 223
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    new-instance v1, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    goto/16 :goto_c

    .line 224
    :cond_c5
    const-string/jumbo v0, "neighboridtype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 225
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 226
    :cond_d2
    const-string/jumbo v0, "neighboridunion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 227
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    new-instance v1, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    goto/16 :goto_c

    .line 228
    :cond_e8
    const-string/jumbo v0, "bsicandcarrier"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 229
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    new-instance v1, Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->bsicAndCarrier:Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;

    goto/16 :goto_c

    .line 230
    :cond_100
    const-string/jumbo v0, "cellidandlac"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 231
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    new-instance v1, Lcom/android/supl/loc/measure/eotd/CellID_LAC;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/eotd/CellID_LAC;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->ciandlac:Lcom/android/supl/loc/measure/eotd/CellID_LAC;

    goto/16 :goto_c

    .line 232
    :cond_118
    const-string/jumbo v0, "multiframecarrier"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 233
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->means_WithID:Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTDMeans_WithID;->neighborIdentity:Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_Identity;->stNeigh:Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;

    new-instance v1, Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->multiFrameCarrier:Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;

    goto/16 :goto_c

    .line 234
    :cond_130
    const-string/jumbo v0, "requestindex"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 235
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 236
    :cond_13d
    const-string/jumbo v0, "referencelac"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 237
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 238
    :cond_14a
    const-string/jumbo v0, "referenceci"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 239
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 240
    :cond_157
    const-string/jumbo v0, "bcchcarrier"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 241
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 242
    :cond_164
    const-string/jumbo v0, "multiframeoffset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 243
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 244
    :cond_171
    const-string/jumbo v0, "carrier"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 245
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 246
    :cond_17e
    const-string/jumbo v0, "bsic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 247
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 248
    :cond_18b
    const-string/jumbo v0, "nbortimeslot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_198

    .line 249
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 250
    :cond_198
    const-string/jumbo v0, "eotdquality"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 251
    new-instance v0, Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/eotd/EOTDQuality;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->quality:Lcom/android/supl/loc/measure/eotd/EOTDQuality;

    goto/16 :goto_c

    .line 252
    :cond_1aa
    const-string/jumbo v0, "nbrofmeasurements"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 253
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 254
    :cond_1b7
    const-string/jumbo v0, "stdofeotd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c4

    .line 255
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 256
    :cond_1c4
    const-string/jumbo v0, "otdvalue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d1

    .line 257
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 258
    :cond_1d1
    const-string/jumbo v0, "noofvalidsets"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 259
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 260
    :cond_1de
    const-string/jumbo v0, "msrelerest"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f2

    .line 261
    new-instance v0, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->eleRest:Lcom/android/supl/loc/measure/eotd/OTD_MSREleRest;

    .line 262
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isEleRest:Z

    goto/16 :goto_c

    .line 263
    :cond_1f2
    const-string/jumbo v0, "msrofothersets"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_204

    .line 264
    new-instance v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    invoke-direct {v0}, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;-><init>()V

    iput-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    goto/16 :goto_c

    .line 265
    :cond_204
    const-string/jumbo v0, "isidentitypresent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_211

    .line 266
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 267
    :cond_211
    const-string/jumbo v0, "msrothersetsunion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_225

    .line 268
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    new-instance v1, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    goto/16 :goto_c

    .line 269
    :cond_225
    const-string/jumbo v0, "otdmeas"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_249

    .line 270
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->bIsIdentityPresent:Z

    if-nez v0, :cond_c

    .line 271
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-object v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->stOTDMsr:Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;

    new-instance v1, Lcom/android/supl/loc/measure/eotd/OTDMeas;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/eotd/OTDMeas;-><init>()V

    iput-object v1, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSR_OtherSets_Union;->identityNotPresent:Lcom/android/supl/loc/measure/eotd/OTDMeas;

    .line 272
    iget-object v0, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->otd_MSRofOtherSets:Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;

    iget-boolean v0, v0, Lcom/android/supl/loc/measure/eotd/OTD_MSRofOtherSets;->bIsIdentityPresent:Z

    if-nez v0, :cond_c

    .line 273
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isOTDMeas:Z

    goto/16 :goto_c

    .line 276
    :cond_249
    const-string/jumbo v0, "nbortimeslot"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_256

    .line 277
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 278
    :cond_256
    const-string/jumbo v0, "otdvalue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_263

    .line 279
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 280
    :cond_263
    const-string/jumbo v0, "otdrel98present"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_270

    .line 281
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 282
    :cond_270
    const-string/jumbo v0, "count"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27d

    .line 283
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 284
    :cond_27d
    const-string/jumbo v0, "otdrel5present"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28a

    .line 285
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c

    .line 286
    :cond_28a
    const-string/jumbo v0, "systeminfoindex"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 287
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/eotd/EOTDParser;->isRequiredTag:Z

    goto/16 :goto_c
.end method
