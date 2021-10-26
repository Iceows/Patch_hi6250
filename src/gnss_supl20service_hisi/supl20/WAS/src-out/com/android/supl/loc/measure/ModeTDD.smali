.class public Lcom/android/supl/loc/measure/ModeTDD;
.super Ljava/lang/Object;
.source "ModeTDD.java"


# instance fields
.field private isPathLossPresent:Z

.field private isPrimaryCCPCH_RSCPPresent:Z

.field private isProposedTGSNPresent:Z

.field private isTimeslotISCP_ListPresent:Z

.field private stTimeslotISCP_List:Lcom/android/supl/loc/measure/TimeSlotISCPList;

.field private ucCellParametersID:S

.field private ucPathloss:S

.field private ucPrimaryCCPCH_RSCP:S

.field private ucProposedTGSN:S


# direct methods
.method public constructor <init>(SSSSLcom/android/supl/loc/measure/TimeSlotISCPList;)V
    .registers 10
    .param p1, "ucCellParametersID"    # S
    .param p2, "ucProposedTGSN"    # S
    .param p3, "ucPrimaryCCPCH_RSCP"    # S
    .param p4, "ucPathloss"    # S
    .param p5, "stTimeslotISCP_List"    # Lcom/android/supl/loc/measure/TimeSlotISCPList;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/ModeTDD;->isProposedTGSNPresent:Z

    .line 45
    iput-short v3, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucProposedTGSN:S

    .line 47
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/ModeTDD;->isPrimaryCCPCH_RSCPPresent:Z

    .line 49
    iput-short v3, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucPrimaryCCPCH_RSCP:S

    .line 51
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/ModeTDD;->isPathLossPresent:Z

    .line 53
    iput-short v3, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucPathloss:S

    .line 55
    iput-boolean v2, p0, Lcom/android/supl/loc/measure/ModeTDD;->isTimeslotISCP_ListPresent:Z

    .line 57
    iput-object v0, p0, Lcom/android/supl/loc/measure/ModeTDD;->stTimeslotISCP_List:Lcom/android/supl/loc/measure/TimeSlotISCPList;

    .line 61
    iput-short p1, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucCellParametersID:S

    .line 62
    iput-short p2, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucProposedTGSN:S

    .line 63
    iput-short p3, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucPrimaryCCPCH_RSCP:S

    .line 64
    iput-short p4, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucPathloss:S

    .line 65
    iput-object p5, p0, Lcom/android/supl/loc/measure/ModeTDD;->stTimeslotISCP_List:Lcom/android/supl/loc/measure/TimeSlotISCPList;

    .line 66
    if-eq p2, v3, :cond_35

    move v0, v1

    :goto_24
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/ModeTDD;->isProposedTGSNPresent:Z

    .line 67
    if-eq p3, v3, :cond_37

    move v0, v1

    :goto_29
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/ModeTDD;->isPrimaryCCPCH_RSCPPresent:Z

    .line 68
    if-eq p4, v3, :cond_39

    move v0, v1

    :goto_2e
    iput-boolean v0, p0, Lcom/android/supl/loc/measure/ModeTDD;->isPathLossPresent:Z

    .line 69
    if-eqz p5, :cond_3b

    :goto_32
    iput-boolean v1, p0, Lcom/android/supl/loc/measure/ModeTDD;->isTimeslotISCP_ListPresent:Z

    .line 60
    return-void

    :cond_35
    move v0, v2

    .line 66
    goto :goto_24

    :cond_37
    move v0, v2

    .line 67
    goto :goto_29

    :cond_39
    move v0, v2

    .line 68
    goto :goto_2e

    :cond_3b
    move v1, v2

    .line 69
    goto :goto_32
.end method


# virtual methods
.method public getModeTDDInfo()[B
    .registers 7

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "iOffset":I
    const/16 v3, 0x11

    .line 76
    .local v3, "iSize":I
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->isProposedTGSNPresent:Z

    if-eqz v4, :cond_9

    .line 77
    const/16 v3, 0x12

    .line 79
    :cond_9
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->isPrimaryCCPCH_RSCPPresent:Z

    if-eqz v4, :cond_f

    .line 80
    add-int/lit8 v3, v3, 0x1

    .line 82
    :cond_f
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->isPathLossPresent:Z

    if-eqz v4, :cond_15

    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 85
    :cond_15
    const/4 v1, 0x0

    .line 86
    .local v1, "bstTimeslotISCP_List":[B
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->isTimeslotISCP_ListPresent:Z

    if-eqz v4, :cond_22

    .line 87
    iget-object v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->stTimeslotISCP_List:Lcom/android/supl/loc/measure/TimeSlotISCPList;

    invoke-virtual {v4}, Lcom/android/supl/loc/measure/TimeSlotISCPList;->getTimeslotISCPListInfo()[B

    move-result-object v1

    .line 88
    .local v1, "bstTimeslotISCP_List":[B
    array-length v4, v1

    add-int/2addr v3, v4

    .line 91
    .end local v1    # "bstTimeslotISCP_List":[B
    :cond_22
    new-array v0, v3, [B

    .line 92
    .local v0, "bData":[B
    iget-short v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucCellParametersID:S

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 93
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->isProposedTGSNPresent:Z

    if-eqz v4, :cond_34

    .line 94
    iget-short v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucProposedTGSN:S

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 96
    :cond_34
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->isPrimaryCCPCH_RSCPPresent:Z

    if-eqz v4, :cond_3e

    .line 97
    iget-short v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucPrimaryCCPCH_RSCP:S

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 99
    :cond_3e
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->isPathLossPresent:Z

    if-eqz v4, :cond_48

    .line 100
    iget-short v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->ucPathloss:S

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v2

    .line 103
    :cond_48
    iget-boolean v4, p0, Lcom/android/supl/loc/measure/ModeTDD;->isTimeslotISCP_ListPresent:Z

    if-eqz v4, :cond_53

    .line 104
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v0, v2, v4}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 105
    array-length v4, v1

    add-int/2addr v2, v4

    .line 108
    :cond_53
    if-eq v2, v3, :cond_5d

    .line 109
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "ModeTDD length error"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    :cond_5d
    return-object v0
.end method
