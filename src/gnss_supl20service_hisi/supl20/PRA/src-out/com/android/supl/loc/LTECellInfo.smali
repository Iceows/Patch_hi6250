.class public Lcom/android/supl/loc/LTECellInfo;
.super Ljava/lang/Object;
.source "LTECellInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;,
        Lcom/android/supl/loc/LTECellInfo$MCC_LIST;,
        Lcom/android/supl/loc/LTECellInfo$MNCList;,
        Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;,
        Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/lang/String; = "SUPL20_LTECellInfo"

.field public static bIsMeasResultListEUTRA:Z = false

.field public static bIsRSRPInfoPresent:Z = false

.field public static bIsRSRQInfoPresent:Z = false

.field public static bIsTAInfoPresent:Z = false

.field public static listMRLEUTRA:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;",
            ">;"
        }
    .end annotation
.end field

.field public static ucRSRPResult:S = 0x0s

.field public static ucRSRQResult:S = 0x0s

.field public static final usMaxCellReport:S = 0x8s

.field public static usTA:S


# instance fields
.field public stCELLGlobalID:Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

.field public usPhysCellID:S

.field public usTrackAreaCode:C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-boolean v0, Lcom/android/supl/loc/LTECellInfo;->bIsRSRPInfoPresent:Z

    .line 69
    sput-boolean v0, Lcom/android/supl/loc/LTECellInfo;->bIsRSRQInfoPresent:Z

    .line 73
    sput-boolean v0, Lcom/android/supl/loc/LTECellInfo;->bIsTAInfoPresent:Z

    .line 80
    sput-boolean v0, Lcom/android/supl/loc/LTECellInfo;->bIsMeasResultListEUTRA:Z

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;CS)V
    .registers 6
    .param p1, "stCELLGlobalID"    # Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    .param p2, "usTrackAreaCode"    # C
    .param p3, "ucPhysCellID"    # S

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/android/supl/loc/LTECellInfo;->stCELLGlobalID:Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    .line 86
    if-nez p1, :cond_11

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cell_Globalid_Eutra should not null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_11
    if-nez p2, :cond_1c

    .line 91
    const-string/jumbo v0, "SUPL20_LTECellInfo"

    const-string/jumbo v1, "TrackAreaCode should not be zero"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1c
    iput-object p1, p0, Lcom/android/supl/loc/LTECellInfo;->stCELLGlobalID:Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    .line 94
    iput-char p2, p0, Lcom/android/supl/loc/LTECellInfo;->usTrackAreaCode:C

    .line 95
    iput-short p3, p0, Lcom/android/supl/loc/LTECellInfo;->usPhysCellID:S

    .line 96
    return-void
.end method

.method public static getAPILTECellInfo(Landroid/content/Context;)Lcom/android/supl/loc/LTECellInfo;
    .registers 15
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x0

    .line 334
    const-string/jumbo v10, "phone"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 335
    .local v3, "manager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v10, "SUPL20_LTECellInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "TelephonyManager class:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 337
    .local v0, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v0, :cond_3c

    .line 338
    const-string/jumbo v10, "SUPL20_LTECellInfo"

    const-string/jumbo v11, "getAllCellInfo function returns list is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-object v13

    .line 342
    :cond_3c
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v6

    .line 343
    .local v6, "neighborCellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    if-eqz v6, :cond_b7

    .line 344
    const-string/jumbo v10, "SUPL20_LTECellInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "neighborCellInfoList size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "neighbor$iterator":Ljava/util/Iterator;
    :cond_64
    :goto_64
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/NeighboringCellInfo;

    .line 346
    .local v4, "neighbor":Landroid/telephony/NeighboringCellInfo;
    if-eqz v4, :cond_64

    .line 347
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    .line 348
    .local v2, "lac":I
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v1

    .line 349
    .local v1, "cid":I
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    move-result v8

    .line 350
    .local v8, "psc":I
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v9

    .line 351
    .local v9, "rssi":I
    invoke-virtual {v4}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    move-result v7

    .line 352
    .local v7, "nwtype":I
    const-string/jumbo v10, "SUPL20_LTECellInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "neighborCellInfo psc:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "rssi:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "nwtype:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 357
    .end local v1    # "cid":I
    .end local v2    # "lac":I
    .end local v4    # "neighbor":Landroid/telephony/NeighboringCellInfo;
    .end local v5    # "neighbor$iterator":Ljava/util/Iterator;
    .end local v7    # "nwtype":I
    .end local v8    # "psc":I
    .end local v9    # "rssi":I
    :cond_b7
    invoke-static {v0, v6}, Lcom/android/supl/loc/LTECellInfo;->getCellInfo_To_LTECellInfo(Ljava/util/List;Ljava/util/List;)Lcom/android/supl/loc/LTECellInfo;

    move-result-object v10

    return-object v10
.end method

.method public static getCellInfo_To_LTECellInfo(Ljava/util/List;Ljava/util/List;)Lcom/android/supl/loc/LTECellInfo;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)",
            "Lcom/android/supl/loc/LTECellInfo;"
        }
    .end annotation

    .prologue
    .line 403
    .local p0, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .local p1, "neighborCellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    const-string/jumbo v23, "SUPL20_LTECellInfo"

    const-string/jumbo v24, "start to get lte cell info"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/supl/loc/LTECellInfo;->bIsMeasResultListEUTRA:Z

    .line 405
    sget-object v23, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->clear()V

    .line 407
    if-nez p0, :cond_20

    .line 408
    const-string/jumbo v23, "SUPL20_LTECellInfo"

    const-string/jumbo v24, "cellInfoList is null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/16 v23, 0x0

    return-object v23

    .line 412
    :cond_20
    const/4 v12, 0x0

    .line 414
    .local v12, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    const-string/jumbo v23, "SUPL20_LTECellInfo"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "cellinfo list size: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v7, 0x0

    .line 416
    .local v7, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v7    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    .end local v12    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .local v4, "allCellInfo$iterator":Ljava/util/Iterator;
    :cond_44
    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_292

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 417
    .local v3, "allCellInfo":Landroid/telephony/CellInfo;
    instance-of v0, v3, Landroid/telephony/CellInfoLte;

    move/from16 v23, v0

    if-eqz v23, :cond_44

    move-object v7, v3

    .line 418
    check-cast v7, Landroid/telephony/CellInfoLte;

    .line 420
    .local v7, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v7}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v23

    if-eqz v23, :cond_1c9

    .line 421
    const/4 v11, 0x0

    .line 423
    .local v11, "identityLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v7}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v11

    .line 424
    .local v11, "identityLte":Landroid/telephony/CellIdentityLte;
    if-nez v11, :cond_72

    .line 425
    const-string/jumbo v23, "SUPL20_LTECellInfo"

    const-string/jumbo v24, "getCellIdentity function returns null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/16 v23, 0x0

    return-object v23

    .line 429
    :cond_72
    invoke-virtual {v11}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v15

    .line 430
    .local v15, "mnc":I
    invoke-virtual {v11}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v13

    .line 431
    .local v13, "mcc":I
    invoke-virtual {v11}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v20

    .line 432
    .local v20, "tac":I
    invoke-virtual {v11}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v8

    .line 433
    .local v8, "ci":I
    invoke-virtual {v11}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v16

    .line 435
    .local v16, "pci":I
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v5, v0, [C

    .line 437
    .local v5, "c_mcc":[C
    div-int/lit8 v23, v13, 0x64

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    aput-char v23, v5, v24

    .line 438
    rem-int/lit8 v23, v13, 0x64

    div-int/lit8 v23, v23, 0xa

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    aput-char v23, v5, v24

    .line 439
    rem-int/lit8 v23, v13, 0xa

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    const/16 v24, 0x2

    aput-char v23, v5, v24

    .line 441
    const/16 v23, 0x63

    move/from16 v0, v23

    if-le v15, v0, :cond_183

    .line 442
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v6, v0, [C

    .line 443
    .local v6, "c_mnc":[C
    div-int/lit8 v23, v15, 0x64

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    aput-char v23, v6, v24

    .line 444
    rem-int/lit8 v23, v15, 0x64

    div-int/lit8 v23, v23, 0xa

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    aput-char v23, v6, v24

    .line 445
    rem-int/lit8 v23, v15, 0xa

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    const/16 v24, 0x2

    aput-char v23, v6, v24

    .line 452
    :goto_de
    new-instance v19, Lcom/android/supl/loc/LTECellInfo$MNCList;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/android/supl/loc/LTECellInfo$MNCList;-><init>([C)V

    .line 453
    .local v19, "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    new-instance v18, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;-><init>([C)V

    .line 454
    .local v18, "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    new-instance v10, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v10, v0, v1, v2}, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;-><init>(ZLcom/android/supl/loc/LTECellInfo$MCC_LIST;Lcom/android/supl/loc/LTECellInfo$MNCList;)V

    .line 455
    .local v10, "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    new-instance v9, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    invoke-direct {v9, v10, v8}, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;-><init>(Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;I)V

    .line 456
    .local v9, "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    new-instance v12, Lcom/android/supl/loc/LTECellInfo;

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v23, v0

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v12, v9, v0, v1}, Lcom/android/supl/loc/LTECellInfo;-><init>(Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;CS)V

    .line 458
    .local v12, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    invoke-virtual {v7}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v17

    .line 459
    .local v17, "signal_strength":Landroid/telephony/CellSignalStrengthLte;
    if-eqz v17, :cond_1bf

    .line 460
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v23

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    sput-short v23, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    .line 464
    sget-short v23, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    move/from16 v0, v23

    add-int/lit16 v0, v0, 0x8d

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    sput-short v23, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    .line 465
    sget-short v23, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    if-gez v23, :cond_1a1

    .line 466
    const/16 v23, 0x0

    sput-short v23, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    .line 471
    :cond_139
    :goto_139
    const/16 v23, 0x1

    sput-boolean v23, Lcom/android/supl/loc/LTECellInfo;->bIsRSRPInfoPresent:Z

    .line 475
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result v23

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v23, v23, 0x28

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v23, v0

    sput-short v23, Lcom/android/supl/loc/LTECellInfo;->ucRSRQResult:S

    .line 476
    sget-short v23, Lcom/android/supl/loc/LTECellInfo;->ucRSRQResult:S

    if-gez v23, :cond_1b0

    .line 477
    const/16 v23, 0x0

    sput-short v23, Lcom/android/supl/loc/LTECellInfo;->ucRSRQResult:S

    .line 482
    :cond_154
    :goto_154
    const/16 v23, 0x1

    sput-boolean v23, Lcom/android/supl/loc/LTECellInfo;->bIsRSRQInfoPresent:Z

    .line 485
    const-string/jumbo v23, "SUPL20_LTECellInfo"

    const-string/jumbo v24, "ucRSRPResult:%d, ucRSRQResult:%d"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    sget-short v26, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    sget-short v26, Lcom/android/supl/loc/LTECellInfo;->ucRSRQResult:S

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v27, 0x1

    aput-object v26, v25, v27

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 447
    .end local v6    # "c_mnc":[C
    .end local v9    # "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    .end local v10    # "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    .end local v12    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .end local v17    # "signal_strength":Landroid/telephony/CellSignalStrengthLte;
    .end local v18    # "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    .end local v19    # "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    :cond_183
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v6, v0, [C

    .line 448
    .restart local v6    # "c_mnc":[C
    div-int/lit8 v23, v15, 0xa

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    aput-char v23, v6, v24

    .line 449
    rem-int/lit8 v23, v15, 0xa

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    aput-char v23, v6, v24

    goto/16 :goto_de

    .line 468
    .restart local v9    # "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    .restart local v10    # "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    .restart local v12    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .restart local v17    # "signal_strength":Landroid/telephony/CellSignalStrengthLte;
    .restart local v18    # "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    .restart local v19    # "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    :cond_1a1
    sget-short v23, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    const/16 v24, 0x61

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_139

    .line 469
    const/16 v23, 0x61

    sput-short v23, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    goto :goto_139

    .line 479
    :cond_1b0
    sget-short v23, Lcom/android/supl/loc/LTECellInfo;->ucRSRQResult:S

    const/16 v24, 0x22

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_154

    .line 480
    const/16 v23, 0x22

    sput-short v23, Lcom/android/supl/loc/LTECellInfo;->ucRSRQResult:S

    goto :goto_154

    .line 488
    :cond_1bf
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/supl/loc/LTECellInfo;->bIsRSRPInfoPresent:Z

    .line 489
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/supl/loc/LTECellInfo;->bIsRSRQInfoPresent:Z

    goto/16 :goto_44

    .line 494
    .end local v5    # "c_mcc":[C
    .end local v6    # "c_mnc":[C
    .end local v8    # "ci":I
    .end local v9    # "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    .end local v10    # "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    .end local v11    # "identityLte":Landroid/telephony/CellIdentityLte;
    .end local v12    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .end local v13    # "mcc":I
    .end local v15    # "mnc":I
    .end local v16    # "pci":I
    .end local v17    # "signal_strength":Landroid/telephony/CellSignalStrengthLte;
    .end local v18    # "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    .end local v19    # "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    .end local v20    # "tac":I
    :cond_1c9
    invoke-virtual {v7}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v11

    .line 495
    .restart local v11    # "identityLte":Landroid/telephony/CellIdentityLte;
    if-nez v11, :cond_1da

    .line 496
    const-string/jumbo v23, "SUPL20_LTECellInfo"

    const-string/jumbo v24, "get neighbor cell returns null"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 500
    :cond_1da
    invoke-virtual {v11}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v15

    .line 501
    .restart local v15    # "mnc":I
    invoke-virtual {v11}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v13

    .line 502
    .restart local v13    # "mcc":I
    invoke-virtual {v11}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v20

    .line 503
    .restart local v20    # "tac":I
    invoke-virtual {v11}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v8

    .line 504
    .restart local v8    # "ci":I
    invoke-virtual {v11}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v16

    .line 506
    .restart local v16    # "pci":I
    const/16 v21, 0x0

    .line 507
    .local v21, "usMeasResultRSRP":S
    const/16 v22, 0x0

    .line 508
    .local v22, "usMeasResultRSRQ":S
    invoke-virtual {v7}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v17

    .line 509
    .restart local v17    # "signal_strength":Landroid/telephony/CellSignalStrengthLte;
    if-eqz v17, :cond_246

    .line 510
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v23

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v21, v0

    .line 511
    .local v21, "usMeasResultRSRP":S
    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x8d

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v21, v0

    .line 512
    if-gez v21, :cond_271

    .line 513
    const/16 v21, 0x0

    .line 519
    .end local v21    # "usMeasResultRSRP":S
    :cond_210
    :goto_210
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result v23

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v23, v23, 0x28

    move/from16 v0, v23

    int-to-short v0, v0

    move/from16 v22, v0

    .line 520
    .local v22, "usMeasResultRSRQ":S
    if-gez v22, :cond_27c

    .line 521
    const/16 v22, 0x0

    .line 526
    .end local v22    # "usMeasResultRSRQ":S
    :cond_221
    :goto_221
    const-string/jumbo v23, "SUPL20_LTECellInfo"

    const-string/jumbo v24, "usMeasResultRSRP:%d, usMeasResultRSRQ:%d"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v25, v27

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v27, 0x1

    aput-object v26, v25, v27

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_246
    sget-object v23, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_287

    .line 530
    new-instance v14, Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v14, v0, v1, v2}, Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;-><init>(SSS)V

    .line 531
    .local v14, "measResult":Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;
    sget-object v23, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    const/16 v23, 0x1

    sput-boolean v23, Lcom/android/supl/loc/LTECellInfo;->bIsMeasResultListEUTRA:Z

    goto/16 :goto_44

    .line 515
    .end local v14    # "measResult":Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;
    .restart local v21    # "usMeasResultRSRP":S
    .local v22, "usMeasResultRSRQ":S
    :cond_271
    const/16 v23, 0x61

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_210

    .line 516
    const/16 v21, 0x61

    .local v21, "usMeasResultRSRP":S
    goto :goto_210

    .line 523
    .end local v21    # "usMeasResultRSRP":S
    .local v22, "usMeasResultRSRQ":S
    :cond_27c
    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_221

    .line 524
    const/16 v22, 0x22

    .local v22, "usMeasResultRSRQ":S
    goto :goto_221

    .line 536
    .end local v22    # "usMeasResultRSRQ":S
    :cond_287
    const-string/jumbo v23, "SUPL20_LTECellInfo"

    const-string/jumbo v24, "listMRLEUTRA size > 8, discard!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 541
    .end local v3    # "allCellInfo":Landroid/telephony/CellInfo;
    .end local v7    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    .end local v8    # "ci":I
    .end local v11    # "identityLte":Landroid/telephony/CellIdentityLte;
    .end local v13    # "mcc":I
    .end local v15    # "mnc":I
    .end local v16    # "pci":I
    .end local v17    # "signal_strength":Landroid/telephony/CellSignalStrengthLte;
    .end local v20    # "tac":I
    :cond_292
    const-string/jumbo v23, "SUPL20_LTECellInfo"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "listMRLEUTRA size: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-object v12
.end method

.method public static getCellLocation_To_LTECellInfo(Landroid/telephony/CellLocation;II)Lcom/android/supl/loc/LTECellInfo;
    .registers 14
    .param p0, "cellLoc"    # Landroid/telephony/CellLocation;
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I

    .prologue
    .line 361
    instance-of v9, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v9, :cond_81

    move-object v3, p0

    .line 362
    nop

    nop

    .line 363
    .local v3, "gsmCell":Landroid/telephony/gsm/GsmCellLocation;
    const/4 v9, 0x3

    new-array v0, v9, [C

    .line 366
    .local v0, "c_mcc":[C
    div-int/lit8 v9, p1, 0x64

    int-to-char v9, v9

    const/4 v10, 0x0

    aput-char v9, v0, v10

    .line 367
    rem-int/lit8 v9, p1, 0x64

    div-int/lit8 v9, v9, 0xa

    int-to-char v9, v9

    const/4 v10, 0x1

    aput-char v9, v0, v10

    .line 368
    rem-int/lit8 v9, p1, 0xa

    int-to-char v9, v9

    const/4 v10, 0x2

    aput-char v9, v0, v10

    .line 370
    const/16 v9, 0x63

    if-le p2, v9, :cond_71

    .line 371
    const/4 v9, 0x3

    new-array v1, v9, [C

    .line 372
    .local v1, "c_mnc":[C
    div-int/lit8 v9, p2, 0x64

    int-to-char v9, v9

    const/4 v10, 0x0

    aput-char v9, v1, v10

    .line 373
    rem-int/lit8 v9, p2, 0x64

    div-int/lit8 v9, v9, 0xa

    int-to-char v9, v9

    const/4 v10, 0x1

    aput-char v9, v1, v10

    .line 374
    rem-int/lit8 v9, p2, 0xa

    int-to-char v9, v9

    const/4 v10, 0x2

    aput-char v9, v1, v10

    .line 381
    :goto_39
    new-instance v8, Lcom/android/supl/loc/LTECellInfo$MNCList;

    invoke-direct {v8, v1}, Lcom/android/supl/loc/LTECellInfo$MNCList;-><init>([C)V

    .line 382
    .local v8, "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    new-instance v7, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;

    invoke-direct {v7, v0}, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;-><init>([C)V

    .line 383
    .local v7, "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    new-instance v4, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;

    const/4 v9, 0x1

    invoke-direct {v4, v9, v7, v8}, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;-><init>(ZLcom/android/supl/loc/LTECellInfo$MCC_LIST;Lcom/android/supl/loc/LTECellInfo$MNCList;)V

    .line 384
    .local v4, "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    new-instance v2, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v9

    invoke-direct {v2, v4, v9}, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;-><init>(Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;I)V

    .line 387
    .local v2, "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    const/4 v6, 0x0

    .line 388
    .local v6, "sPhysCellID":S
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v9

    if-ltz v9, :cond_66

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v9

    const/16 v10, 0x1f7

    if-lt v10, v9, :cond_66

    .line 389
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v9

    int-to-short v6, v9

    .line 392
    .end local v6    # "sPhysCellID":S
    :cond_66
    new-instance v5, Lcom/android/supl/loc/LTECellInfo;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v9

    int-to-char v9, v9

    invoke-direct {v5, v2, v9, v6}, Lcom/android/supl/loc/LTECellInfo;-><init>(Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;CS)V

    .line 393
    .local v5, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    return-object v5

    .line 376
    .end local v1    # "c_mnc":[C
    .end local v2    # "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    .end local v4    # "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    .end local v5    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .end local v7    # "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    .end local v8    # "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    :cond_71
    const/4 v9, 0x2

    new-array v1, v9, [C

    .line 377
    .restart local v1    # "c_mnc":[C
    div-int/lit8 v9, p2, 0xa

    int-to-char v9, v9

    const/4 v10, 0x0

    aput-char v9, v1, v10

    .line 378
    rem-int/lit8 v9, p2, 0xa

    int-to-char v9, v9

    const/4 v10, 0x1

    aput-char v9, v1, v10

    goto :goto_39

    .line 396
    .end local v0    # "c_mcc":[C
    .end local v1    # "c_mnc":[C
    .end local v3    # "gsmCell":Landroid/telephony/gsm/GsmCellLocation;
    :cond_81
    const/4 v9, 0x0

    return-object v9
.end method

.method private static getFunctionReturnValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "stClassName"    # Ljava/lang/String;
    .param p2, "stMethodName"    # Ljava/lang/String;
    .param p4, "arglist"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 605
    .local p3, "pType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v12, 0x0

    .line 607
    .local v12, "retobj":Ljava/lang/Object;
    :try_start_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 610
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 612
    .local v10, "getMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v13, "SUPL20_LTECellInfo"

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v11, 0x0

    .line 615
    .local v11, "methobj":Ljava/lang/Object;
    if-nez p0, :cond_25

    .line 616
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    .line 622
    :goto_1e
    move-object/from16 v0, p4

    invoke-virtual {v10, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_23} :catch_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_23} :catch_63
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_23} :catch_57
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_23} :catch_4b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_23} :catch_3f
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_23} :catch_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_23} :catch_27

    move-result-object v12

    .line 639
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "getMethod":Ljava/lang/reflect/Method;
    .end local v11    # "methobj":Ljava/lang/Object;
    .end local v12    # "retobj":Ljava/lang/Object;
    :goto_24
    return-object v12

    .line 618
    .restart local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "getMethod":Ljava/lang/reflect/Method;
    .restart local v11    # "methobj":Ljava/lang/Object;
    .restart local v12    # "retobj":Ljava/lang/Object;
    :cond_25
    move-object v11, p0

    goto :goto_1e

    .line 635
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "getMethod":Ljava/lang/reflect/Method;
    .end local v11    # "methobj":Ljava/lang/Object;
    :catch_27
    move-exception v3

    .line 636
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v13, "SUPL20_LTECellInfo"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 633
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_33
    move-exception v8

    .line 634
    .local v8, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v13, "SUPL20_LTECellInfo"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 631
    .end local v8    # "ex":Ljava/lang/SecurityException;
    :catch_3f
    move-exception v7

    .line 632
    .local v7, "ex":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v13, "SUPL20_LTECellInfo"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 629
    .end local v7    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_4b
    move-exception v4

    .line 630
    .local v4, "ex":Ljava/lang/IllegalAccessException;
    const-string/jumbo v13, "SUPL20_LTECellInfo"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 627
    .end local v4    # "ex":Ljava/lang/IllegalAccessException;
    :catch_57
    move-exception v9

    .line 628
    .local v9, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v13, "SUPL20_LTECellInfo"

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 625
    .end local v9    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_63
    move-exception v5

    .line 626
    .local v5, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v13, "SUPL20_LTECellInfo"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 623
    .end local v5    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_6f
    move-exception v6

    .line 624
    .local v6, "ex":Ljava/lang/InstantiationException;
    const-string/jumbo v13, "SUPL20_LTECellInfo"

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method public static getNONAPILTECellInfo(Landroid/content/Context;)Lcom/android/supl/loc/LTECellInfo;
    .registers 30
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 548
    :try_start_0
    const-class v26, Landroid/telephony/TelephonyManager;

    const-string/jumbo v27, "getAllCellInfo"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 550
    .local v11, "method":Ljava/lang/reflect/Method;
    if-eqz v11, :cond_1e2

    .line 551
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v12, v0, [Ljava/lang/Class;

    .line 552
    .local v12, "noparams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v26, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 553
    .local v10, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "getAllCellInfo"

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v10, v0, v1, v12, v2}, Lcom/android/supl/loc/LTECellInfo;->getFunctionReturnValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 554
    .local v16, "retobj":Ljava/lang/Object;
    if-nez v16, :cond_45

    .line 555
    const-string/jumbo v26, "SUPL20_LTECellInfo"

    const-string/jumbo v27, "getAllCellInfo function return null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/16 v26, 0x0

    return-object v26

    .line 558
    :cond_45
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 559
    .local v15, "reClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v26, Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1e2

    .line 560
    move-object/from16 v0, v16

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 561
    .local v4, "allCellInfoarrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "object$iterator":Ljava/util/Iterator;
    :cond_5c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1e2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 562
    .local v13, "object":Ljava/lang/Object;
    if-eqz v13, :cond_5c

    .line 563
    const-string/jumbo v26, "SUPL20_LTECellInfo"

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "getCellIdentity"

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v13, v0, v1, v12, v2}, Lcom/android/supl/loc/LTECellInfo;->getFunctionReturnValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 566
    .local v17, "retobjCellInde":Ljava/lang/Object;
    if-eqz v17, :cond_5c

    .line 567
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "android.telephony.LteCellIdentity"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5c

    .line 568
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "getMcc"

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v12, v3}, Lcom/android/supl/loc/LTECellInfo;->getFunctionReturnValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 569
    .local v19, "retobjMCC":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "getMnc"

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v12, v3}, Lcom/android/supl/loc/LTECellInfo;->getFunctionReturnValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 570
    .local v20, "retobjMNC":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "getCi"

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v12, v3}, Lcom/android/supl/loc/LTECellInfo;->getFunctionReturnValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 571
    .local v18, "retobjCi":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "getPci"

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v12, v3}, Lcom/android/supl/loc/LTECellInfo;->getFunctionReturnValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 572
    .local v21, "retobjPci":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "getTac"

    const/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v12, v3}, Lcom/android/supl/loc/LTECellInfo;->getFunctionReturnValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 573
    .local v22, "retobjTac":Ljava/lang/Object;
    const-string/jumbo v26, "SUPL20_LTECellInfo"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string/jumbo v26, "SUPL20_LTECellInfo"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string/jumbo v26, "SUPL20_LTECellInfo"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const-string/jumbo v26, "SUPL20_LTECellInfo"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string/jumbo v26, "SUPL20_LTECellInfo"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v24, Lcom/android/supl/loc/LTECellInfo$MNCList;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v26, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    int-to-char v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput-char v27, v26, v28

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/supl/loc/LTECellInfo$MNCList;-><init>([C)V

    .line 579
    .local v24, "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    new-instance v23, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object/from16 v26, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    int-to-char v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    aput-char v27, v26, v28

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;-><init>([C)V

    .line 581
    .local v23, "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    new-instance v8, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v8, v0, v1, v2}, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;-><init>(ZLcom/android/supl/loc/LTECellInfo$MCC_LIST;Lcom/android/supl/loc/LTECellInfo$MNCList;)V

    .line 583
    .local v8, "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    new-instance v5, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    int-to-char v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-direct {v5, v8, v0}, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;-><init>(Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;I)V

    .line 585
    .local v5, "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v25

    .line 586
    .local v25, "ucPhysCellID":S
    new-instance v9, Lcom/android/supl/loc/LTECellInfo;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    int-to-char v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-direct {v9, v5, v0, v1}, Lcom/android/supl/loc/LTECellInfo;-><init>(Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;CS)V
    :try_end_1d2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1d2} :catch_1e5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1d2} :catch_1d3

    .line 587
    .local v9, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    return-object v9

    .line 596
    .end local v4    # "allCellInfoarrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v5    # "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    .end local v8    # "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    .end local v9    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .end local v10    # "manager":Landroid/telephony/TelephonyManager;
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v12    # "noparams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v13    # "object":Ljava/lang/Object;
    .end local v14    # "object$iterator":Ljava/util/Iterator;
    .end local v15    # "reClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "retobj":Ljava/lang/Object;
    .end local v17    # "retobjCellInde":Ljava/lang/Object;
    .end local v18    # "retobjCi":Ljava/lang/Object;
    .end local v19    # "retobjMCC":Ljava/lang/Object;
    .end local v20    # "retobjMNC":Ljava/lang/Object;
    .end local v21    # "retobjPci":Ljava/lang/Object;
    .end local v22    # "retobjTac":Ljava/lang/Object;
    .end local v23    # "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    .end local v24    # "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    .end local v25    # "ucPhysCellID":S
    :catch_1d3
    move-exception v7

    .line 597
    .local v7, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v26, "SUPL20_LTECellInfo"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    .end local v7    # "ex":Ljava/lang/SecurityException;
    :cond_1e2
    :goto_1e2
    const/16 v26, 0x0

    return-object v26

    .line 594
    :catch_1e5
    move-exception v6

    .line 595
    .local v6, "ex":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v26, "SUPL20_LTECellInfo"

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e2
.end method


# virtual methods
.method public getLTECellInfo()[B
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 99
    const/4 v4, 0x0

    .line 100
    .local v4, "iOffset":I
    const/4 v5, 0x0

    .line 102
    .local v5, "iSize":I
    const/4 v1, 0x0

    .line 103
    .local v1, "bData":[B
    iget-object v8, p0, Lcom/android/supl/loc/LTECellInfo;->stCELLGlobalID:Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    invoke-virtual {v8}, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;->getCellGlobalidInfo()[B

    move-result-object v3

    .line 104
    .local v3, "bstCELLGlobalID":[B
    array-length v8, v3

    add-int/lit8 v5, v8, 0x0

    .line 105
    add-int/lit8 v5, v5, 0x2

    .line 107
    add-int/lit8 v5, v5, 0x2

    .line 109
    add-int/lit8 v5, v5, 0x10

    .line 110
    sget-boolean v8, Lcom/android/supl/loc/LTECellInfo;->bIsRSRPInfoPresent:Z

    if-eqz v8, :cond_1a

    .line 111
    add-int/lit8 v5, v5, 0x1

    .line 113
    :cond_1a
    sget-boolean v8, Lcom/android/supl/loc/LTECellInfo;->bIsRSRQInfoPresent:Z

    if-eqz v8, :cond_20

    .line 114
    add-int/lit8 v5, v5, 0x1

    .line 116
    :cond_20
    sget-boolean v8, Lcom/android/supl/loc/LTECellInfo;->bIsTAInfoPresent:Z

    if-eqz v8, :cond_26

    .line 117
    add-int/lit8 v5, v5, 0x2

    .line 119
    :cond_26
    const/4 v2, 0x0

    .line 120
    .local v2, "bMeasureList":[B
    sget-boolean v8, Lcom/android/supl/loc/LTECellInfo;->bIsMeasResultListEUTRA:Z

    if-eqz v8, :cond_5b

    sget-object v8, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    if-eqz v8, :cond_5b

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "MeasOffset":I
    sget-object v8, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x6

    new-array v2, v8, [B

    .line 123
    .local v2, "bMeasureList":[B
    sget-object v8, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "measResult$iterator":Ljava/util/Iterator;
    :goto_40
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;

    .line 124
    .local v6, "measResult":Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;
    invoke-virtual {v6}, Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;->getMeasResultEUTRA()[B

    move-result-object v8

    const/4 v9, 0x6

    invoke-static {v8, v10, v2, v0, v9}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 125
    add-int/lit8 v0, v0, 0x6

    goto :goto_40

    .line 128
    .end local v6    # "measResult":Lcom/android/supl/loc/LTECellInfo$measResultEUTRA;
    :cond_57
    add-int/lit8 v5, v5, 0x1

    .line 129
    array-length v8, v2

    add-int/2addr v5, v8

    .line 132
    .end local v0    # "MeasOffset":I
    .end local v2    # "bMeasureList":[B
    .end local v7    # "measResult$iterator":Ljava/util/Iterator;
    :cond_5b
    new-array v1, v5, [B

    .line 133
    .local v1, "bData":[B
    array-length v8, v3

    invoke-static {v3, v10, v1, v4, v8}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 134
    array-length v8, v3

    add-int/lit8 v4, v8, 0x0

    .line 135
    iget-short v8, p0, Lcom/android/supl/loc/LTECellInfo;->usPhysCellID:S

    invoke-static {v1, v4, v8}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v4

    .line 137
    iget-char v8, p0, Lcom/android/supl/loc/LTECellInfo;->usTrackAreaCode:C

    invoke-static {v1, v4, v8}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v4

    .line 138
    sget-boolean v8, Lcom/android/supl/loc/LTECellInfo;->bIsRSRPInfoPresent:Z

    if-eqz v8, :cond_c1

    .line 139
    invoke-static {v1, v4, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 140
    sget-short v8, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    invoke-static {v1, v4, v8}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v4

    .line 145
    :goto_7e
    sget-boolean v8, Lcom/android/supl/loc/LTECellInfo;->bIsRSRQInfoPresent:Z

    if-eqz v8, :cond_c6

    .line 146
    invoke-static {v1, v4, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 147
    sget-short v8, Lcom/android/supl/loc/LTECellInfo;->ucRSRQResult:S

    invoke-static {v1, v4, v8}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v4

    .line 152
    :goto_8c
    sget-boolean v8, Lcom/android/supl/loc/LTECellInfo;->bIsTAInfoPresent:Z

    if-eqz v8, :cond_cb

    .line 153
    invoke-static {v1, v4, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 154
    sget-short v8, Lcom/android/supl/loc/LTECellInfo;->usTA:S

    invoke-static {v1, v4, v8}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v4

    .line 158
    :goto_9a
    sget-boolean v8, Lcom/android/supl/loc/LTECellInfo;->bIsMeasResultListEUTRA:Z

    if-eqz v8, :cond_d0

    sget-object v8, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    if-eqz v8, :cond_d0

    .line 159
    invoke-static {v1, v4, v11}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    .line 160
    sget-object v8, Lcom/android/supl/loc/LTECellInfo;->listMRLEUTRA:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v1, v4, v8}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v4

    .line 161
    array-length v8, v2

    invoke-static {v2, v10, v1, v4, v8}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 162
    array-length v8, v2

    add-int/2addr v4, v8

    .line 167
    :goto_b6
    if-eq v4, v5, :cond_c0

    .line 168
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "LTECellInfo length error"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    :cond_c0
    return-object v1

    .line 142
    :cond_c1
    invoke-static {v1, v4, v10}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    goto :goto_7e

    .line 149
    :cond_c6
    invoke-static {v1, v4, v10}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    goto :goto_8c

    .line 156
    :cond_cb
    invoke-static {v1, v4, v10}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    goto :goto_9a

    .line 165
    :cond_d0
    invoke-static {v1, v4, v10}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v4

    goto :goto_b6
.end method
