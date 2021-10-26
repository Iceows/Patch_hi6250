.class public Lcom/android/supl/commprocessor/SUPLSCMService$MyBinder;
.super Landroid/os/Binder;
.source "SUPLSCMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/supl/commprocessor/SUPLSCMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/supl/commprocessor/SUPLSCMService;


# direct methods
.method public constructor <init>(Lcom/android/supl/commprocessor/SUPLSCMService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/supl/commprocessor/SUPLSCMService;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/supl/commprocessor/SUPLSCMService$MyBinder;->this$0:Lcom/android/supl/commprocessor/SUPLSCMService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/android/supl/commprocessor/SUPLSCMService;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/supl/commprocessor/SUPLSCMService$MyBinder;->this$0:Lcom/android/supl/commprocessor/SUPLSCMService;

    return-object v0
.end method
