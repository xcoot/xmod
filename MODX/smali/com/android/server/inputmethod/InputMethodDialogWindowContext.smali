.class public final Lcom/android/server/inputmethod/InputMethodDialogWindowContext;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDialogWindowContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public get(I)Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->mDialogWindowContext:Landroid/content/Context;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 8
    move-result v0

    .line 9
    if-eq v0, p1, :cond_1

    .line 11
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->getSystemUiContext(I)Landroid/app/ContextImpl;

    .line 18
    move-result-object p1

    .line 19
    const/16 v0, 0x7dc

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 28
    const v1, 0x1030223

    .line 31
    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->mDialogWindowContext:Landroid/content/Context;

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->mDialogWindowContext:Landroid/content/Context;

    .line 38
    return-object p0
.end method
