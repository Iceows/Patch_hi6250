.class public Lcom/android/altair/CopyArrayMod;
.super Ljava/lang/Object;
.source "CopyArrayMod.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SUPL20_COPY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CopyArray([BI[BII)V
    .locals 0

    .line 13
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
