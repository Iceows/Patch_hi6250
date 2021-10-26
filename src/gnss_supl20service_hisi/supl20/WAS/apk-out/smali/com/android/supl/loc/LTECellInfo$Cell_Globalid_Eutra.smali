.class public Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
.super Ljava/lang/Object;
.source "LTECellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/LTECellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cell_Globalid_Eutra"
.end annotation


# instance fields
.field private iCellIdentity:I

.field private stPLMNIdentity:Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;


# direct methods
.method public constructor <init>(Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;I)V
    .locals 2
    .param p1, "stPLMNIdentity"    # Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    .param p2, "iCellIdentity"    # I

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    if-nez p1, :cond_0

    .line 166
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "PlmnIdentity should not null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    if-nez p2, :cond_1

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CellIdentity should not zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    iput-object p1, p0, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;->stPLMNIdentity:Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;

    .line 172
    iput p2, p0, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;->iCellIdentity:I

    .line 164
    return-void
.end method


# virtual methods
.method public getCellGlobalidInfo()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    const/4 v2, 0x0

    .line 179
    .local v2, "iOffSet":I
    iget-object v3, p0, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;->stPLMNIdentity:Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;

    invoke-virtual {v3}, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;->getPLMNIdentityInfo()[B

    move-result-object v1

    .line 181
    .local v1, "bPLMNIdentity":[B
    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    new-array v0, v3, [B

    .line 184
    .local v0, "bData":[B
    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 185
    array-length v3, v1

    add-int/lit8 v2, v3, 0x0

    .line 186
    iget v3, p0, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;->iCellIdentity:I

    invoke-static {v0, v2, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 187
    return-object v0
.end method
