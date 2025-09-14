.class public final Lcom/android/server/wm/PopOverController$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PopOverController;

.field public final synthetic val$apply:Z

.field public final synthetic val$toAlpha:F

.field public final synthetic val$win:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PopOverController;ZLcom/android/server/wm/WindowState;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/PopOverController$1;->val$apply:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/PopOverController$1;->val$win:Lcom/android/server/wm/WindowState;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/wm/PopOverController$1;->val$toAlpha:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/PopOverController$1;->val$win:Lcom/android/server/wm/WindowState;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/android/server/wm/PopOverController$1;->val$apply:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget v1, p0, Lcom/android/server/wm/PopOverController$1;->val$toAlpha:F

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 27
    .line 28
    :goto_0
    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPopOverAlpha:F

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 35
    .line 36
    .line 37
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/android/server/wm/PopOverController$1;->val$apply:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter p1

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/PopOverController$1;->val$win:Lcom/android/server/wm/WindowState;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 20
    .line 21
    const/high16 v1, -0x40800000    # -1.0f

    .line 22
    .line 23
    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPopOverAlpha:F

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 30
    .line 31
    .line 32
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_0
    :goto_0
    return-void
.end method
