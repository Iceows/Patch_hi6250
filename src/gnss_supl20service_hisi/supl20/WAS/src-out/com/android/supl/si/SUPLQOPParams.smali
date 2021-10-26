.class public Lcom/android/supl/si/SUPLQOPParams;
.super Ljava/lang/Object;
.source "SUPLQOPParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/si/SUPLQOPParams$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/supl/si/SUPLQOPParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bMaxLocAgePresent:Z

.field private bVeraccPresent:Z

.field private bdelayPresent:Z

.field public byDelay:I

.field public byHorAcc:I

.field public byVerAcc:I

.field public wMaxLocAge:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 156
    new-instance v0, Lcom/android/supl/si/SUPLQOPParams$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLQOPParams$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLQOPParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLQOPParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 170
    return-void
.end method

.method public constructor <init>(ZZZIIII)V
    .registers 8
    .param p1, "bVeraccPresent"    # Z
    .param p2, "bMaxLocAgePresent"    # Z
    .param p3, "bdelayPresent"    # Z
    .param p4, "byHorAcc"    # I
    .param p5, "byVerAcc"    # I
    .param p6, "wMaxLocAge"    # I
    .param p7, "byDelay"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean p1, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    .line 99
    iput-boolean p2, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    .line 100
    iput-boolean p3, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    .line 101
    iput p4, p0, Lcom/android/supl/si/SUPLQOPParams;->byHorAcc:I

    .line 102
    iput p5, p0, Lcom/android/supl/si/SUPLQOPParams;->byVerAcc:I

    .line 103
    iput p6, p0, Lcom/android/supl/si/SUPLQOPParams;->wMaxLocAge:I

    .line 104
    iput p7, p0, Lcom/android/supl/si/SUPLQOPParams;->byDelay:I

    .line 97
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public getQOPParams()[B
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 112
    const/16 v2, 0xd

    .line 113
    .local v2, "iSize":I
    const/4 v1, 0x0

    .line 114
    .local v1, "iOffset":I
    iget-boolean v3, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    if-eqz v3, :cond_b

    .line 115
    const/16 v2, 0xe

    .line 117
    :cond_b
    iget-boolean v3, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    if-eqz v3, :cond_11

    .line 118
    add-int/lit8 v2, v2, 0x2

    .line 120
    :cond_11
    iget-boolean v3, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    if-eqz v3, :cond_17

    .line 121
    add-int/lit8 v2, v2, 0x4

    .line 123
    :cond_17
    new-array v0, v2, [B

    .line 124
    .local v0, "bData":[B
    iget-boolean v3, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    if-eqz v3, :cond_58

    move v3, v4

    :goto_1e
    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 125
    iget-boolean v3, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    if-eqz v3, :cond_5a

    move v3, v4

    :goto_27
    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 126
    iget-boolean v3, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    if-eqz v3, :cond_5c

    :goto_2f
    invoke-static {v0, v1, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 127
    iget v3, p0, Lcom/android/supl/si/SUPLQOPParams;->byHorAcc:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 128
    iget-boolean v3, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    if-eqz v3, :cond_43

    .line 129
    iget v3, p0, Lcom/android/supl/si/SUPLQOPParams;->byVerAcc:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put1([BII)I

    move-result v1

    .line 131
    :cond_43
    iget-boolean v3, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    if-eqz v3, :cond_4d

    .line 132
    iget v3, p0, Lcom/android/supl/si/SUPLQOPParams;->wMaxLocAge:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put2([BII)I

    move-result v1

    .line 134
    :cond_4d
    iget-boolean v3, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    if-eqz v3, :cond_57

    .line 135
    iget v3, p0, Lcom/android/supl/si/SUPLQOPParams;->byDelay:I

    invoke-static {v0, v1, v3}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v1

    .line 138
    :cond_57
    return-object v0

    :cond_58
    move v3, v5

    .line 124
    goto :goto_1e

    :cond_5a
    move v3, v5

    .line 125
    goto :goto_27

    :cond_5c
    move v4, v5

    .line 126
    goto :goto_2f
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 179
    const/4 v0, 0x1

    .line 180
    .local v0, "bTrue":B
    iput-boolean v2, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 182
    .local v0, "bTrue":B
    if-ne v0, v1, :cond_d

    .line 183
    iput-boolean v1, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    .line 185
    :cond_d
    iput-boolean v2, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 187
    if-ne v0, v1, :cond_17

    .line 188
    iput-boolean v1, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    .line 190
    :cond_17
    iput-boolean v2, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 192
    if-ne v0, v1, :cond_21

    .line 193
    iput-boolean v1, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    .line 195
    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/supl/si/SUPLQOPParams;->byHorAcc:I

    .line 196
    iget-boolean v1, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    if-eqz v1, :cond_31

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/supl/si/SUPLQOPParams;->byVerAcc:I

    .line 199
    :cond_31
    iget-boolean v1, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    if-eqz v1, :cond_3b

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/supl/si/SUPLQOPParams;->wMaxLocAge:I

    .line 202
    :cond_3b
    iget-boolean v1, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    if-eqz v1, :cond_45

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/supl/si/SUPLQOPParams;->byDelay:I

    .line 178
    :cond_45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/supl/si/SUPLQOPParams;->byHorAcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/si/SUPLQOPParams;->byVerAcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/si/SUPLQOPParams;->wMaxLocAge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/supl/si/SUPLQOPParams;->byDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    iget-boolean v0, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    if-eqz v0, :cond_3a

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 217
    iget-boolean v0, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    if-eqz v0, :cond_3c

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 218
    iget-boolean v0, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    if-eqz v0, :cond_3e

    :goto_16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 219
    iget v0, p0, Lcom/android/supl/si/SUPLQOPParams;->byHorAcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-boolean v0, p0, Lcom/android/supl/si/SUPLQOPParams;->bVeraccPresent:Z

    if-eqz v0, :cond_27

    .line 221
    iget v0, p0, Lcom/android/supl/si/SUPLQOPParams;->byVerAcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    :cond_27
    iget-boolean v0, p0, Lcom/android/supl/si/SUPLQOPParams;->bMaxLocAgePresent:Z

    if-eqz v0, :cond_30

    .line 224
    iget v0, p0, Lcom/android/supl/si/SUPLQOPParams;->wMaxLocAge:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    :cond_30
    iget-boolean v0, p0, Lcom/android/supl/si/SUPLQOPParams;->bdelayPresent:Z

    if-eqz v0, :cond_39

    .line 227
    iget v0, p0, Lcom/android/supl/si/SUPLQOPParams;->byDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    :cond_39
    return-void

    :cond_3a
    move v0, v2

    .line 216
    goto :goto_7

    :cond_3c
    move v0, v2

    .line 217
    goto :goto_f

    :cond_3e
    move v1, v2

    .line 218
    goto :goto_16
.end method
