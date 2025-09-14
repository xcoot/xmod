.class public final Lcom/android/server/appfunctions/AppFunctionManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v6, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 5
    .line 6
    new-instance v2, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;

    .line 7
    .line 8
    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/appfunctions/RemoteServiceCallerImpl;-><init>(Landroid/content/Context;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda0;Ljava/util/concurrent/Executor;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/android/server/appfunctions/CallerValidatorImpl;

    .line 20
    .line 21
    invoke-direct {v3, p1}, Lcom/android/server/appfunctions/CallerValidatorImpl;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lcom/android/server/appfunctions/ServiceHelperImpl;

    .line 25
    .line 26
    invoke-direct {v4, p1}, Lcom/android/server/appfunctions/ServiceHelperImpl;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    new-instance v5, Lcom/android/server/appfunctions/ServiceConfigImpl;

    .line 30
    .line 31
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    move-object v0, v6

    .line 35
    move-object v1, p1

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/appfunctions/RemoteServiceCaller;Lcom/android/server/appfunctions/CallerValidator;Lcom/android/server/appfunctions/ServiceHelper;Lcom/android/server/appfunctions/ServiceConfig;)V

    .line 37
    .line 38
    .line 39
    iput-object v6, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/app/appfunctions/AppFunctionManagerConfiguration;->isSupported(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "app_function"

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object p1, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    sget-object v0, Lcom/android/server/appfunctions/MetadataSyncPerUser;->sPerUserMetadataSyncAdapter:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/appfunctions/MetadataSyncAdapter;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/appfunctions/MetadataSyncAdapter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit p1

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public final onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-class v1, Landroid/app/appsearch/AppSearchManager;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/app/appsearch/AppSearchManager;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "AppSearch Manager not found for user: "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "AppFunctionManagerServiceImpl"

    .line 49
    .line 50
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Lcom/android/server/appfunctions/FutureGlobalSearchSession;

    .line 55
    .line 56
    sget-object v3, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 57
    .line 58
    invoke-direct {v1, v0, v3}, Lcom/android/server/appfunctions/FutureGlobalSearchSession;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iget-object v5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    iget-object v6, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 78
    .line 79
    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;-><init>(Landroid/os/UserHandle;Landroid/content/Context;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)V

    .line 80
    .line 81
    .line 82
    new-instance v4, Landroid/app/appsearch/observer/ObserverSpec$Builder;

    .line 83
    .line 84
    invoke-direct {v4}, Landroid/app/appsearch/observer/ObserverSpec$Builder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Landroid/app/appsearch/observer/ObserverSpec$Builder;->build()Landroid/app/appsearch/observer/ObserverSpec;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    iget-object v5, v1, Lcom/android/server/appfunctions/FutureGlobalSearchSession;->mSettableSessionFuture:Lcom/android/internal/infra/AndroidFuture;

    .line 92
    .line 93
    new-instance v6, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda4;

    .line 94
    .line 95
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v6}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    new-instance v6, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    invoke-direct {v6, v4, v3, v0}, Lcom/android/server/appfunctions/FutureGlobalSearchSession$$ExternalSyntheticLambda0;-><init>(Landroid/app/appsearch/observer/ObserverSpec;Ljava/util/concurrent/Executor;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$AppFunctionMetadataObserver;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v6}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    new-instance v3, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;

    .line 112
    .line 113
    invoke-direct {v3, v1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/appfunctions/FutureGlobalSearchSession;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v3}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 117
    .line 118
    .line 119
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->trySyncRuntimeMetadata(Lcom/android/server/SystemService$TargetUser;Z)V

    .line 120
    .line 121
    .line 122
    return-void
.end method
