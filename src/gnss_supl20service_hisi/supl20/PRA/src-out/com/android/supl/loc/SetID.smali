.class public Lcom/android/supl/loc/SetID;
.super Ljava/lang/Object;
.source "SetID.java"


# static fields
.field private static final SET_ID_DATA_LEN:I = 0xe

.field private static final SET_ID_NODATA_LEN:I = 0xa

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


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "iSetIDType"    # I

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    .line 82
    packed-switch p1, :pswitch_data_38

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid SETTYPE "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :pswitch_12
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    .line 111
    :goto_16
    iput p1, p0, Lcom/android/supl/loc/SetID;->m_iSetIDType:I

    .line 113
    return-void

    .line 87
    :pswitch_19
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    goto :goto_16

    .line 90
    :pswitch_1e
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    goto :goto_16

    .line 93
    :pswitch_22
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    goto :goto_16

    .line 96
    :pswitch_27
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    goto :goto_16

    .line 99
    :pswitch_2c
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    goto :goto_16

    .line 102
    :pswitch_30
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    goto :goto_16

    .line 105
    :pswitch_35
    iput v0, p0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    goto :goto_16

    .line 82
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_12
        :pswitch_19
        :pswitch_1e
        :pswitch_22
        :pswitch_27
        :pswitch_2c
        :pswitch_30
        :pswitch_35
    .end packed-switch
.end method

.method private addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "storiginal"    # Ljava/lang/String;
    .param p2, "stPadd"    # Ljava/lang/String;
    .param p3, "padd"    # I

    .prologue
    const/4 v3, 0x0

    .line 226
    if-nez p1, :cond_4

    .line 227
    return-object v3

    .line 229
    :cond_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v2, "stReturn":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 231
    .local v1, "iLength":I
    if-lt v1, p3, :cond_10

    .line 232
    return-object p1

    .line 235
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    sub-int v3, p3, v1

    if-ge v0, v3, :cond_1b

    .line 236
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 238
    :cond_1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static isValidSetIDRequest(I)Z
    .registers 2
    .param p0, "iSetIDType"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "isValid":Z
    packed-switch p0, :pswitch_data_a

    .line 130
    const/4 v0, 0x0

    .line 134
    :goto_5
    return v0

    .line 124
    :pswitch_6
    const/4 v0, 0x1

    .line 125
    goto :goto_5

    .line 127
    :pswitch_8
    const/4 v0, 0x0

    .line 128
    goto :goto_5

    .line 116
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public getSetIDBuff(ILjava/lang/String;)[B
    .registers 26
    .param p1, "sSessionId"    # I
    .param p2, "stData"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v4, 0x0

    .line 139
    .local v4, "bData":[B
    const/4 v14, 0x0

    .line 141
    .local v14, "offset":I
    if-eqz p2, :cond_e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_1e

    .line 142
    :cond_e
    const/16 v19, 0x8

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/loc/SetID;->m_iSetIDType:I

    .line 143
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/supl/loc/SetID;->iNumBytes:I

    .line 145
    :cond_1e
    const/4 v8, 0x0

    .line 147
    .local v8, "iPacketSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SetID;->m_iSetIDType:I

    move/from16 v19, v0

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e0

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x12

    move/from16 v0, v19

    new-array v4, v0, [B

    .line 150
    .local v4, "bData":[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    move/from16 v19, v0

    add-int/lit8 v8, v19, 0xe

    .line 155
    :goto_41
    invoke-static {v4, v14, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v14

    .line 156
    const/16 v19, 0x10a

    move/from16 v0, v19

    invoke-static {v4, v14, v0}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v14

    .line 157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SetID;->m_iSetIDType:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v4, v14, v0}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v14

    .line 158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SetID;->m_iSetIDType:I

    move/from16 v19, v0

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7c

    .line 159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v4, v14, v0}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v14

    .line 160
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SetID;->m_iSetIDType:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_220

    .line 216
    :cond_7c
    :goto_7c
    move/from16 v0, p1

    invoke-static {v4, v14, v0}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v14

    .line 217
    add-int/lit8 v19, v14, -0x4

    move/from16 v0, v19

    if-eq v8, v0, :cond_b0

    .line 218
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

    .line 220
    :cond_b0
    const-string/jumbo v19, "SUPL20_SETID"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " set id "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SetID;->m_iSetIDType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " send for id:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-object v4

    .line 152
    .local v4, "bData":[B
    :cond_e0
    const/16 v19, 0xe

    move/from16 v0, v19

    new-array v4, v0, [B

    .line 153
    .local v4, "bData":[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    move/from16 v19, v0

    add-int/lit8 v8, v19, 0xa

    goto/16 :goto_41

    .line 163
    :pswitch_f0
    const-string/jumbo v19, "0"

    const/16 v20, 0xf

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/supl/loc/SetID;->addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 164
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 166
    .local v9, "imsi":[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v9, v0, v4, v14, v1}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    move/from16 v19, v0

    add-int v14, v14, v19

    .line 168
    goto/16 :goto_7c

    .line 171
    .end local v9    # "imsi":[B
    :pswitch_11e
    const-string/jumbo v19, "\\."

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 172
    .local v16, "stIPAddrss":[Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    :goto_130
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7c

    aget-object v17, v16, v19

    .line 173
    .local v17, "stIp":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 174
    .local v5, "iIp":I
    invoke-static {v4, v14, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v14

    .line 172
    add-int/lit8 v19, v19, 0x1

    goto :goto_130

    .line 179
    .end local v5    # "iIp":I
    .end local v16    # "stIPAddrss":[Ljava/lang/String;
    .end local v17    # "stIp":Ljava/lang/String;
    :pswitch_143
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 180
    .local v10, "lData":J
    invoke-static {v4, v14, v10, v11}, Lcom/android/bytewriter/IO;->put5([BIJ)I

    move-result v14

    goto/16 :goto_7c

    .line 184
    .end local v10    # "lData":J
    :pswitch_14d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 185
    .local v12, "msisdn":[B
    const-string/jumbo v19, "0"

    const/16 v20, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/supl/loc/SetID;->addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 187
    array-length v0, v12

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v12, v0, v4, v14, v1}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 188
    add-int/lit8 v14, v14, 0xc

    .line 189
    goto/16 :goto_7c

    .line 192
    .end local v12    # "msisdn":[B
    :pswitch_172
    const-string/jumbo v19, ":"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 193
    .local v15, "stHex":[Ljava/lang/String;
    const/16 v19, 0x0

    array-length v0, v15

    move/from16 v20, v0

    :goto_182
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7c

    aget-object v18, v15, v19

    .line 194
    .local v18, "string":Ljava/lang/String;
    const-string/jumbo v21, "0"

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/supl/loc/SetID;->addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 195
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

    .line 196
    .local v7, "iMsb":I
    const/16 v21, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x10

    invoke-static/range {v21 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 197
    .local v6, "iLsb":I
    invoke-static {v4, v14, v7}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v14

    .line 198
    invoke-static {v4, v14, v6}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v14

    .line 193
    add-int/lit8 v19, v19, 0x1

    goto :goto_182

    .line 202
    .end local v6    # "iLsb":I
    .end local v7    # "iMsb":I
    .end local v15    # "stHex":[Ljava/lang/String;
    .end local v17    # "stIp":Ljava/lang/String;
    .end local v18    # "string":Ljava/lang/String;
    :pswitch_1ca
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 203
    .restart local v10    # "lData":J
    invoke-static {v4, v14, v10, v11}, Lcom/android/bytewriter/IO;->put8([BIJ)I

    move-result v14

    goto/16 :goto_7c

    .line 206
    .end local v10    # "lData":J
    :pswitch_1d4
    const-string/jumbo v19, "0"

    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/supl/loc/SetID;->addLeadingData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 207
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 208
    .local v13, "nai":[B
    const-string/jumbo v19, "SUPL20_SETID"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "NAI "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v13, v0, v4, v14, v1}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 210
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/supl/loc/SetID;->iNumBytes:I

    move/from16 v19, v0

    add-int v14, v14, v19

    .line 211
    goto/16 :goto_7c

    .line 160
    :pswitch_data_220
    .packed-switch 0x1
        :pswitch_14d
        :pswitch_1ca
        :pswitch_143
        :pswitch_f0
        :pswitch_1d4
        :pswitch_11e
        :pswitch_172
    .end packed-switch
.end method
