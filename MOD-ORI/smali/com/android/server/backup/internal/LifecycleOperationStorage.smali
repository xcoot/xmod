.class public final Lcom/android/server/backup/internal/LifecycleOperationStorage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/backup/OperationStorage;


# instance fields
.field public final mOpTokensByPackage:Ljava/util/Map;

.field public final mOperations:Landroid/util/SparseArray;

.field public final mOperationsLock:Ljava/lang/Object;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOpTokensByPackage:Ljava/util/Map;

    .line 24
    .line 25
    iput p1, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mUserId:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final cancelOperation(IZLjava/util/function/IntConsumer;)V
    .locals 7

    .line 1
    const-string v0, "[UserID:"

    .line 2
    .line 3
    const-string v1, "[UserID:"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lcom/android/server/backup/internal/Operation;

    .line 15
    .line 16
    const/4 v4, -0x1

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget v5, v3, Lcom/android/server/backup/internal/Operation;->state:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    move v5, v4

    .line 25
    :goto_0
    const/4 v6, 0x1

    .line 26
    if-ne v5, v6, :cond_1

    .line 27
    .line 28
    const-string p3, "LifecycleOperationStorage"

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mUserId:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, "] Operation already got an ack.Should have been removed from mCurrentOperations."

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {p3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-object p3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 55
    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    if-nez v5, :cond_2

    .line 60
    .line 61
    const-string v1, "LifecycleOperationStorage"

    .line 62
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mUserId:I

    .line 69
    .line 70
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, "] Cancel: token="

    .line 74
    .line 75
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    iput v4, v3, Lcom/android/server/backup/internal/Operation;->state:I

    .line 93
    .line 94
    iget p1, v3, Lcom/android/server/backup/internal/Operation;->type:I

    .line 95
    .line 96
    invoke-interface {p3, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 102
    .line 103
    .line 104
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    if-eqz v3, :cond_3

    .line 106
    .line 107
    iget-object p0, v3, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    .line 108
    .line 109
    if-eqz p0, :cond_3

    .line 110
    .line 111
    invoke-interface {p0, p2}, Lcom/android/server/backup/BackupRestoreTask;->handleCancel(Z)V

    .line 112
    .line 113
    .line 114
    :cond_3
    return-void

    .line 115
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    throw p0
.end method

.method public final operationTokensForOpType()Ljava/util/Set;
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ge v2, v3, :cond_1

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/server/backup/internal/Operation;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    iget v3, v3, Lcom/android/server/backup/internal/Operation;->type:I

    .line 32
    .line 33
    const/4 v5, 0x2

    .line 34
    if-ne v3, v5, :cond_0

    .line 35
    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    monitor-exit v1

    .line 50
    return-object v0

    .line 51
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final registerOperationForPackages(ILjava/util/Set;Lcom/android/server/backup/BackupRestoreTask;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    .line 5
    .line 6
    new-instance v2, Lcom/android/server/backup/internal/Operation;

    .line 7
    .line 8
    invoke-direct {v2, p3, p4}, Lcom/android/server/backup/internal/Operation;-><init>(Lcom/android/server/backup/BackupRestoreTask;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    check-cast p3, Ljava/lang/String;

    .line 29
    .line 30
    iget-object p4, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOpTokensByPackage:Ljava/util/Map;

    .line 31
    .line 32
    check-cast p4, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    check-cast p4, Ljava/util/Set;

    .line 39
    .line 40
    if-nez p4, :cond_0

    .line 41
    .line 42
    new-instance p4, Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOpTokensByPackage:Ljava/util/Map;

    .line 58
    .line 59
    check-cast v1, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {v1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public final removeOperation(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOpTokensByPackage:Ljava/util/Map;

    .line 10
    .line 11
    check-cast v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOpTokensByPackage:Ljava/util/Map;

    .line 34
    .line 35
    check-cast v3, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/util/Set;

    .line 42
    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object v4, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOpTokensByPackage:Ljava/util/Map;

    .line 54
    .line 55
    check-cast v4, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0
.end method
