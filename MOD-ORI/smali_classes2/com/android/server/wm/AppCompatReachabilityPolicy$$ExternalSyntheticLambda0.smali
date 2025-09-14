.class public final synthetic Lcom/android/server/wm/AppCompatReachabilityPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AppCompatReachabilityPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatReachabilityPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/AppCompatReachabilityPolicy;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 21
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
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    iput-boolean v3, v2, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsSingleTapEvent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    :try_start_2
    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    .line 40
    .line 41
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    .line 42
    .line 43
    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsSingleTapEvent:Z

    .line 44
    .line 45
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void

    .line 50
    :catchall_1
    move-exception v1

    .line 51
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides;->mReachabilityState:Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;

    .line 52
    .line 53
    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatReachabilityOverrides$ReachabilityState;->mIsSingleTapEvent:Z

    .line 54
    .line 55
    throw v1

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 58
    .line 59
    .line 60
    throw p0
.end method
