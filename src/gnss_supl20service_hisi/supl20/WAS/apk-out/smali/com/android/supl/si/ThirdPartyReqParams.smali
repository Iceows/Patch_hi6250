.class public Lcom/android/supl/si/ThirdPartyReqParams;
.super Ljava/lang/Object;
.source "ThirdPartyReqParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/si/ThirdPartyReqParams$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/supl/si/ThirdPartyReqParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final MSG_PCM_START_SI_OTHER_SET:I = 0x10e


# instance fields
.field private m_bIsAppIdPresent:Z

.field private m_bIsQOPPresent:Z

.field private m_stAppId:Lcom/android/supl/si/ApplicationID;

.field private m_stQop:Lcom/android/supl/si/SUPLQOPParams;

.field private m_stTargetSetId:Lcom/android/supl/si/SUPLSETID;

.field private m_usPlatformSessionId:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/android/supl/si/ThirdPartyReqParams$1;

    invoke-direct {v0}, Lcom/android/supl/si/ThirdPartyReqParams$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/ThirdPartyReqParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stQop:Lcom/android/supl/si/SUPLQOPParams;

    .line 61
    iput-object v0, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stAppId:Lcom/android/supl/si/ApplicationID;

    .line 63
    iput-object v0, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stTargetSetId:Lcom/android/supl/si/SUPLSETID;

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/supl/si/ThirdPartyReqParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 182
    return-void
.end method

.method public constructor <init>(ZLcom/android/supl/si/SUPLQOPParams;ZLcom/android/supl/si/ApplicationID;Lcom/android/supl/si/SUPLSETID;)V
    .locals 2
    .param p1, "m_bIsQOPPresent"    # Z
    .param p2, "m_stQOP"    # Lcom/android/supl/si/SUPLQOPParams;
    .param p3, "m_bIsAppIdPresent"    # Z
    .param p4, "m_stAppId"    # Lcom/android/supl/si/ApplicationID;
    .param p5, "m_stTargetSetId"    # Lcom/android/supl/si/SUPLSETID;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stQop:Lcom/android/supl/si/SUPLQOPParams;

    .line 61
    iput-object v0, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stAppId:Lcom/android/supl/si/ApplicationID;

    .line 63
    iput-object v0, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stTargetSetId:Lcom/android/supl/si/SUPLSETID;

    .line 76
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_usPlatformSessionId:S

    .line 77
    iput-boolean p1, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_bIsQOPPresent:Z

    .line 78
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "QOP paramerter should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iput-object p2, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stQop:Lcom/android/supl/si/SUPLQOPParams;

    .line 82
    iput-boolean p3, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_bIsAppIdPresent:Z

    .line 83
    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ApplicationID  should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    iput-object p4, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stAppId:Lcom/android/supl/si/ApplicationID;

    .line 87
    if-nez p5, :cond_2

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Target SETID  should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    iput-object p5, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stTargetSetId:Lcom/android/supl/si/SUPLSETID;

    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Lcom/android/supl/si/ApplicationID;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stAppId:Lcom/android/supl/si/ApplicationID;

    return-object v0
.end method

.method public getSIOnOtherSET()[B
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 113
    const/16 v5, 0xe

    .line 114
    .local v5, "iSize":I
    const/4 v2, 0x0

    .line 115
    .local v2, "bQOPData":[B
    iget-boolean v6, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_bIsQOPPresent:Z

    if-eqz v6, :cond_0

    .line 116
    iget-object v6, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stQop:Lcom/android/supl/si/SUPLQOPParams;

    invoke-virtual {v6}, Lcom/android/supl/si/SUPLQOPParams;->getQOPParams()[B

    move-result-object v2

    .line 117
    .local v2, "bQOPData":[B
    array-length v6, v2

    add-int/lit8 v5, v6, 0xe

    .line 119
    .end local v2    # "bQOPData":[B
    :cond_0
    const/4 v0, 0x0

    .line 120
    .local v0, "bAPPID":[B
    iget-boolean v6, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_bIsAppIdPresent:Z

    if-eqz v6, :cond_1

    .line 121
    iget-object v6, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stAppId:Lcom/android/supl/si/ApplicationID;

    invoke-virtual {v6}, Lcom/android/supl/si/ApplicationID;->getApplicationIDInfo()[B

    move-result-object v0

    .line 122
    .local v0, "bAPPID":[B
    array-length v6, v0

    add-int/2addr v5, v6

    .line 124
    .end local v0    # "bAPPID":[B
    :cond_1
    iget-object v6, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stTargetSetId:Lcom/android/supl/si/SUPLSETID;

    invoke-virtual {v6}, Lcom/android/supl/si/SUPLSETID;->getSETID()[B

    move-result-object v3

    .line 125
    .local v3, "bSETID":[B
    array-length v6, v3

    add-int/2addr v5, v6

    .line 126
    add-int/lit8 v6, v5, 0x4

    new-array v1, v6, [B

    .line 127
    .local v1, "bData":[B
    const/4 v4, 0x4

    .line 128
    .local v4, "iOffset":I
    const/16 v6, 0x10e

    invoke-static {v1, v4, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 129
    iget-short v6, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_usPlatformSessionId:S

    invoke-static {v1, v4, v6}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v4

    .line 130
    iget-boolean v6, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_bIsQOPPresent:Z

    if-eqz v6, :cond_3

    .line 131
    invoke-static {v1, v4, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 132
    array-length v6, v2

    invoke-static {v2, v7, v1, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 133
    array-length v6, v2

    add-int/2addr v4, v6

    .line 137
    :goto_0
    iget-boolean v6, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_bIsAppIdPresent:Z

    if-eqz v6, :cond_4

    .line 138
    invoke-static {v1, v4, v8}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 139
    array-length v6, v0

    invoke-static {v0, v7, v1, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 140
    array-length v6, v0

    add-int/2addr v4, v6

    .line 144
    :goto_1
    array-length v6, v3

    invoke-static {v3, v7, v1, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 145
    array-length v6, v3

    add-int/2addr v4, v6

    .line 146
    invoke-static {v1, v7, v5}, Lcom/android/bytewriter/IO;->put4([BII)I

    .line 147
    add-int/lit8 v6, v4, -0x4

    if-eq v6, v5, :cond_2

    .line 148
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v7, "SIOnOtherSET length invalid"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    :cond_2
    return-object v1

    .line 135
    :cond_3
    invoke-static {v1, v4, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    goto :goto_0

    .line 142
    :cond_4
    invoke-static {v1, v4, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    goto :goto_1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_usPlatformSessionId:S

    .line 192
    const/4 v0, 0x1

    .line 193
    .local v0, "bTrue":B
    iput-boolean v3, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_bIsQOPPresent:Z

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 195
    .local v0, "bTrue":B
    if-ne v0, v2, :cond_0

    .line 196
    iput-boolean v2, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_bIsQOPPresent:Z

    .line 197
    const-class v1, Lcom/android/supl/si/SUPLQOPParams;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/supl/si/SUPLQOPParams;

    iput-object v1, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stQop:Lcom/android/supl/si/SUPLQOPParams;

    .line 201
    :cond_0
    iput-boolean v3, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_bIsAppIdPresent:Z

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 203
    if-ne v0, v2, :cond_1

    .line 204
    iput-boolean v2, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_bIsAppIdPresent:Z

    .line 205
    const-class v1, Lcom/android/supl/si/ApplicationID;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/supl/si/ApplicationID;

    iput-object v1, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stAppId:Lcom/android/supl/si/ApplicationID;

    .line 207
    :cond_1
    const-class v1, Lcom/android/supl/si/SUPLSETID;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/supl/si/SUPLSETID;

    iput-object v1, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stTargetSetId:Lcom/android/supl/si/SUPLSETID;

    .line 190
    return-void
.end method

.method public setPlatformSessionId(S)V
    .locals 0
    .param p1, "m_usPlatformSessionId"    # S

    .prologue
    .line 98
    iput-short p1, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_usPlatformSessionId:S

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 241
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "SID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    iget-short v1, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_usPlatformSessionId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 243
    iget-boolean v1, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_bIsQOPPresent:Z

    if-eqz v1, :cond_0

    .line 244
    const-string/jumbo v1, "QOP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    iget-object v1, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stQop:Lcom/android/supl/si/SUPLQOPParams;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLQOPParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    :cond_0
    iget-boolean v1, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_bIsAppIdPresent:Z

    if-eqz v1, :cond_1

    .line 249
    const-string/jumbo v1, "AppID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    iget-object v1, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stAppId:Lcom/android/supl/si/ApplicationID;

    invoke-virtual {v1}, Lcom/android/supl/si/ApplicationID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TargetSetID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stTargetSetId:Lcom/android/supl/si/SUPLSETID;

    invoke-virtual {v2}, Lcom/android/supl/si/SUPLSETID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    iget-short v0, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_usPlatformSessionId:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-boolean v0, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_bIsQOPPresent:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 219
    iget-boolean v0, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_bIsQOPPresent:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stQop:Lcom/android/supl/si/SUPLQOPParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 224
    :cond_0
    iget-boolean v0, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_bIsAppIdPresent:Z

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 225
    iget-boolean v0, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_bIsAppIdPresent:Z

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stAppId:Lcom/android/supl/si/ApplicationID;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/supl/si/ThirdPartyReqParams;->m_stTargetSetId:Lcom/android/supl/si/SUPLSETID;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 214
    return-void

    :cond_2
    move v0, v2

    .line 218
    goto :goto_0

    :cond_3
    move v1, v2

    .line 224
    goto :goto_1
.end method
