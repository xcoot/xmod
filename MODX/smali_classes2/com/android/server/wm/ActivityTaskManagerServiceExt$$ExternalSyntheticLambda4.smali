.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$1:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$2:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$1:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$2:Z

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerServiceExt$$ExternalSyntheticLambda4;->f$3:Z

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 14
    .line 15
    .line 16
    monitor-enter v3

    .line 17
    :try_start_0
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mStartedUserIds:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/wm/CoreStateController;->startUserLocked(IZZ)V

    .line 44
    .line 45
    .line 46
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    .line 54
    .line 55
    throw p0
.end method
