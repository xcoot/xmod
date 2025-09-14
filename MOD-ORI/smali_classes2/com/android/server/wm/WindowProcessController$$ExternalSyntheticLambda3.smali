.class public final synthetic Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowProcessController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowProcessController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/WindowProcessController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/WindowProcessController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 8
    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    const/4 v4, 0x1

    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    .line 25
    .line 26
    invoke-virtual {v1, p0, v2, v4}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    .line 31
    .line 32
    iget v2, v1, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 33
    .line 34
    if-ne p0, v2, :cond_1

    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    invoke-virtual {v1, p0, v4}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 48
    .line 49
    .line 50
    throw p0
.end method
