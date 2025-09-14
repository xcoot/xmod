.class public final Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;
.implements Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings$Callback;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mGetFileDescriptor:Ljava/util/function/Function;

.field public mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mLogger:Lcom/samsung/android/server/util/CoreLogger;

.field public mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

.field public mSettings:Lcom/samsung/android/server/packagefeature/core/PackageFeatureSettings;

.field public mShellCommand:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;

.field public mStarted:Z

.field public final mTmpUpdateRequestedGroupNames:Ljava/util/Set;

.field public final mUpdateGroupDataImmediately:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;

.field public final mUpdateRequestedGroupNames:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

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
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mUpdateRequestedGroupNames:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mTmpUpdateRequestedGroupNames:Ljava/util/Set;

    .line 24
    .line 25
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mUpdateGroupDataImmediately:Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    const-wide/16 v2, 0x3e8

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, v2, v3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;Ljava/lang/String;J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "  "

    .line 2
    .line 3
    const-string v1, "  mAllFeaturesDisabled="

    .line 4
    .line 5
    const-string v2, "PackageFeatureController"

    .line 6
    .line 7
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mStarted:Z

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    const-string v0, "dump"

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->logNotStarted(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v2

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-boolean v1, v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mAllFeaturesDisabled:Z

    .line 37
    .line 38
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;

    .line 49
    .line 50
    invoke-direct {v1, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    .line 54
    .line 55
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    new-instance v4, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda1;

    .line 62
    .line 63
    invoke-direct {v4, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v3, v4}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 67
    .line 68
    .line 69
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    .line 73
    .line 74
    if-nez v1, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    monitor-enter v1

    .line 78
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    monitor-exit v1

    .line 87
    goto :goto_0

    .line 88
    :catchall_1
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/samsung/android/server/util/CoreLogger;->mDumpTitle:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    .line 108
    .line 109
    new-instance v0, Lcom/samsung/android/server/util/CoreLogger$$ExternalSyntheticLambda0;

    .line 110
    .line 111
    invoke-direct {v0, p1}, Lcom/samsung/android/server/util/CoreLogger$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 115
    .line 116
    .line 117
    monitor-exit v1

    .line 118
    :goto_0
    return-void

    .line 119
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    throw p0

    .line 121
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    throw p0
.end method

.method public final getGroupNames()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mStarted:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "getGroupNames"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->logNotStarted(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    .line 26
    .line 27
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    monitor-exit v0

    .line 34
    return-object p0

    .line 35
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final initializeGroups()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    .line 5
    .line 6
    new-instance v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    invoke-direct {v2, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    .line 12
    .line 13
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda1;

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final logNotStarted(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 2
    .line 3
    const-string v0, ": The controller has not started yet."

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x5

    .line 11
    invoke-virtual {p0, v1, p2, v0}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const-string p0, "The controller has not started yet."

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mStarted:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string/jumbo p1, "registerCallback"

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->logNotStarted(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    .line 20
    .line 21
    iget-object v1, p1, Lcom/samsung/android/server/packagefeature/PackageFeature;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    .line 26
    .line 27
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->LEGACY_DIR_PATH:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->deleteCacheFiles(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x3

    .line 11
    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->initializeGroups()V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mUpdateRequestedGroupNames:Ljava/util/Set;

    .line 26
    .line 27
    check-cast v1, Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mGetFileDescriptor:Ljava/util/function/Function;

    .line 46
    .line 47
    if-nez v3, :cond_0

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mPackageFeatures:Lcom/samsung/android/server/packagefeature/core/PackageFeatures;

    .line 51
    .line 52
    iget-object v3, v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    .line 53
    .line 54
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    .line 56
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    .line 61
    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mGetFileDescriptor:Ljava/util/function/Function;

    .line 66
    .line 67
    check-cast v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->updateGroupDataFromScpm(Lcom/samsung/android/server/packagefeature/core/PackageFeatureManagerService$$ExternalSyntheticLambda1;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception v1

    .line 74
    goto :goto_3

    .line 75
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mUpdateRequestedGroupNames:Ljava/util/Set;

    .line 76
    .line 77
    check-cast v1, Ljava/util/HashSet;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :goto_3
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureController;->mLogger:Lcom/samsung/android/server/util/CoreLogger;

    .line 84
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v4, "What a Terrible Failure: "

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const/4 v4, 0x6

    .line 103
    invoke-virtual {v2, v4, v3, v1}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :goto_4
    monitor-exit v0

    .line 107
    goto :goto_0

    .line 108
    :catchall_1
    move-exception p0

    .line 109
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    throw p0
.end method
