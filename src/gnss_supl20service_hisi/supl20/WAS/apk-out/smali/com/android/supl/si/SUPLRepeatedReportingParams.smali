.class public Lcom/android/supl/si/SUPLRepeatedReportingParams;
.super Ljava/lang/Object;
.source "SUPLRepeatedReportingParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/si/SUPLRepeatedReportingParams$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/supl/si/SUPLRepeatedReportingParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bEnableRepeatedReporting:Z

.field private dwMaximumNumberOfReports:J

.field private dwMinimumIntervalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/android/supl/si/SUPLRepeatedReportingParams$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLRepeatedReportingParams$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide v0, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->dwMinimumIntervalTime:J

    .line 58
    iput-wide v0, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->dwMaximumNumberOfReports:J

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLRepeatedReportingParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 113
    return-void
.end method

.method public constructor <init>(ZJJ)V
    .locals 2
    .param p1, "bEnableRepeatedReporting"    # Z
    .param p2, "dwMinimumIntervalTime"    # J
    .param p4, "dwMaximumNumberOfReports"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide v0, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->dwMinimumIntervalTime:J

    .line 58
    iput-wide v0, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->dwMaximumNumberOfReports:J

    .line 67
    iput-boolean p1, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->bEnableRepeatedReporting:Z

    .line 68
    iput-wide p2, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->dwMinimumIntervalTime:J

    .line 69
    iput-wide p4, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->dwMaximumNumberOfReports:J

    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getRepeatedReportingParamsInfo()[B
    .locals 6

    .prologue
    .line 78
    const/16 v2, 0xc

    .line 79
    .local v2, "iSize":I
    const/4 v1, 0x0

    .line 80
    .local v1, "iOffset":I
    new-array v0, v2, [B

    .line 81
    .local v0, "bData":[B
    iget-boolean v3, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->bEnableRepeatedReporting:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 82
    iget-wide v4, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->dwMinimumIntervalTime:J

    long-to-int v3, v4

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 83
    iget-wide v4, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->dwMaximumNumberOfReports:J

    long-to-int v3, v4

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 84
    return-object v0

    .line 81
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 122
    .local v0, "bTrue":B
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->bEnableRepeatedReporting:Z

    .line 123
    if-ne v0, v2, :cond_0

    .line 124
    iput-boolean v2, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->bEnableRepeatedReporting:Z

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->dwMinimumIntervalTime:J

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->dwMaximumNumberOfReports:J

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->bEnableRepeatedReporting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->dwMinimumIntervalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->dwMaximumNumberOfReports:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->bEnableRepeatedReporting:Z

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 138
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 139
    iget-wide v0, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->dwMinimumIntervalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 140
    iget-wide v0, p0, Lcom/android/supl/si/SUPLRepeatedReportingParams;->dwMaximumNumberOfReports:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    .line 138
    goto :goto_0
.end method
