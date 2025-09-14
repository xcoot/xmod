.class public final Lcom/android/server/pm/pu/DexoptTrigger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEXOPT_CONCURRENCY:I


# instance fields
.field public mDexopting:Z

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mRunningApps:Ljava/util/Set;

.field public final mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

.field public mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "pm.dexopt.boot-after-mainline-update.concurrency"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/android/server/pm/pu/DexoptTrigger;->DEXOPT_CONCURRENCY:I

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/android/server/pm/pu/DexoptTrigger;->DEXOPT_CONCURRENCY:I

    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    new-instance v1, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mWatcher:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 20
    .line 21
    return-void
.end method

.method public static performDexopt(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Lcom/android/server/pm/pu/ProfileUtilizationService$App;)I
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Lcom/android/server/art/model/DexoptParams$Builder;

    .line 8
    .line 9
    const-string/jumbo v3, "profile-utilization"

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Lcom/android/server/art/model/DexoptParams$Builder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v3, "speed-profile"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Lcom/android/server/art/model/DexoptParams$Builder;->setCompilerFilter(Ljava/lang/String;)Lcom/android/server/art/model/DexoptParams$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/16 v3, 0x3c

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Lcom/android/server/art/model/DexoptParams$Builder;->setPriorityClass(I)Lcom/android/server/art/model/DexoptParams$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptParams$Builder;->build()Lcom/android/server/art/model/DexoptParams;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p1, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 33
    .line 34
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/server/art/ArtManagerLocal;->dexoptPackage(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Lcom/android/server/art/model/DexoptParams;Landroid/os/CancellationSignal;)Lcom/android/server/art/model/DexoptResult;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    iput-object p0, p1, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mResult:Lcom/android/server/art/model/DexoptResult;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    .line 41
    .line 42
    .line 43
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "Dexopt failed to optimize package "

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->packageName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "PU_DexoptTrigger"

    .line 63
    .line 64
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    const/16 p0, 0x1e

    .line 68
    .line 69
    return p0
.end method


# virtual methods
.method public final pauseOptimizing()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mDexopting:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "PU_DexoptTrigger"

    .line 7
    .line 8
    const-string v1, "Pause dexopting"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mDexopting:Z

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 20
    .line 21
    check-cast p0, Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/server/pm/pu/ProfileUtilizationService$App;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final resumeOptimizing()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mDexopting:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "PU_DexoptTrigger"

    .line 7
    .line 8
    const-string v1, "Resume dexopting"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    const/4 v1, 0x1

    .line 17
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mDexopting:Z

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 20
    .line 21
    check-cast v1, Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
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
    check-cast v2, Lcom/android/server/pm/pu/ProfileUtilizationService$App;

    .line 38
    .line 39
    iget-object v3, v2, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mState:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 40
    .line 41
    sget-object v4, Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;->OPTIMIZING:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 42
    .line 43
    if-ne v3, v4, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iput-object v4, v2, Lcom/android/server/pm/pu/ProfileUtilizationService$App;->mState:Lcom/android/server/pm/pu/ProfileUtilizationService$App$State;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 49
    .line 50
    new-instance v4, Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    invoke-direct {v4, p0, v2}, Lcom/android/server/pm/pu/DexoptTrigger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/pu/DexoptTrigger;Lcom/android/server/pm/pu/ProfileUtilizationService$App;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Dexopt concurrency: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget v1, Lcom/android/server/pm/pu/DexoptTrigger;->DEXOPT_CONCURRENCY:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    const-string v2, "\nDexopting: "

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v2, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mDexopting:Z

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 27
    .line 28
    check-cast v2, Ljava/util/HashSet;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    const-string v2, "\nRunning apps:"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mRunningApps:Ljava/util/Set;

    .line 42
    .line 43
    check-cast v2, Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/android/server/pm/pu/ProfileUtilizationService$App;

    .line 60
    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v5, "\n  "

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    .line 85
    .line 86
    if-eqz v2, :cond_1

    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v3, "\n"

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lcom/android/server/pm/pu/DexoptTrigger;->mWrapper:Lcom/android/server/pm/pu/HotAppsWrapper;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/server/pm/pu/HotAppsWrapper;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    throw p0
.end method
