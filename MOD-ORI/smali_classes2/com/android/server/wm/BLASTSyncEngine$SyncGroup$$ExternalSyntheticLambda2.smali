.class public final synthetic Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 2
    .line 3
    const-string v0, "BLASTSyncEngine"

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Sync group "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 13
    .line 14
    const-string v3, " timeout"

    .line 15
    .line 16
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 24
    .line 25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 26
    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->onTimeout()V

    .line 30
    .line 31
    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 40
    .line 41
    .line 42
    throw p0
.end method
