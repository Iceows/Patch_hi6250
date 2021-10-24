.class final Lcom/android/supl/si/SUPLThirdPartyID$1;
.super Ljava/lang/Object;
.source "SUPLThirdPartyID.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/si/SUPLThirdPartyID;
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
        "Lcom/android/supl/si/SUPLThirdPartyID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SUPLThirdPartyID;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 163
    new-instance v0, Lcom/android/supl/si/SUPLThirdPartyID;

    invoke-direct {v0, p1}, Lcom/android/supl/si/SUPLThirdPartyID;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLThirdPartyID$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SUPLThirdPartyID;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/supl/si/SUPLThirdPartyID;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 167
    new-array v0, p1, [Lcom/android/supl/si/SUPLThirdPartyID;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLThirdPartyID$1;->newArray(I)[Lcom/android/supl/si/SUPLThirdPartyID;

    move-result-object v0

    return-object v0
.end method
