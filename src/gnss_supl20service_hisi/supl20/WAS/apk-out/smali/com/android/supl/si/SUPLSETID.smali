.class public Lcom/android/supl/si/SUPLSETID;
.super Ljava/lang/Object;
.source "SUPLSETID.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/si/SUPLSETID$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/supl/si/SUPLSETID;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPL_SETID_TYPE_IMSI:I = 0x4

.field public static final SUPL_SETID_TYPE_IPADDRESSV4:I = 0x6

.field public static final SUPL_SETID_TYPE_IPADDRESSV6:I = 0x7

.field public static final SUPL_SETID_TYPE_MDN:I = 0x2

.field public static final SUPL_SETID_TYPE_MIN:I = 0x3

.field public static final SUPL_SETID_TYPE_MSISDN:I = 0x1

.field public static final SUPL_SETID_TYPE_NAI:I = 0x5

.field public static final SUPL_SETID_TYPE_NONE:I = 0x8


# instance fields
.field private iNumBytes:I

.field private m_iSetIDType:I

.field private stData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lcom/android/supl/si/SUPLSETID$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLSETID$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLSETID;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2
    .param p1, "iSetIDType"    # I
    .param p2, "stData"    # Ljava/lang/String;
    .param p3, "iNumBytes"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    packed-switch p1, :pswitch_data_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid SETTYPE "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :pswitch_0
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    .line 131
    :goto_0
    iput p1, p0, Lcom/android/supl/si/SUPLSETID;->m_iSetIDType:I

    .line 132
    iput-object p2, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    .line 100
    return-void

    .line 106
    :pswitch_1
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    goto :goto_0

    .line 109
    :pswitch_2
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    goto :goto_0

    .line 112
    :pswitch_3
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    goto :goto_0

    .line 115
    :pswitch_4
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    goto :goto_0

    .line 118
    :pswitch_5
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    goto :goto_0

    .line 121
    :pswitch_6
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    goto :goto_0

    .line 125
    :pswitch_7
    iput p3, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLSETID;->readFromParcel(Landroid/os/Parcel;)V

    .line 244
    return-void
.end method

.method private addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "storiginal"    # Ljava/lang/String;
    .param p2, "stPadd"    # Ljava/lang/String;
    .param p3, "padd"    # I

    .prologue
    const/4 v3, 0x0

    .line 212
    if-nez p1, :cond_0

    .line 213
    return-object v3

    .line 215
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 216
    .local v1, "iLength":I
    if-lt v1, p3, :cond_1

    .line 217
    return-object p1

    .line 219
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 221
    .local v2, "stReturn":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sub-int v3, p3, v1

    if-ge v0, v3, :cond_2

    .line 222
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public getSETID()[B
    .locals 23

    .prologue
    .line 141
    const/4 v4, 0x0

    .line 142
    .local v4, "bData":[B
    const/4 v14, 0x0

    .line 145
    .local v14, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    move/from16 v19, v0

    add-int/lit8 v8, v19, 0x8

    .line 146
    .local v8, "iPacketSize":I
    new-array v4, v8, [B

    .line 147
    .local v4, "bData":[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/si/SUPLSETID;->m_iSetIDType:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v4, v14, v0}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v14

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v4, v14, v0}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v14

    .line 151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/si/SUPLSETID;->m_iSetIDType:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 203
    :cond_0
    :goto_0
    if-eq v8, v14, :cond_1

    .line 204
    sget-object v19, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "invalid setid packet size "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v14, -0x4

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    :cond_1
    return-object v4

    .line 153
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "0"

    const/16 v21, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/supl/si/SUPLSETID;->addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 156
    .local v9, "imsi":[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v9, v0, v4, v14, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    move/from16 v19, v0

    add-int v14, v14, v19

    .line 158
    goto :goto_0

    .line 160
    .end local v9    # "imsi":[B
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "\\."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 161
    .local v16, "stIPAddrss":[Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v17, v16, v19

    .line 162
    .local v17, "stIp":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 163
    .local v5, "iIp":I
    invoke-static {v4, v14, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v14

    .line 161
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 167
    .end local v5    # "iIp":I
    .end local v16    # "stIPAddrss":[Ljava/lang/String;
    .end local v17    # "stIp":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 168
    .local v10, "lData":J
    invoke-static {v4, v14, v10, v11}, Lcom/android/bytewriter/IO;->put5([BIJ)I

    move-result v14

    goto/16 :goto_0

    .line 171
    .end local v10    # "lData":J
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 172
    .local v12, "msisdn":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "0"

    const/16 v21, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/supl/si/SUPLSETID;->addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    .line 173
    const-string/jumbo v19, "SUPL20_SETID"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "MSISDN "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    array-length v0, v12

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v12, v0, v4, v14, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 175
    add-int/lit8 v14, v14, 0xc

    .line 176
    goto/16 :goto_0

    .line 178
    .end local v12    # "msisdn":[B
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 179
    .local v15, "stHex":[Ljava/lang/String;
    const/16 v19, 0x0

    array-length v0, v15

    move/from16 v20, v0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v18, v15, v19

    .line 180
    .local v18, "string":Ljava/lang/String;
    const-string/jumbo v21, "0"

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/supl/si/SUPLSETID;->addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 181
    .restart local v17    # "stIp":Ljava/lang/String;
    const/16 v21, 0x0

    const/16 v22, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x10

    invoke-static/range {v21 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 182
    .local v7, "iMsb":I
    const/16 v21, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x10

    invoke-static/range {v21 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 183
    .local v6, "iLsb":I
    invoke-static {v4, v14, v7}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v14

    .line 184
    invoke-static {v4, v14, v6}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v14

    .line 179
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 188
    .end local v6    # "iLsb":I
    .end local v7    # "iMsb":I
    .end local v15    # "stHex":[Ljava/lang/String;
    .end local v17    # "stIp":Ljava/lang/String;
    .end local v18    # "string":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 189
    .restart local v10    # "lData":J
    invoke-static {v4, v14, v10, v11}, Lcom/android/bytewriter/IO;->put8([BIJ)I

    move-result v14

    goto/16 :goto_0

    .line 192
    .end local v10    # "lData":J
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "0"

    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/supl/si/SUPLSETID;->addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 194
    .local v13, "nai":[B
    const-string/jumbo v19, "SUPL20_SETID"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "NAI "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v13, v0, v4, v14, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    move/from16 v19, v0

    add-int v14, v14, v19

    .line 197
    goto/16 :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->m_iSetIDType:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",SID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/si/SUPLSETID;->m_iSetIDType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 275
    iget v0, p0, Lcom/android/supl/si/SUPLSETID;->m_iSetIDType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget v0, p0, Lcom/android/supl/si/SUPLSETID;->iNumBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-object v0, p0, Lcom/android/supl/si/SUPLSETID;->stData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    return-void
.end method
