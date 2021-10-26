.class final Lcom/android/supl/si/ganss/SuplGanssPOSElem$1;
.super Ljava/lang/Object;
.source "SuplGanssPOSElem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/si/ganss/SuplGanssPOSElem;
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
        "Lcom/android/supl/si/ganss/SuplGanssPOSElem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/ganss/SuplGanssPOSElem;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 111
    new-instance v0, Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    invoke-direct {v0, p1}, Lcom/android/supl/si/ganss/SuplGanssPOSElem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/android/supl/si/ganss/SuplGanssPOSElem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/supl/si/ganss/SuplGanssPOSElem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 115
    new-array v0, p1, [Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/supl/si/ganss/SuplGanssPOSElem$1;->newArray(I)[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    move-result-object v0

    return-object v0
.end method
