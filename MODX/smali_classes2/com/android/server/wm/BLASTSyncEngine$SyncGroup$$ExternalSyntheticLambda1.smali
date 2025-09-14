.class public final synthetic Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

.field public final synthetic f$1:Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;->mApplySync:Ljava/lang/Runnable;

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 28
    .line 29
    .line 30
    throw p0
.end method
