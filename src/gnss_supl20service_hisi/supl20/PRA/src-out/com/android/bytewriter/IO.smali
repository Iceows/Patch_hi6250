.class public Lcom/android/bytewriter/IO;
.super Ljava/lang/Object;
.source "IO.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get1([BI)I
    .registers 7
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .prologue
    .line 206
    const/4 v3, 0x0

    .line 209
    .local v3, "r":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, p1

    .end local p1    # "index":I
    .local v1, "index":I
    :goto_3
    const/4 v4, 0x1

    if-ge v0, v4, :cond_16

    .line 211
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    aget-byte v2, p0, v1

    .line 212
    .local v2, "n":I
    if-gez v2, :cond_e

    .line 213
    add-int/lit16 v2, v2, 0x100

    .line 214
    :cond_e
    shl-int/lit8 v4, v3, 0x8

    add-int v3, v4, v2

    .line 209
    add-int/lit8 v0, v0, 0x1

    move v1, p1

    .end local p1    # "index":I
    .restart local v1    # "index":I
    goto :goto_3

    .line 217
    .end local v2    # "n":I
    :cond_16
    return v3
.end method

.method public static get2([BI)I
    .registers 7
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .prologue
    .line 172
    const/4 v3, 0x0

    .line 175
    .local v3, "r":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, p1

    .end local p1    # "index":I
    .local v1, "index":I
    :goto_3
    const/4 v4, 0x2

    if-ge v0, v4, :cond_16

    .line 177
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    aget-byte v2, p0, v1

    .line 178
    .local v2, "n":I
    if-gez v2, :cond_e

    .line 179
    add-int/lit16 v2, v2, 0x100

    .line 180
    :cond_e
    shl-int/lit8 v4, v3, 0x8

    add-int v3, v4, v2

    .line 175
    add-int/lit8 v0, v0, 0x1

    move v1, p1

    .end local p1    # "index":I
    .restart local v1    # "index":I
    goto :goto_3

    .line 183
    .end local v2    # "n":I
    :cond_16
    return v3
.end method

.method public static get2r([BI)I
    .registers 6
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .prologue
    .line 190
    const/4 v2, 0x0

    .line 193
    .local v2, "r":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_13

    .line 195
    add-int v3, p1, v0

    aget-byte v1, p0, v3

    .line 196
    .local v1, "n":I
    if-gez v1, :cond_c

    .line 197
    add-int/lit16 v1, v1, 0x100

    .line 198
    :cond_c
    shl-int/lit8 v3, v2, 0x8

    add-int v2, v3, v1

    .line 193
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 201
    .end local v1    # "n":I
    :cond_13
    return v2
.end method

.method public static get3([BI)I
    .registers 7
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .prologue
    .line 157
    const/4 v3, 0x0

    .line 160
    .local v3, "r":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, p1

    .end local p1    # "index":I
    .local v1, "index":I
    :goto_3
    const/4 v4, 0x3

    if-ge v0, v4, :cond_16

    .line 161
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    aget-byte v2, p0, v1

    .line 162
    .local v2, "n":I
    if-gez v2, :cond_e

    add-int/lit16 v2, v2, 0x100

    .line 163
    :cond_e
    shl-int/lit8 v4, v3, 0x8

    add-int v3, v4, v2

    .line 160
    add-int/lit8 v0, v0, 0x1

    move v1, p1

    .end local p1    # "index":I
    .restart local v1    # "index":I
    goto :goto_3

    .line 166
    .end local v2    # "n":I
    :cond_16
    return v3
.end method

.method public static get4([BI)I
    .registers 7
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .prologue
    .line 122
    const/4 v3, 0x0

    .line 125
    .local v3, "r":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, p1

    .end local p1    # "index":I
    .local v1, "index":I
    :goto_3
    const/4 v4, 0x4

    if-ge v0, v4, :cond_16

    .line 127
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    aget-byte v2, p0, v1

    .line 128
    .local v2, "n":I
    if-gez v2, :cond_e

    .line 129
    add-int/lit16 v2, v2, 0x100

    .line 130
    :cond_e
    shl-int/lit8 v4, v3, 0x8

    add-int v3, v4, v2

    .line 125
    add-int/lit8 v0, v0, 0x1

    move v1, p1

    .end local p1    # "index":I
    .restart local v1    # "index":I
    goto :goto_3

    .line 133
    .end local v2    # "n":I
    :cond_16
    return v3
.end method

.method public static get4l([BI)I
    .registers 6
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .prologue
    .line 50
    const/4 v2, 0x0

    .line 53
    .local v2, "r":I
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_13

    .line 54
    add-int v3, p1, v0

    aget-byte v1, p0, v3

    .line 55
    .local v1, "n":I
    if-gez v1, :cond_c

    .line 56
    add-int/lit16 v1, v1, 0x100

    .line 58
    :cond_c
    shl-int/lit8 v3, v2, 0x8

    add-int v2, v3, v1

    .line 53
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 61
    .end local v1    # "n":I
    :cond_13
    return v2
.end method

.method public static get4r([BI)I
    .registers 6
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .prologue
    .line 140
    const/4 v2, 0x0

    .line 143
    .local v2, "r":I
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_13

    .line 145
    add-int v3, p1, v0

    aget-byte v1, p0, v3

    .line 146
    .local v1, "n":I
    if-gez v1, :cond_c

    .line 147
    add-int/lit16 v1, v1, 0x100

    .line 148
    :cond_c
    shl-int/lit8 v3, v2, 0x8

    add-int v2, v3, v1

    .line 143
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 151
    .end local v1    # "n":I
    :cond_13
    return v2
.end method

.method public static get8([BI)J
    .registers 11
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .prologue
    const/16 v8, 0x8

    .line 86
    const-wide/16 v4, 0x0

    .line 89
    .local v4, "r":J
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, p1

    .end local p1    # "index":I
    .local v1, "index":I
    :goto_6
    if-ge v0, v8, :cond_1e

    .line 91
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "index":I
    .restart local p1    # "index":I
    aget-byte v6, p0, v1

    int-to-long v2, v6

    .line 92
    .local v2, "n":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_16

    .line 93
    const-wide/16 v6, 0x100

    add-long/2addr v2, v6

    .line 94
    :cond_16
    shl-long v6, v4, v8

    add-long v4, v6, v2

    .line 89
    add-int/lit8 v0, v0, 0x1

    move v1, p1

    .end local p1    # "index":I
    .restart local v1    # "index":I
    goto :goto_6

    .line 97
    .end local v2    # "n":J
    :cond_1e
    return-wide v4
.end method

.method public static get8l([BI)J
    .registers 10
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .prologue
    .line 65
    const-wide/16 v4, 0x0

    .line 68
    .local v4, "r":J
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_3
    if-ltz v0, :cond_1c

    .line 69
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    int-to-long v2, v1

    .line 73
    .local v2, "n":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_13

    .line 74
    const-wide/16 v6, 0x100

    add-long/2addr v2, v6

    .line 76
    :cond_13
    const/16 v1, 0x8

    shl-long v6, v4, v1

    add-long v4, v6, v2

    .line 68
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 81
    .end local v2    # "n":J
    :cond_1c
    return-wide v4
.end method

.method public static get8r([BI)J
    .registers 10
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .prologue
    .line 104
    const-wide/16 v4, 0x0

    .line 107
    .local v4, "r":J
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_3
    if-ltz v0, :cond_1c

    .line 109
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    int-to-long v2, v1

    .line 110
    .local v2, "n":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_13

    .line 111
    const-wide/16 v6, 0x100

    add-long/2addr v2, v6

    .line 112
    :cond_13
    const/16 v1, 0x8

    shl-long v6, v4, v1

    add-long v4, v6, v2

    .line 107
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 115
    .end local v2    # "n":J
    :cond_1c
    return-wide v4
.end method

.method public static put1([BII)I
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "data"    # I

    .prologue
    .line 223
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    int-to-byte v1, p2

    aput-byte v1, p0, p1

    .line 224
    return v0
.end method

.method public static put2([BII)I
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "data"    # I

    .prologue
    .line 231
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 232
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 233
    return p1
.end method

.method public static put3([BII)I
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "data"    # I

    .prologue
    .line 239
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 240
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 241
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 242
    return v0
.end method

.method public static put4([BII)I
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "data"    # I

    .prologue
    .line 248
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 249
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 250
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 251
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 252
    return p1
.end method

.method public static put5([BIJ)I
    .registers 10
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "data"    # J

    .prologue
    const-wide/16 v4, 0xff

    .line 257
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    const/16 v1, 0x20

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 258
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    const/16 v1, 0x18

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 259
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    const/16 v1, 0x10

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 260
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    const/16 v1, 0x8

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 261
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    and-long v2, p2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 262
    return v0
.end method

.method public static put8([BIJ)I
    .registers 10
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "data"    # J

    .prologue
    const-wide/16 v4, 0xff

    .line 267
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    const/16 v1, 0x38

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 268
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    const/16 v1, 0x30

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 269
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    const/16 v1, 0x28

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 270
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    const/16 v1, 0x20

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 271
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    const/16 v1, 0x18

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 272
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    const/16 v1, 0x10

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 273
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    const/16 v1, 0x8

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 274
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    and-long v2, p2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 275
    return p1
.end method
