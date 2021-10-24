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

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, v0, p3

    add-int v2, v0, p1

    .line 18
    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static get1([BI)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 29
    aget-byte v2, p0, p1

    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x100

    :cond_0
    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static get2([BI)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 45
    aget-byte v2, p0, p1

    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x100

    :cond_0
    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static get2r([BI)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    if-ltz v1, :cond_1

    add-int v2, p1, v1

    .line 61
    aget-byte v2, p0, v2

    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x100

    :cond_0
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static get3([BI)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 76
    aget-byte v2, p0, p1

    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x100

    :cond_0
    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static get4([BI)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 92
    aget-byte v2, p0, p1

    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x100

    :cond_0
    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static get4l([BI)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    :goto_0
    if-ltz v1, :cond_1

    add-int v2, p1, v1

    .line 108
    aget-byte v2, p0, v2

    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x100

    :cond_0
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static get4r([BI)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    :goto_0
    if-ltz v1, :cond_1

    add-int v2, p1, v1

    .line 123
    aget-byte v2, p0, v2

    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x100

    :cond_0
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static get8([BI)J
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    const/16 v5, 0x8

    if-ge v2, v5, :cond_1

    .line 138
    aget-byte v6, p0, p1

    int-to-long v6, v6

    cmp-long v8, v6, v0

    if-gez v8, :cond_0

    const-wide/16 v8, 0x100

    add-long/2addr v6, v8

    :cond_0
    shl-long/2addr v3, v5

    add-long/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method public static get8l([BI)J
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x7

    move-wide v3, v0

    :goto_0
    if-ltz v2, :cond_1

    add-int v5, p1, v2

    .line 154
    aget-byte v5, p0, v5

    int-to-long v5, v5

    cmp-long v7, v5, v0

    if-gez v7, :cond_0

    const-wide/16 v7, 0x100

    add-long/2addr v5, v7

    :cond_0
    const/16 v7, 0x8

    shl-long/2addr v3, v7

    add-long/2addr v3, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method public static get8r([BI)J
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x7

    move-wide v3, v0

    :goto_0
    if-ltz v2, :cond_1

    add-int v5, p1, v2

    .line 169
    aget-byte v5, p0, v5

    int-to-long v5, v5

    cmp-long v7, v5, v0

    if-gez v7, :cond_0

    const-wide/16 v7, 0x100

    add-long/2addr v5, v7

    :cond_0
    const/16 v7, 0x8

    shl-long/2addr v3, v7

    add-long/2addr v3, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method public static put1([BII)I
    .locals 0

    int-to-byte p2, p2

    .line 180
    aput-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static put2([BII)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 186
    aput-byte v1, p0, p1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    .line 187
    aput-byte p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static put3([BII)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 193
    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 195
    aput-byte v1, p0, v0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 196
    aput-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static put4([BII)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    .line 202
    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 204
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 206
    aput-byte v1, p0, p1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    .line 207
    aput-byte p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static put5([BIJ)I
    .locals 5

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x20

    shr-long v1, p2, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 213
    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    const/16 v1, 0x18

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 215
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x10

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 217
    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    const/16 v1, 0x8

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 219
    aput-byte v1, p0, v0

    and-long/2addr p2, v3

    long-to-int p3, p2

    int-to-byte p2, p3

    .line 220
    aput-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static put8([BIJ)I
    .locals 5

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x38

    shr-long v1, p2, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 226
    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    const/16 v1, 0x30

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 228
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x28

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 230
    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    const/16 v1, 0x20

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 232
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x18

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 234
    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    const/16 v1, 0x10

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 236
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x8

    shr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 238
    aput-byte v1, p0, p1

    and-long/2addr p2, v3

    long-to-int p1, p2

    int-to-byte p1, p1

    .line 239
    aput-byte p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
