.class public Lcom/android/supl/si/ganss/SuplGanssPOSElem;
.super Ljava/lang/Object;
.source "SuplGanssPOSElem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/si/ganss/SuplGanssPOSElem$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/supl/si/ganss/SuplGanssPOSElem;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPL_GANSS_ID_GALILEO:I = 0x10

.field public static final SUPL_GANSS_ID_GLONASS:I = 0x8

.field public static final SUPL_GANSS_ID_MODERNGPS:I = 0x2

.field public static final SUPL_GANSS_ID_QZSS:I = 0x4

.field public static final SUPL_GANSS_ID_RESERVED2:I = 0x20

.field public static final SUPL_GANSS_ID_RESERVED3:I = 0x40

.field public static final SUPL_GANSS_ID_RESERVED4:I = 0x80

.field public static final SUPL_GANSS_ID_SBAS:I = 0x1


# instance fields
.field public eGanssId:I

.field public ucPosCapBitmap:I

.field public ucSBASBitmap:I

.field public ucSignalBitmap:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 108
    new-instance v0, Lcom/android/supl/si/ganss/SuplGanssPOSElem$1;

    invoke-direct {v0}, Lcom/android/supl/si/ganss/SuplGanssPOSElem$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "eGanssId"    # I
    .param p2, "ucPosCapBitmap"    # I
    .param p3, "ucSignalBitmap"    # I
    .param p4, "ucSBASBitmap"    # I

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->eGanssId:I

    .line 76
    iput p2, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucPosCapBitmap:I

    .line 77
    iput p3, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSignalBitmap:I

    .line 78
    iput p4, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSBASBitmap:I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->readFromParcel(Landroid/os/Parcel;)V

    .line 125
    return-void
.end method

.method public static getPacketSize()I
    .registers 1

    .prologue
    .line 95
    const/4 v0, 0x7

    .line 96
    .local v0, "iSize":I
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getPOSElem()[B
    .registers 5

    .prologue
    .line 85
    invoke-static {}, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->getPacketSize()I

    move-result v1

    .line 86
    .local v1, "iSize":I
    new-array v0, v1, [B

    .line 87
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 88
    .local v2, "offset":I
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->eGanssId:I

    invoke-static {v0, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 89
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucPosCapBitmap:I

    invoke-static {v0, v2, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 90
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSignalBitmap:I

    invoke-static {v0, v2, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 91
    iget v3, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSBASBitmap:I

    invoke-static {v0, v2, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 92
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->eGanssId:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucPosCapBitmap:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSignalBitmap:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSBASBitmap:I

    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->eGanssId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucPosCapBitmap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSignalBitmap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSBASBitmap:I

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
    .line 145
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->eGanssId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucPosCapBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSignalBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->ucSBASBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    return-void
.end method
