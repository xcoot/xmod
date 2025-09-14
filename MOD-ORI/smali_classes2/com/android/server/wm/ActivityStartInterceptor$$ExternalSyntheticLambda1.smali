.class public final synthetic Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityStartInterceptor;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityStartInterceptor;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/ActivityStartInterceptor$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

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
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda3;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    invoke-direct {p0, v2}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda3;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 42
    .line 43
    .line 44
    throw p0
.end method
