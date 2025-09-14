.class Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPersistentTaskIds:Landroid/util/ArraySet;

.field public final mRunningUserIds:[I

.field public final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/util/ArraySet;[ILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 2
    .line 3
    array-length p1, p3

    .line 4
    const/4 v0, 0x0

    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    aget v0, p3, v0

    .line 8
    .line 9
    :cond_0
    invoke-direct {p0, p4, v0}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mPersistentTaskIds:Landroid/util/ArraySet;

    .line 18
    .line 19
    array-length p1, p3

    .line 20
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mRunningUserIds:[I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public getTaskId(Ljava/lang/String;)I
    .locals 2

    .line 1
    const-string p0, ".proto"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, -0x1

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string p0, ".jpg"

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    const/16 p0, 0x2e

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-ne p0, v0, :cond_1

    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "_reduced"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    const/16 p1, 0x8

    .line 42
    .line 43
    invoke-static {p1, v1, p0}, Lcom/android/server/DropBoxManagerService$EntryFile$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return p0

    .line 52
    :catch_0
    return v0
.end method

.method public final isReady(Lcom/android/server/pm/UserManagerInternal;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mRunningUserIds:[I

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x1

    .line 5
    sub-int/2addr v0, v1

    .line 6
    :goto_0
    if-ltz v0, :cond_1

    .line 7
    .line 8
    aget v2, p0, v0

    .line 9
    .line 10
    invoke-virtual {p1, v2}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlocked(I)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return v1
.end method

.method public final write()V
    .locals 15

    .line 1
    const-string v0, "RemoveObsoleteFilesQueueItem"

    .line 2
    .line 3
    const-wide/16 v1, 0x20

    .line 4
    .line 5
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    new-instance v3, Landroid/util/ArraySet;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 16
    .line 17
    iget-object v4, v4, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mRunningUserIds:[I

    .line 24
    .line 25
    array-length v4, v0

    .line 26
    const/4 v5, 0x0

    .line 27
    move v6, v5

    .line 28
    :goto_0
    if-ge v6, v4, :cond_3

    .line 29
    .line 30
    aget v7, v0, v6

    .line 31
    .line 32
    iget-object v8, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 33
    .line 34
    invoke-virtual {v8, v7}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    if-nez v8, :cond_0

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    array-length v9, v8

    .line 46
    move v10, v5

    .line 47
    :goto_1
    if-ge v10, v9, :cond_2

    .line 48
    .line 49
    aget-object v11, v8, v10

    .line 50
    .line 51
    invoke-virtual {p0, v11}, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->getTaskId(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v12

    .line 55
    iget-object v13, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mPersistentTaskIds:Landroid/util/ArraySet;

    .line 56
    .line 57
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v14

    .line 61
    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    if-nez v13, :cond_1

    .line 66
    .line 67
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    if-nez v12, :cond_1

    .line 76
    .line 77
    new-instance v12, Ljava/io/File;

    .line 78
    .line 79
    invoke-direct {v12, v7, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 83
    .line 84
    .line 85
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    throw p0
.end method
