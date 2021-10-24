.class public Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;
.super Ljava/lang/Object;
.source "Neighbor_ID_Union.java"


# static fields
.field public static final NEIGHBORIDENTITY_BSICANDCARRIER:I = 0x1

.field public static final NEIGHBORIDENTITY_CI:I = 0x2

.field public static final NEIGHBORIDENTITY_CIANDLAC:I = 0x6

.field public static final NEIGHBORIDENTITY_MULTIFRAMECARRIER:I = 0x3

.field public static final NEIGHBORIDENTITY_REQUESTINDEX:I = 0x4

.field public static final NEIGHBORIDENTITY_SYSTEMINFOINDEX:I = 0x5

.field public static final NeighborIdentity_NOTHING:I


# instance fields
.field public bsicAndCarrier:Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;

.field public ciandlac:Lcom/android/supl/loc/measure/eotd/CellID_LAC;

.field public multiFrameCarrier:Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;

.field public ucRequestIndex:S

.field public ucSystemInfoIndex:S

.field public usCellID:S


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNeighborIDUnion(I)[B
    .registers 5
    .param p1, "iNeighborIDType"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, "bData":[B
    packed-switch p1, :pswitch_data_42

    .line 89
    .end local v0    # "bData":[B
    :cond_6
    :goto_6
    :pswitch_6
    return-object v0

    .line 62
    .restart local v0    # "bData":[B
    :pswitch_7
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->bsicAndCarrier:Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;

    if-eqz v1, :cond_6

    .line 63
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->bsicAndCarrier:Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;

    invoke-virtual {v1}, Lcom/android/supl/loc/measure/eotd/BSIC_Carrier;->getBSIC_Carrier()[B

    move-result-object v0

    .local v0, "bData":[B
    goto :goto_6

    .line 66
    .local v0, "bData":[B
    :pswitch_12
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 67
    .local v0, "bData":[B
    iget-short v1, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->usCellID:S

    invoke-static {v0, v2, v1}, Lcom/android/bytewriter/IO;->put2([BII)I

    goto :goto_6

    .line 70
    .local v0, "bData":[B
    :pswitch_1b
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->multiFrameCarrier:Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;

    if-eqz v1, :cond_6

    .line 71
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->multiFrameCarrier:Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;

    invoke-virtual {v1}, Lcom/android/supl/loc/measure/eotd/MultiFrameCarrier;->getMultiFrameCarrier()[B

    move-result-object v0

    .local v0, "bData":[B
    goto :goto_6

    .line 74
    .local v0, "bData":[B
    :pswitch_26
    new-array v0, v1, [B

    .line 75
    .local v0, "bData":[B
    iget-short v1, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->ucRequestIndex:S

    invoke-static {v0, v2, v1}, Lcom/android/bytewriter/IO;->put1([BII)I

    goto :goto_6

    .line 78
    .local v0, "bData":[B
    :pswitch_2e
    new-array v0, v1, [B

    .line 79
    .local v0, "bData":[B
    iget-short v1, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->ucSystemInfoIndex:S

    invoke-static {v0, v2, v1}, Lcom/android/bytewriter/IO;->put1([BII)I

    goto :goto_6

    .line 82
    .local v0, "bData":[B
    :pswitch_36
    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->ciandlac:Lcom/android/supl/loc/measure/eotd/CellID_LAC;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/supl/loc/measure/eotd/Neighbor_ID_Union;->ciandlac:Lcom/android/supl/loc/measure/eotd/CellID_LAC;

    invoke-virtual {v1}, Lcom/android/supl/loc/measure/eotd/CellID_LAC;->getCellID_LAC()[B

    move-result-object v0

    .local v0, "bData":[B
    goto :goto_6

    .line 57
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_12
        :pswitch_1b
        :pswitch_26
        :pswitch_2e
        :pswitch_36
    .end packed-switch
.end method
