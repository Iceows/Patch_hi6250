.class public Lcom/android/supl/loc/measure/TimeSlotISCPList;
.super Ljava/lang/Object;
.source "TimeSlotISCPList.java"


# instance fields
.field private aucTimeslotISCP:[B

.field private ucTimeslotISCPsCnt:S


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "aucTimeslotISCP"    # [B

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->aucTimeslotISCP:[B

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TimeslotISCP should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->aucTimeslotISCP:[B

    .line 51
    iget-object v0, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->aucTimeslotISCP:[B

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->ucTimeslotISCPsCnt:S

    .line 46
    return-void
.end method


# virtual methods
.method public getTimeslotISCPListInfo()[B
    .locals 6

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "iOffset":I
    const/4 v2, 0x1

    .line 58
    .local v2, "iSize":I
    iget-object v3, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->aucTimeslotISCP:[B

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->aucTimeslotISCP:[B

    array-length v3, v3

    add-int/lit8 v2, v3, 0x1

    .line 61
    :cond_0
    new-array v0, v2, [B

    .line 62
    .local v0, "bData":[B
    iget-short v3, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->ucTimeslotISCPsCnt:S

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 63
    iget-object v3, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->aucTimeslotISCP:[B

    iget-short v4, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->ucTimeslotISCPsCnt:S

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 64
    iget-short v3, p0, Lcom/android/supl/loc/measure/TimeSlotISCPList;->ucTimeslotISCPsCnt:S

    add-int/2addr v1, v3

    .line 65
    return-object v0
.end method
