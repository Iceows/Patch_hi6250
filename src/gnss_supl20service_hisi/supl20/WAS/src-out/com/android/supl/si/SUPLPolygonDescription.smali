.class public Lcom/android/supl/si/SUPLPolygonDescription;
.super Ljava/lang/Object;
.source "SUPLPolygonDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/si/SUPLPolygonDescription$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/supl/si/SUPLPolygonDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nValidCoordinates:I

.field private stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    new-instance v0, Lcom/android/supl/si/SUPLPolygonDescription$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLPolygonDescription$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLPolygonDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    return-void
.end method

.method public constructor <init>(I[Lcom/android/supl/si/SUPLCoordinate;)V
    .registers 5
    .param p1, "nValidCoordinates"    # I
    .param p2, "stCoordinate"    # [Lcom/android/supl/si/SUPLCoordinate;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/android/supl/si/SUPLPolygonDescription;->stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;

    .line 66
    iput p1, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    .line 67
    if-lez p1, :cond_15

    if-nez p2, :cond_15

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Coordinate value should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_15
    iput-object p2, p0, Lcom/android/supl/si/SUPLPolygonDescription;->stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLPolygonDescription;->stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLPolygonDescription;->readFromParcel(Landroid/os/Parcel;)V

    .line 126
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getPolygonDescription()[B
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 78
    const/4 v3, 0x4

    .line 79
    .local v3, "iSize":I
    const/4 v2, 0x0

    .line 80
    .local v2, "iOffset":I
    iget v5, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    mul-int/lit8 v5, v5, 0xc

    add-int/lit8 v3, v5, 0x4

    .line 81
    new-array v1, v3, [B

    .line 82
    .local v1, "bData":[B
    iget v5, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    invoke-static {v1, v2, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 83
    iget v5, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    if-lez v5, :cond_2a

    .line 84
    iget-object v7, p0, Lcom/android/supl/si/SUPLPolygonDescription;->stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;

    array-length v8, v7

    move v5, v6

    :goto_19
    if-ge v5, v8, :cond_2a

    aget-object v4, v7, v5

    .line 85
    .local v4, "stSuplCoordinate":Lcom/android/supl/si/SUPLCoordinate;
    invoke-virtual {v4}, Lcom/android/supl/si/SUPLCoordinate;->getCoordinateInfo()[B

    move-result-object v0

    .line 86
    .local v0, "bCoordinate":[B
    array-length v9, v0

    invoke-static {v0, v6, v1, v2, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 87
    array-length v9, v0

    add-int/2addr v2, v9

    .line 84
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 90
    .end local v0    # "bCoordinate":[B
    .end local v4    # "stSuplCoordinate":Lcom/android/supl/si/SUPLCoordinate;
    :cond_2a
    if-eq v2, v3, :cond_34

    .line 91
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v6, "PolygonDescription length invalid"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    :cond_34
    return-object v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    .line 134
    iget v5, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    if-lez v5, :cond_2d

    .line 136
    const-class v5, Lcom/android/supl/si/SUPLCoordinate;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 139
    .local v3, "parcels":[Landroid/os/Parcelable;
    array-length v5, v3

    new-array v5, v5, [Lcom/android/supl/si/SUPLCoordinate;

    iput-object v5, p0, Lcom/android/supl/si/SUPLPolygonDescription;->stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "i":I
    array-length v5, v3

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1d
    if-ge v4, v5, :cond_2d

    aget-object v2, v3, v4

    .line 142
    .local v2, "par":Landroid/os/Parcelable;
    iget-object v6, p0, Lcom/android/supl/si/SUPLPolygonDescription;->stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    check-cast v2, Lcom/android/supl/si/SUPLCoordinate;

    .end local v2    # "par":Landroid/os/Parcelable;
    aput-object v2, v6, v1

    .line 141
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1d

    .line 146
    .end local v1    # "i":I
    .end local v3    # "parcels":[Landroid/os/Parcelable;
    :cond_2d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 166
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget v3, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    if-lez v3, :cond_2c

    .line 168
    iget v3, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 169
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    iget-object v3, p0, Lcom/android/supl/si/SUPLPolygonDescription;->stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;

    array-length v4, v3

    :goto_18
    if-ge v2, v4, :cond_2c

    aget-object v1, v3, v2

    .line 171
    .local v1, "coordinate":Lcom/android/supl/si/SUPLCoordinate;
    invoke-virtual {v1}, Lcom/android/supl/si/SUPLCoordinate;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 175
    .end local v1    # "coordinate":Lcom/android/supl/si/SUPLCoordinate;
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 154
    iget v0, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/android/supl/si/SUPLPolygonDescription;->nValidCoordinates:I

    if-lez v0, :cond_e

    .line 156
    iget-object v0, p0, Lcom/android/supl/si/SUPLPolygonDescription;->stCoordinate:[Lcom/android/supl/si/SUPLCoordinate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 158
    :cond_e
    return-void
.end method
