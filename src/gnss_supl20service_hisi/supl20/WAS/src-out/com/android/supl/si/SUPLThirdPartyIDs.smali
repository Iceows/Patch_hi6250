.class public Lcom/android/supl/si/SUPLThirdPartyIDs;
.super Ljava/lang/Object;
.source "SUPLThirdPartyIDs.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/si/SUPLThirdPartyIDs$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/supl/si/SUPLThirdPartyIDs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

.field private ucValidCount:S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 114
    new-instance v0, Lcom/android/supl/si/SUPLThirdPartyIDs$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLThirdPartyIDs$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLThirdPartyIDs;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLThirdPartyIDs;->readFromParcel(Landroid/os/Parcel;)V

    .line 130
    return-void
.end method

.method public constructor <init>(S[Lcom/android/supl/si/SUPLThirdPartyID;)V
    .registers 5
    .param p1, "ucValidCount"    # S
    .param p2, "mSuplThirdPartyID"    # [Lcom/android/supl/si/SUPLThirdPartyID;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    .line 60
    iput-short p1, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    .line 61
    if-lez p1, :cond_15

    if-nez p2, :cond_15

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ThirdPartyID array should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_15
    iput-object p2, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getSUPLThirdPartyIDs()[B
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 77
    const/4 v3, 0x1

    .line 78
    .local v3, "iSize":I
    const/4 v2, 0x0

    .line 79
    .local v2, "iOffset":I
    iget-short v5, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    if-lez v5, :cond_18

    .line 80
    iget-object v7, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    array-length v8, v7

    move v5, v6

    :goto_b
    if-ge v5, v8, :cond_18

    aget-object v4, v7, v5

    .line 81
    .local v4, "suplThirdPartyID":Lcom/android/supl/si/SUPLThirdPartyID;
    invoke-virtual {v4}, Lcom/android/supl/si/SUPLThirdPartyID;->getThirdPartyID()[B

    move-result-object v1

    .line 82
    .local v1, "bThridPartyID":[B
    array-length v9, v1

    add-int/2addr v3, v9

    .line 80
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 85
    .end local v1    # "bThridPartyID":[B
    .end local v4    # "suplThirdPartyID":Lcom/android/supl/si/SUPLThirdPartyID;
    :cond_18
    new-array v0, v3, [B

    .line 86
    .local v0, "bData":[B
    iget-short v5, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    invoke-static {v0, v2, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 87
    iget-short v5, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    if-lez v5, :cond_39

    .line 88
    iget-object v7, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    array-length v8, v7

    move v5, v6

    :goto_28
    if-ge v5, v8, :cond_39

    aget-object v4, v7, v5

    .line 89
    .restart local v4    # "suplThirdPartyID":Lcom/android/supl/si/SUPLThirdPartyID;
    invoke-virtual {v4}, Lcom/android/supl/si/SUPLThirdPartyID;->getThirdPartyID()[B

    move-result-object v1

    .line 90
    .restart local v1    # "bThridPartyID":[B
    array-length v9, v1

    invoke-static {v1, v6, v0, v2, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 91
    array-length v9, v1

    add-int/2addr v2, v9

    .line 88
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 94
    .end local v1    # "bThridPartyID":[B
    .end local v4    # "suplThirdPartyID":Lcom/android/supl/si/SUPLThirdPartyID;
    :cond_39
    if-eq v2, v3, :cond_43

    .line 95
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v6, "ThirdPartyIDs  length invalid"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    :cond_43
    return-object v0
.end method

.method public getValidCount()S
    .registers 2

    .prologue
    .line 70
    iget-short v0, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-short v5, v5

    iput-short v5, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    .line 138
    iget-short v5, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    if-lez v5, :cond_2e

    .line 140
    const-class v5, Lcom/android/supl/si/SUPLThirdPartyID;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 142
    .local v3, "parcels":[Landroid/os/Parcelable;
    array-length v5, v3

    new-array v5, v5, [Lcom/android/supl/si/SUPLThirdPartyID;

    iput-object v5, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "i":I
    array-length v5, v3

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1e
    if-ge v4, v5, :cond_2e

    aget-object v2, v3, v4

    .line 145
    .local v2, "par":Landroid/os/Parcelable;
    iget-object v6, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    check-cast v2, Lcom/android/supl/si/SUPLThirdPartyID;

    .end local v2    # "par":Landroid/os/Parcelable;
    aput-object v2, v6, v1

    .line 144
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1e

    .line 149
    .end local v1    # "i":I
    .end local v3    # "parcels":[Landroid/os/Parcelable;
    :cond_2e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 170
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v1, "buffer":Ljava/lang/StringBuffer;
    iget-short v3, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 173
    iget-short v3, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    if-lez v3, :cond_26

    .line 175
    iget-object v3, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    array-length v4, v3

    :goto_12
    if-ge v2, v4, :cond_26

    aget-object v0, v3, v2

    .line 177
    .local v0, "aThirdPartyID":Lcom/android/supl/si/SUPLThirdPartyID;
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/android/supl/si/SUPLThirdPartyID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 180
    .end local v0    # "aThirdPartyID":Lcom/android/supl/si/SUPLThirdPartyID;
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 157
    iget-short v0, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-short v0, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->ucValidCount:S

    if-lez v0, :cond_e

    .line 159
    iget-object v0, p0, Lcom/android/supl/si/SUPLThirdPartyIDs;->mSuplThirdPartyID:[Lcom/android/supl/si/SUPLThirdPartyID;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 162
    :cond_e
    return-void
.end method
