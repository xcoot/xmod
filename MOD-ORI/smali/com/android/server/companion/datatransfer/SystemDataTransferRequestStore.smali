.class public final Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCachedPerUser:Landroid/util/SparseArray;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mLock:Ljava/lang/Object;

.field public final mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    return-void
.end method

.method public static readRequestsFromXml(ILcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    const-string/jumbo v0, "requests"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_1
    const-string/jumbo v2, "request"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v2}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-static {p1, v2}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    const-string v2, "association_id"

    .line 41
    .line 42
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const-string/jumbo v3, "data_type"

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const-string/jumbo v4, "is_user_consented"

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    const/4 v5, 0x1

    .line 61
    if-eq v3, v5, :cond_2

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    new-instance v3, Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 66
    .line 67
    invoke-direct {v3, v2}, Landroid/companion/datatransfer/PermissionSyncRequest;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, p0}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserId(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v4}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserConsented(Z)V

    .line 74
    .line 75
    .line 76
    move-object v2, v3

    .line 77
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 82
    .line 83
    const-string p1, "XML doesn\'t have start tag: request"

    .line 84
    .line 85
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_4
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 90
    .line 91
    const-string p1, "The XML doesn\'t have start tag: requests"

    .line 92
    .line 93
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0
.end method


# virtual methods
.method public final getStorageFileForUser(I)Landroid/util/AtomicFile;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda6;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda6;-><init>(I)V

    .line 10
    .line 11
    .line 12
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/util/AtomicFile;

    .line 19
    .line 20
    return-object p0
.end method

.method public final readRequestsByAssociationId(II)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsFromCache(I)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/companion/datatransfer/SystemDataTransferRequest;->getAssociationId()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ne v1, p2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-object p1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p0
.end method

.method public final readRequestsFromCache(I)Ljava/util/ArrayList;
    .locals 6

    .line 1
    const-string v0, "CDM_SystemDataTransferRequestStore"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    new-instance v3, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda4;

    .line 16
    .line 17
    invoke-direct {v3, p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    const-wide/16 v4, 0x5

    .line 27
    .line 28
    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    move-object v1, v2

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    const-string v2, "Reading SystemDataTransferRequest from disk timed out."

    .line 37
    .line 38
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_1
    const-string v2, "Error occurred while reading SystemDataTransferRequest from disk."

    .line 43
    .line 44
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_2
    const-string v2, "Thread reading SystemDataTransferRequest from disk is interrupted."

    .line 49
    .line 50
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-object v1
.end method

.method public final removeRequestsByAssociationId(II)V
    .locals 3

    .line 1
    const-string v0, "CDM_SystemDataTransferRequestStore"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Removing system data transfer requests for userId="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ", associationId="

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsFromCache(I)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda2;

    .line 36
    .line 37
    invoke-direct {v2, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda2;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 50
    .line 51
    new-instance v0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;ILjava/util/ArrayList;I)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0
.end method

.method public final writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V
    .locals 3

    .line 1
    const-string v0, "CDM_SystemDataTransferRequestStore"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Writing request="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, " to store."

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsFromCache(I)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    invoke-direct {v2, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda0;-><init>(Landroid/companion/datatransfer/SystemDataTransferRequest;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 50
    .line 51
    new-instance v0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;ILjava/util/ArrayList;I)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0
.end method

.method public final writeRequestsToStore(ILjava/util/List;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "CDM_SystemDataTransferRequestStore"

    .line 6
    .line 7
    const-string v2, "Writing SystemDataTransferRequests for user "

    .line 8
    .line 9
    const-string v3, " to file="

    .line 10
    .line 11
    invoke-static {p1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    new-instance p1, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda5;

    .line 35
    .line 36
    invoke-direct {p1, p0, p2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method
