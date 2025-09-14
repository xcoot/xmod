.class public final Lcom/android/server/wm/DisplayPolicyExt;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAuthFactorTouchManager:Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

.field public final mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mFakeFocusedWindow:Lcom/android/server/wm/WindowState;

.field public mGameToolsOverlayWindow:Lcom/android/server/wm/WindowState;

.field public mGameToolsWindow:Lcom/android/server/wm/WindowState;

.field public final mLastPayHandlerFrame:Landroid/graphics/Rect;

.field public mLastPayHandlerVisible:Z

.field public mNavBarImeBtnAllRotationsAllowed:Z

.field public mNavigationMode:I

.field public final mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

.field public mPayHandlerWin:Lcom/android/server/wm/WindowState;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTaskbarController:Lcom/android/server/wm/TaskbarController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayPolicy;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mLastPayHandlerFrame:Landroid/graphics/Rect;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 17
    .line 18
    iget-object v1, p3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 19
    .line 20
    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/wm/OneHandOpPolicy;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v3, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v3, v1, Lcom/android/server/wm/OneHandOpPolicy;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    iput-boolean v2, v1, Lcom/android/server/wm/OneHandOpPolicy;->mIsOneHandOpEnabled:Z

    .line 38
    .line 39
    iput-boolean v2, v1, Lcom/android/server/wm/OneHandOpPolicy;->mHasOneHandOpSpec:Z

    .line 40
    .line 41
    new-instance v3, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

    .line 42
    .line 43
    invoke-direct {v3, v1}, Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;-><init>(Lcom/android/server/wm/OneHandOpPolicy;)V

    .line 44
    .line 45
    .line 46
    iput-object v3, v1, Lcom/android/server/wm/OneHandOpPolicy;->mOneHandOpMonitor:Lcom/android/server/wm/OneHandOpPolicy$OneHandOpMonitor;

    .line 47
    .line 48
    new-instance v3, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-direct {v3, v1, v4}, Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/OneHandOpPolicy;I)V

    .line 52
    .line 53
    .line 54
    iput-object v3, v1, Lcom/android/server/wm/OneHandOpPolicy;->mRestartRunnable:Lcom/android/server/wm/OneHandOpPolicy$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    iput-object p1, v1, Lcom/android/server/wm/OneHandOpPolicy;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    iput-object p2, v1, Lcom/android/server/wm/OneHandOpPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mOneHandOpPolicy:Lcom/android/server/wm/OneHandOpPolicy;

    .line 61
    .line 62
    :cond_0
    sget-boolean v1, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    iget-object p3, p3, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 67
    .line 68
    iget-boolean v1, p3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    new-instance v1, Lcom/android/server/wm/CoverPolicy;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v0, v1, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    .line 78
    .line 79
    iput-object v0, v1, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 80
    .line 81
    new-instance v0, Ljava/util/HashSet;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v0, v1, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    .line 87
    .line 88
    iput-boolean v2, v1, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    .line 89
    .line 90
    iput-boolean v2, v1, Lcom/android/server/wm/CoverPolicy;->mLastClearCoverState:Z

    .line 91
    .line 92
    new-instance v0, Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;

    .line 93
    .line 94
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, v1, Lcom/android/server/wm/CoverPolicy;->mHandler:Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;

    .line 106
    .line 107
    iput-object p0, v1, Lcom/android/server/wm/CoverPolicy;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 108
    .line 109
    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 110
    .line 111
    iput-object v0, v1, Lcom/android/server/wm/CoverPolicy;->mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 112
    .line 113
    iput-object p3, v1, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 114
    .line 115
    iput-object p2, v1, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 116
    .line 117
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 118
    .line 119
    new-instance p3, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;

    .line 120
    .line 121
    invoke-direct {p3, v1}, Lcom/android/server/wm/CoverPolicy$CoverDisplayPolicy;-><init>(Lcom/android/server/wm/CoverPolicy;)V

    .line 122
    .line 123
    .line 124
    iput-object p3, p2, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 125
    .line 126
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverPolicy:Lcom/android/server/wm/CoverPolicy;

    .line 127
    .line 128
    :cond_1
    new-instance p2, Lcom/android/server/wm/TaskbarController;

    .line 129
    .line 130
    invoke-direct {p2, p0}, Lcom/android/server/wm/TaskbarController;-><init>(Lcom/android/server/wm/DisplayPolicyExt;)V

    .line 131
    .line 132
    .line 133
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mAuthFactorTouchManager:Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

    .line 140
    .line 141
    return-void
.end method

.method public static isUsingBlurEffect(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 8
    .line 9
    and-int/lit8 p0, p0, 0x2

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method


# virtual methods
.method public final canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    .line 19
    .line 20
    invoke-interface {v1, v0}, Lcom/android/server/wm/ExtraDisplayPolicy;->hasCoverHome(I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    return v3

    .line 27
    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    return v3

    .line 32
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 33
    .line 34
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 35
    .line 36
    const/16 v1, 0x7d0

    .line 37
    .line 38
    if-eq v0, v1, :cond_5

    .line 39
    .line 40
    const/16 v1, 0x7dd

    .line 41
    .line 42
    if-eq v0, v1, :cond_5

    .line 43
    .line 44
    const/16 v1, 0x7e3

    .line 45
    .line 46
    if-eq v0, v1, :cond_5

    .line 47
    .line 48
    const/16 v1, 0x7f8

    .line 49
    .line 50
    if-eq v0, v1, :cond_5

    .line 51
    .line 52
    const/16 v1, 0x833

    .line 53
    .line 54
    if-eq v0, v1, :cond_5

    .line 55
    .line 56
    const/16 v1, 0x96f

    .line 57
    .line 58
    if-eq v0, v1, :cond_2

    .line 59
    .line 60
    packed-switch v0, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_AOD_FACE_WIDGET:Z

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    return v3

    .line 69
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mTaskbarController:Lcom/android/server/wm/TaskbarController;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 72
    .line 73
    if-ne p0, p1, :cond_4

    .line 74
    .line 75
    return v3

    .line 76
    :cond_4
    iget-object p0, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    const/16 p1, 0x1a

    .line 86
    .line 87
    if-ge p0, p1, :cond_5

    .line 88
    .line 89
    const/4 v3, 0x1

    .line 90
    :cond_5
    :pswitch_0
    return v3

    .line 91
    :pswitch_data_0
    .packed-switch 0xa3d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final notifyRequestedGameToolsWin(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 11
    .line 12
    const-string/jumbo v0, "notifyRequestedGameToolsWin attached="

    .line 13
    .line 14
    .line 15
    const-string v1, "StatusBarManagerService"

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBar;->notifyRequestedGameToolsWin(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    :cond_1
    return-void
.end method
