.class public Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;
.super Ljava/lang/Object;
.source "LTECellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/LTECellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "measResultEUTRA"
.end annotation


# instance fields
.field public sPhysCellID:S

.field public sRSRPResult:S

.field public sRSRQResult:S


# direct methods
.method public constructor <init>(SSS)V
    .registers 4
    .param p1, "sPhysCellID"    # S
    .param p2, "sRSRPResult"    # S
    .param p3, "sRSRQResult"    # S

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-short p1, p0, Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;->sPhysCellID:S

    .line 319
    iput-short p2, p0, Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;->sRSRPResult:S

    .line 320
    iput-short p3, p0, Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;->sRSRQResult:S

    .line 321
    return-void
.end method


# virtual methods
.method public getMeasResultEUTRA()[B
    .registers 4

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "iOffset":I
    const/4 v2, 0x6

    new-array v0, v2, [B

    .line 326
    .local v0, "bMeas":[B
    iget-short v2, p0, Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;->sPhysCellID:S

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 327
    iget-short v2, p0, Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;->sRSRPResult:S

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 328
    iget-short v2, p0, Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;->sRSRQResult:S

    invoke-static {v0, v1, v2}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 329
    return-object v0
.end method
