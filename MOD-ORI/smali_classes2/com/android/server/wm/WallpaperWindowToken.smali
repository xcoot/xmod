.class public final Lcom/android/server/wm/WallpaperWindowToken;
.super Lcom/android/server/wm/WindowToken;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCropHints:Landroid/util/SparseArray;

.field public mDisplayAddress:Landroid/view/DisplayAddress;

.field private mIsForPrimaryDevice:Z

.field public mShowWhenLocked:Z

.field public mWallpaperDisplayOffsetX:I

.field public mWallpaperDisplayOffsetY:I

.field public mWallpaperX:F

.field public mWallpaperXStep:F

.field public mWallpaperY:F

.field public mWallpaperYStep:F

.field public stringInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Lcom/android/server/wm/DisplayContent;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const/4 v8, 0x0

    .line 2
    const/16 v3, 0x7dd

    .line 3
    .line 4
    const/4 v4, 0x1

    .line 5
    const/4 v6, 0x1

    .line 6
    const/4 v7, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v9, p4

    .line 12
    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZZLandroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mShowWhenLocked:Z

    .line 17
    .line 18
    const/high16 p2, -0x40800000    # -1.0f

    .line 19
    .line 20
    iput p2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 21
    .line 22
    iput p2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 23
    .line 24
    iput p2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 25
    .line 26
    iput p2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 27
    .line 28
    const/high16 p2, -0x80000000

    .line 29
    .line 30
    iput p2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 31
    .line 32
    iput p2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    iput-object p2, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayAddress:Landroid/view/DisplayAddress;

    .line 36
    .line 37
    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mIsForPrimaryDevice:Z

    .line 38
    .line 39
    new-instance p1, Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mCropHints:Landroid/util/SparseArray;

    .line 45
    .line 46
    iput-object p2, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringInfo:Ljava/lang/String;

    .line 47
    .line 48
    iget-object p1, p3, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 57
    .line 58
    .line 59
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_WALLPAPER_POLICY:Z

    .line 60
    .line 61
    if-nez p1, :cond_0

    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    iget-object p1, p3, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 65
    .line 66
    iget-object p1, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayAddress:Landroid/view/DisplayAddress;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    throw p2
.end method


# virtual methods
.method public final asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final canShowInCurrentDevice()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 10
    .line 11
    iget-object v0, v0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mDisplayAddress:Landroid/view/DisplayAddress;

    .line 16
    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final commitVisibility(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    aget-boolean v0, v0, v1

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-boolean v1, p0, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 18
    .line 19
    iget-boolean v2, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 20
    .line 21
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    const-wide v4, 0x641eb96dd1423899L    # 1.8997653378592286E174

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const/16 v6, 0x3c

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibleRequested(Z)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperWindowToken;->setVisible$1(Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final forAllWallpaperWindows(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    .line 9
    .line 10
    return-object p0
.end method

.method public final hasVisibleNotDrawnWallpaper()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    sub-int/2addr v0, v2

    .line 15
    :goto_0
    if-ltz v0, :cond_2

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    return v2

    .line 38
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return v1
.end method

.method public isForPrimaryDevice()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mIsForPrimaryDevice:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->hasVisibleNotDrawnWallpaper()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method public final isVisible()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 2
    .line 3
    return p0
.end method

.method public final linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_ROTATED_WALLPAPER_SNAPSHOT:Z

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    :goto_0
    if-ltz v0, :cond_3

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 36
    .line 37
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 38
    .line 39
    and-int/lit16 v1, v1, 0x4000

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 58
    .line 59
    .line 60
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final needRemoteWallpaperAnim()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, v0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 10
    .line 11
    const v3, 0x43900

    .line 12
    .line 13
    .line 14
    and-int/2addr v0, v3

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    :goto_1
    if-eqz p0, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    iget v0, v0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 33
    .line 34
    const/16 v3, 0x2712

    .line 35
    .line 36
    if-ne v0, v3, :cond_3

    .line 37
    .line 38
    return v2

    .line 39
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_1

    .line 44
    :cond_4
    return v1
.end method

.method public final onChildVisibleRequestedChanged(Lcom/android/server/wm/WindowContainer;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final prepareSurfaces()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/window/flags/Flags;->ensureWallpaperInTransitions()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 27
    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->mFixedRotationTransformLeash:Landroid/view/SurfaceControl;

    .line 62
    .line 63
    :cond_2
    :goto_0
    return-void
.end method

.method public final setExiting(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->setExiting(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setVisibility(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    if-nez p1, :cond_1

    .line 26
    .line 27
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_AOD_APPEAR:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget v0, v0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 46
    .line 47
    const/high16 v1, 0x40000

    .line 48
    .line 49
    and-int/2addr v0, v1

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 53
    .line 54
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibleRequested(Z)Z

    .line 58
    .line 59
    .line 60
    :cond_3
    if-nez p1, :cond_7

    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 75
    .line 76
    iget v0, v0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    .line 77
    .line 78
    const/4 v1, 0x2

    .line 79
    if-ne v0, v1, :cond_7

    .line 80
    .line 81
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 86
    .line 87
    const/4 v1, 0x4

    .line 88
    if-ne v0, v1, :cond_5

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_WALLPAPER_POLICY:Z

    .line 100
    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->canShowInCurrentDevice()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_6

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    return-void

    .line 111
    :cond_7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final setVisible$1(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowToken;->setClientVisible(Z)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    add-int/lit8 p1, p1, -0x1

    .line 17
    .line 18
    :goto_0
    if-ltz p1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 29
    .line 30
    .line 31
    add-int/lit8 p1, p1, -0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public final setVisibleRequested(Z)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setVisibleRequested(Z)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    xor-int/2addr p1, v0

    .line 11
    new-instance v1, Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowToken$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowToken;Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 17
    .line 18
    .line 19
    return v0
.end method

.method public final showWallpaper()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "WallpaperWindowToken{"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " token="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x7d

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    .line 43
    .line 44
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WallpaperWindowToken;->toStringInfo(Z)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public final toStringInfo(Z)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringInfo:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v0, "_<"

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mShowWhenLocked:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v0, "lock"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string/jumbo v0, "system"

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_WALLPAPER_POLICY:Z

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    const-string/jumbo v0, "|"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mIsForPrimaryDevice:Z

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const-string/jumbo v0, "primary"

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const-string/jumbo v0, "non-primary"

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_3
    const-string v0, ">"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringInfo:Ljava/lang/String;

    .line 61
    .line 62
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/WallpaperWindowToken;->stringInfo:Ljava/lang/String;

    .line 63
    .line 64
    return-object p0
.end method

.method public final updateWallpaperOffset(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    sub-int/2addr v1, v2

    .line 13
    :goto_0
    if-ltz v1, :cond_2

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 16
    .line 17
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 27
    .line 28
    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    .line 29
    .line 30
    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerFlags;->mWallpaperOffsetAsync:Z

    .line 31
    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    move v5, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    move v5, v4

    .line 37
    :goto_1
    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    move p1, v4

    .line 44
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-void
.end method
