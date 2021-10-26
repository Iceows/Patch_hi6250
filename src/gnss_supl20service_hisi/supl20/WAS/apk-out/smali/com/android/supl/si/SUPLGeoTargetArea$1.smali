.class final Lcom/android/supl/si/SUPLGeoTargetArea$1;
.super Ljava/lang/Object;
.source "SUPLGeoTargetArea.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/si/SUPLGeoTargetArea;
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
        "Lcom/android/supl/si/SUPLGeoTargetArea;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SUPLGeoTargetArea;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 157
    new-instance v0, Lcom/android/supl/si/SUPLGeoTargetArea;

    invoke-direct {v0, p1}, Lcom/android/supl/si/SUPLGeoTargetArea;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLGeoTargetArea$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SUPLGeoTargetArea;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/supl/si/SUPLGeoTargetArea;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 161
    new-array v0, p1, [Lcom/android/supl/si/SUPLGeoTargetArea;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLGeoTargetArea$1;->newArray(I)[Lcom/android/supl/si/SUPLGeoTargetArea;

    move-result-object v0

    return-object v0
.end method
