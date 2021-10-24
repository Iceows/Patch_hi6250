.class public Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;
.super Ljava/lang/Object;
.source "SUPL_LPP_NEIGHBOUR_OTDOA_MMT.java"


# instance fields
.field public byNumberofNeighbourMmts:B

.field stLPPOTDOANeighbourElem:[Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->stLPPOTDOANeighbourElem:[Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;

    .line 53
    iput-byte v1, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->byNumberofNeighbourMmts:B

    .line 54
    new-array v0, v1, [Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;

    new-instance v1, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;

    invoke-direct {v1}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->stLPPOTDOANeighbourElem:[Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;

    .line 55
    return-void
.end method


# virtual methods
.method public get_NEIGHBOUR_OTDOA_MMT()[B
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    .local v5, "iOffset":I
    const/4 v6, 0x1

    .line 60
    .local v6, "iSize":I
    const/4 v7, 0x0

    .line 61
    .local v7, "vecNeighbor":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v8, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->stLPPOTDOANeighbourElem:[Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;

    if-eqz v8, :cond_27

    .line 62
    new-instance v7, Ljava/util/Vector;

    .end local v7    # "vecNeighbor":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-byte v8, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->byNumberofNeighbourMmts:B

    invoke-direct {v7, v8}, Ljava/util/Vector;-><init>(I)V

    .line 63
    .local v7, "vecNeighbor":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    iget-object v10, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->stLPPOTDOANeighbourElem:[Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;

    array-length v11, v10

    move v8, v9

    :goto_13
    if-ge v8, v11, :cond_27

    aget-object v4, v10, v8

    .line 64
    .local v4, "elem":Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;
    if-eqz v4, :cond_24

    .line 65
    invoke-virtual {v4}, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;->getLPP_NEIGHBOUR_ELEM()[B

    move-result-object v3

    .line 66
    .local v3, "bElem":[B
    if-eqz v3, :cond_24

    .line 67
    invoke-virtual {v7, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 68
    array-length v12, v3

    add-int/2addr v6, v12

    .line 63
    .end local v3    # "bElem":[B
    :cond_24
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    .line 73
    .end local v4    # "elem":Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_ELEM;
    .end local v7    # "vecNeighbor":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    :cond_27
    new-array v2, v6, [B

    .line 74
    .local v2, "bData":[B
    iget-byte v8, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->byNumberofNeighbourMmts:B

    invoke-static {v2, v5, v8}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v5

    .line 75
    iget-byte v8, p0, Lcom/android/supl/loc/measure/lpp/SUPL_LPP_NEIGHBOUR_OTDOA_MMT;->byNumberofNeighbourMmts:B

    if-lez v8, :cond_4e

    if-eqz v7, :cond_4e

    .line 76
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "b$iterator":Ljava/util/Iterator;
    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 77
    .local v0, "b":[B
    if-eqz v0, :cond_39

    .line 78
    array-length v8, v0

    invoke-static {v0, v9, v2, v5, v8}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 79
    array-length v8, v0

    add-int/2addr v5, v8

    goto :goto_39

    .line 83
    .end local v0    # "b":[B
    .end local v1    # "b$iterator":Ljava/util/Iterator;
    :cond_4e
    return-object v2
.end method
