.class public final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBorderWidth:F

.field public final mDrawBorderInset:I

.field public mFullRedrawNeeded:Z

.field public final mHalfBorderWidth:I

.field public final mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

.field public final synthetic this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x105000f

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mBorderWidth:F

    .line 20
    .line 21
    const/high16 v1, 0x40000000    # 2.0f

    .line 22
    .line 23
    div-float v1, v0, v1

    .line 24
    .line 25
    float-to-double v1, v1

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    double-to-int v1, v1

    .line 31
    iput v1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mHalfBorderWidth:I

    .line 32
    .line 33
    float-to-int v0, v0

    .line 34
    div-int/lit8 v0, v0, 0x2

    .line 35
    .line 36
    iput v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mDrawBorderInset:I

    .line 37
    .line 38
    new-instance v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mDisplayContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;-><init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final setMagnifiedRegionBorderShown(ZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mWindow:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->this$1:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShown:Z

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-ne v2, p1, :cond_0

    .line 20
    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    move p1, v4

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :try_start_1
    iput-boolean p1, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mShown:Z

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->mAnimationController:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;

    .line 32
    .line 33
    invoke-virtual {v0, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 38
    .line 39
    .line 40
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 42
    .line 43
    .line 44
    :goto_0
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iput-boolean v3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->mFullRedrawNeeded:Z

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mOldMagnificationRegion:Landroid/graphics/Region;

    .line 51
    .line 52
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/graphics/Region;->set(IIII)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void

    .line 56
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 58
    .line 59
    .line 60
    throw p0
.end method
