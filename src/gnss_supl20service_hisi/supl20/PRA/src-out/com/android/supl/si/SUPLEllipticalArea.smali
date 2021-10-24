.class public Lcom/android/supl/si/SUPLEllipticalArea;
.super Ljava/lang/Object;
.source "SUPLEllipticalArea.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/si/SUPLEllipticalArea$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/supl/si/SUPLEllipticalArea;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public nAngle:I

.field public nSemiMajor:I

.field public nSemiMajorMax:I

.field public nSemiMajorMin:I

.field public nSemiMinor:I

.field public nSemiMinorMax:I

.field public nSemiMinorMin:I

.field public stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 185
    new-instance v0, Lcom/android/supl/si/SUPLEllipticalArea$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLEllipticalArea$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLEllipticalArea;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 51
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 7
    .param p1, "nSemiMajorMin"    # I
    .param p2, "nSemiMajorMax"    # I
    .param p3, "nSemiMinorMin"    # I
    .param p4, "nSemiMinorMax"    # I
    .param p5, "nAngle"    # I

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    .line 118
    iput p1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMin:I

    .line 119
    iput p2, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMax:I

    .line 120
    iput p3, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMin:I

    .line 121
    iput p4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMax:I

    .line 122
    iput p5, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nAngle:I

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLEllipticalArea;->readFromParcel(Landroid/os/Parcel;)V

    .line 200
    return-void
.end method

.method public constructor <init>(Lcom/android/supl/si/SUPLCoordinate;IIIIIII)V
    .registers 11
    .param p1, "stCenterCoord"    # Lcom/android/supl/si/SUPLCoordinate;
    .param p2, "nSemiMajor"    # I
    .param p3, "nSemiMajorMin"    # I
    .param p4, "nSemiMajorMax"    # I
    .param p5, "nSemiMinor"    # I
    .param p6, "nSemiMinorMin"    # I
    .param p7, "nSemiMinorMax"    # I
    .param p8, "nAngle"    # I

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    .line 97
    if-nez p1, :cond_11

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Coordinate should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_11
    iput-object p1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    .line 101
    iput p2, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajor:I

    .line 102
    iput p3, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMin:I

    .line 103
    iput p4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMax:I

    .line 104
    iput p5, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinor:I

    .line 105
    iput p6, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMin:I

    .line 106
    iput p7, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMax:I

    .line 107
    iput p8, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nAngle:I

    .line 109
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getEllipticalAreaInfo()[B
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 151
    const/16 v3, 0x1c

    .line 152
    .local v3, "iSize":I
    const/4 v2, 0x0

    .line 153
    .local v2, "iOffset":I
    iget-object v4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    invoke-virtual {v4}, Lcom/android/supl/si/SUPLCoordinate;->getCoordinateInfo()[B

    move-result-object v1

    .line 154
    .local v1, "bLoc":[B
    array-length v4, v1

    add-int/lit8 v3, v4, 0x1c

    .line 155
    new-array v0, v3, [B

    .line 156
    .local v0, "bData":[B
    array-length v4, v1

    invoke-static {v1, v5, v0, v2, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 157
    array-length v4, v1

    add-int/lit8 v2, v4, 0x0

    .line 158
    iget v4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajor:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 159
    iget v4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMin:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 160
    iget v4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMax:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 161
    iget v4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinor:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 162
    iget v4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMin:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 163
    iget v4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMax:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 164
    iget v4, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nAngle:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 166
    if-eq v2, v3, :cond_4a

    .line 167
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v5, "EllipticalArea length invalid"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    :cond_4a
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 206
    const-class v0, Lcom/android/supl/si/SUPLCoordinate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/supl/si/SUPLCoordinate;

    iput-object v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajor:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMin:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMax:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinor:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMin:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMax:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nAngle:I

    .line 215
    return-void
.end method

.method public setCenterCoordinate(Lcom/android/supl/si/SUPLCoordinate;)V
    .registers 2
    .param p1, "stCenterCoord"    # Lcom/android/supl/si/SUPLCoordinate;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    .line 131
    return-void
.end method

.method public setSemiMajor(I)V
    .registers 2
    .param p1, "nSemiMajor"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajor:I

    .line 138
    return-void
.end method

.method public setSemiMinor(I)V
    .registers 2
    .param p1, "nSemiMinor"    # I

    .prologue
    .line 144
    iput p1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinor:I

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLCoordinate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    const-string/jumbo v1, ","

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    iget v1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinor:I

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    const-string/jumbo v1, ","

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    iget v1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMin:I

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    const-string/jumbo v1, ","

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 239
    iget v1, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMax:I

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->stCenterCoord:Lcom/android/supl/si/SUPLCoordinate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 223
    iget v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMajorMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMin:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nSemiMinorMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget v0, p0, Lcom/android/supl/si/SUPLEllipticalArea;->nAngle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    return-void
.end method
