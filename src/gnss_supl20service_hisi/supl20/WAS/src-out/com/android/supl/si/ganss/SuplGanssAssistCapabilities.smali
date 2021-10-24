.class public Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;
.super Ljava/lang/Object;
.source "SuplGanssAssistCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

.field private ucGanssCnt:I

.field private uiAsstCmnCapBitmap:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    new-instance v0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities$1;

    invoke-direct {v0}, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    .line 133
    return-void
.end method

.method public constructor <init>([Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;I)V
    .registers 5
    .param p1, "asstCapElem"    # [Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;
    .param p2, "uiAsstCmnCapBitmap"    # I

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    .line 70
    if-nez p1, :cond_11

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SuplGanssAsstCapElement should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_11
    array-length v0, p1

    iput v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->ucGanssCnt:I

    .line 74
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->ucGanssCnt:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_23

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Count should not exceed to8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_23
    iput-object p1, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    .line 79
    iput p2, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->uiAsstCmnCapBitmap:I

    .line 80
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getAsstCapElem()[B
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 83
    iget v5, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->ucGanssCnt:I

    invoke-static {}, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->getPacketSize()I

    move-result v7

    mul-int/2addr v5, v7

    .line 82
    add-int/lit8 v3, v5, 0x5

    .line 84
    .local v3, "iSize":I
    const/4 v4, 0x0

    .line 85
    .local v4, "offset":I
    new-array v1, v3, [B

    .line 86
    .local v1, "bytes":[B
    iget v5, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->uiAsstCmnCapBitmap:I

    invoke-static {v1, v4, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 87
    iget v5, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->ucGanssCnt:I

    invoke-static {v1, v4, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v4

    .line 88
    iget-object v7, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    array-length v8, v7

    move v5, v6

    :goto_1d
    if-ge v5, v8, :cond_2e

    aget-object v2, v7, v5

    .line 89
    .local v2, "ganssAsstCapElem":Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;
    invoke-virtual {v2}, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->getAsstCapElem()[B

    move-result-object v0

    .line 90
    .local v0, "bAsstCapElem":[B
    array-length v9, v0

    invoke-static {v0, v6, v1, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 91
    array-length v9, v0

    add-int/2addr v4, v9

    .line 88
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 93
    .end local v0    # "bAsstCapElem":[B
    .end local v2    # "ganssAsstCapElem":Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;
    :cond_2e
    if-eq v3, v4, :cond_38

    .line 94
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v6, "getAsstCapElem size invalid"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    :cond_38
    return-object v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->uiAsstCmnCapBitmap:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->ucGanssCnt:I

    .line 142
    iget v5, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->ucGanssCnt:I

    if-lez v5, :cond_33

    .line 144
    const-class v5, Lcom/android/supl/si/ganss/SuplGanssPOSElem;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 146
    .local v3, "parcels":[Landroid/os/Parcelable;
    array-length v5, v3

    new-array v5, v5, [Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    iput-object v5, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "i":I
    array-length v5, v3

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_23
    if-ge v4, v5, :cond_33

    aget-object v2, v3, v4

    .line 149
    .local v2, "par":Landroid/os/Parcelable;
    iget-object v6, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    check-cast v2, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    .end local v2    # "par":Landroid/os/Parcelable;
    aput-object v2, v6, v1

    .line 148
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_23

    .line 153
    .end local v1    # "i":I
    .end local v3    # "parcels":[Landroid/os/Parcelable;
    :cond_33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 101
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v1, "buffer":Ljava/lang/StringBuffer;
    iget v2, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->uiAsstCmnCapBitmap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    iget-object v3, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_15
    if-ge v2, v4, :cond_29

    aget-object v0, v3, v2

    .line 104
    .local v0, "a":Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;
    invoke-virtual {v0}, Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 108
    .end local v0    # "a":Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;
    :cond_29
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 166
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->uiAsstCmnCapBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->ucGanssCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->ucGanssCnt:I

    if-lez v0, :cond_13

    .line 169
    iget-object v0, p0, Lcom/android/supl/si/ganss/SuplGanssAssistCapabilities;->asstCapElem:[Lcom/android/supl/si/ganss/SuplGanssAsstCapElem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 172
    :cond_13
    return-void
.end method
