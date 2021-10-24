.class public Lcom/android/supl/loc/BitString;
.super Ljava/lang/Object;
.source "BitString.java"


# instance fields
.field nBitsUnused:I

.field public ucBuffer:[B

.field ucLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "stData"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v1, p0, Lcom/android/supl/loc/BitString;->ucLength:I

    .line 43
    iput v1, p0, Lcom/android/supl/loc/BitString;->nBitsUnused:I

    .line 45
    iput-object v0, p0, Lcom/android/supl/loc/BitString;->ucBuffer:[B

    .line 48
    if-eqz p1, :cond_1a

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/loc/BitString;->ucBuffer:[B

    .line 50
    iget-object v0, p0, Lcom/android/supl/loc/BitString;->ucBuffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/supl/loc/BitString;->ucLength:I

    .line 51
    iput v1, p0, Lcom/android/supl/loc/BitString;->nBitsUnused:I

    .line 53
    :cond_1a
    return-void
.end method


# virtual methods
.method public getBitStringInfo()[B
    .registers 7

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "iOffset":I
    iget v3, p0, Lcom/android/supl/loc/BitString;->ucLength:I

    add-int/lit8 v2, v3, 0x5

    .line 59
    .local v2, "iSize":I
    new-array v0, v2, [B

    .line 60
    .local v0, "bData":[B
    iget v3, p0, Lcom/android/supl/loc/BitString;->ucLength:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 61
    iget v3, p0, Lcom/android/supl/loc/BitString;->nBitsUnused:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 62
    iget-object v3, p0, Lcom/android/supl/loc/BitString;->ucBuffer:[B

    iget v4, p0, Lcom/android/supl/loc/BitString;->ucLength:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 63
    iget v3, p0, Lcom/android/supl/loc/BitString;->ucLength:I

    add-int/2addr v1, v3

    .line 64
    if-eq v1, v2, :cond_28

    .line 65
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "BitString length error"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    :cond_28
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BitString length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/supl/loc/BitString;->ucLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    return-object v0
.end method
