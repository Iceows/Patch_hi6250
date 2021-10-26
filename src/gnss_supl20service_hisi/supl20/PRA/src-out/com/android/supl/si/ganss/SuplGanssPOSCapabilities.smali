.class public Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;
.super Ljava/lang/Object;
.source "SuplGanssPOSCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPL_GANSS_TYPE_MAX_CNT:I = 0x8


# instance fields
.field elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

.field private ucGanssCnt:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 111
    new-instance v0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities$1;

    invoke-direct {v0}, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    .line 127
    return-void
.end method

.method public constructor <init>([Lcom/android/supl/si/ganss/SuplGanssPOSElem;)V
    .registers 4
    .param p1, "elem"    # [Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    .line 65
    if-nez p1, :cond_11

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SuplGanssPOSElement should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_11
    array-length v0, p1

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    .line 69
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_23

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Count should not exceed to8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_23
    iput-object p1, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    .line 74
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public getPOSCapabilities()[B
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 78
    iget v5, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    invoke-static {}, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->getPacketSize()I

    move-result v7

    mul-int/2addr v5, v7

    .line 77
    add-int/lit8 v3, v5, 0x1

    .line 79
    .local v3, "iSize":I
    const/4 v4, 0x0

    .line 80
    .local v4, "offset":I
    new-array v0, v3, [B

    .line 82
    .local v0, "bytes":[B
    iget v5, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    invoke-static {v0, v4, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v4

    .line 83
    iget-object v7, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    array-length v8, v7

    move v5, v6

    :goto_17
    if-ge v5, v8, :cond_28

    aget-object v2, v7, v5

    .line 84
    .local v2, "eleGanssPOSElem":Lcom/android/supl/si/ganss/SuplGanssPOSElem;
    invoke-virtual {v2}, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->getPOSElem()[B

    move-result-object v1

    .line 85
    .local v1, "eleData":[B
    array-length v9, v1

    invoke-static {v1, v6, v0, v4, v9}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 86
    array-length v9, v1

    add-int/2addr v4, v9

    .line 83
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 89
    .end local v1    # "eleData":[B
    .end local v2    # "eleGanssPOSElem":Lcom/android/supl/si/ganss/SuplGanssPOSElem;
    :cond_28
    if-eq v3, v4, :cond_32

    .line 90
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v6, "getPOSCapabilities size invalid"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    :cond_32
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    .line 135
    iget v5, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    if-lez v5, :cond_2d

    .line 137
    const-class v5, Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 139
    .local v3, "parcels":[Landroid/os/Parcelable;
    array-length v5, v3

    new-array v5, v5, [Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    iput-object v5, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "i":I
    array-length v5, v3

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1d
    if-ge v4, v5, :cond_2d

    aget-object v2, v3, v4

    .line 142
    .local v2, "par":Landroid/os/Parcelable;
    iget-object v6, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    check-cast v2, Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    .end local v2    # "par":Landroid/os/Parcelable;
    aput-object v2, v6, v1

    .line 141
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1d

    .line 147
    .end local v1    # "i":I
    .end local v3    # "parcels":[Landroid/os/Parcelable;
    :cond_2d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget v2, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v3, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_15
    if-ge v2, v4, :cond_29

    aget-object v1, v3, v2

    .line 100
    .local v1, "posElem":Lcom/android/supl/si/ganss/SuplGanssPOSElem;
    invoke-virtual {v1}, Lcom/android/supl/si/ganss/SuplGanssPOSElem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 103
    .end local v1    # "posElem":Lcom/android/supl/si/ganss/SuplGanssPOSElem;
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 157
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->ucGanssCnt:I

    if-lez v0, :cond_e

    .line 159
    iget-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssPOSCapabilities;->elem:[Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 162
    :cond_e
    return-void
.end method
