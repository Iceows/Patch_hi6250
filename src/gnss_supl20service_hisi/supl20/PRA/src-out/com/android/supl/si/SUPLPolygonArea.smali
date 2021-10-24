.class public Lcom/android/supl/si/SUPLPolygonArea;
.super Ljava/lang/Object;
.source "SUPLPolygonArea.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/si/SUPLPolygonArea$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/supl/si/SUPLPolygonArea;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private PolyDescription:Lcom/android/supl/si/SUPLPolygonDescription;

.field private PolygonHysteresis:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 102
    new-instance v0, Lcom/android/supl/si/SUPLPolygonArea$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLPolygonArea$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLPolygonArea;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolyDescription:Lcom/android/supl/si/SUPLPolygonDescription;

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLPolygonArea;->readFromParcel(Landroid/os/Parcel;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/android/supl/si/SUPLPolygonDescription;I)V
    .registers 5
    .param p1, "PolyDescription"    # Lcom/android/supl/si/SUPLPolygonDescription;
    .param p2, "PolygonHysteresis"    # I

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolyDescription:Lcom/android/supl/si/SUPLPolygonDescription;

    .line 61
    if-nez p1, :cond_11

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "PolygonDescription object should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_11
    iput-object p1, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolyDescription:Lcom/android/supl/si/SUPLPolygonDescription;

    .line 65
    iput p2, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolygonHysteresis:I

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getPolygonAreaInfo()[B
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 74
    const/4 v3, 0x4

    .line 75
    .local v3, "iSize":I
    const/4 v2, 0x0

    .line 76
    .local v2, "iOffset":I
    iget-object v4, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolyDescription:Lcom/android/supl/si/SUPLPolygonDescription;

    invoke-virtual {v4}, Lcom/android/supl/si/SUPLPolygonDescription;->getPolygonDescription()[B

    move-result-object v1

    .line 77
    .local v1, "bPolygonDesc":[B
    array-length v4, v1

    add-int/lit8 v3, v4, 0x4

    .line 78
    new-array v0, v3, [B

    .line 79
    .local v0, "bData":[B
    array-length v4, v1

    invoke-static {v1, v5, v0, v2, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 80
    array-length v4, v1

    add-int/lit8 v2, v4, 0x0

    .line 81
    iget v4, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolygonHysteresis:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 82
    if-eq v2, v3, :cond_25

    .line 83
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v5, "PolygonArea length invalid"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    :cond_25
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolygonHysteresis:I

    .line 126
    const-class v0, Lcom/android/supl/si/SUPLPolygonDescription;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/supl/si/SUPLPolygonDescription;

    iput-object v0, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolyDescription:Lcom/android/supl/si/SUPLPolygonDescription;

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolyDescription:Lcom/android/supl/si/SUPLPolygonDescription;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLPolygonDescription;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolygonHysteresis:I

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
    .line 136
    iget v0, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolygonHysteresis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Lcom/android/supl/si/SUPLPolygonArea;->PolyDescription:Lcom/android/supl/si/SUPLPolygonDescription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 139
    return-void
.end method
