.class public final Lcom/android/server/companion/association/AssociationStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mIdToAssociationMap:Ljava/util/Map;

.field public final mLocalListeners:Ljava/util/Set;

.field public final mLock:Ljava/lang/Object;

.field public mMaxId:I

.field public mPersisted:Z

.field public final mRemoteListeners:Landroid/os/RemoteCallbackList;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/server/companion/association/AssociationDiskStore;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/companion/association/AssociationStore;->mPersisted:Z

    .line 14
    new-instance v1, Ljava/util/HashMap;

    .line 16
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    .line 21
    iput v0, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 23
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 25
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    .line 30
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 32
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    .line 37
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationStore;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/server/companion/association/AssociationStore;->mUserManager:Landroid/os/UserManager;

    .line 41
    iput-object p3, p0, Lcom/android/server/companion/association/AssociationStore;->mDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/android/server/companion/association/AssociationStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 49
    return-void
.end method


# virtual methods
.method public final addAssociation(Landroid/companion/AssociationInfo;)V
    .locals 6

    .line 1
    const-string v0, "Association id=["

    .line 3
    const-string v1, "CDM_AssociationStore"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    const-string v3, "Adding new association=["

    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    const-string v3, "]..."

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    .line 30
    move-result v1

    .line 31
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 34
    move-result v2

    .line 35
    iget-object v3, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 37
    monitor-enter v3

    .line 38
    :try_start_0
    iget-object v4, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v5

    .line 44
    check-cast v4, Ljava/util/HashMap;

    .line 46
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 52
    const-string p0, "CDM_AssociationStore"

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v0, "] already exists."

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    monitor-exit v3

    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object v4

    .line 84
    check-cast v0, Ljava/util/HashMap;

    .line 86
    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget v0, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 94
    move-result v0

    .line 95
    iput v0, p0, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 97
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 99
    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;

    .line 101
    invoke-direct {v1, p0, v2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/companion/association/AssociationStore;I)V

    .line 104
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 107
    const-string v0, "CDM_AssociationStore"

    .line 109
    const-string v1, "Done adding new association."

    .line 111
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    sget-object v1, Lcom/android/server/companion/utils/MetricUtils;->METRIC_DEVICE_PROFILE:Ljava/util/Map;

    .line 121
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Ljava/lang/Integer;

    .line 127
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 130
    move-result v0

    .line 131
    const/16 v1, 0x1c3

    .line 133
    const/4 v2, 0x1

    .line 134
    invoke-static {v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 137
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isActive()Z

    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_1

    .line 143
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/association/AssociationStore;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    .line 147
    :cond_1
    return-void

    .line 148
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    throw p0
.end method

.method public final broadcastChange(ILandroid/companion/AssociationInfo;)V
    .locals 3

    .line 1
    const-string v0, "CDM_AssociationStore"

    .line 3
    const-string v1, "Broadcasting association changes - changeType=["

    .line 5
    const-string v2, "]..."

    .line 7
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    .line 15
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/companion/association/AssociationStore$OnChangeListener;

    .line 31
    invoke-interface {v2, p1, p2}, Lcom/android/server/companion/association/AssociationStore$OnChangeListener;->onAssociationChanged(ILandroid/companion/AssociationInfo;)V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_3

    .line 37
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    .line 40
    monitor-enter v1

    .line 41
    :try_start_1
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 44
    move-result p2

    .line 45
    invoke-virtual {p0, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    .line 48
    move-result-object v0

    .line 49
    const/4 v2, 0x3

    .line 50
    if-eq p1, v2, :cond_1

    .line 52
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    .line 54
    new-instance p1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda11;

    .line 56
    invoke-direct {p1, p2, v0}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda11;-><init>(ILjava/util/List;)V

    .line 59
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/BiConsumer;)V

    .line 62
    goto :goto_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :goto_1
    monitor-exit v1

    .line 66
    return-void

    .line 67
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    throw p0

    .line 69
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    throw p0
.end method

.method public final getActiveAssociations()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    .line 7
    move-result-object p0

    .line 8
    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda2;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda2;-><init>(I)V

    .line 14
    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final getActiveAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    .line 7
    move-result-object p0

    .line 8
    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p1, v2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 14
    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    .line 7
    move-result-object p0

    .line 8
    new-instance p1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {p1, p2, v1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 14
    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final getActiveAssociationsByUser(I)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    .line 7
    move-result-object p0

    .line 8
    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p1, v2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;-><init>(II)V

    .line 14
    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final getAssociationById(I)Landroid/companion/AssociationInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    check-cast p0, Ljava/util/HashMap;

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/companion/AssociationInfo;

    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 12
    move-result p1

    .line 13
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {p1, p0, v1, v2}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string/jumbo v0, "getAssociationWithCallerChecks() Association id=["

    .line 27
    const-string v1, "] doesn\'t exist."

    .line 29
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0
.end method

.method public final getAssociations()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/companion/association/AssociationStore;->mPersisted:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;

    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/association/AssociationStore;)V

    .line 13
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    .line 18
    check-cast p0, Ljava/util/HashMap;

    .line 20
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    .line 27
    move-result-object p0

    .line 28
    monitor-exit v0

    .line 29
    return-object p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final getAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByUser(I)Ljava/util/List;

    .line 7
    move-result-object p0

    .line 8
    new-instance p1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;

    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {p1, p2, v1}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 14
    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final getAssociationsByUser(I)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getAssociations()Ljava/util/List;

    .line 7
    move-result-object p0

    .line 8
    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, p1, v2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda4;-><init>(II)V

    .line 14
    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    .line 7
    move-result-object p0

    .line 8
    new-instance p1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;

    .line 10
    const/4 p2, 0x3

    .line 11
    invoke-direct {p1, p3, p2}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 14
    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/companion/AssociationInfo;

    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mLocalListeners:Ljava/util/Set;

    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final updateAssociation(Landroid/companion/AssociationInfo;)V
    .locals 5

    .line 1
    const-string v0, "Can\'t update association id=["

    .line 3
    const-string v1, "CDM_AssociationStore"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    const-string v3, "Updating new association=["

    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    const-string v3, "]..."

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 33
    monitor-enter v2

    .line 34
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v4

    .line 40
    check-cast v3, Ljava/util/HashMap;

    .line 42
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Landroid/companion/AssociationInfo;

    .line 48
    if-nez v3, :cond_0

    .line 50
    const-string p0, "CDM_AssociationStore"

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v0, "]. It does not exist."

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    monitor-exit v2

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    invoke-virtual {v3, p1}, Landroid/companion/AssociationInfo;->equals(Ljava/lang/Object;)Z

    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 82
    const-string p0, "CDM_AssociationStore"

    .line 84
    const-string p1, "Association is the same."

    .line 86
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    monitor-exit v2

    .line 90
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mIdToAssociationMap:Ljava/util/Map;

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v1

    .line 97
    check-cast v0, Ljava/util/HashMap;

    .line 99
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 105
    move-result v0

    .line 106
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 108
    new-instance v4, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;

    .line 110
    invoke-direct {v4, p0, v0}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/companion/association/AssociationStore;I)V

    .line 113
    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 116
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    const-string v0, "CDM_AssociationStore"

    .line 119
    const-string v1, "Done updating association."

    .line 121
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->isActive()Z

    .line 127
    move-result v0

    .line 128
    const/4 v1, 0x1

    .line 129
    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isActive()Z

    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_2

    .line 137
    invoke-virtual {p0, v1, p1}, Lcom/android/server/companion/association/AssociationStore;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    .line 140
    return-void

    .line 141
    :cond_2
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isActive()Z

    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_4

    .line 147
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    .line 154
    move-result-object v2

    .line 155
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    move-result v0

    .line 159
    xor-int/2addr v0, v1

    .line 160
    if-eqz v0, :cond_3

    .line 162
    const/4 v0, 0x2

    .line 163
    goto :goto_0

    .line 164
    :cond_3
    const/4 v0, 0x3

    .line 165
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/association/AssociationStore;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    .line 168
    :cond_4
    return-void

    .line 169
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    throw p0
.end method
