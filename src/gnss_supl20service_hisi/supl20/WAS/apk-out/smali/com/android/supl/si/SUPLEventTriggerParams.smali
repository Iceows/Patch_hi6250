.class public Lcom/android/supl/si/SUPLEventTriggerParams;
.super Ljava/lang/Object;
.source "SUPLEventTriggerParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/si/SUPLEventTriggerParams$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/supl/si/SUPLEventTriggerParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bRepeatedReportingPresent:Z

.field private dwStartTime:J

.field private dwStopTime:J

.field private dwValidcount:J

.field private eAreaEventType:Lcom/android/supl/si/SUPLAreaEventType;

.field private stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

.field private stRepeatedReportingParams:Lcom/android/supl/si/SUPLRepeatedReportingParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/android/supl/si/SUPLEventTriggerParams$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLEventTriggerParams$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLEventTriggerParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->eAreaEventType:Lcom/android/supl/si/SUPLAreaEventType;

    .line 60
    iput-object v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stRepeatedReportingParams:Lcom/android/supl/si/SUPLRepeatedReportingParams;

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStartTime:J

    .line 72
    const-wide/32 v0, 0x83d5ff

    iput-wide v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStopTime:J

    .line 78
    iput-object v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLEventTriggerParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 186
    return-void
.end method

.method public constructor <init>(ZLcom/android/supl/si/SUPLAreaEventType;Lcom/android/supl/si/SUPLRepeatedReportingParams;JJJ[Lcom/android/supl/si/SUPLGeoTargetArea;)V
    .locals 2
    .param p1, "bRepeatedReportingPresent"    # Z
    .param p2, "eAreaEventType"    # Lcom/android/supl/si/SUPLAreaEventType;
    .param p3, "stRepeatedReportingParams"    # Lcom/android/supl/si/SUPLRepeatedReportingParams;
    .param p4, "dwStartTime"    # J
    .param p6, "dwStopTime"    # J
    .param p8, "dwValidcount"    # J
    .param p10, "stGeoTargetArea"    # [Lcom/android/supl/si/SUPLGeoTargetArea;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->eAreaEventType:Lcom/android/supl/si/SUPLAreaEventType;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stRepeatedReportingParams:Lcom/android/supl/si/SUPLRepeatedReportingParams;

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStartTime:J

    .line 72
    const-wide/32 v0, 0x83d5ff

    iput-wide v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStopTime:J

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    .line 94
    iput-boolean p1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    .line 95
    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Repeated Reporting Parameter shold not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iput-object p2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->eAreaEventType:Lcom/android/supl/si/SUPLAreaEventType;

    .line 99
    iput-object p3, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stRepeatedReportingParams:Lcom/android/supl/si/SUPLRepeatedReportingParams;

    .line 100
    iput-wide p4, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStartTime:J

    .line 101
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-eqz v0, :cond_1

    .line 102
    iput-wide p6, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStopTime:J

    .line 105
    :cond_1
    if-nez p10, :cond_2

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "GeoTargetArea shold not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    iput-object p10, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    .line 109
    array-length v0, p10

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwValidcount:J

    .line 93
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public getEventTriggerParams()[B
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 119
    const/4 v5, 0x0

    .line 120
    .local v5, "iOffset":I
    const/16 v6, 0x10

    .line 121
    .local v6, "iSize":I
    iget-object v7, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->eAreaEventType:Lcom/android/supl/si/SUPLAreaEventType;

    invoke-virtual {v7}, Lcom/android/supl/si/SUPLAreaEventType;->getAreaEventType()[B

    move-result-object v0

    .line 122
    .local v0, "bAreaType":[B
    array-length v7, v0

    add-int/lit8 v6, v7, 0x10

    .line 123
    const/4 v3, 0x0

    .line 124
    .local v3, "bRepeatParam":[B
    iget-boolean v7, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    if-eqz v7, :cond_0

    .line 125
    iget-object v7, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stRepeatedReportingParams:Lcom/android/supl/si/SUPLRepeatedReportingParams;

    invoke-virtual {v7}, Lcom/android/supl/si/SUPLRepeatedReportingParams;->getRepeatedReportingParamsInfo()[B

    move-result-object v3

    .line 126
    .local v3, "bRepeatParam":[B
    array-length v7, v3

    add-int/2addr v6, v7

    .line 128
    .end local v3    # "bRepeatParam":[B
    :cond_0
    iget-object v9, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    array-length v10, v9

    move v7, v8

    :goto_0
    if-ge v7, v10, :cond_2

    aget-object v4, v9, v7

    .line 129
    .local v4, "geoTargetArea":Lcom/android/supl/si/SUPLGeoTargetArea;
    invoke-virtual {v4}, Lcom/android/supl/si/SUPLGeoTargetArea;->getGeoTargetArea()[B

    move-result-object v2

    .line 130
    .local v2, "bGeoTargetArea":[B
    if-eqz v2, :cond_1

    .line 131
    array-length v11, v2

    add-int/2addr v6, v11

    .line 128
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 134
    .end local v2    # "bGeoTargetArea":[B
    .end local v4    # "geoTargetArea":Lcom/android/supl/si/SUPLGeoTargetArea;
    :cond_2
    new-array v1, v6, [B

    .line 135
    .local v1, "bData":[B
    iget-boolean v7, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_1
    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 136
    array-length v7, v0

    invoke-static {v0, v8, v1, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 137
    array-length v7, v0

    add-int/2addr v5, v7

    .line 138
    iget-boolean v7, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    if-eqz v7, :cond_3

    .line 139
    array-length v7, v3

    invoke-static {v3, v8, v1, v5, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 140
    array-length v7, v3

    add-int/2addr v5, v7

    .line 142
    :cond_3
    iget-wide v10, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStartTime:J

    long-to-int v7, v10

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 143
    iget-wide v10, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStopTime:J

    long-to-int v7, v10

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 144
    iget-wide v10, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwValidcount:J

    long-to-int v7, v10

    invoke-static {v1, v5, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v5

    .line 145
    iget-object v9, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    array-length v10, v9

    move v7, v8

    :goto_2
    if-ge v7, v10, :cond_6

    aget-object v4, v9, v7

    .line 146
    .restart local v4    # "geoTargetArea":Lcom/android/supl/si/SUPLGeoTargetArea;
    invoke-virtual {v4}, Lcom/android/supl/si/SUPLGeoTargetArea;->getGeoTargetArea()[B

    move-result-object v2

    .line 147
    .restart local v2    # "bGeoTargetArea":[B
    if-eqz v2, :cond_4

    .line 148
    array-length v11, v2

    invoke-static {v2, v8, v1, v5, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 149
    array-length v11, v2

    add-int/2addr v5, v11

    .line 145
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v2    # "bGeoTargetArea":[B
    .end local v4    # "geoTargetArea":Lcom/android/supl/si/SUPLGeoTargetArea;
    :cond_5
    move v7, v8

    .line 135
    goto :goto_1

    .line 152
    :cond_6
    if-eq v5, v6, :cond_7

    .line 153
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v8, "EventTriggerParams length invalid"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    :cond_7
    return-object v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 196
    const/4 v0, 0x1

    .line 198
    .local v0, "bTrue":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 199
    .local v0, "bTrue":B
    iput-boolean v6, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    .line 200
    if-ne v0, v5, :cond_0

    .line 201
    iput-boolean v5, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    .line 203
    :cond_0
    const-class v5, Lcom/android/supl/si/SUPLAreaEventType;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/android/supl/si/SUPLAreaEventType;

    iput-object v5, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->eAreaEventType:Lcom/android/supl/si/SUPLAreaEventType;

    .line 204
    iget-boolean v5, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    if-eqz v5, :cond_1

    .line 205
    const-class v5, Lcom/android/supl/si/SUPLRepeatedReportingParams;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/android/supl/si/SUPLRepeatedReportingParams;

    iput-object v5, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stRepeatedReportingParams:Lcom/android/supl/si/SUPLRepeatedReportingParams;

    .line 208
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStartTime:J

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStopTime:J

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwValidcount:J

    .line 212
    const-class v5, Lcom/android/supl/si/SUPLGeoTargetArea;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 213
    .local v4, "parcels":[Landroid/os/Parcelable;
    array-length v5, v4

    new-array v5, v5, [Lcom/android/supl/si/SUPLGeoTargetArea;

    iput-object v5, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, "i":I
    array-length v7, v4

    move v5, v6

    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v4, v5

    .line 216
    .local v3, "par":Landroid/os/Parcelable;
    iget-object v6, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    check-cast v3, Lcom/android/supl/si/SUPLGeoTargetArea;

    .end local v3    # "par":Landroid/os/Parcelable;
    aput-object v3, v6, v2

    .line 215
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 194
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "AE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    iget-object v1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->eAreaEventType:Lcom/android/supl/si/SUPLAreaEventType;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLAreaEventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    iget-boolean v1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    if-eqz v1, :cond_0

    .line 249
    const-string/jumbo v1, "Rp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    iget-object v1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stRepeatedReportingParams:Lcom/android/supl/si/SUPLRepeatedReportingParams;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLRepeatedReportingParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    :cond_0
    iget-wide v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 253
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    iget-wide v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStopTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 255
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    iget-wide v2, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwValidcount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 257
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    const-string/jumbo v1, "GTA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    iget-object v1, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    if-eqz v0, :cond_1

    .line 226
    const/4 v0, 0x1

    .line 228
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 229
    iget-object v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->eAreaEventType:Lcom/android/supl/si/SUPLAreaEventType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 230
    iget-boolean v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->bRepeatedReportingPresent:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stRepeatedReportingParams:Lcom/android/supl/si/SUPLRepeatedReportingParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 233
    :cond_0
    iget-wide v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 234
    iget-wide v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwStopTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    iget-wide v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->dwValidcount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 236
    iget-object v0, p0, Lcom/android/supl/si/SUPLEventTriggerParams;->stGeoTargetArea:[Lcom/android/supl/si/SUPLGeoTargetArea;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 225
    return-void

    .line 227
    :cond_1
    const/4 v0, 0x0

    .line 228
    goto :goto_0
.end method
