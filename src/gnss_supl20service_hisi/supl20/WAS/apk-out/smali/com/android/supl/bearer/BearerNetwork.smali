.class public Lcom/android/supl/bearer/BearerNetwork;
.super Ljava/lang/Object;
.source "BearerNetwork.java"


# instance fields
.field private iPriority:I

.field private stBearerNetWorkName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "stBearerNetWorkName"    # Ljava/lang/String;
    .param p2, "stPriority"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/bearer/BearerNetwork;->stBearerNetWorkName:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/bearer/BearerNetwork;->iPriority:I

    .line 54
    iput-object p1, p0, Lcom/android/supl/bearer/BearerNetwork;->stBearerNetWorkName:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/android/supl/bearer/BearerNetwork;->iPriority:I

    .line 53
    return-void
.end method


# virtual methods
.method public getBearerNetWorkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/supl/bearer/BearerNetwork;->stBearerNetWorkName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/android/supl/bearer/BearerNetwork;->iPriority:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/supl/bearer/BearerNetwork;->stBearerNetWorkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/bearer/BearerNetwork;->iPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
