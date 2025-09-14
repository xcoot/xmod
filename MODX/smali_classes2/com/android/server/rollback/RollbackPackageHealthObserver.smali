.class public final Lcom/android/server/rollback/RollbackPackageHealthObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/PackageWatchdog$PackageHealthObserver;


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLastStagedRollbackIdsFile:Ljava/io/File;

.field public final mPendingStagedRollbackIds:Ljava/util/Set;

.field public mTwoPhaseRollbackEnabled:Z

.field public final mTwoPhaseRollbackEnabledFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/ApexManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v0, "RollbackPackageHealthObserver"

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance v0, Ljava/io/File;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string/jumbo v2, "rollback-observer"

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 43
    .line 44
    .line 45
    new-instance v1, Ljava/io/File;

    .line 46
    .line 47
    const-string v2, "last-staged-rollback-ids"

    .line 48
    .line 49
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdsFile:Ljava/io/File;

    .line 53
    .line 54
    new-instance v1, Ljava/io/File;

    .line 55
    .line 56
    const-string/jumbo v2, "two-phase-rollback-enabled"

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mTwoPhaseRollbackEnabledFile:Ljava/io/File;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, p0}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 69
    .line 70
    .line 71
    iput-object p2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 72
    .line 73
    const-string/jumbo p1, "sys.boot_completed"

    .line 74
    .line 75
    .line 76
    const/4 p2, 0x0

    .line 77
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    .line 84
    .line 85
    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->read()I

    .line 89
    .line 90
    .line 91
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    const/4 v1, 0x1

    .line 93
    if-ne v0, v1, :cond_0

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    move v1, p2

    .line 97
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    .line 99
    .line 100
    move p2, v1

    .line 101
    goto :goto_2

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_1
    move-exception p1

    .line 108
    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 112
    :catch_0
    :goto_2
    iput-boolean p2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mTwoPhaseRollbackEnabled:Z

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_1
    iput-boolean p2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mTwoPhaseRollbackEnabled:Z

    .line 116
    .line 117
    invoke-static {v1, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->writeBoolean(Ljava/io/File;Z)V

    .line 118
    .line 119
    .line 120
    :goto_3
    return-void
.end method

.method public static getRollbackForPackage(Landroid/content/pm/VersionedPackage;Ljava/util/List;)Landroid/content/rollback/RollbackInfo;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/content/rollback/RollbackInfo;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4, p0}, Landroid/content/pm/VersionedPackage;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_3

    .line 50
    .line 51
    return-object v1

    .line 52
    :cond_3
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_4
    return-object v0
.end method

.method public static getRollbacksAvailableForImpactLevel(ILjava/util/List;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda5;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda5;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static isRebootlessApex(Landroid/content/rollback/RollbackInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/content/rollback/PackageRollbackInfo;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public static readStagedRollbackIds(Ljava/io/File;)Landroid/util/SparseArray;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 7
    .line 8
    new-instance v2, Ljava/io/FileReader;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v2, ","

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 v2, 0x0

    .line 33
    aget-object v2, p0, v2

    .line 34
    .line 35
    const-string v3, ""

    .line 36
    .line 37
    array-length v4, p0

    .line 38
    const/4 v5, 0x1

    .line 39
    if-le v4, v5, :cond_0

    .line 40
    .line 41
    aget-object v3, p0, v5

    .line 42
    .line 43
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-virtual {v0, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v0

    .line 52
    :catch_0
    new-instance p0, Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 55
    .line 56
    .line 57
    return-object p0
.end method

.method public static writeBoolean(Ljava/io/File;Z)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_1
    move-exception p1

    .line 25
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 29
    :catch_0
    :goto_1
    return-void
.end method


# virtual methods
.method public final assertInWorkerThread()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final execute(Landroid/content/pm/VersionedPackage;II)Z
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz p3, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollbacks()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    if-ne p2, v1, :cond_0

    .line 15
    .line 16
    new-instance p1, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {p1, p0, p3, p2, v2}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Ljava/util/List;II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    invoke-static {v2, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getRollbacksAvailableForImpactLevel(ILjava/util/List;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {p1, v2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getRollbackForPackage(Landroid/content/pm/VersionedPackage;Ljava/util/List;)Landroid/content/rollback/RollbackInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    new-instance p3, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;

    .line 38
    .line 39
    const/4 v8, 0x0

    .line 40
    move-object v3, p3

    .line 41
    move-object v4, p0

    .line 42
    move-object v6, p1

    .line 43
    move v7, p2

    .line 44
    invoke-direct/range {v3 .. v8}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_5

    .line 56
    .line 57
    new-instance p1, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    invoke-direct {p1, p0, p3, p2, v2}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Ljava/util/List;II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    if-ne p2, v1, :cond_3

    .line 68
    .line 69
    new-instance p1, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda13;

    .line 70
    .line 71
    const/4 p3, 0x0

    .line 72
    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    return v1

    .line 79
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    if-eqz v4, :cond_4

    .line 84
    .line 85
    new-instance p3, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;

    .line 86
    .line 87
    const/4 v7, 0x1

    .line 88
    move-object v2, p3

    .line 89
    move-object v3, p0

    .line 90
    move-object v5, p1

    .line 91
    move v6, p2

    .line 92
    invoke-direct/range {v2 .. v7}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;II)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    new-instance p1, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda13;

    .line 100
    .line 101
    const/4 p3, 0x1

    .line 102
    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;II)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    .line 107
    .line 108
    :cond_5
    :goto_0
    return v1
.end method

.method public final executeBootLoopMitigation(I)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollbacks()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, -0x1

    .line 30
    invoke-virtual {v1, v2}, Ljava/util/OptionalInt;->orElse(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    new-instance v0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Ljava/util/List;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    if-ne v1, v3, :cond_2

    .line 50
    .line 51
    const-string/jumbo v1, "persist.device_config.configuration.disable_high_impact_rollback"

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;

    .line 62
    .line 63
    const/4 v1, 0x3

    .line 64
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Ljava/util/List;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_0
    return v3

    .line 71
    :cond_3
    return v0
.end method

.method public final getAvailableRollback(Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/content/rollback/RollbackManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/content/rollback/RollbackManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/content/rollback/RollbackInfo;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3, p1}, Landroid/content/pm/VersionedPackage;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_2
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->isApkInApex()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_3
    const/4 p0, 0x0

    .line 88
    return-object p0
.end method

.method public final getAvailableRollbacks()Ljava/util/List;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/content/rollback/RollbackManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/content/rollback/RollbackManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "rollback-observer"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final mayObservePackage(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollbacks()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    const/16 p1, 0x9

    .line 26
    .line 27
    and-int/2addr p0, p1

    .line 28
    if-ne p0, p1, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    :catch_0
    :cond_1
    return v1
.end method

.method public final onBootLoop(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollbacks()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda3;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 p1, -0x1

    .line 36
    invoke-virtual {p0, p1}, Ljava/util/OptionalInt;->orElse(I)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    if-eq p0, p1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string/jumbo p0, "persist.device_config.configuration.disable_high_impact_rollback"

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_2

    .line 54
    .line 55
    const/16 v0, 0x5a

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/16 v0, 0x46

    .line 59
    .line 60
    :cond_2
    :goto_0
    return v0
.end method

.method public final onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/16 v0, 0x46

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/16 v2, 0x1e

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollbacks()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {v3, p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getRollbacksAvailableForImpactLevel(ILjava/util/List;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-nez p3, :cond_4

    .line 26
    .line 27
    if-ne p2, v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p1, p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getRollbackForPackage(Landroid/content/pm/VersionedPackage;Ljava/util/List;)Landroid/content/rollback/RollbackInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_5

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    const-class v4, Landroid/content/rollback/RollbackManager;

    .line 40
    .line 41
    invoke-virtual {p3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    check-cast p3, Landroid/content/rollback/RollbackManager;

    .line 46
    .line 47
    invoke-virtual {p3}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    xor-int/2addr p3, v1

    .line 56
    if-ne p2, v1, :cond_2

    .line 57
    .line 58
    if-eqz p3, :cond_2

    .line 59
    .line 60
    :goto_0
    move v0, v2

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-eqz p0, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    if-eqz p3, :cond_4

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    move v0, v3

    .line 73
    :cond_5
    :goto_1
    return v0
.end method

.method public final rollbackAll(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-class v1, Landroid/content/rollback/RollbackManager;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->useTwoPhaseRollback(Ljava/util/List;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string v1, "RollbackPackageHealthObserver"

    .line 26
    .line 27
    const-string v2, "Rolling back all available rollbacks"

    .line 28
    .line 29
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/content/rollback/RollbackInfo;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    iget-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v3, Landroid/util/ArraySet;

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Landroid/content/rollback/RollbackInfo;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const/4 v3, 0x0

    .line 91
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    return-void
.end method

.method public final rollbackAllLowImpact(ILjava/util/List;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getRollbacksAvailableForImpactLevel(ILjava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p0, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->useTwoPhaseRollback(Ljava/util/List;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v1, "RollbackPackageHealthObserver"

    .line 17
    .line 18
    const-string v2, "Rolling back all available low impact rollbacks"

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/content/rollback/RollbackInfo;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v3, Landroid/util/ArraySet;

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/content/rollback/RollbackInfo;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    return-void
.end method

.method public final rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-class v1, Landroid/content/rollback/RollbackManager;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 13
    .line 14
    invoke-static {p3}, Lcom/android/server/rollback/WatchdogRollbackLogger;->mapFailureReasonToMetric(I)I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    const/4 v1, 0x1

    .line 19
    if-ne p3, v1, :cond_0

    .line 20
    .line 21
    const-string/jumbo p3, "sys.init.updatable_crashing_process_name"

    .line 22
    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    invoke-static {p3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    :goto_0
    move-object v6, p3

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    goto :goto_0

    .line 37
    :goto_1
    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 42
    .line 43
    invoke-virtual {v2, p3}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    move-object p3, v2

    .line 50
    :cond_1
    iget-object v2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v3, 0x0

    .line 57
    :try_start_0
    invoke-virtual {v2, p3, v3}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    .line 58
    .line 59
    .line 60
    move-result-object p3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    if-eqz p3, :cond_2

    .line 62
    .line 63
    iget-object p3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {p3, p2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->getLogPackage(Landroid/content/Context;Landroid/content/pm/VersionedPackage;)Landroid/content/pm/VersionedPackage;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    :goto_2
    move-object v4, p3

    .line 70
    goto :goto_3

    .line 71
    :catch_0
    :cond_2
    const/4 p3, 0x0

    .line 72
    goto :goto_2

    .line 73
    :goto_3
    invoke-static {v4, v1, v5, v6}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance p3, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;

    .line 77
    .line 78
    move-object v1, p3

    .line 79
    move-object v2, p0

    .line 80
    move-object v3, p1

    .line 81
    invoke-direct/range {v1 .. v6}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Lcom/android/server/rollback/LocalIntentReceiver;

    .line 85
    .line 86
    new-instance v2, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda7;

    .line 87
    .line 88
    invoke-direct {v2, p0, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Lcom/android/server/rollback/RollbackPackageHealthObserver$$ExternalSyntheticLambda6;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {v1, v2}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    new-instance p2, Landroid/content/IntentSender;

    .line 103
    .line 104
    iget-object p3, v1, Lcom/android/server/rollback/LocalIntentReceiver;->mLocalSender:Lcom/android/server/rollback/LocalIntentReceiver$1;

    .line 105
    .line 106
    invoke-direct {p2, p3}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/rollback/RollbackManager;->commitRollback(ILjava/util/List;Landroid/content/IntentSender;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final useTwoPhaseRollback(Ljava/util/List;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->assertInWorkerThread()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mTwoPhaseRollbackEnabled:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const-string v0, "RollbackPackageHealthObserver"

    .line 11
    .line 12
    const-string v2, "Rolling back all rebootless APEX rollbacks"

    .line 13
    .line 14
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    move v0, v1

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/content/rollback/RollbackInfo;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->isRebootlessApex(Landroid/content/rollback/RollbackInfo;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/content/rollback/PackageRollbackInfo;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->rollbackPackage(Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;I)V

    .line 56
    .line 57
    .line 58
    move v0, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return v0
.end method
