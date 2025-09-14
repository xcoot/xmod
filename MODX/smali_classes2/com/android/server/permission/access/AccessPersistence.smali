.class public final Lcom/android/server/permission/access/AccessPersistence;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final pendingMutationTimesMillis:Landroid/util/SparseLongArray;

.field public final pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

.field public final policy:Lcom/android/server/permission/access/AccessPolicy;

.field public final scheduleLock:Ljava/lang/Object;

.field public writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

.field public final writeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/AccessPolicy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance p1, Landroid/util/SparseLongArray;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 19
    .line 20
    new-instance p1, Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 26
    .line 27
    new-instance p1, Ljava/lang/Object;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->writeLock:Ljava/lang/Object;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final write(Lcom/android/server/permission/access/MutableAccessState;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/MutableAccessState;I)V

    .line 2
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 5
    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 6
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/MutableUserState;

    .line 7
    invoke-virtual {p0, v4, p1, v3}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/MutableAccessState;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final write(Lcom/android/server/permission/access/WritableState;Lcom/android/server/permission/access/MutableAccessState;I)V
    .locals 6

    .line 8
    invoke-interface {p1}, Lcom/android/server/permission/access/WritableState;->getWriteMode()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 9
    iget-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 10
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p1

    .line 13
    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/AccessPersistence;->writePendingState(I)V

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1

    throw p0

    .line 15
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 16
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 18
    :try_start_1
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 20
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 23
    iget-object p2, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 24
    invoke-virtual {p2, p3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 25
    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 26
    :cond_2
    invoke-virtual {p2, p3, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    move-wide v4, v2

    :goto_0
    sub-long/2addr v2, v4

    .line 27
    iget-object p2, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v4, 0x7d0

    cmp-long p3, v2, v4

    if-lez p3, :cond_3

    .line 28
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_3
    sub-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    cmp-long p3, v2, v4

    if-lez p3, :cond_4

    goto :goto_1

    :cond_4
    move-wide v4, v2

    .line 29
    :goto_1
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    :goto_2
    monitor-exit p1

    goto :goto_4

    .line 31
    :cond_5
    :try_start_2
    const-string/jumbo p0, "writeHandler"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_6
    const-string/jumbo p0, "writeHandler"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_7
    const-string/jumbo p0, "writeHandler"

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    :goto_3
    monitor-exit p1

    throw p0

    :cond_8
    :goto_4
    return-void
.end method

.method public final writePendingState(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/AccessPersistence;->writeLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    .line 5
    .line 6
    invoke-direct {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/permission/access/AccessPersistence;->scheduleLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    iget-object v3, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 13
    .line 14
    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/permission/access/AccessPersistence;->pendingStates:Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 18
    .line 19
    iget-object v4, v3, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v3, v3, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 28
    .line 29
    .line 30
    iput-object v4, v1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/permission/access/AccessPersistence;->writeHandler:Lcom/android/server/permission/access/AccessPersistence$WriteHandler;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    .line 39
    :try_start_2
    monitor-exit v2

    .line 40
    iget-object v1, v1, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :cond_0
    const/4 v2, -0x1

    .line 47
    if-ne p1, v2, :cond_1

    .line 48
    .line 49
    :try_start_3
    check-cast v1, Lcom/android/server/permission/access/AccessState;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/android/server/permission/access/AccessPersistence;->writeSystemState(Lcom/android/server/permission/access/AccessState;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    check-cast v1, Lcom/android/server/permission/access/AccessState;

    .line 58
    .line 59
    invoke-virtual {p0, v1, p1}, Lcom/android/server/permission/access/AccessPersistence;->writeUserState(Lcom/android/server/permission/access/AccessState;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    .line 61
    .line 62
    :goto_0
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :try_start_4
    const-string/jumbo p0, "writeHandler"

    .line 67
    .line 68
    .line 69
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 74
    :goto_1
    :try_start_5
    monitor-exit v2

    .line 75
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    :goto_2
    monitor-exit v0

    .line 77
    throw p0
.end method

.method public final writeSystemState(Lcom/android/server/permission/access/AccessState;)V
    .locals 8

    .line 1
    const-string v0, "AccessPersistence"

    .line 2
    .line 3
    const-string v1, "Failed to write "

    .line 4
    .line 5
    new-instance v2, Ljava/io/File;

    .line 6
    .line 7
    const-string v3, "com.android.permission"

    .line 8
    .line 9
    invoke-static {v3}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDir()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "access.abx"

    .line 18
    .line 19
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    new-instance v3, Landroid/util/AtomicFile;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 28
    .line 29
    .line 30
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    :try_start_1
    new-instance v5, Lcom/android/modules/utils/BinaryXmlSerializer;

    .line 32
    .line 33
    invoke-direct {v5}, Lcom/android/modules/utils/BinaryXmlSerializer;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    invoke-virtual {v5, v4, v6}, Lcom/android/modules/utils/BinaryXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v5, v6, v7}, Lcom/android/modules/utils/BinaryXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    .line 46
    .line 47
    invoke-virtual {p0, v5, p1}, Lcom/android/server/permission/access/AccessPolicy;->serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->endDocument()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 54
    .line 55
    .line 56
    :try_start_2
    invoke-static {v4, v6}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    new-instance p0, Ljava/io/File;

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, ".reservecopy"

    .line 86
    .line 87
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-direct {p0, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 95
    .line 96
    .line 97
    :try_start_3
    new-instance p1, Ljava/io/FileInputStream;

    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-direct {p1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 104
    .line 105
    .line 106
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    .line 107
    .line 108
    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 109
    .line 110
    .line 111
    :try_start_5
    invoke-static {p1, v3}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 119
    .line 120
    .line 121
    :try_start_6
    invoke-static {v3, v6}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 122
    .line 123
    .line 124
    :try_start_7
    invoke-static {p1, v6}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :catch_0
    move-exception p1

    .line 129
    goto :goto_1

    .line 130
    :catchall_0
    move-exception v3

    .line 131
    goto :goto_0

    .line 132
    :catchall_1
    move-exception v4

    .line 133
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 134
    :catchall_2
    move-exception v5

    .line 135
    :try_start_9
    invoke-static {v3, v4}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 139
    :goto_0
    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 140
    :catchall_3
    move-exception v4

    .line 141
    :try_start_b
    invoke-static {p1, v3}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    throw v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 145
    :goto_1
    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :catch_1
    move-exception p0

    .line 162
    goto :goto_2

    .line 163
    :catchall_4
    move-exception p0

    .line 164
    :try_start_d
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 165
    .line 166
    .line 167
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 168
    :catchall_5
    move-exception p0

    .line 169
    :try_start_e
    throw p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 170
    :catchall_6
    move-exception p1

    .line 171
    :try_start_f
    invoke-static {v4, p0}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    throw p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 175
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v1, "Failed to serialize "

    .line 178
    .line 179
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .line 191
    .line 192
    :goto_3
    return-void
.end method

.method public final writeUserState(Lcom/android/server/permission/access/AccessState;I)V
    .locals 8

    .line 1
    const-string v0, "AccessPersistence"

    .line 2
    .line 3
    const-string v1, "Failed to write "

    .line 4
    .line 5
    new-instance v2, Ljava/io/File;

    .line 6
    .line 7
    const-string v3, "com.android.permission"

    .line 8
    .line 9
    invoke-static {v3}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v3, v4}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDirForUser(Landroid/os/UserHandle;)Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "access.abx"

    .line 22
    .line 23
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    new-instance v3, Landroid/util/AtomicFile;

    .line 27
    .line 28
    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 32
    .line 33
    .line 34
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    :try_start_1
    new-instance v5, Lcom/android/modules/utils/BinaryXmlSerializer;

    .line 36
    .line 37
    invoke-direct {v5}, Lcom/android/modules/utils/BinaryXmlSerializer;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    invoke-virtual {v5, v4, v6}, Lcom/android/modules/utils/BinaryXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 45
    .line 46
    invoke-virtual {v5, v6, v7}, Lcom/android/modules/utils/BinaryXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPersistence;->policy:Lcom/android/server/permission/access/AccessPolicy;

    .line 50
    .line 51
    invoke-virtual {p0, v5, p1, p2}, Lcom/android/server/permission/access/AccessPolicy;->serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Lcom/android/modules/utils/BinaryXmlSerializer;->endDocument()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 58
    .line 59
    .line 60
    :try_start_2
    invoke-static {v4, v6}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    new-instance p0, Ljava/io/File;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p2, ".reservecopy"

    .line 90
    .line 91
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 99
    .line 100
    .line 101
    :try_start_3
    new-instance p1, Ljava/io/FileInputStream;

    .line 102
    .line 103
    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 108
    .line 109
    .line 110
    :try_start_4
    new-instance p2, Ljava/io/FileOutputStream;

    .line 111
    .line 112
    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    .line 114
    .line 115
    :try_start_5
    invoke-static {p1, p2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    .line 124
    .line 125
    :try_start_6
    invoke-static {p2, v6}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 126
    .line 127
    .line 128
    :try_start_7
    invoke-static {p1, v6}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :catch_0
    move-exception p1

    .line 133
    goto :goto_1

    .line 134
    :catchall_0
    move-exception p2

    .line 135
    goto :goto_0

    .line 136
    :catchall_1
    move-exception v3

    .line 137
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 138
    :catchall_2
    move-exception v4

    .line 139
    :try_start_9
    invoke-static {p2, v3}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 143
    :goto_0
    :try_start_a
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 144
    :catchall_3
    move-exception v3

    .line 145
    :try_start_b
    invoke-static {p1, p2}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    throw v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 149
    :goto_1
    :try_start_c
    new-instance p2, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :catch_1
    move-exception p0

    .line 166
    goto :goto_2

    .line 167
    :catchall_4
    move-exception p0

    .line 168
    :try_start_d
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 169
    .line 170
    .line 171
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 172
    :catchall_5
    move-exception p0

    .line 173
    :try_start_e
    throw p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 174
    :catchall_6
    move-exception p1

    .line 175
    :try_start_f
    invoke-static {v4, p0}, Lcom/android/server/permission/jarjar/kotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    throw p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 179
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string p2, "Failed to serialize "

    .line 182
    .line 183
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .line 195
    .line 196
    :goto_3
    return-void
.end method
