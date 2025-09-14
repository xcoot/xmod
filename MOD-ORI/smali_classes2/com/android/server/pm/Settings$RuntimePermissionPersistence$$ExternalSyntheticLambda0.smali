.class public final synthetic Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

.field public final synthetic f$1:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public final synthetic f$4:I

.field public final synthetic f$5:Lcom/android/server/utils/WatchedArrayMap;

.field public final synthetic f$6:Lcom/android/server/utils/WatchedArrayMap;

.field public final synthetic f$7:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;Lcom/android/server/pm/PackageManagerTracedLock;ZLcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;ILcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$5:Lcom/android/server/utils/WatchedArrayMap;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$6:Lcom/android/server/utils/WatchedArrayMap;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$7:Landroid/os/Handler;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$2:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$4:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$5:Lcom/android/server/utils/WatchedArrayMap;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$6:Lcom/android/server/utils/WatchedArrayMap;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;->f$7:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v7, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mIsLegacyPermissionStateStale:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 25
    .line 26
    monitor-enter v1

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    if-eqz v7, :cond_1

    .line 30
    .line 31
    :cond_0
    :try_start_0
    iget-object v2, v3, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 34
    .line 35
    invoke-interface {v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->writeLegacyPermissionStateTEMP()V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-static {v4, v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getPackagePermissions(ILcom/android/server/utils/WatchedArrayMap;)Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v4, v6}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getShareUsersPermissions(ILcom/android/server/utils/WatchedArrayMap;)Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    iget-object v5, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v5

    .line 50
    :try_start_1
    iget-object v1, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    .line 51
    .line 52
    invoke-virtual {v1, v4, v8}, Landroid/util/SparseIntArray;->get(II)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iget-object v6, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    check-cast v6, Ljava/lang/String;

    .line 63
    .line 64
    new-instance v7, Lcom/android/permission/persistence/RuntimePermissionsState;

    .line 65
    .line 66
    invoke-direct {v7, v1, v6, v2, v3}, Lcom/android/permission/persistence/RuntimePermissionsState;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {v1, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    if-eqz p0, :cond_2

    .line 76
    .line 77
    iget-object p0, v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceHandler:Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    .line 78
    .line 79
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePendingStates()V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    throw p0

    .line 94
    :catchall_1
    move-exception p0

    .line 95
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 97
    .line 98
    throw p0
.end method
