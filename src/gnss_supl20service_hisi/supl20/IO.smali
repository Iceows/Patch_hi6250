.class public Lcom/android/bytewriter/IO;
.super Ljava/lang/Object;
.source "IO.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SUPL20_IO"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CopyArray([BI[BII)V
    .locals 3
    .param p0, "byArrayIn"    # [B
    .param p1, "nStartIn"    # I
    .param p2, "byArrayOut"    # [B
    .param p3, "nStartOut"    # I
    .param p4, "len"    # I

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Iceows hijack CopyArray len : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUPL20_IO"

    invoke-static {v1, v0}, Lcom/android/supl/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 17
    add-int v1, v0, p3

    add-int v2, v0, p1

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static get1([BI)I
    .locals 5
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "n2":I
    const/4 v1, 0x0

    .line 26
    .local v1, "n3":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 28
    aget-byte v2, p0, p1

    move v3, v2

    .line 29
    .local v2, "n5":I
    .local v3, "n4":I
    if-gez v3, :cond_0

    .line 30
    add-int/lit16 v2, v3, 0x100

    .line 32
    :cond_0
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v2

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    nop

    .end local v2    # "n5":I
    .end local v3    # "n4":I
    add-int/lit8 p1, p1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return v0
.end method

.method public static get2([BI)I
    .locals 5
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "n2":I
    const/4 v1, 0x0

    .line 42
    .local v1, "n3":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 44
    aget-byte v2, p0, p1

    move v3, v2

    .line 45
    .local v2, "n5":I
    .local v3, "n4":I
    if-gez v3, :cond_0

    .line 46
    add-int/lit16 v2, v3, 0x100

    .line 48
    :cond_0
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v2

    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    nop

    .end local v2    # "n5":I
    .end local v3    # "n4":I
    add-int/lit8 p1, p1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return v0
.end method

.method public static get2r([BI)I
    .locals 5
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "n2":I
    const/4 v1, 0x1

    .line 58
    .local v1, "n3":I
    :goto_0
    if-ltz v1, :cond_1

    .line 60
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    move v3, v2

    .line 61
    .local v2, "n5":I
    .local v3, "n4":I
    if-gez v3, :cond_0

    .line 62
    add-int/lit16 v2, v3, 0x100

    .line 64
    :cond_0
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v2

    .line 65
    nop

    .end local v2    # "n5":I
    .end local v3    # "n4":I
    add-int/lit8 v1, v1, -0x1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    return v0
.end method

.method public static get3([BI)I
    .locals 5
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "n2":I
    const/4 v1, 0x0

    .line 73
    .local v1, "n3":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 75
    aget-byte v2, p0, p1

    move v3, v2

    .line 76
    .local v2, "n5":I
    .local v3, "n4":I
    if-gez v3, :cond_0

    .line 77
    add-int/lit16 v2, v3, 0x100

    .line 79
    :cond_0
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v2

    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 81
    nop

    .end local v2    # "n5":I
    .end local v3    # "n4":I
    add-int/lit8 p1, p1, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    return v0
.end method

.method public static get4([BI)I
    .locals 5
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "n2":I
    const/4 v1, 0x0

    .line 89
    .local v1, "n3":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 91
    aget-byte v2, p0, p1

    move v3, v2

    .line 92
    .local v2, "n5":I
    .local v3, "n4":I
    if-gez v3, :cond_0

    .line 93
    add-int/lit16 v2, v3, 0x100

    .line 95
    :cond_0
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v2

    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 97
    nop

    .end local v2    # "n5":I
    .end local v3    # "n4":I
    add-int/lit8 p1, p1, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    return v0
.end method

.method public static get4l([BI)I
    .locals 5
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "n2":I
    const/4 v1, 0x3

    .line 105
    .local v1, "n3":I
    :goto_0
    if-ltz v1, :cond_1

    .line 107
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    move v3, v2

    .line 108
    .local v2, "n5":I
    .local v3, "n4":I
    if-gez v3, :cond_0

    .line 109
    add-int/lit16 v2, v3, 0x100

    .line 111
    :cond_0
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v2

    .line 112
    nop

    .end local v2    # "n5":I
    .end local v3    # "n4":I
    add-int/lit8 v1, v1, -0x1

    .line 113
    goto :goto_0

    .line 114
    :cond_1
    return v0
.end method

.method public static get4r([BI)I
    .locals 5
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "n2":I
    const/4 v1, 0x3

    .line 120
    .local v1, "n3":I
    :goto_0
    if-ltz v1, :cond_1

    .line 122
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    move v3, v2

    .line 123
    .local v2, "n5":I
    .local v3, "n4":I
    if-gez v3, :cond_0

    .line 124
    add-int/lit16 v2, v3, 0x100

    .line 126
    :cond_0
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v2

    .line 127
    nop

    .end local v2    # "n5":I
    .end local v3    # "n4":I
    add-int/lit8 v1, v1, -0x1

    .line 128
    goto :goto_0

    .line 129
    :cond_1
    return v0
.end method

.method public static get8([BI)J
    .locals 11
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 133
    const-wide/16 v0, 0x0

    .line 134
    .local v0, "l":J
    const/4 v2, 0x0

    .line 135
    .local v2, "n2":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 137
    aget-byte v4, p0, p1

    int-to-long v4, v4

    move-wide v6, v4

    .line 138
    .local v4, "l3":J
    .local v6, "l2":J
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gez v10, :cond_0

    .line 139
    const-wide/16 v8, 0x100

    add-long v4, v6, v8

    .line 141
    :cond_0
    shl-long v8, v0, v3

    add-long v0, v8, v4

    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 143
    nop

    .end local v4    # "l3":J
    .end local v6    # "l2":J
    add-int/lit8 p1, p1, 0x1

    .line 144
    goto :goto_0

    .line 145
    :cond_1
    return-wide v0
.end method

.method public static get8l([BI)J
    .locals 10
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 149
    const-wide/16 v0, 0x0

    .line 150
    .local v0, "l":J
    const/4 v2, 0x7

    .line 151
    .local v2, "n2":I
    :goto_0
    if-ltz v2, :cond_1

    .line 153
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    move-wide v5, v3

    .line 154
    .local v3, "l3":J
    .local v5, "l2":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    .line 155
    const-wide/16 v7, 0x100

    add-long v3, v5, v7

    .line 157
    :cond_0
    const/16 v7, 0x8

    shl-long v7, v0, v7

    add-long v0, v7, v3

    .line 158
    nop

    .end local v3    # "l3":J
    .end local v5    # "l2":J
    add-int/lit8 v2, v2, -0x1

    .line 159
    goto :goto_0

    .line 160
    :cond_1
    return-wide v0
.end method

.method public static get8r([BI)J
    .locals 10
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 164
    const-wide/16 v0, 0x0

    .line 165
    .local v0, "l":J
    const/4 v2, 0x7

    .line 166
    .local v2, "n2":I
    :goto_0
    if-ltz v2, :cond_1

    .line 168
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    move-wide v5, v3

    .line 169
    .local v3, "l3":J
    .local v5, "l2":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    .line 170
    const-wide/16 v7, 0x100

    add-long v3, v5, v7

    .line 172
    :cond_0
    const/16 v7, 0x8

    shl-long v7, v0, v7

    add-long v0, v7, v3

    .line 173
    nop

    .end local v3    # "l3":J
    .end local v5    # "l2":J
    add-int/lit8 v2, v2, -0x1

    .line 174
    goto :goto_0

    .line 175
    :cond_1
    return-wide v0
.end method

.method public static put1([BII)I
    .locals 1
    .param p0, "byArray"    # [B
    .param p1, "n"    # I
    .param p2, "n2"    # I

    .line 179
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    .line 180
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public static put2([BII)I
    .locals 2
    .param p0, "byArray"    # [B
    .param p1, "n"    # I
    .param p2, "n2"    # I

    .line 184
    add-int/lit8 v0, p1, 0x1

    .line 185
    .local v0, "n3":I
    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 186
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 187
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public static put3([BII)I
    .locals 2
    .param p0, "byArray"    # [B
    .param p1, "n"    # I
    .param p2, "n2"    # I

    .line 191
    add-int/lit8 v0, p1, 0x1

    .line 192
    .local v0, "n3":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 193
    add-int/lit8 p1, v0, 0x1

    .line 194
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 195
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 196
    add-int/lit8 v1, p1, 0x1

    return v1
.end method

.method public static put4([BII)I
    .locals 2
    .param p0, "byArray"    # [B
    .param p1, "n"    # I
    .param p2, "n2"    # I

    .line 200
    add-int/lit8 v0, p1, 0x1

    .line 201
    .local v0, "n3":I
    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 202
    add-int/lit8 p1, v0, 0x1

    .line 203
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 204
    add-int/lit8 v0, p1, 0x1

    .line 205
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 206
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 207
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public static put5([BIJ)I
    .locals 7
    .param p0, "byArray"    # [B
    .param p1, "n"    # I
    .param p2, "l"    # J

    .line 211
    add-int/lit8 v0, p1, 0x1

    .line 212
    .local v0, "n2":I
    const/16 v1, 0x20

    shr-long v1, p2, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, p1

    .line 213
    add-int/lit8 v1, v0, 0x1

    .line 214
    .local v1, "n3":I
    const/16 v2, 0x18

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 215
    add-int/lit8 p1, v1, 0x1

    .line 216
    const/16 v2, 0x10

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 217
    add-int/lit8 v1, p1, 0x1

    .line 218
    const/16 v2, 0x8

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 219
    and-long/2addr v3, p2

    long-to-int v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 220
    add-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public static put8([BIJ)I
    .locals 7
    .param p0, "byArray"    # [B
    .param p1, "n"    # I
    .param p2, "l"    # J

    .line 224
    add-int/lit8 v0, p1, 0x1

    .line 225
    .local v0, "n2":I
    const/16 v1, 0x38

    shr-long v1, p2, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p0, p1

    .line 226
    add-int/lit8 v1, v0, 0x1

    .line 227
    .local v1, "n3":I
    const/16 v2, 0x30

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 228
    add-int/lit8 p1, v1, 0x1

    .line 229
    const/16 v2, 0x28

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 230
    add-int/lit8 v1, p1, 0x1

    .line 231
    const/16 v2, 0x20

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 232
    add-int/lit8 p1, v1, 0x1

    .line 233
    const/16 v2, 0x18

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 234
    add-int/lit8 v1, p1, 0x1

    .line 235
    const/16 v2, 0x10

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 236
    add-int/lit8 p1, v1, 0x1

    .line 237
    const/16 v2, 0x8

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 238
    and-long/2addr v3, p2

    long-to-int v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 239
    add-int/lit8 v2, p1, 0x1

    return v2
.end method
