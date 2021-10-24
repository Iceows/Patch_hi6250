.class final Lcom/android/supl/si/SUPLCoordinate$1;
.super Ljava/lang/Object;
.source "SUPLCoordinate.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/si/SUPLCoordinate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/supl/si/SUPLCoordinate;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SUPLCoordinate;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 111
    new-instance v0, Lcom/android/supl/si/SUPLCoordinate;

    invoke-direct {v0, p1}, Lcom/android/supl/si/SUPLCoordinate;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLCoordinate$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SUPLCoordinate;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/supl/si/SUPLCoordinate;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 115
    new-array v0, p1, [Lcom/android/supl/si/SUPLCoordinate;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLCoordinate$1;->newArray(I)[Lcom/android/supl/si/SUPLCoordinate;

    move-result-object v0

    return-object v0
.end method
