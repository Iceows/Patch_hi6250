.class public Lcom/android/supl/si/SUPLGeoTargetArea;
.super Ljava/lang/Object;
.source "SUPLGeoTargetArea.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/supl/si/SUPLGeoTargetArea$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/supl/si/SUPLGeoTargetArea;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPL_CIRCULAR_AREA:I = 0x0

.field public static final SUPL_ELLIPTICAL_AREA:I = 0x1

.field public static final SUPL_POLYGONIC_AREA:I = 0x2


# instance fields
.field private eGeoAreaType:I

.field private objGeographicArea:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/android/supl/si/SUPLGeoTargetArea$1;

    invoke-direct {v0}, Lcom/android/supl/si/SUPLGeoTargetArea$1;-><init>()V

    sput-object v0, Lcom/android/supl/si/SUPLGeoTargetArea;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->objGeographicArea:Ljava/lang/Object;

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/supl/si/SUPLGeoTargetArea;->readFromParcel(Landroid/os/Parcel;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "objArea"    # Ljava/lang/Object;
    .param p2, "eGeoAreaType"    # I

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->objGeographicArea:Ljava/lang/Object;

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Geo Area object should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid Geo Area type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->eGeoAreaType:I

    .line 82
    instance-of v0, p1, Lcom/android/supl/si/SUPLCircularArea;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Geo Area object is not SUPLCircularArea type "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->eGeoAreaType:I

    .line 88
    instance-of v0, p1, Lcom/android/supl/si/SUPLEllipticalArea;

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Geo Area object is not SUPLEllipticalArea type "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->eGeoAreaType:I

    .line 94
    instance-of v0, p1, Lcom/android/supl/si/SUPLPolygonArea;

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Geo Area object is not SUPLPolygonArea type "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    iput-object p1, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->objGeographicArea:Ljava/lang/Object;

    .line 75
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public getGeoTargetArea()[B
    .locals 6

    .prologue
    .line 112
    const/4 v3, 0x4

    .line 113
    .local v3, "iSize":I
    const/4 v2, 0x0

    .line 114
    .local v2, "iOffset":I
    const/4 v1, 0x0

    .line 115
    .local v1, "bGeoGraphicData":[B
    iget v4, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->eGeoAreaType:I

    packed-switch v4, :pswitch_data_0

    .line 127
    .end local v1    # "bGeoGraphicData":[B
    :goto_0
    const/4 v0, 0x0

    .line 128
    .local v0, "bData":[B
    if-eqz v1, :cond_0

    .line 129
    array-length v4, v1

    add-int/lit8 v3, v4, 0x4

    .line 130
    new-array v0, v3, [B

    .line 131
    .local v0, "bData":[B
    iget v4, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->eGeoAreaType:I

    invoke-static {v0, v2, v4}, Lcom/android/bytewriter/IO;->put4([BII)I

    move-result v2

    .line 132
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 133
    array-length v4, v1

    add-int/2addr v2, v4

    .line 135
    .end local v0    # "bData":[B
    :cond_0
    if-eq v2, v3, :cond_1

    .line 136
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v5, "GeoTargetArea length invalid"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    :cond_1
    return-object v0

    .line 117
    .restart local v1    # "bGeoGraphicData":[B
    :pswitch_0
    iget-object v4, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->objGeographicArea:Ljava/lang/Object;

    check-cast v4, Lcom/android/supl/si/SUPLCircularArea;

    invoke-virtual {v4}, Lcom/android/supl/si/SUPLCircularArea;->getCircularArea()[B

    move-result-object v1

    .local v1, "bGeoGraphicData":[B
    goto :goto_0

    .line 120
    .local v1, "bGeoGraphicData":[B
    :pswitch_1
    iget-object v4, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->objGeographicArea:Ljava/lang/Object;

    check-cast v4, Lcom/android/supl/si/SUPLEllipticalArea;

    invoke-virtual {v4}, Lcom/android/supl/si/SUPLEllipticalArea;->getEllipticalAreaInfo()[B

    move-result-object v1

    .local v1, "bGeoGraphicData":[B
    goto :goto_0

    .line 123
    .local v1, "bGeoGraphicData":[B
    :pswitch_2
    iget-object v4, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->objGeographicArea:Ljava/lang/Object;

    check-cast v4, Lcom/android/supl/si/SUPLPolygonArea;

    invoke-virtual {v4}, Lcom/android/supl/si/SUPLPolygonArea;->getPolygonAreaInfo()[B

    move-result-object v1

    .local v1, "bGeoGraphicData":[B
    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->eGeoAreaType:I

    .line 179
    iget v0, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->eGeoAreaType:I

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 181
    :pswitch_0
    const-class v0, Lcom/android/supl/si/SUPLCircularArea;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->objGeographicArea:Ljava/lang/Object;

    goto :goto_0

    .line 184
    :pswitch_1
    const-class v0, Lcom/android/supl/si/SUPLEllipticalArea;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->objGeographicArea:Ljava/lang/Object;

    goto :goto_0

    .line 187
    :pswitch_2
    const-class v0, Lcom/android/supl/si/SUPLPolygonArea;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->objGeographicArea:Ljava/lang/Object;

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "stToString":Ljava/lang/String;
    iget v1, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->eGeoAreaType:I

    packed-switch v1, :pswitch_data_0

    .line 236
    .end local v0    # "stToString":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->eGeoAreaType:I

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

    .line 224
    .restart local v0    # "stToString":Ljava/lang/String;
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Circular:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->objGeographicArea:Ljava/lang/Object;

    check-cast v1, Lcom/android/supl/si/SUPLCircularArea;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLCircularArea;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "stToString":Ljava/lang/String;
    goto :goto_0

    .line 227
    .local v0, "stToString":Ljava/lang/String;
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Elli:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->objGeographicArea:Ljava/lang/Object;

    check-cast v1, Lcom/android/supl/si/SUPLEllipticalArea;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLEllipticalArea;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "stToString":Ljava/lang/String;
    goto :goto_0

    .line 231
    .local v0, "stToString":Ljava/lang/String;
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Poly:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->objGeographicArea:Ljava/lang/Object;

    check-cast v1, Lcom/android/supl/si/SUPLPolygonArea;

    invoke-virtual {v1}, Lcom/android/supl/si/SUPLPolygonArea;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "stToString":Ljava/lang/String;
    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 199
    iget v0, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->eGeoAreaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->eGeoAreaType:I

    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v0, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->objGeographicArea:Ljava/lang/Object;

    check-cast v0, Lcom/android/supl/si/SUPLCircularArea;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 206
    :pswitch_1
    iget-object v0, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->objGeographicArea:Ljava/lang/Object;

    check-cast v0, Lcom/android/supl/si/SUPLEllipticalArea;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 209
    :pswitch_2
    iget-object v0, p0, Lcom/android/supl/si/SUPLGeoTargetArea;->objGeographicArea:Ljava/lang/Object;

    check-cast v0, Lcom/android/supl/si/SUPLPolygonArea;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
