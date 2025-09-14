.class public final Lcom/android/server/wm/InsetsPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CONTROLLABLE_TYPES:I


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mFocusedWin:Lcom/android/server/wm/WindowState;

.field public mForcedShowingTypes:I

.field public final mHideNavBarForKeyboard:Z

.field public mLastTransientRequestedByPolicyControl:Z

.field public final mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field public final mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

.field public final mPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public final mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

.field public mShowingTransientTypes:I

.field public final mStateController:Lcom/android/server/wm/InsetsStateController;

.field public final mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field public final mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    or-int/2addr v0, v1

    .line 10
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    or-int/2addr v0, v1

    .line 15
    sput v0, Lcom/android/server/wm/InsetsPolicy;->CONTROLLABLE_TYPES:I

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 19
    .line 20
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 30
    .line 31
    iget-object p1, p2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const v0, 0x11101b3

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput-boolean p1, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    .line 51
    .line 52
    new-instance p1, Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 53
    .line 54
    const-string v0, "TransientControlTarget"

    .line 55
    .line 56
    invoke-direct {p1, p2, v0}, Lcom/android/server/wm/InsetsPolicy$ControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 60
    .line 61
    new-instance p1, Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 62
    .line 63
    const-string v0, "PermanentControlTarget"

    .line 64
    .line 65
    invoke-direct {p1, p2, v0}, Lcom/android/server/wm/InsetsPolicy$ControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 69
    .line 70
    return-void
.end method

.method public static adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .locals 2

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    new-instance p2, Landroid/view/InsetsState;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 30
    .line 31
    .line 32
    move-object p1, p2

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/InsetsState;->setRoundedCornerFrame(Landroid/graphics/Rect;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    return-object p1
.end method

.method public static adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/InsetsSource;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_2

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p3, p1}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-ne p3, p1, :cond_1

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    new-instance p3, Landroid/view/InsetsState;

    .line 22
    .line 23
    invoke-direct {p3, p0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 24
    .line 25
    .line 26
    new-instance p0, Landroid/view/InsetsSource;

    .line 27
    .line 28
    invoke-direct {p0, p2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p0}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 35
    .line 36
    .line 37
    return-object p3

    .line 38
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 4
    .line 5
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-lt v1, v2, :cond_0

    .line 9
    .line 10
    const/16 v3, 0x63

    .line 11
    .line 12
    if-gt v1, v3, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 40
    :goto_0
    return v2
.end method


# virtual methods
.method public final abortTransient()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 18
    .line 19
    iget v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 20
    .line 21
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 22
    .line 23
    iget-object v5, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 24
    .line 25
    invoke-virtual {v5, v3, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget v6, v5, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    .line 30
    .line 31
    not-int v7, v4

    .line 32
    and-int/2addr v6, v7

    .line 33
    iput v6, v5, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    .line 34
    .line 35
    iget-object v5, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 36
    .line 37
    iget-object v5, v5, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 38
    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    :try_start_0
    invoke-interface {v5, v3, v4}, Lcom/android/internal/statusbar/IStatusBar;->abortTransient(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    :cond_1
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 55
    .line 56
    iget v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 57
    .line 58
    invoke-virtual {v0, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService$2;->abortTransientToType(II)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iput v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 64
    .line 65
    .line 66
    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 72
    .line 73
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final adjustInsetsForWindow(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p3, :cond_2

    .line 3
    .line 4
    iget-object p3, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    iget-object p3, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object p3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 14
    .line 15
    iget-object p3, p3, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 20
    .line 21
    if-ne v1, p3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    sub-int/2addr p3, v0

    .line 35
    move-object v1, p2

    .line 36
    :goto_0
    if-ltz p3, :cond_3

    .line 37
    .line 38
    invoke-virtual {v1, p3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 47
    .line 48
    invoke-static {v1, v3, v2, v4}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 57
    .line 58
    invoke-static {v1, v3, v2, v4}, Lcom/android/server/wm/InsetsPolicy;->adjustVisibilityForFakeControllingSource(Landroid/view/InsetsState;ILandroid/view/InsetsSource;Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsState;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    add-int/lit8 p3, p3, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    :goto_1
    move-object v1, p2

    .line 66
    :cond_3
    const/4 p3, 0x0

    .line 67
    if-ne v1, p2, :cond_4

    .line 68
    .line 69
    move v2, v0

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    move v2, p3

    .line 72
    :goto_2
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 73
    .line 74
    if-eqz v3, :cond_9

    .line 75
    .line 76
    iget-boolean p0, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    .line 77
    .line 78
    xor-int/2addr p0, v0

    .line 79
    invoke-virtual {v1}, Landroid/view/InsetsState;->sourceSize()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    sub-int/2addr v3, v0

    .line 84
    move-object v4, v1

    .line 85
    :goto_3
    if-ltz v3, :cond_8

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-ne v6, v7, :cond_7

    .line 100
    .line 101
    invoke-virtual {v5}, Landroid/view/InsetsSource;->isVisible()Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-ne v6, p0, :cond_5

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_5
    if-ne v4, v1, :cond_6

    .line 109
    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    new-instance v4, Landroid/view/InsetsState;

    .line 113
    .line 114
    invoke-direct {v4, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 115
    .line 116
    .line 117
    :cond_6
    new-instance v6, Landroid/view/InsetsSource;

    .line 118
    .line 119
    invoke-direct {v6, v5}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, p0}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v6}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    :goto_4
    add-int/lit8 v3, v3, -0x1

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_8
    move-object v1, v4

    .line 132
    goto/16 :goto_6

    .line 133
    .line 134
    :cond_9
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 135
    .line 136
    if-eqz p0, :cond_d

    .line 137
    .line 138
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mImeInsetsFrozenUntilStartInput:Z

    .line 139
    .line 140
    if-eqz p0, :cond_d

    .line 141
    .line 142
    sget p0, Landroid/view/InsetsSource;->ID_IME:I

    .line 143
    .line 144
    invoke-virtual {v1, p0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    if-eqz p0, :cond_f

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-eqz v3, :cond_b

    .line 155
    .line 156
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 157
    .line 158
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->mLastImeShown:Z

    .line 159
    .line 160
    if-eqz v3, :cond_a

    .line 161
    .line 162
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_a

    .line 171
    .line 172
    move v3, v0

    .line 173
    goto :goto_5

    .line 174
    :cond_a
    move v3, p3

    .line 175
    goto :goto_5

    .line 176
    :cond_b
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    :goto_5
    if-eqz v2, :cond_c

    .line 185
    .line 186
    new-instance v2, Landroid/view/InsetsState;

    .line 187
    .line 188
    invoke-direct {v2, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 189
    .line 190
    .line 191
    move-object v1, v2

    .line 192
    :cond_c
    new-instance v2, Landroid/view/InsetsSource;

    .line 193
    .line 194
    invoke-direct {v2, p0}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 201
    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_d
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mImeInsetsConsumed:Z

    .line 205
    .line 206
    if-eqz p0, :cond_f

    .line 207
    .line 208
    sget p0, Landroid/view/InsetsSource;->ID_IME:I

    .line 209
    .line 210
    invoke-virtual {v1, p0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    if-eqz p0, :cond_f

    .line 215
    .line 216
    invoke-virtual {p0}, Landroid/view/InsetsSource;->isVisible()Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_f

    .line 221
    .line 222
    if-eqz v2, :cond_e

    .line 223
    .line 224
    new-instance v2, Landroid/view/InsetsState;

    .line 225
    .line 226
    invoke-direct {v2, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 227
    .line 228
    .line 229
    move-object v1, v2

    .line 230
    :cond_e
    new-instance v2, Landroid/view/InsetsSource;

    .line 231
    .line 232
    invoke-direct {v2, p0}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, p3}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    .line 239
    .line 240
    .line 241
    :cond_f
    :goto_6
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 242
    .line 243
    if-ne v1, p2, :cond_10

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_10
    move v0, p3

    .line 247
    :goto_7
    invoke-static {p0, v1, v0}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    return-object p0
.end method

.method public final dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskSystemBarsListenerController:Lcom/android/server/wm/TaskSystemBarsListenerController;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/wm/TaskSystemBarsListenerController;->mListeners:Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/wm/TaskSystemBarsListenerController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    new-instance v1, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    invoke-direct {v1, v0, p1, p2, p3}, Lcom/android/server/wm/TaskSystemBarsListenerController$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashSet;IZZ)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public final getInsetsForWindowMetrics(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p1, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformState:Lcom/android/server/wm/WindowToken$FixedRotationTransformState;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/wm/WindowToken$FixedRotationTransformState;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 27
    .line 28
    :goto_0
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p2, v0, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 30
    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isLayoutNeededInUdcCutout()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 43
    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/UdcCutoutPolicy;->adjustInsetsForUdc(Lcom/android/server/wm/WindowContainer;Landroid/view/InsetsState;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {p2}, Landroid/view/InsetsState;->sourceSize()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sub-int/2addr v0, v1

    .line 52
    :goto_1
    const/4 v1, 0x0

    .line 53
    if-ltz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 70
    .line 71
    .line 72
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    invoke-static {p1, p2, v1}, Lcom/android/server/wm/InsetsPolicy;->adjustInsetsForRoundedCorners(Lcom/android/server/wm/WindowToken;Landroid/view/InsetsState;Z)Landroid/view/InsetsState;

    .line 76
    .line 77
    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasSizeCompatBounds()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_5

    .line 85
    .line 86
    const/high16 p0, 0x3f800000    # 1.0f

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getCompatScale()F

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    div-float/2addr p0, p1

    .line 93
    invoke-virtual {p2, p0}, Landroid/view/InsetsState;->scale(F)V

    .line 94
    .line 95
    .line 96
    :cond_5
    return-void
.end method

.method public final getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsPolicy;->mHideNavBarForKeyboard:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    if-nez p2, :cond_1

    .line 21
    .line 22
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 47
    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_3
    if-eqz p1, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-ne v0, v1, :cond_4

    .line 70
    .line 71
    return-object p1

    .line 72
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/WindowState;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 79
    .line 80
    if-eqz p2, :cond_5

    .line 81
    .line 82
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    const/4 p2, 0x0

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 89
    .line 90
    iget p1, p1, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    .line 96
    .line 97
    invoke-interface {v0, p2, p1}, Landroid/view/IDisplayWindowInsetsController;->topFocusedWindowChanged(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_0
    move-exception p1

    .line 102
    const-string p2, "WindowManager"

    .line 103
    .line 104
    const-string v0, "Failed to deliver package in top focused window change"

    .line 105
    .line 106
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .line 108
    .line 109
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 112
    .line 113
    return-object p0

    .line 114
    :cond_6
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iget v1, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    .line 119
    .line 120
    and-int/2addr v1, v0

    .line 121
    if-ne v1, v0, :cond_7

    .line 122
    .line 123
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 124
    .line 125
    return-object p0

    .line 126
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 127
    .line 128
    if-eqz v0, :cond_8

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_8

    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 137
    .line 138
    return-object p0

    .line 139
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 140
    .line 141
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    iget v0, v0, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    .line 146
    .line 147
    and-int/2addr v0, v1

    .line 148
    if-ne v0, v1, :cond_9

    .line 149
    .line 150
    if-nez p2, :cond_9

    .line 151
    .line 152
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 153
    .line 154
    return-object p0

    .line 155
    :cond_9
    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 156
    .line 157
    iget-object p2, p2, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 158
    .line 159
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-nez v0, :cond_b

    .line 164
    .line 165
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 166
    .line 167
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_b

    .line 176
    .line 177
    if-eqz p2, :cond_a

    .line 178
    .line 179
    const/4 v0, 0x0

    .line 180
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    if-nez p2, :cond_b

    .line 185
    .line 186
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 187
    .line 188
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 189
    .line 190
    return-object p0

    .line 191
    :cond_b
    return-object p1
.end method

.method public getPermanentControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 28
    .line 29
    if-ne p1, v0, :cond_2

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/WindowState;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 39
    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/4 p2, 0x0

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 49
    .line 50
    iget p1, p1, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;->mRemoteInsetsController:Landroid/view/IDisplayWindowInsetsController;

    .line 56
    .line 57
    invoke-interface {v0, p2, p1}, Landroid/view/IDisplayWindowInsetsController;->topFocusedWindowChanged(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception p1

    .line 62
    const-string p2, "WindowManager"

    .line 63
    .line 64
    const-string v0, "Failed to deliver package in top focused window change"

    .line 65
    .line 66
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_4
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget v2, p0, Lcom/android/server/wm/InsetsPolicy;->mForcedShowingTypes:I

    .line 79
    .line 80
    and-int/2addr v2, v1

    .line 81
    if-ne v2, v1, :cond_5

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPermanentControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 87
    .line 88
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    iget v1, v1, Lcom/android/server/wm/DisplayPolicy;->mForciblyShownTypes:I

    .line 93
    .line 94
    and-int/2addr v1, v2

    .line 95
    if-ne v1, v2, :cond_6

    .line 96
    .line 97
    if-nez p2, :cond_6

    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 100
    .line 101
    return-object p0

    .line 102
    :cond_6
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-nez p2, :cond_8

    .line 107
    .line 108
    iget-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 109
    .line 110
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {p2, v1}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesSystemBar(I)Z

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_8

    .line 119
    .line 120
    if-eqz v0, :cond_7

    .line 121
    .line 122
    const/4 p2, 0x0

    .line 123
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys(Z)Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-nez p2, :cond_8

    .line 128
    .line 129
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 132
    .line 133
    return-object p0

    .line 134
    :cond_8
    if-eqz p1, :cond_9

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-eqz p2, :cond_9

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 143
    .line 144
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 145
    .line 146
    return-object p0

    .line 147
    :cond_9
    if-eqz p1, :cond_a

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    if-eqz p2, :cond_a

    .line 154
    .line 155
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 158
    .line 159
    return-object p0

    .line 160
    :cond_a
    return-object p1
.end method

.method public getTransientControlTarget()Lcom/android/server/wm/InsetsControlTarget;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hasHiddenSources(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 4
    .line 5
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    and-int/2addr v1, p1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskbarController;->adjustInsetsForTaskbar(Landroid/view/InsetsState;)Landroid/view/InsetsState;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/view/InsetsState;->sourceSize()I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const/4 v1, 0x1

    .line 27
    sub-int/2addr p0, v1

    .line 28
    :goto_0
    if-ltz p0, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    and-int/2addr v3, p1

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    return v1

    .line 59
    :cond_2
    :goto_1
    add-int/lit8 p0, p0, -0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/4 p0, 0x0

    .line 63
    return p0
.end method

.method public final isTransient(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final onRequestedVisibleTypesChanged(Lcom/android/server/wm/WindowState;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-boolean v1, v1, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 17
    .line 18
    iget-object v2, v0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/lit8 v2, v2, -0x1

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    move v4, v3

    .line 28
    :goto_0
    if-ltz v2, :cond_2

    .line 29
    .line 30
    iget-object v5, v0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Lcom/android/server/wm/InsetsSourceProvider;

    .line 37
    .line 38
    iget-object v6, v5, Lcom/android/server/wm/InsetsSourceProvider;->mFakeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 39
    .line 40
    if-ne p1, v6, :cond_1

    .line 41
    .line 42
    iget-object v5, v5, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    or-int/2addr v4, v5

    .line 49
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget p1, p1, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    .line 53
    .line 54
    and-int/2addr p1, v4

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move v0, v3

    .line 63
    :goto_1
    or-int/2addr p1, v0

    .line 64
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 65
    .line 66
    not-int v1, p1

    .line 67
    and-int/2addr v0, v1

    .line 68
    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 69
    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 75
    .line 76
    .line 77
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    iget v4, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 91
    .line 92
    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 93
    .line 94
    iget-object v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 95
    .line 96
    invoke-virtual {v5, v4, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    iget v5, v3, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    .line 101
    .line 102
    and-int/2addr v1, v5

    .line 103
    iput v1, v3, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    .line 104
    .line 105
    iget-object v1, v2, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 108
    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    :try_start_0
    invoke-interface {v1, v4, p1}, Lcom/android/internal/statusbar/IStatusBar;->abortTransient(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    :catch_0
    :cond_4
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    .line 115
    .line 116
    if-eqz v1, :cond_5

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_5

    .line 123
    .line 124
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 125
    .line 126
    invoke-virtual {v2, v0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$2;->abortTransientToType(II)V

    .line 127
    .line 128
    .line 129
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 130
    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final remoteInsetsControllerControlsSystemBars(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 6
    .line 7
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayPolicy;->mRemoteInsetsControllerControlsSystemBars:Z

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 13
    .line 14
    if-eqz p0, :cond_3

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mRemoteInsetsControlTarget:Lcom/android/server/wm/DisplayContent$RemoteInsetsControlTarget;

    .line 17
    .line 18
    if-nez p0, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 22
    .line 23
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    if-lt p0, p1, :cond_3

    .line 27
    .line 28
    const/16 v1, 0x63

    .line 29
    .line 30
    if-gt p0, v1, :cond_3

    .line 31
    .line 32
    move v0, p1

    .line 33
    :cond_3
    :goto_0
    return v0
.end method

.method public final showTransient(IZ)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 6
    .line 7
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    and-int/2addr v2, p1

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskbarController;->adjustInsetsForTaskbar(Landroid/view/InsetsState;)Landroid/view/InsetsState;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_0
    invoke-virtual {v1}, Landroid/view/InsetsState;->sourceSize()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x1

    .line 31
    sub-int/2addr v2, v3

    .line 32
    :goto_0
    if-ltz v2, :cond_3

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    and-int/2addr v4, p1

    .line 54
    if-nez v4, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    or-int/2addr v0, v5

    .line 58
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget p1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 62
    .line 63
    if-eq p1, v0, :cond_9

    .line 64
    .line 65
    iput v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const/4 v1, 0x0

    .line 74
    if-eqz p1, :cond_7

    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 77
    .line 78
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 79
    .line 80
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 81
    .line 82
    iget-object v4, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 83
    .line 84
    invoke-virtual {v4, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget v5, v4, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    .line 89
    .line 90
    or-int/2addr v5, v0

    .line 91
    iput v5, v4, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    .line 92
    .line 93
    iget-object v4, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 94
    .line 95
    iget-object v4, v4, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 96
    .line 97
    if-eqz v4, :cond_4

    .line 98
    .line 99
    :try_start_0
    invoke-interface {v4, v2, v0, p2}, Lcom/android/internal/statusbar/IStatusBar;->showTransient(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    :catch_0
    :cond_4
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->CARLIFE_NAVBAR:Z

    .line 103
    .line 104
    if-eqz v2, :cond_7

    .line 105
    .line 106
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isCarLifeDisplay()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_7

    .line 113
    .line 114
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 115
    .line 116
    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 117
    .line 118
    iget-object v5, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 119
    .line 120
    const/4 v6, 0x2

    .line 121
    invoke-virtual {v5, v4, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->getUiState(II)Lcom/android/server/statusbar/StatusBarManagerService$UiState;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    iget v7, v5, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    .line 126
    .line 127
    or-int/2addr v7, v0

    .line 128
    iput v7, v5, Lcom/android/server/statusbar/StatusBarManagerService$UiState;->mTransientBarTypes:I

    .line 129
    .line 130
    iget-object v5, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 131
    .line 132
    iget-object v5, v5, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    .line 133
    .line 134
    monitor-enter v5

    .line 135
    :try_start_1
    iget-object v7, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 136
    .line 137
    iget-object v7, v7, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 138
    .line 139
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    if-eqz v7, :cond_5

    .line 148
    .line 149
    :try_start_2
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 150
    .line 151
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 152
    .line 153
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Lcom/android/internal/statusbar/IStatusBar;

    .line 162
    .line 163
    invoke-interface {p1, v4, v0, p2}, Lcom/android/internal/statusbar/IStatusBar;->showTransient(IIZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :catchall_0
    move-exception p0

    .line 168
    goto :goto_3

    .line 169
    :catch_1
    :try_start_3
    const-string p1, "StatusBarManagerService"

    .line 170
    .line 171
    const-string v2, "RemoteException for showTransient"

    .line 172
    .line 173
    invoke-static {p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_5
    if-eqz v2, :cond_6

    .line 178
    .line 179
    iget-object v2, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 180
    .line 181
    iget-object v2, v2, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    .line 183
    if-eqz v2, :cond_6

    .line 184
    .line 185
    :try_start_4
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 186
    .line 187
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mCarLifeBar:Lcom/android/internal/carlife/IStatusBarCarLife;

    .line 188
    .line 189
    invoke-interface {p1, v4, v0, p2}, Lcom/android/internal/carlife/IStatusBarCarLife;->showTransient(IIZ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :catch_2
    :try_start_5
    const-string p1, "StatusBarManagerService"

    .line 194
    .line 195
    const-string v2, "RemoteException for showTransient"

    .line 196
    .line 197
    invoke-static {p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .line 199
    .line 200
    :cond_6
    :goto_2
    monitor-exit v5

    .line 201
    goto :goto_4

    .line 202
    :goto_3
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 203
    throw p0

    .line 204
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 205
    .line 206
    invoke-virtual {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 210
    .line 211
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    or-int/2addr v2, v4

    .line 220
    and-int/2addr v0, v2

    .line 221
    if-eqz v0, :cond_8

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_8
    move v3, v1

    .line 225
    :goto_5
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/wm/InsetsPolicy;->dispatchTransientSystemBarsVisibilityChanged(Lcom/android/server/wm/WindowState;ZZ)V

    .line 226
    .line 227
    .line 228
    :cond_9
    return-void
.end method

.method public final updateBarControlTarget(Lcom/android/server/wm/WindowState;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_6

    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 22
    .line 23
    if-eq v0, p1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iget v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:I

    .line 30
    .line 31
    if-gtz v0, :cond_6

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsPolicy;->mLastTransientRequestedByPolicyControl:Z

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    if-eqz p1, :cond_6

    .line 39
    .line 40
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_6

    .line 45
    .line 46
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowTransient()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->isRequestedVisible$1(I)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_5

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    .line 71
    .line 72
    .line 73
    :cond_6
    :goto_1
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 89
    .line 90
    const/4 v5, 0x0

    .line 91
    const/4 v6, 0x1

    .line 92
    if-ne v3, v4, :cond_7

    .line 93
    .line 94
    invoke-virtual {p0, p1, v6}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    goto :goto_2

    .line 99
    :cond_7
    if-ne v3, v0, :cond_8

    .line 100
    .line 101
    invoke-virtual {p0, v1, v6}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    goto :goto_2

    .line 106
    :cond_8
    move-object v4, v5

    .line 107
    :goto_2
    iput-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 108
    .line 109
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iget-object v7, p0, Lcom/android/server/wm/InsetsPolicy;->mTransientControlTarget:Lcom/android/server/wm/InsetsPolicy$ControlTarget;

    .line 114
    .line 115
    if-ne v4, v7, :cond_9

    .line 116
    .line 117
    invoke-virtual {p0, p1, v6}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    goto :goto_3

    .line 122
    :cond_9
    if-ne v4, v0, :cond_a

    .line 123
    .line 124
    invoke-virtual {p0, v1, v6}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    :cond_a
    :goto_3
    iput-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeNavControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 129
    .line 130
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 131
    .line 132
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFakeStatusControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 133
    .line 134
    iget-object v1, p1, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    sub-int/2addr v1, v6

    .line 141
    :goto_4
    if-ltz v1, :cond_d

    .line 142
    .line 143
    iget-object v7, p1, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 144
    .line 145
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    check-cast v7, Lcom/android/server/wm/InsetsSourceProvider;

    .line 150
    .line 151
    iget-object v8, v7, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 152
    .line 153
    invoke-virtual {v8}, Landroid/view/InsetsSource;->getType()I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    if-ne v8, v9, :cond_b

    .line 162
    .line 163
    invoke-virtual {p1, v3, v7, v2}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0, v7, v6}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 167
    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_b
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    if-ne v8, v9, :cond_c

    .line 175
    .line 176
    invoke-virtual {p1, v4, v7, v2}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v5, v7, v6}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 180
    .line 181
    .line 182
    :cond_c
    :goto_5
    add-int/lit8 v1, v1, -0x1

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 189
    .line 190
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    invoke-static {p1, v3, v0}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    .line 195
    .line 196
    .line 197
    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 198
    .line 199
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    invoke-static {p0, v4, p1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->-$$Nest$mupdateVisibility(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    .line 204
    .line 205
    .line 206
    return-void
.end method
