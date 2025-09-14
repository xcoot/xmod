.class public final Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;
.super Landroid/window/IBackAnimationFinishedCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;->this$1:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/window/IBackAnimationFinishedCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationFinished(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;->this$1:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder$1;->this$1:Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$ScheduleAnimationBuilder;->this$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mComposed:Z

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 v1, 0x1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->clearBackAnimateTarget(Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWaitTransition:Z

    .line 36
    .line 37
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 44
    .line 45
    .line 46
    throw p0
.end method
