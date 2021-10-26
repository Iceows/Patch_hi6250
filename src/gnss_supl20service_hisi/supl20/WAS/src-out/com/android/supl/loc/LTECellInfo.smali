.class public Lcom/android/supl/loc/LTECellInfo;
.super Ljava/lang/Object;
.source "LTECellInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;,
        Lcom/android/supl/loc/LTECellInfo$MCC_LIST;,
        Lcom/android/supl/loc/LTECellInfo$MNCList;,
        Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/lang/String; = "LTECEllInfo"


# instance fields
.field public bIsMeasResListInfoPresent:Z

.field public bIsRSRPInfoPresent:Z

.field public bIsRSRQInfoPresent:Z

.field public bIsTAInfoPresent:Z

.field public stCELLGlobalID:Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

.field public stMRL:Lcom/android/supl/loc/measure/MeasuredResultsList;

.field public ucRSRPResult:S

.field public ucRSRQResult:S

.field public usPhysCellID:S

.field public usTA:S

.field public usTrackAreaCode:C


# direct methods
.method public constructor <init>(Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;CS)V
    .registers 6
    .param p1, "stCELLGlobalID"    # Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    .param p2, "usTrackAreaCode"    # C
    .param p3, "ucPhysCellID"    # S

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/android/supl/loc/LTECellInfo;->stCELLGlobalID:Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    .line 63
    iput-boolean v0, p0, Lcom/android/supl/loc/LTECellInfo;->bIsRSRPInfoPresent:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/supl/loc/LTECellInfo;->bIsRSRQInfoPresent:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/supl/loc/LTECellInfo;->bIsTAInfoPresent:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/supl/loc/LTECellInfo;->bIsMeasResListInfoPresent:Z

    .line 83
    if-nez p1, :cond_1a

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cell_Globalid_Eutra should not null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1a
    if-nez p2, :cond_25

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TrackAreaCode should not zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_25
    iput-object p1, p0, Lcom/android/supl/loc/LTECellInfo;->stCELLGlobalID:Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    .line 90
    iput-char p2, p0, Lcom/android/supl/loc/LTECellInfo;->usTrackAreaCode:C

    .line 91
    iput-short p3, p0, Lcom/android/supl/loc/LTECellInfo;->usPhysCellID:S

    .line 82
    return-void
.end method

.method public static getAPILTECellInfo(Landroid/content/Context;)Lcom/android/supl/loc/LTECellInfo;
    .registers 7
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 293
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 294
    .local v1, "manager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v2, "LTECEllInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TelephonyManager class:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 296
    .local v0, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v0, :cond_3c

    .line 297
    const-string/jumbo v2, "LTECEllInfo"

    const-string/jumbo v3, "getAllCellInfo function returns list is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-object v5

    .line 301
    :cond_3c
    invoke-static {v0}, Lcom/android/supl/loc/LTECellInfo;->getCellInfo_To_LTECellInfo(Ljava/util/List;)Lcom/android/supl/loc/LTECellInfo;

    move-result-object v2

    return-object v2
.end method

.method public static getCellInfo_To_LTECellInfo(Ljava/util/List;)Lcom/android/supl/loc/LTECellInfo;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Lcom/android/supl/loc/LTECellInfo;"
        }
    .end annotation

    .prologue
    .local p0, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 339
    if-nez p0, :cond_f

    .line 340
    const-string/jumbo v10, "LTECEllInfo"

    const-string/jumbo v11, "cellInfoList is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-object v12

    .line 343
    :cond_f
    const/4 v2, 0x0

    .line 344
    .local v2, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "allCellInfo$iterator":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 345
    .local v0, "allCellInfo":Landroid/telephony/CellInfo;
    instance-of v10, v0, Landroid/telephony/CellInfoLte;

    if-eqz v10, :cond_14

    move-object v2, v0

    .line 346
    check-cast v2, Landroid/telephony/CellInfoLte;

    .line 350
    .end local v0    # "allCellInfo":Landroid/telephony/CellInfo;
    .end local v2    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    :cond_27
    const/4 v5, 0x0

    .line 351
    .local v5, "identityLte":Landroid/telephony/CellIdentityLte;
    if-nez v2, :cond_34

    .line 352
    const-string/jumbo v10, "LTECEllInfo"

    const-string/jumbo v11, "cellInfoList could not find the CellInfoLte"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-object v12

    .line 355
    :cond_34
    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v5

    .line 356
    .local v5, "identityLte":Landroid/telephony/CellIdentityLte;
    if-nez v5, :cond_44

    .line 357
    const-string/jumbo v10, "LTECEllInfo"

    const-string/jumbo v11, "getCellIdentity function returns null CellIdentityLte"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-object v12

    .line 360
    :cond_44
    new-instance v8, Lcom/android/supl/loc/LTECellInfo$MNCList;

    new-array v10, v13, [C

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v11

    int-to-char v11, v11

    aput-char v11, v10, v14

    invoke-direct {v8, v10}, Lcom/android/supl/loc/LTECellInfo$MNCList;-><init>([C)V

    .line 361
    .local v8, "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    new-instance v7, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;

    new-array v10, v13, [C

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v11

    int-to-char v11, v11

    aput-char v11, v10, v14

    invoke-direct {v7, v10}, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;-><init>([C)V

    .line 362
    .local v7, "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    new-instance v4, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;

    invoke-direct {v4, v13, v7, v8}, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;-><init>(ZLcom/android/supl/loc/LTECellInfo$MCC_LIST;Lcom/android/supl/loc/LTECellInfo$MNCList;)V

    .line 363
    .local v4, "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    new-instance v3, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v10

    int-to-char v10, v10

    invoke-direct {v3, v4, v10}, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;-><init>(Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;I)V

    .line 364
    .local v3, "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v10

    int-to-short v9, v10

    .line 365
    .local v9, "ucPhysCellID":S
    new-instance v6, Lcom/android/supl/loc/LTECellInfo;

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v10

    int-to-char v10, v10

    invoke-direct {v6, v3, v10, v9}, Lcom/android/supl/loc/LTECellInfo;-><init>(Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;CS)V

    .line 366
    .local v6, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    return-object v6
.end method

.method public static getCellLocation_To_LTECellInfo(Landroid/telephony/CellLocation;II)Lcom/android/supl/loc/LTECellInfo;
    .registers 15
    .param p0, "cellLoc"    # Landroid/telephony/CellLocation;
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I

    .prologue
    .line 305
    instance-of v9, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v9, :cond_cf

    move-object v3, p0

    .line 306
    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    .line 307
    .local v3, "gsmCell":Landroid/telephony/gsm/GsmCellLocation;
    const/4 v9, 0x3

    new-array v0, v9, [C

    .line 310
    .local v0, "c_mcc":[C
    div-int/lit8 v9, p1, 0x64

    int-to-char v9, v9

    const/4 v10, 0x0

    aput-char v9, v0, v10

    .line 311
    rem-int/lit8 v9, p1, 0x64

    div-int/lit8 v9, v9, 0xa

    int-to-char v9, v9

    const/4 v10, 0x1

    aput-char v9, v0, v10

    .line 312
    rem-int/lit8 v9, p1, 0xa

    int-to-char v9, v9

    const/4 v10, 0x2

    aput-char v9, v0, v10

    .line 314
    const/16 v9, 0x63

    if-le p2, v9, :cond_be

    .line 315
    const/4 v9, 0x3

    new-array v1, v9, [C

    .line 316
    .local v1, "c_mnc":[C
    div-int/lit8 v9, p2, 0x64

    int-to-char v9, v9

    const/4 v10, 0x0

    aput-char v9, v1, v10

    .line 317
    rem-int/lit8 v9, p2, 0x64

    div-int/lit8 v9, v9, 0xa

    int-to-char v9, v9

    const/4 v10, 0x1

    aput-char v9, v1, v10

    .line 318
    rem-int/lit8 v9, p2, 0xa

    int-to-char v9, v9

    const/4 v10, 0x2

    aput-char v9, v1, v10

    .line 324
    :goto_39
    const-string/jumbo v9, "LTECEllInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mcc: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-char v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-char v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-char v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " Len: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string/jumbo v9, "LTECEllInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mnc: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-char v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " Len: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v7, Lcom/android/supl/loc/LTECellInfo$MNCList;

    invoke-direct {v7, v1}, Lcom/android/supl/loc/LTECellInfo$MNCList;-><init>([C)V

    .line 328
    .local v7, "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    new-instance v6, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;

    invoke-direct {v6, v0}, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;-><init>([C)V

    .line 329
    .local v6, "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    new-instance v4, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;

    const/4 v9, 0x1

    invoke-direct {v4, v9, v6, v7}, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;-><init>(ZLcom/android/supl/loc/LTECellInfo$MCC_LIST;Lcom/android/supl/loc/LTECellInfo$MNCList;)V

    .line 330
    .local v4, "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    new-instance v2, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v9

    invoke-direct {v2, v4, v9}, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;-><init>(Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;I)V

    .line 331
    .local v2, "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    const/4 v8, 0x0

    .line 332
    .local v8, "ucPhysCellID":S
    new-instance v5, Lcom/android/supl/loc/LTECellInfo;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v9

    int-to-char v9, v9

    invoke-direct {v5, v2, v9, v8}, Lcom/android/supl/loc/LTECellInfo;-><init>(Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;CS)V

    .line 333
    .local v5, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    return-object v5

    .line 320
    .end local v1    # "c_mnc":[C
    .end local v2    # "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    .end local v4    # "identity":Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;
    .end local v5    # "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    .end local v6    # "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    .end local v7    # "stMNC":Lcom/android/supl/loc/LTECellInfo$MNCList;
    .end local v8    # "ucPhysCellID":S
    :cond_be
    const/4 v9, 0x2

    new-array v1, v9, [C

    .line 321
    .restart local v1    # "c_mnc":[C
    div-int/lit8 v9, p2, 0xa

    int-to-char v9, v9

    const/4 v10, 0x0

    aput-char v9, v1, v10

    .line 322
    rem-int/lit8 v9, p2, 0xa

    int-to-char v9, v9

    const/4 v10, 0x1

    aput-char v9, v1, v10

    goto/16 :goto_39

    .line 335
    .end local v0    # "c_mcc":[C
    .end local v1    # "c_mnc":[C
    .end local v3    # "gsmCell":Landroid/telephony/gsm/GsmCellLocation;
    :cond_cf
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
    .line 427
    .local p3, "pType":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v12, 0x0

    .line 429
    .local v12, "retobj":Ljava/lang/Object;
    :try_start_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 432
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 434
    .local v10, "getMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v13, "LTECEllInfo"

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v11, 0x0

    .line 437
    .local v11, "methobj":Ljava/lang/Object;
    if-nez p0, :cond_25

    .line 438
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    .line 444
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

    .line 461
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "getMethod":Ljava/lang/reflect/Method;
    .end local v11    # "methobj":Ljava/lang/Object;
    .end local v12    # "retobj":Ljava/lang/Object;
    :goto_24
    return-object v12

    .line 440
    .restart local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "getMethod":Ljava/lang/reflect/Method;
    .restart local v11    # "methobj":Ljava/lang/Object;
    .restart local v12    # "retobj":Ljava/lang/Object;
    :cond_25
    move-object v11, p0

    goto :goto_1e

    .line 457
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "getMethod":Ljava/lang/reflect/Method;
    .end local v11    # "methobj":Ljava/lang/Object;
    :catch_27
    move-exception v3

    .line 458
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v13, "LTECEllInfo"

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 455
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_33
    move-exception v8

    .line 456
    .local v8, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v13, "LTECEllInfo"

    invoke-virtual {v8}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 453
    .end local v8    # "ex":Ljava/lang/SecurityException;
    :catch_3f
    move-exception v7

    .line 454
    .local v7, "ex":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v13, "LTECEllInfo"

    invoke-virtual {v7}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 451
    .end local v7    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_4b
    move-exception v4

    .line 452
    .local v4, "ex":Ljava/lang/IllegalAccessException;
    const-string/jumbo v13, "LTECEllInfo"

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 449
    .end local v4    # "ex":Ljava/lang/IllegalAccessException;
    :catch_57
    move-exception v9

    .line 450
    .local v9, "ex":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v13, "LTECEllInfo"

    invoke-virtual {v9}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 447
    .end local v9    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_63
    move-exception v5

    .line 448
    .local v5, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v13, "LTECEllInfo"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 445
    .end local v5    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_6f
    move-exception v6

    .line 446
    .local v6, "ex":Ljava/lang/InstantiationException;
    const-string/jumbo v13, "LTECEllInfo"

    invoke-virtual {v6}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method public static getNONAPILTECellInfo(Landroid/content/Context;)Lcom/android/supl/loc/LTECellInfo;
    .registers 30
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 370
    :try_start_0
    const-class v26, Landroid/telephony/TelephonyManager;

    const-string/jumbo v27, "getAllCellInfo"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 372
    .local v11, "method":Ljava/lang/reflect/Method;
    if-eqz v11, :cond_1e2

    .line 373
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v12, v0, [Ljava/lang/Class;

    .line 374
    .local v12, "noparams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v26, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 375
    .local v10, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getClass()Ljava/lang/Class;

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

    .line 376
    .local v16, "retobj":Ljava/lang/Object;
    if-nez v16, :cond_45

    .line 377
    const-string/jumbo v26, "LTECEllInfo"

    const-string/jumbo v27, "getAllCellInfo function return null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/16 v26, 0x0

    return-object v26

    .line 380
    :cond_45
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 381
    .local v15, "reClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v26, Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1e2

    .line 382
    move-object/from16 v0, v16

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 383
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

    .line 384
    .local v13, "object":Ljava/lang/Object;
    if-eqz v13, :cond_5c

    .line 385
    const-string/jumbo v26, "LTECEllInfo"

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
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

    .line 388
    .local v17, "retobjCellInde":Ljava/lang/Object;
    if-eqz v17, :cond_5c

    .line 389
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "android.telephony.LteCellIdentity"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5c

    .line 390
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

    .line 391
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

    .line 392
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

    .line 393
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

    .line 394
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

    .line 395
    .local v22, "retobjTac":Ljava/lang/Object;
    const-string/jumbo v26, "LTECEllInfo"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string/jumbo v26, "LTECEllInfo"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string/jumbo v26, "LTECEllInfo"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string/jumbo v26, "LTECEllInfo"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string/jumbo v26, "LTECEllInfo"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
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

    .line 401
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

    .line 403
    .local v23, "stMCC":Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
    new-instance v8, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v8, v0, v1, v2}, Lcom/android/supl/loc/LTECellInfo$PlmnIdentity;-><init>(ZLcom/android/supl/loc/LTECellInfo$MCC_LIST;Lcom/android/supl/loc/LTECellInfo$MNCList;)V

    .line 405
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

    .line 407
    .local v5, "eutra":Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v25

    .line 408
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

    .line 409
    .local v9, "lteCellInfo":Lcom/android/supl/loc/LTECellInfo;
    return-object v9

    .line 418
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

    .line 419
    .local v7, "ex":Ljava/lang/SecurityException;
    const-string/jumbo v26, "LTECEllInfo"

    invoke-virtual {v7}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    .end local v7    # "ex":Ljava/lang/SecurityException;
    :cond_1e2
    :goto_1e2
    const/16 v26, 0x0

    return-object v26

    .line 416
    :catch_1e5
    move-exception v6

    .line 417
    .local v6, "ex":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v26, "LTECEllInfo"

    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e2
.end method


# virtual methods
.method public getLTECellInfo()[B
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 95
    const/4 v3, 0x0

    .line 98
    .local v3, "iOffset":I
    const/4 v0, 0x0

    .line 99
    .local v0, "bData":[B
    iget-object v5, p0, Lcom/android/supl/loc/LTECellInfo;->stCELLGlobalID:Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;

    invoke-virtual {v5}, Lcom/android/supl/loc/LTECellInfo$Cell_Globalid_Eutra;->getCellGlobalidInfo()[B

    move-result-object v2

    .line 100
    .local v2, "bstCELLGlobalID":[B
    array-length v5, v2

    add-int/lit8 v4, v5, 0x0

    .line 101
    .local v4, "iSize":I
    add-int/lit8 v4, v4, 0x2

    .line 103
    add-int/lit8 v4, v4, 0x2

    .line 105
    add-int/lit8 v4, v4, 0x10

    .line 106
    iget-boolean v5, p0, Lcom/android/supl/loc/LTECellInfo;->bIsRSRPInfoPresent:Z

    if-eqz v5, :cond_19

    .line 107
    add-int/lit8 v4, v4, 0x1

    .line 109
    :cond_19
    iget-boolean v5, p0, Lcom/android/supl/loc/LTECellInfo;->bIsRSRQInfoPresent:Z

    if-eqz v5, :cond_1f

    .line 110
    add-int/lit8 v4, v4, 0x1

    .line 112
    :cond_1f
    iget-boolean v5, p0, Lcom/android/supl/loc/LTECellInfo;->bIsTAInfoPresent:Z

    if-eqz v5, :cond_25

    .line 113
    add-int/lit8 v4, v4, 0x2

    .line 115
    :cond_25
    const/4 v1, 0x0

    .line 116
    .local v1, "bMeasureList":[B
    iget-boolean v5, p0, Lcom/android/supl/loc/LTECellInfo;->bIsMeasResListInfoPresent:Z

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/android/supl/loc/LTECellInfo;->stMRL:Lcom/android/supl/loc/measure/MeasuredResultsList;

    if-eqz v5, :cond_36

    .line 117
    iget-object v5, p0, Lcom/android/supl/loc/LTECellInfo;->stMRL:Lcom/android/supl/loc/measure/MeasuredResultsList;

    invoke-virtual {v5}, Lcom/android/supl/loc/measure/MeasuredResultsList;->getMeasuredResultsListInfo()[B

    move-result-object v1

    .line 118
    .local v1, "bMeasureList":[B
    array-length v5, v1

    add-int/2addr v4, v5

    .line 120
    .end local v1    # "bMeasureList":[B
    :cond_36
    new-array v0, v4, [B

    .line 121
    .local v0, "bData":[B
    array-length v5, v2

    invoke-static {v2, v6, v0, v3, v5}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 122
    array-length v5, v2

    add-int/lit8 v3, v5, 0x0

    .line 123
    iget-short v5, p0, Lcom/android/supl/loc/LTECellInfo;->usPhysCellID:S

    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v3

    .line 125
    iget-char v5, p0, Lcom/android/supl/loc/LTECellInfo;->usTrackAreaCode:C

    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v3

    .line 126
    iget-boolean v5, p0, Lcom/android/supl/loc/LTECellInfo;->bIsRSRPInfoPresent:Z

    if-eqz v5, :cond_8c

    .line 127
    invoke-static {v0, v3, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 128
    iget-short v5, p0, Lcom/android/supl/loc/LTECellInfo;->ucRSRPResult:S

    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v3

    .line 133
    :goto_59
    iget-boolean v5, p0, Lcom/android/supl/loc/LTECellInfo;->bIsRSRQInfoPresent:Z

    if-eqz v5, :cond_91

    .line 134
    invoke-static {v0, v3, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 135
    iget-short v5, p0, Lcom/android/supl/loc/LTECellInfo;->ucRSRQResult:S

    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v3

    .line 140
    :goto_67
    iget-boolean v5, p0, Lcom/android/supl/loc/LTECellInfo;->bIsTAInfoPresent:Z

    if-eqz v5, :cond_96

    .line 141
    invoke-static {v0, v3, v7}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    .line 142
    iget-short v5, p0, Lcom/android/supl/loc/LTECellInfo;->usTA:S

    invoke-static {v0, v3, v5}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v3

    .line 146
    :goto_75
    iget-boolean v5, p0, Lcom/android/supl/loc/LTECellInfo;->bIsMeasResListInfoPresent:Z

    if-eqz v5, :cond_9b

    if-eqz v1, :cond_9b

    .line 147
    array-length v5, v1

    invoke-static {v1, v6, v0, v3, v5}, Lcom/android/altair/CopyArrayMod;->CopyArray([BI[BII)V

    .line 148
    array-length v5, v1

    add-int/2addr v3, v5

    .line 152
    :goto_81
    if-eq v3, v4, :cond_8b

    .line 153
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "LTECellInfo length error"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    :cond_8b
    return-object v0

    .line 130
    :cond_8c
    invoke-static {v0, v3, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    goto :goto_59

    .line 137
    :cond_91
    invoke-static {v0, v3, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    goto :goto_67

    .line 144
    :cond_96
    invoke-static {v0, v3, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    goto :goto_75

    .line 150
    :cond_9b
    invoke-static {v0, v3, v6}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v3

    goto :goto_81
.end method
