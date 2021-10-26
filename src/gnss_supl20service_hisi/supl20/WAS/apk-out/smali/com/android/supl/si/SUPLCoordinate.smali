.class public Lcom/android/supl/si/SUPLCoordinate;
.super Ljava/lang/Object;
.source "SUPLCoordinate.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/si/SUPLCoordinate$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/supl/si/SUPLCoordinate;",
            ">;"
        }
    .end annotation
.end field

.field public static final F2POW23DIV90:D = 93206.755556

.field public static final F2POW24DIV360:D = 46603.377778

.field public static final NORTH:I = 0x0

.field public static final SIZE:I = 0xc

.field public static final SOUTH:I = 0x1


# instance fields
.field private Latitude:I

.field private Longitude:I

.field private iSgnType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/android/supl/si/SUPLCoordinate$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLCoordinate$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLCoordinate;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    return-void
.end method

.method public constructor <init>(III)V
    .locals 6
    .param p1, "iSignType"    # I
    .param p2, "Latitude"    # I
    .param p3, "Longitude"    # I

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v1, p0, Lcom/android/supl/si/SUPLCoordinate;->iSgnType:I

    .line 68
    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "invalid Sign Type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_1
    iput p1, p0, Lcom/android/supl/si/SUPLCoordinate;->iSgnType:I

    .line 72
    iput p2, p0, Lcom/android/supl/si/SUPLCoordinate;->Latitude:I

    .line 73
    iput p3, p0, Lcom/android/supl/si/SUPLCoordinate;->Longitude:I

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "isConvertTo3GPP_GAD":Z
    if-eqz v0, :cond_2

    .line 77
    int-to-double v2, p2

    const-wide v4, 0x40f6c16c16c1e365L    # 93206.755556

    mul-double/2addr v2, v4

    double-to-long v2, v2

    long-to-int p2, v2

    .line 78
    int-to-double v2, p3

    const-wide v4, 0x40e6c16c16c1e365L    # 46603.377778

    mul-double/2addr v2, v4

    double-to-long v2, v2

    long-to-int p3, v2

    .line 67
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/si/SUPLCoordinate;->iSgnType:I

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLCoordinate;->readFromParcel(Landroid/os/Parcel;)V

    .line 122
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getCoordinateInfo()[B
    .locals 4

    .prologue
    .line 87
    const/16 v2, 0xc

    .line 88
    .local v2, "iSize":I
    const/4 v1, 0x0

    .line 89
    .local v1, "iOffset":I
    new-array v0, v2, [B

    .line 90
    .local v0, "bData":[B
    iget v3, p0, Lcom/android/supl/si/SUPLCoordinate;->iSgnType:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 91
    iget v3, p0, Lcom/android/supl/si/SUPLCoordinate;->Latitude:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 92
    iget v3, p0, Lcom/android/supl/si/SUPLCoordinate;->Longitude:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 93
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLCoordinate;->iSgnType:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLCoordinate;->Latitude:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLCoordinate;->Longitude:I

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/si/SUPLCoordinate;->iSgnType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/si/SUPLCoordinate;->Latitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Lon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/si/SUPLCoordinate;->Longitude:I

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
    .line 141
    iget v0, p0, Lcom/android/supl/si/SUPLCoordinate;->iSgnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/android/supl/si/SUPLCoordinate;->Latitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Lcom/android/supl/si/SUPLCoordinate;->Longitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    return-void
.end method
