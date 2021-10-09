.class public Lcom/android/bytewriter/IO;
.super Ljava/lang/Object;
.source "IO.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
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

    .line 16
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Iceows hijack CopyArray"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 19
    add-int v1, v0, p3

    add-int v2, v0, p1

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static get1([BI)I
    .locals 5
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "n2":I
    const/4 v1, 0x0

    .line 31
    .local v1, "n3":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 33
    aget-byte v2, p0, p1

    move v3, v2

    .line 34
    .local v2, "n5":I
    .local v3, "n4":I
    if-gez v3, :cond_0

    .line 35
    add-int/lit16 v2, v3, 0x100

    .line 37
    :cond_0
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v2

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    nop

    .end local v2    # "n5":I
    .end local v3    # "n4":I
    add-int/lit8 p1, p1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return v0
.end method

.method public static get2([BI)I
    .locals 5
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "n2":I
    const/4 v1, 0x0

    .line 47
    .local v1, "n3":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 49
    aget-byte v2, p0, p1

    move v3, v2

    .line 50
    .local v2, "n5":I
    .local v3, "n4":I
    if-gez v3, :cond_0

    .line 51
    add-int/lit16 v2, v3, 0x100

    .line 53
    :cond_0
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v2

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    nop

    .end local v2    # "n5":I
    .end local v3    # "n4":I
    add-int/lit8 p1, p1, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return v0
.end method

.method public static get2r([BI)I
    .locals 5
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "n2":I
    const/4 v1, 0x1

    .line 63
    .local v1, "n3":I
    :goto_0
    if-ltz v1, :cond_1

    .line 65
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    move v3, v2

    .line 66
    .local v2, "n5":I
    .local v3, "n4":I
    if-gez v3, :cond_0

    .line 67
    add-int/lit16 v2, v3, 0x100

    .line 69
    :cond_0
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v2

    .line 70
    nop

    .end local v2    # "n5":I
    .end local v3    # "n4":I
    add-int/lit8 v1, v1, -0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    return v0
.end method

.method public static get3([BI)I
    .locals 5
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "n2":I
    const/4 v1, 0x0

    .line 78
    .local v1, "n3":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 80
    aget-byte v2, p0, p1

    move v3, v2

    .line 81
    .local v2, "n5":I
    .local v3, "n4":I
    if-gez v3, :cond_0

    .line 82
    add-int/lit16 v2, v3, 0x100

    .line 84
    :cond_0
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v2

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    nop

    .end local v2    # "n5":I
    .end local v3    # "n4":I
    add-int/lit8 p1, p1, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    return v0
.end method

.method public static get4([BI)I
    .locals 5
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "n2":I
    const/4 v1, 0x0

    .line 94
    .local v1, "n3":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 96
    aget-byte v2, p0, p1

    move v3, v2

    .line 97
    .local v2, "n5":I
    .local v3, "n4":I
    if-gez v3, :cond_0

    .line 98
    add-int/lit16 v2, v3, 0x100

    .line 100
    :cond_0
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v2

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    nop

    .end local v2    # "n5":I
    .end local v3    # "n4":I
    add-int/lit8 p1, p1, 0x1

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    return v0
.end method

.method public static get4l([BI)I
    .locals 5
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "n2":I
    const/4 v1, 0x3

    .line 110
    .local v1, "n3":I
    :goto_0
    if-ltz v1, :cond_1

    .line 112
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    move v3, v2

    .line 113
    .local v2, "n5":I
    .local v3, "n4":I
    if-gez v3, :cond_0

    .line 114
    add-int/lit16 v2, v3, 0x100

    .line 116
    :cond_0
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v2

    .line 117
    nop

    .end local v2    # "n5":I
    .end local v3    # "n4":I
    add-int/lit8 v1, v1, -0x1

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    return v0
.end method

.method public static get4r([BI)I
    .locals 5
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "n2":I
    const/4 v1, 0x3

    .line 125
    .local v1, "n3":I
    :goto_0
    if-ltz v1, :cond_1

    .line 127
    add-int v2, p1, v1

    aget-byte v2, p0, v2

    move v3, v2

    .line 128
    .local v2, "n5":I
    .local v3, "n4":I
    if-gez v3, :cond_0

    .line 129
    add-int/lit16 v2, v3, 0x100

    .line 131
    :cond_0
    shl-int/lit8 v4, v0, 0x8

    add-int v0, v4, v2

    .line 132
    nop

    .end local v2    # "n5":I
    .end local v3    # "n4":I
    add-int/lit8 v1, v1, -0x1

    .line 133
    goto :goto_0

    .line 134
    :cond_1
    return v0
.end method

.method public static get8([BI)J
    .locals 10
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 138
    const-wide/16 v0, 0x0

    .line 139
    .local v0, "l":J
    const/4 v2, 0x0

    .line 140
    .local v2, "n2":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 142
    aget-byte v4, p0, p1

    int-to-long v4, v4

    move-wide v6, v4

    .line 143
    .local v4, "l3":J
    .local v6, "l2":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_0

    .line 144
    const-wide/16 v8, 0x100

    add-long v4, v6, v8

    .line 146
    :cond_0
    shl-long v8, v0, v3

    add-long v0, v8, v4

    .line 147
    add-int/lit8 v2, v2, 0x1

    .line 148
    nop

    .end local v4    # "l3":J
    .end local v6    # "l2":J
    add-int/lit8 p1, p1, 0x1

    .line 149
    goto :goto_0

    .line 150
    :cond_1
    return-wide v0
.end method

.method public static get8l([BI)J
    .locals 9
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 154
    const-wide/16 v0, 0x0

    .line 155
    .local v0, "l":J
    const/4 v2, 0x7

    .line 156
    .local v2, "n2":I
    :goto_0
    if-ltz v2, :cond_1

    .line 158
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    move-wide v5, v3

    .line 159
    .local v3, "l3":J
    .local v5, "l2":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_0

    .line 160
    const-wide/16 v7, 0x100

    add-long v3, v5, v7

    .line 162
    :cond_0
    const/16 v7, 0x8

    shl-long v7, v0, v7

    add-long v0, v7, v3

    .line 163
    nop

    .end local v3    # "l3":J
    .end local v5    # "l2":J
    add-int/lit8 v2, v2, -0x1

    .line 164
    goto :goto_0

    .line 165
    :cond_1
    return-wide v0
.end method

.method public static get8r([BI)J
    .locals 9
    .param p0, "byArray"    # [B
    .param p1, "n"    # I

    .line 169
    const-wide/16 v0, 0x0

    .line 170
    .local v0, "l":J
    const/4 v2, 0x7

    .line 171
    .local v2, "n2":I
    :goto_0
    if-ltz v2, :cond_1

    .line 173
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    move-wide v5, v3

    .line 174
    .local v3, "l3":J
    .local v5, "l2":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_0

    .line 175
    const-wide/16 v7, 0x100

    add-long v3, v5, v7

    .line 177
    :cond_0
    const/16 v7, 0x8

    shl-long v7, v0, v7

    add-long v0, v7, v3

    .line 178
    nop

    .end local v3    # "l3":J
    .end local v5    # "l2":J
    add-int/lit8 v2, v2, -0x1

    .line 179
    goto :goto_0

    .line 180
    :cond_1
    return-wide v0
.end method

.method public static put1([BII)I
    .locals 1
    .param p0, "byArray"    # [B
    .param p1, "n"    # I
    .param p2, "n2"    # I

    .line 184
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    .line 185
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method public static put2([BII)I
    .locals 2
    .param p0, "byArray"    # [B
    .param p1, "n"    # I
    .param p2, "n2"    # I

    .line 189
    add-int/lit8 v0, p1, 0x1

    .line 190
    .local v0, "n3":I
    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 191
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 192
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public static put3([BII)I
    .locals 2
    .param p0, "byArray"    # [B
    .param p1, "n"    # I
    .param p2, "n2"    # I

    .line 196
    add-int/lit8 v0, p1, 0x1

    .line 197
    .local v0, "n3":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 198
    add-int/lit8 p1, v0, 0x1

    .line 199
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 200
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 201
    add-int/lit8 v1, p1, 0x1

    return v1
.end method

.method public static put4([BII)I
    .locals 2
    .param p0, "byArray"    # [B
    .param p1, "n"    # I
    .param p2, "n2"    # I

    .line 205
    add-int/lit8 v0, p1, 0x1

    .line 206
    .local v0, "n3":I
    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 207
    add-int/lit8 p1, v0, 0x1

    .line 208
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 209
    add-int/lit8 v0, p1, 0x1

    .line 210
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 211
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 212
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public static put5([BIJ)I
    .locals 7
    .param p0, "byArray"    # [B
    .param p1, "n"    # I
    .param p2, "l"    # J

    .line 216
    add-int/lit8 v0, p1, 0x1

    .line 217
    .local v0, "n2":I
    const/16 v1, 0x20

    shr-long v1, p2, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 218
    add-int/lit8 v1, v0, 0x1

    .line 219
    .local v1, "n3":I
    const/16 v2, 0x18

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 220
    add-int/lit8 p1, v1, 0x1

    .line 221
    const/16 v2, 0x10

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 222
    add-int/lit8 v1, p1, 0x1

    .line 223
    const/16 v2, 0x8

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 224
    and-long v2, p2, v3

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 225
    add-int/lit8 v2, v1, 0x1

    return v2
.end method

.method public static put8([BIJ)I
    .locals 7
    .param p0, "byArray"    # [B
    .param p1, "n"    # I
    .param p2, "l"    # J

    .line 229
    add-int/lit8 v0, p1, 0x1

    .line 230
    .local v0, "n2":I
    const/16 v1, 0x38

    shr-long v1, p2, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 231
    add-int/lit8 v1, v0, 0x1

    .line 232
    .local v1, "n3":I
    const/16 v2, 0x30

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 233
    add-int/lit8 p1, v1, 0x1

    .line 234
    const/16 v2, 0x28

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 235
    add-int/lit8 v1, p1, 0x1

    .line 236
    const/16 v2, 0x20

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 237
    add-int/lit8 p1, v1, 0x1

    .line 238
    const/16 v2, 0x18

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 239
    add-int/lit8 v1, p1, 0x1

    .line 240
    const/16 v2, 0x10

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 241
    add-int/lit8 p1, v1, 0x1

    .line 242
    const/16 v2, 0x8

    shr-long v5, p2, v2

    and-long/2addr v5, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 243
    and-long v2, p2, v3

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 244
    add-int/lit8 v2, p1, 0x1

    return v2
.end method
