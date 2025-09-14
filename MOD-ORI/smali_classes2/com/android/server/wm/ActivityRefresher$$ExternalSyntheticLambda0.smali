.class public final synthetic Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRefresher;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRefresher;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityRefresher;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityRefresher;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityRefresher;->mWmService:Lcom/android/server/wm/WindowManagerService;

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
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/wm/AppCompatOverrides;->mAppCompatCameraOverrides:Lcom/android/server/wm/AppCompatCameraOverrides;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->mIsRefreshRequested:Z

    .line 23
    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 32
    .line 33
    .line 34
    throw p0
.end method
