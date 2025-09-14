.class public final Lcom/samsung/android/camera/scpm/ScpmListManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mCoverFlexRotatePackageList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mCurrentPolicyList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mDefaultPolicyList:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "eng"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string/jumbo v1, "userdebug"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    :goto_1
    sput-boolean v0, Lcom/samsung/android/camera/scpm/ScpmListManager;->DEBUG:Z

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmListManager;->mCurrentPolicyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmListManager;->mDefaultPolicyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmListManager;->mCoverFlexRotatePackageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-static {}, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->values()[Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    array-length v1, v0

    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_0
    if-ge v2, v1, :cond_0

    .line 32
    .line 33
    aget-object v3, v0, v2

    .line 34
    .line 35
    invoke-virtual {p0, v3}, Lcom/samsung/android/camera/scpm/ScpmListManager;->loadDefaultScpmList(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public static getJsonObject(Landroid/os/ParcelFileDescriptor;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/FileReader;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :try_start_1
    new-instance p0, Lorg/json/JSONTokener;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {p0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    .line 41
    .line 42
    return-object v1

    .line 43
    :catch_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_1
    move-exception v0

    .line 51
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 55
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v2, "getJsonObject : "

    .line 60
    .line 61
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0
.end method


# virtual methods
.method public final getCurrentPolicy(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Lcom/samsung/android/camera/scpm/ScpmList;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmListManager;->mCurrentPolicyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/samsung/android/camera/scpm/ScpmListManager$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, v1, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager$$ExternalSyntheticLambda0;-><init>(ILcom/samsung/android/camera/scpm/ScpmList$PolicyType;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/samsung/android/camera/scpm/ScpmList;

    .line 27
    .line 28
    return-object p0
.end method

.method public final declared-synchronized getCurrentPolicyList(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Ljava/util/List;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getCurrentPolicy(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Lcom/samsung/android/camera/scpm/ScpmList;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object p1, p1, Lcom/samsung/android/camera/scpm/ScpmList;->mPackageList:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public final declared-synchronized getDefaultVersion(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Ljava/lang/String;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmListManager;->mDefaultPolicyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/samsung/android/camera/scpm/ScpmListManager$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager$$ExternalSyntheticLambda0;-><init>(ILcom/samsung/android/camera/scpm/ScpmList$PolicyType;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/samsung/android/camera/scpm/ScpmList;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/samsung/android/camera/scpm/ScpmList;->mVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-object p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit p0

    .line 35
    throw p1
.end method

.method public final declared-synchronized loadDefaultScpmList(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)V
    .locals 4

    .line 1
    const-string v0, "loadDefaultScpmList  Unknown Policy type"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/scpm/ScpmListManager;->mCurrentPolicyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    new-instance v2, Lcom/samsung/android/camera/scpm/ScpmListManager$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    invoke-direct {v2, v3, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager$$ExternalSyntheticLambda0;-><init>(ILcom/samsung/android/camera/scpm/ScpmList$PolicyType;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/camera/scpm/ScpmListManager;->mDefaultPolicyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    .line 17
    new-instance v2, Lcom/samsung/android/camera/scpm/ScpmListManager$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    invoke-direct {v2, v3, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager$$ExternalSyntheticLambda0;-><init>(ILcom/samsung/android/camera/scpm/ScpmList$PolicyType;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-eq v1, v2, :cond_0

    .line 34
    .line 35
    const-string v1, "CameraService/ScpmListManager"

    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    sget-object v0, Lcom/samsung/android/camera/scpm/list/HiddenIdPermittedList;->INSTANCE:Lcom/samsung/android/camera/scpm/list/HiddenIdPermittedList;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    sget-object v0, Lcom/samsung/android/camera/scpm/list/Camera3rdPartyList;->INSTANCE:Lcom/samsung/android/camera/scpm/list/Camera3rdPartyList;

    .line 60
    .line 61
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/camera/scpm/ScpmListManager;->mDefaultPolicyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/samsung/android/camera/scpm/ScpmListManager;->mCurrentPolicyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    sget-object v0, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->CAMERA_3RD_PARTY:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 72
    .line 73
    if-ne p1, v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/camera/scpm/ScpmListManager;->setCoverFlexRotatePkgList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    :cond_2
    monitor-exit p0

    .line 79
    return-void

    .line 80
    :goto_1
    monitor-exit p0

    .line 81
    throw p1
.end method

.method public final parseAndUpdateData(Lorg/json/JSONObject;Lcom/samsung/android/camera/scpm/ScpmList;)V
    .locals 13

    .line 1
    const-string/jumbo v0, "parseAndUpdateData : invalid form. "

    .line 2
    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v2, "parseAndUpdateData "

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, p2, Lcom/samsung/android/camera/scpm/ScpmList;->mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 13
    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v3, "CameraService/ScpmListManager"

    .line 22
    .line 23
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    :try_start_0
    const-string/jumbo v1, "packageInfo"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v5, "policyVersion"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v5, "20"

    .line 46
    .line 47
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    const/16 v6, 0xa

    .line 58
    .line 59
    if-ne v5, v6, :cond_4

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    move v5, v0

    .line 63
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 64
    .line 65
    .line 66
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    sget-boolean v7, Lcom/samsung/android/camera/scpm/ScpmListManager;->DEBUG:Z

    .line 68
    .line 69
    if-ge v5, v6, :cond_1

    .line 70
    .line 71
    :try_start_1
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    new-instance v8, Lcom/samsung/android/camera/scpm/PolicyListVO;

    .line 76
    .line 77
    iget-object v9, p2, Lcom/samsung/android/camera/scpm/ScpmList;->mItemNames:[Ljava/lang/String;

    .line 78
    .line 79
    aget-object v9, v9, v0

    .line 80
    .line 81
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    iget-object v10, p2, Lcom/samsung/android/camera/scpm/ScpmList;->mItemNames:[Ljava/lang/String;

    .line 86
    .line 87
    const/4 v11, 0x1

    .line 88
    aget-object v10, v10, v11

    .line 89
    .line 90
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    iget-object v11, p2, Lcom/samsung/android/camera/scpm/ScpmList;->mItemNames:[Ljava/lang/String;

    .line 95
    .line 96
    const/4 v12, 0x2

    .line 97
    aget-object v11, v11, v12

    .line 98
    .line 99
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-direct {v8, v9, v10, v6}, Lcom/samsung/android/camera/scpm/PolicyListVO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    if-eqz v7, :cond_0

    .line 110
    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catch_0
    move-exception p0

    .line 135
    goto :goto_2

    .line 136
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_1
    if-eqz v7, :cond_2

    .line 140
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string/jumbo v1, "parseAndUpdateData total size is "

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    :cond_2
    iput-object p1, p2, Lcom/samsung/android/camera/scpm/ScpmList;->mVersion:Ljava/lang/String;

    .line 167
    .line 168
    iget-object p1, p2, Lcom/samsung/android/camera/scpm/ScpmList;->mPackageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 171
    .line 172
    .line 173
    iget-object p1, p2, Lcom/samsung/android/camera/scpm/ScpmList;->mPackageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 174
    .line 175
    invoke-virtual {p1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    .line 177
    .line 178
    iget-object p1, p2, Lcom/samsung/android/camera/scpm/ScpmList;->mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 179
    .line 180
    sget-object p2, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->CAMERA_3RD_PARTY:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 181
    .line 182
    if-ne p1, p2, :cond_3

    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/camera/scpm/ScpmListManager;->setCoverFlexRotatePkgList()V

    .line 185
    .line 186
    .line 187
    :cond_3
    return-void

    .line 188
    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    new-instance p0, Ljava/lang/RuntimeException;

    .line 196
    .line 197
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 198
    .line 199
    .line 200
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 202
    .line 203
    new-instance p2, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string/jumbo v0, "parseAndUpdateData : "

    .line 206
    .line 207
    .line 208
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p1
.end method

.method public final declared-synchronized setCoverFlexRotatePkgList()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->CAMERA_3RD_PARTY:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getCurrentPolicyList(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/samsung/android/camera/scpm/PolicyListVO;

    .line 27
    .line 28
    iget-object v2, v1, Lcom/samsung/android/camera/scpm/PolicyListVO;->value:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    and-int/lit16 v2, v2, 0x800

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    iget-object v2, p0, Lcom/samsung/android/camera/scpm/ScpmListManager;->mCoverFlexRotatePackageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/samsung/android/camera/scpm/PolicyListVO;->packageName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit p0

    .line 51
    throw v0
.end method
