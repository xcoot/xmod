.class public final Lcom/android/server/companion/devicepresence/ObservableUuidStore;
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
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    return-void
.end method

.method public static readObservableUuidFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .locals 7

    .line 1
    const-string/jumbo v0, "uuids"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_3

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
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Lcom/android/server/companion/utils/DataStoreUtils;->isEndOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

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
    const-string/jumbo v2, "uuid"

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v2}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-static {p0, v2}, Lcom/android/server/companion/utils/DataStoreUtils;->isStartOfTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    const-string/jumbo v3, "user_id"

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const-string/jumbo v4, "package_name"

    .line 56
    .line 57
    .line 58
    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string/jumbo v5, "time_approved"

    .line 63
    .line 64
    .line 65
    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v5

    .line 69
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    new-instance v6, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 74
    .line 75
    invoke-direct {v6, v3, v2, v4, v5}, Lcom/android/server/companion/devicepresence/ObservableUuid;-><init>(ILandroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 83
    .line 84
    const-string v0, "XML doesn\'t have start tag: uuid"

    .line 85
    .line 86
    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 91
    .line 92
    const-string v0, "The XML doesn\'t have start tag: uuids"

    .line 93
    .line 94
    invoke-direct {p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0
.end method


# virtual methods
.method public final getObservableUuidsForPackage(ILjava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidsFromCache(I)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 28
    .line 29
    iget-object v2, p1, Lcom/android/server/companion/devicepresence/ObservableUuid;->mPackageName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    monitor-exit v1

    .line 44
    return-object v0

    .line 45
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final isUuidBeingObserved(ILandroid/os/ParcelUuid;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getObservableUuidsForPackage(ILjava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final readObservableUuidsFromCache(I)Ljava/util/List;
    .locals 6

    .line 1
    const-string v0, "CDM_ObservableUuidStore"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/util/List;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    new-instance v3, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {v3, p0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/devicepresence/ObservableUuidStore;I)V

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
    check-cast v2, Ljava/util/List;
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
    const-string v2, "Reading ObservableUuid from disk timed out."

    .line 37
    .line 38
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_1
    const-string v2, "Error occurred while reading ObservableUuid from disk."

    .line 43
    .line 44
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_2
    const-string v2, "Thread reading ObservableUuid from disk is interrupted."

    .line 49
    .line 50
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-object v1
.end method

.method public final removeObservableUuid(ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "CDM_ObservableUuidStore"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Removing uuid=["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "] from store..."

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidsFromCache(I)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda1;

    .line 37
    .line 38
    invoke-direct {v2, p2, p3}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 51
    .line 52
    new-instance p3, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda2;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-direct {p3, p0, p1, v1, v0}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/devicepresence/ObservableUuidStore;ILjava/util/List;I)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw p0
.end method

.method public final writeObservableUuidToStore(ILjava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda3;

    .line 8
    .line 9
    invoke-direct {v2, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda3;-><init>(I)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/util/AtomicFile;

    .line 19
    .line 20
    const-string v1, "CDM_ObservableUuidStore"

    .line 21
    .line 22
    const-string v2, "Writing ObservableUuid for user "

    .line 23
    .line 24
    const-string v3, " to file="

    .line 25
    .line 26
    invoke-static {p1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    monitor-enter v0

    .line 49
    :try_start_0
    new-instance p1, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda6;

    .line 50
    .line 51
    invoke-direct {p1, p0, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/companion/devicepresence/ObservableUuidStore;Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0, p1}, Lcom/android/server/companion/utils/DataStoreUtils;->writeToFileSafely(Landroid/util/AtomicFile;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 55
    .line 56
    .line 57
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method
