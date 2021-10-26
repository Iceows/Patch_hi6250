.class final Lcom/android/supl/si/SUPLPolygonArea$1;
.super Ljava/lang/Object;
.source "SUPLPolygonArea.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/si/SUPLPolygonArea;
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
        "Lcom/android/supl/si/SUPLPolygonArea;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SUPLPolygonArea;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 104
    new-instance v0, Lcom/android/supl/si/SUPLPolygonArea;

    invoke-direct {v0, p1}, Lcom/android/supl/si/SUPLPolygonArea;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLPolygonArea$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SUPLPolygonArea;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/supl/si/SUPLPolygonArea;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 108
    new-array v0, p1, [Lcom/android/supl/si/SUPLPolygonArea;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLPolygonArea$1;->newArray(I)[Lcom/android/supl/si/SUPLPolygonArea;

    move-result-object v0

    return-object v0
.end method
