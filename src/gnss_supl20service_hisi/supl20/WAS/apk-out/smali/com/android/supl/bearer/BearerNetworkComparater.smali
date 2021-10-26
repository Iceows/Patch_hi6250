.class public Lcom/android/supl/bearer/BearerNetworkComparater;
.super Ljava/lang/Object;
.source "BearerNetworkComparater.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/supl/bearer/BearerNetwork;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/supl/bearer/BearerNetwork;Lcom/android/supl/bearer/BearerNetwork;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/supl/bearer/BearerNetwork;
    .param p2, "rhs"    # Lcom/android/supl/bearer/BearerNetwork;

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/android/supl/bearer/BearerNetwork;->getPriority()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/supl/bearer/BearerNetwork;->getPriority()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 54
    const/4 v0, -0x1

    return v0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/android/supl/bearer/BearerNetwork;->getPriority()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/supl/bearer/BearerNetwork;->getPriority()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 56
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Lcom/android/supl/bearer/BearerNetwork;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/supl/bearer/BearerNetwork;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/supl/bearer/BearerNetworkComparater;->compare(Lcom/android/supl/bearer/BearerNetwork;Lcom/android/supl/bearer/BearerNetwork;)I

    move-result v0

    return v0
.end method
