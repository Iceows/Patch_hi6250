.class final Lcom/android/supl/si/SUPLSETID$1;
.super Ljava/lang/Object;
.source "SUPLSETID.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/si/SUPLSETID;
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
        "Lcom/android/supl/si/SUPLSETID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SUPLSETID;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 233
    new-instance v0, Lcom/android/supl/si/SUPLSETID;

    invoke-direct {v0, p1}, Lcom/android/supl/si/SUPLSETID;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLSETID$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/supl/si/SUPLSETID;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/supl/si/SUPLSETID;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 237
    new-array v0, p1, [Lcom/android/supl/si/SUPLSETID;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLSETID$1;->newArray(I)[Lcom/android/supl/si/SUPLSETID;

    move-result-object v0

    return-object v0
.end method