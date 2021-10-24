.class public Lcom/android/supl/loc/LTECellInfo$MCC_LIST;
.super Ljava/lang/Object;
.source "LTECellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/loc/LTECellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MCC_LIST"
.end annotation


# instance fields
.field private usRefMCC:[C


# direct methods
.method public constructor <init>([C)V
    .registers 4
    .param p1, "usRefMCC"    # [C

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    if-nez p1, :cond_e

    .line 213
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "MCC_LIST should not null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_e
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1b

    .line 217
    const-string/jumbo v0, "SUPL20_LTECellInfo"

    const-string/jumbo v1, "MCC_LIST should not be less than 3"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1b
    iput-object p1, p0, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;->usRefMCC:[C

    .line 220
    return-void
.end method


# virtual methods
.method public getMccListInfo()[C
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/supl/loc/LTECellInfo$MCC_LIST;->usRefMCC:[C

    return-object v0
.end method
