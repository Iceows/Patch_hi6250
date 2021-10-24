.class public Lcom/android/supl/si/SUPLTriggerParams;
.super Ljava/lang/Object;
.source "SUPLTriggerParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/si/SUPLTriggerParams$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/supl/si/SUPLTriggerParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPL_TRIGGERTYPE_EVENT:I = 0x1

.field public static final SUPL_TRIGGERTYPE_PERIODIC:I


# instance fields
.field private eTriggerReqType:I

.field private objTriggerParam:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 141
    new-instance v0, Lcom/android/supl/si/SUPLTriggerParams$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLTriggerParams$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLTriggerParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 5
    .param p1, "eTriggerReqType"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    .line 64
    if-nez p2, :cond_11

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TriggerParamater object should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_11
    packed-switch p1, :pswitch_data_40

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Trigger parameter value invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    .line 71
    instance-of v0, p2, Lcom/android/supl/si/SUPLPeriodicParams;

    if-nez v0, :cond_3d

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TriggerParamater object is not a SUPLPeriodicParams type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_2d
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    .line 77
    instance-of v0, p2, Lcom/android/supl/si/SUPLEventTriggerParams;

    if-nez v0, :cond_3d

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "TriggerParamater object is not a SUPLEventTriggerParams type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_3d
    iput-object p2, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    .line 87
    return-void

    .line 68
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_2d
    .end packed-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLTriggerParams;->readFromParcel(Landroid/os/Parcel;)V

    .line 157
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getTriggerParam()[B
    .registers 7

    .prologue
    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, "iOffSet":I
    const/4 v3, 0x4

    .line 101
    .local v3, "iSize":I
    const/4 v1, 0x0

    .line 102
    .local v1, "bTriggerPara":[B
    iget v4, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    packed-switch v4, :pswitch_data_3a

    .line 112
    .end local v1    # "bTriggerPara":[B
    :goto_8
    const/4 v0, 0x0

    .line 113
    .local v0, "bData":[B
    if-eqz v1, :cond_1d

    .line 114
    array-length v4, v1

    add-int/lit8 v3, v4, 0x4

    .line 116
    new-array v0, v3, [B

    .line 117
    .local v0, "bData":[B
    iget v4, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 118
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v0, v2, v4}, Lcom/android/bytewriter/IO;->CopyArray([BI[BII)V

    .line 119
    array-length v4, v1

    add-int/2addr v2, v4

    .line 121
    .end local v0    # "bData":[B
    :cond_1d
    if-eq v2, v3, :cond_27

    .line 122
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v5, "TriggerParam length invalid"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    :cond_27
    return-object v0

    .line 104
    .restart local v1    # "bTriggerPara":[B
    :pswitch_28
    iget-object v4, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    check-cast v4, Lcom/android/supl/si/SUPLPeriodicParams;

    invoke-virtual {v4}, Lcom/android/supl/si/SUPLPeriodicParams;->getPeriodicParams()[B

    move-result-object v1

    .local v1, "bTriggerPara":[B
    goto :goto_8

    .line 107
    .local v1, "bTriggerPara":[B
    :pswitch_31
    iget-object v4, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    check-cast v4, Lcom/android/supl/si/SUPLEventTriggerParams;

    invoke-virtual {v4}, Lcom/android/supl/si/SUPLEventTriggerParams;->getEventTriggerParams()[B

    move-result-object v1

    .local v1, "bTriggerPara":[B
    goto :goto_8

    .line 102
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_31
    .end packed-switch
.end method

.method public getTriggerReqType()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    .line 165
    iget v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    packed-switch v0, :pswitch_data_26

    .line 174
    :goto_b
    return-void

    .line 167
    :pswitch_c
    const-class v0, Lcom/android/supl/si/SUPLPeriodicParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    goto :goto_b

    .line 170
    :pswitch_19
    const-class v0, Lcom/android/supl/si/SUPLEventTriggerParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    goto :goto_b

    .line 165
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_c
        :pswitch_19
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "stData":Ljava/lang/String;
    iget v1, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    packed-switch v1, :pswitch_data_34

    .line 211
    .end local v0    # "stData":Ljava/lang/String;
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 203
    .restart local v0    # "stData":Ljava/lang/String;
    :pswitch_21
    iget-object v1, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/supl/si/SUPLPeriodicParams;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLPeriodicParams;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "stData":Ljava/lang/String;
    goto :goto_6

    .line 206
    .local v0, "stData":Ljava/lang/String;
    :pswitch_2a
    iget-object v1, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/supl/si/SUPLEventTriggerParams;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLEventTriggerParams;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "stData":Ljava/lang/String;
    goto :goto_6

    .line 201
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_21
        :pswitch_2a
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 182
    iget v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->eTriggerReqType:I

    packed-switch v0, :pswitch_data_1c

    .line 192
    :goto_a
    return-void

    .line 185
    :pswitch_b
    iget-object v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/supl/si/SUPLPeriodicParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_a

    .line 188
    :pswitch_13
    iget-object v0, p0, Lcom/android/supl/si/SUPLTriggerParams;->objTriggerParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/supl/si/SUPLEventTriggerParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_a

    .line 183
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_13
    .end packed-switch
.end method
