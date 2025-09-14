.class public final Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContentView:Landroid/view/View;

.field public final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field public mShowParams:Landroid/view/WindowManager$LayoutParams;

.field public mShowing:Z

.field public final mWm:Landroid/view/WindowManager;

.field public final synthetic this$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->this$0:Lcom/android/server/autofill/ui/FillUi;

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-class v0, Landroid/view/WindowManager;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/view/WindowManager;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mWm:Landroid/view/WindowManager;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final hide(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mWm:Landroid/view/WindowManager;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mContentView:Landroid/view/View;

    .line 11
    .line 12
    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput-boolean v2, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->mShowing:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_3

    .line 21
    :catch_0
    move-exception v2

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :goto_1
    :try_start_1
    const-string v3, "FillUi"

    .line 28
    .line 29
    const-string v4, "Exception hiding window "

    .line 30
    .line 31
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->this$0:Lcom/android/server/autofill/ui/FillUi;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$1;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/AutoFillUI$1;->onDestroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :goto_2
    return-void

    .line 45
    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method
