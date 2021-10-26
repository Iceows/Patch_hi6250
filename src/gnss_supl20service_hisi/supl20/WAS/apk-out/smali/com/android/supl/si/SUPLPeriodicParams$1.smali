.class final Lcom/android/supl/si/SUPLPeriodicParams$1;
.super Ljava/lang/Object;
.source "SUPLPeriodicParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/si/SUPLPeriodicParams;
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
        "Lcom/android/supl/si/SUPLPeriodicParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SUPLPeriodicParams;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 123
    new-instance v0, Lcom/android/supl/si/SUPLPeriodicParams;

    invoke-direct {v0, p1}, Lcom/android/supl/si/SUPLPeriodicParams;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLPeriodicParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SUPLPeriodicParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/supl/si/SUPLPeriodicParams;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 127
    new-array v0, p1, [Lcom/android/supl/si/SUPLPeriodicParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLPeriodicParams$1;->newArray(I)[Lcom/android/supl/si/SUPLPeriodicParams;

    move-result-object v0

    return-object v0
.end method
