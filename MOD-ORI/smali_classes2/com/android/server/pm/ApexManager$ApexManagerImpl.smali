.class public Lcom/android/server/pm/ApexManager$ApexManagerImpl;
.super Lcom/android/server/pm/ApexManager;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActiveApexInfosCache:Ljava/util/Set;

.field public mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;

.field public final mApexSystemServices:Ljava/util/List;

.field public final mApksInApex:Landroid/util/ArrayMap;

.field public final mErrorWithApkInApex:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public mPackageNameToApexModuleName:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
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
    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    .line 24
    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mErrorWithApkInApex:Ljava/util/Map;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final getActiveApexInfos()Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 2
    .line 3
    const-string v1, "ApexManagerTiming"

    .line 4
    .line 5
    const-wide/32 v2, 0x40000

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(JLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const-string v2, "getActiveApexInfos_noCache"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_1
    new-instance v2, Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2}, Landroid/apex/IApexService;->getActivePackages()[Landroid/apex/ApexInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x0

    .line 39
    :goto_0
    array-length v4, v2

    .line 40
    if-ge v3, v4, :cond_0

    .line 41
    .line 42
    aget-object v4, v2, v3

    .line 43
    .line 44
    iget-object v5, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    .line 45
    .line 46
    new-instance v6, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 47
    .line 48
    invoke-direct {v6, v4}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Landroid/apex/ApexInfo;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception v2

    .line 60
    :try_start_2
    const-string v3, "ApexManager"

    .line 61
    .line 62
    const-string v4, "Unable to retrieve packages from apexservice"

    .line 63
    .line 64
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    .line 77
    .line 78
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .line 80
    .line 81
    monitor-exit v1

    .line 82
    return-object v0

    .line 83
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    monitor-exit v1

    .line 88
    return-object p0

    .line 89
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    throw p0
.end method

.method public final getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    :goto_0
    const-string v3, "APEX packages have not been scanned"

    .line 16
    .line 17
    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    move v3, v2

    .line 27
    :goto_1
    if-ge v3, v1, :cond_3

    .line 28
    .line 29
    iget-object v4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/String;

    .line 50
    .line 51
    iget-object v5, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    move v6, v2

    .line 58
    :goto_2
    if-ge v6, v5, :cond_2

    .line 59
    .line 60
    iget-object v7, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_1

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 75
    .line 76
    invoke-virtual {p0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Ljava/lang/String;

    .line 81
    .line 82
    monitor-exit v0

    .line 83
    return-object p0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_3

    .line 86
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    monitor-exit v0

    .line 93
    const/4 p0, 0x0

    .line 94
    return-object p0

    .line 95
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p0
.end method

.method public final getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    const-string v2, "APEX packages have not been scanned"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/String;

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    const-string v2, "APEX packages have not been scanned"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/lang/String;

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    const-string v2, "APEX packages have not been scanned"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    monitor-exit v0

    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Ljava/util/List;

    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-object p0

    .line 48
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public final getBackingApexFile(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/nio/file/Path;->getNameCount()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x2

    .line 26
    if-ge v0, v1, :cond_1

    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-interface {p1, v0}, Ljava/nio/file/Path;->getName(I)Ljava/nio/file/Path;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getActiveApexInfos()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-ge v0, v1, :cond_3

    .line 52
    .line 53
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexFile:Ljava/io/File;

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    return-object v2
.end method

.method public final getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Landroid/apex/IApexService;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-boolean p1, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    :cond_0
    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string p1, "ApexManager"

    .line 17
    .line 18
    const-string v0, "Unable to contact apexservice"

    .line 19
    .line 20
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/lang/RuntimeException;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public final markStagedSessionSuccessful(I)V
    .locals 3

    .line 1
    const-string v0, "ApexManager"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Landroid/apex/IApexService;->markStagedSessionSuccessful(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :catch_0
    move-exception p0

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Failed to mark session "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " as successful"

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    :goto_1
    return-void

    .line 38
    :goto_2
    const-string p1, "Unable to contact apexservice"

    .line 39
    .line 40
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    new-instance p1, Ljava/lang/RuntimeException;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public final notifyScanResultLocked(Ljava/util/List;)V
    .locals 9

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 7
    .line 8
    new-instance v0, Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_8

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/server/pm/ApexManager$ScanResult;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/server/pm/ApexManager$ScanResult;->apexInfo:Landroid/apex/ApexInfo;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/android/server/pm/ApexManager$ScanResult;->pkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 34
    .line 35
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getApexSystemServices()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_6

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;

    .line 54
    .line 55
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;->getMinSdkVersion()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const-string v5, " is skipped"

    .line 60
    .line 61
    const-string v6, "ApexSystemService "

    .line 62
    .line 63
    const-string v7, "ApexManager"

    .line 64
    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    invoke-static {v4}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isAtLeast(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_2

    .line 72
    .line 73
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;->getMinSdkVersion()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v8, " with min_sdk_version="

    .line 82
    .line 83
    invoke-static {v6, v4, v8, v3, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;->getMaxSdkVersion()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    if-eqz v4, :cond_3

    .line 96
    .line 97
    invoke-static {v4}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isAtMost(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-nez v4, :cond_3

    .line 102
    .line 103
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;->getName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;->getMaxSdkVersion()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const-string v8, " with max_sdk_version="

    .line 112
    .line 113
    invoke-static {v6, v4, v8, v3, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    iget-boolean v4, v1, Landroid/apex/ApexInfo;->isActive:Z

    .line 122
    .line 123
    if-eqz v4, :cond_1

    .line 124
    .line 125
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;->getName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    const/4 v5, 0x0

    .line 130
    :goto_2
    iget-object v6, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    .line 131
    .line 132
    check-cast v6, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-ge v5, v6, :cond_5

    .line 139
    .line 140
    iget-object v6, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    .line 141
    .line 142
    check-cast v6, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    check-cast v6, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 149
    .line 150
    iget-object v7, v6, Lcom/android/server/pm/ApexSystemServiceInfo;->mName:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-nez v7, :cond_4

    .line 157
    .line 158
    add-int/lit8 v5, v5, 0x1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 162
    .line 163
    iget-object p1, v6, Lcom/android/server/pm/ApexSystemServiceInfo;->mJarPath:Ljava/lang/String;

    .line 164
    .line 165
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;->getJarPath()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    filled-new-array {v4, p1, v0}, [Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const-string v0, "Duplicate apex-system-service %s from %s, %s"

    .line 174
    .line 175
    invoke-static {v0, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p0

    .line 183
    :cond_5
    new-instance v4, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 184
    .line 185
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;->getName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;->getJarPath()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedApexSystemService;->getInitOrder()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    invoke-direct {v4, v3, v5, v6}, Lcom/android/server/pm/ApexSystemServiceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    .line 201
    .line 202
    check-cast v3, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :cond_6
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexSystemServices:Ljava/util/List;

    .line 210
    .line 211
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 212
    .line 213
    .line 214
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 215
    .line 216
    iget-object v3, v1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v0, v0, Lcom/android/server/pm/ApexManager$ScanResult;->packageName:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v2, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    iget-boolean v2, v1, Landroid/apex/ApexInfo;->isActive:Z

    .line 224
    .line 225
    if-eqz v2, :cond_0

    .line 226
    .line 227
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;

    .line 228
    .line 229
    iget-object v3, v1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-nez v2, :cond_7

    .line 236
    .line 237
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApexModuleNameToActivePackageName:Landroid/util/ArrayMap;

    .line 238
    .line 239
    iget-object v1, v1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v2, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 247
    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    const-string v0, "Two active packages have the same APEX module name: "

    .line 251
    .line 252
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, v1, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p0

    .line 268
    :cond_8
    return-void
.end method

.method public final registerApkInApex(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    .line 5
    .line 6
    check-cast v1, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v5, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    .line 57
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    .line 58
    .line 59
    iget-object v4, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Ljava/util/List;

    .line 66
    .line 67
    if-nez v3, :cond_1

    .line 68
    .line 69
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iget-object v4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    .line 74
    .line 75
    iget-object v5, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    :goto_1
    const-string v4, "ApexManager"

    .line 84
    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v6, "Registering "

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v6, " as apk-in-apex of "

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v2, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    monitor-exit v0

    .line 128
    return-void

    .line 129
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    throw p0
.end method

.method public final revertActiveSessions()Z
    .locals 3

    .line 1
    const-string v0, "ApexManager"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Landroid/apex/IApexService;->revertActiveSessions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :catch_1
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    return v1

    .line 25
    :goto_1
    const-string v2, "Unable to contact apexservice"

    .line 26
    .line 27
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    return v1
.end method

.method public final submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/apex/ApexInfoList;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/apex/ApexInfoList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0, p1, v0}, Landroid/apex/IApexService;->submitStagedSession(Landroid/apex/ApexSessionParams;Landroid/apex/ApexInfoList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :goto_0
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "apexd verification failed : "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/16 v0, -0x16

    .line 39
    .line 40
    invoke-direct {p1, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :goto_1
    const-string p1, "ApexManager"

    .line 45
    .line 46
    const-string v0, "Unable to contact apexservice"

    .line 47
    .line 48
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    new-instance p1, Ljava/lang/RuntimeException;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public waitForApexService()Landroid/apex/IApexService;
    .locals 0

    .line 1
    const-string p0, "apexservice"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/apex/IApexService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/apex/IApexService;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
