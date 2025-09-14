.class public final Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;
.super Landroid/app/appfunctions/IAppFunctionManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

.field public final mAppFunctionLoggerHelper:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

.field public final mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

.field public final mContext:Landroid/content/Context;

.field public final mInternalServiceHelper:Lcom/android/server/appfunctions/ServiceHelper;

.field public final mLocks:Ljava/util/Map;

.field public final mRemoteServiceCaller:Lcom/android/server/appfunctions/RemoteServiceCaller;

.field public final mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/appfunctions/RemoteServiceCaller;Lcom/android/server/appfunctions/CallerValidator;Lcom/android/server/appfunctions/ServiceHelper;Lcom/android/server/appfunctions/ServiceConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/appfunctions/IAppFunctionManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mRemoteServiceCaller:Lcom/android/server/appfunctions/RemoteServiceCaller;

    .line 20
    .line 21
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iput-object p3, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 25
    .line 26
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iput-object p4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mInternalServiceHelper:Lcom/android/server/appfunctions/ServiceHelper;

    .line 30
    .line 31
    iput-object p5, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mServiceConfig:Lcom/android/server/appfunctions/ServiceConfig;

    .line 32
    .line 33
    new-instance p2, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 34
    .line 35
    new-instance p3, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda3;

    .line 36
    .line 37
    invoke-direct {p3, p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p2, p1, p3}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;-><init>(Landroid/content/Context;Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda3;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 44
    .line 45
    new-instance p2, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

    .line 46
    .line 47
    invoke-direct {p2, p1}, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionLoggerHelper:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

    .line 51
    .line 52
    return-void
.end method

.method public static getRuntimeMetadataGenericDocument(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;)Landroid/app/appfunctions/AppFunctionRuntimeMetadata;
    .locals 4

    .line 1
    invoke-static {p0, p1}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;->getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    .line 6
    .line 7
    const-string v1, "app_functions_runtime"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    filled-new-array {p0}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/GetByDocumentIdRequest;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    invoke-direct {v2, p2, v0, v3}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Landroid/app/appsearch/AppSearchBatchResult;

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    new-instance p1, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    .line 54
    .line 55
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchBatchResult;->getSuccesses()Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Landroid/app/appsearch/GenericDocument;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;-><init>(Landroid/app/appsearch/GenericDocument;)V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string p2, "Function "

    .line 72
    .line 73
    const-string v0, " does not exist"

    .line 74
    .line 75
    invoke-static {p2, p1, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public static mapExceptionToExecuteAppFunctionResponse(Ljava/lang/Throwable;)Landroid/app/appfunctions/AppFunctionException;
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/util/concurrent/CompletionException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    instance-of v0, p0, Lcom/android/server/appfunctions/AppSearchException;

    .line 10
    .line 11
    const/16 v1, 0x7d0

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    check-cast v0, Lcom/android/server/appfunctions/AppSearchException;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/appfunctions/AppSearchException;->getResultCode()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/4 v2, 0x6

    .line 25
    if-eq v0, v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/16 v1, 0x3eb

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v0, "This method can only be used to convert failure result codes."

    .line 34
    .line 35
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_3
    instance-of v0, p0, Ljava/lang/SecurityException;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    const/16 v1, 0x3e8

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    instance-of v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$DisabledAppFunctionException;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    const/16 v1, 0x3ea

    .line 51
    .line 52
    :cond_5
    :goto_0
    new-instance v0, Landroid/app/appfunctions/AppFunctionException;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v0, v1, p0}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "AppFunctionManagerServiceImpl"

    .line 4
    .line 5
    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    :try_start_0
    new-instance p1, Landroid/util/IndentingPrintWriter;

    .line 17
    .line 18
    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p2, p1}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->dumpAppFunctionsState(Landroid/content/Context;Landroid/util/IndentingPrintWriter;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionLoggerHelper:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

    .line 27
    .line 28
    invoke-virtual {p2, p1, p3}, Lcom/android/server/appfunctions/AppFunctionLoggerHelper;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)Landroid/os/ICancellationSignal;
    .locals 11

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroid/app/appfunctions/AppFunctionExecutionRecord;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Landroid/app/appfunctions/AppFunctionExecutionRecord;-><init>(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;)V

    .line 10
    .line 11
    .line 12
    new-instance v7, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionLoggerHelper:Lcom/android/server/appfunctions/AppFunctionLoggerHelper;

    .line 15
    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda6;

    .line 20
    .line 21
    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/appfunctions/AppFunctionLoggerHelper;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v7, p2, v2, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;-><init>(Landroid/app/appfunctions/IExecuteAppFunctionCallback;Ljava/util/function/Consumer;Landroid/app/appfunctions/AppFunctionExecutionRecord;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Lcom/android/server/appfunctions/CallerValidator;->validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v1, v0, v2}, Lcom/android/server/appfunctions/CallerValidator;->verifyTargetUserHandle(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget-object v9, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 59
    .line 60
    new-instance v10, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;

    .line 61
    .line 62
    move-object v1, v10

    .line 63
    move-object v2, p0

    .line 64
    move-object v3, p1

    .line 65
    move-object v6, v0

    .line 66
    move-object v8, p2

    .line 67
    invoke-direct/range {v1 .. v8}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)V

    .line 68
    .line 69
    .line 70
    check-cast v9, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 71
    .line 72
    invoke-virtual {v9, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    new-instance p1, Landroid/app/appfunctions/AppFunctionException;

    .line 78
    .line 79
    const/16 p2, 0x3e8

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-direct {p1, p2, p0}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7, p1}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 89
    .line 90
    .line 91
    const/4 p0, 0x0

    .line 92
    return-object p0
.end method

.method public final executeAppFunctionInternal(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;IILandroid/os/ICancellationSignal;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/os/IBinder;)V
    .locals 14

    .line 1
    move-object v8, p0

    .line 2
    move-object/from16 v9, p5

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getUserHandle()Landroid/os/UserHandle;

    .line 5
    .line 6
    .line 7
    move-result-object v10

    .line 8
    iget-object v0, v8, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 9
    .line 10
    invoke-interface {v0, v10}, Lcom/android/server/appfunctions/CallerValidator;->isUserOrganizationManaged(Landroid/os/UserHandle;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroid/app/appfunctions/AppFunctionException;

    .line 17
    .line 18
    const/16 v1, 0x7d0

    .line 19
    .line 20
    const-string v2, "Cannot run on a device with a device owner or from the managed profile."

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v9, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v11

    .line 37
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    new-instance v0, Landroid/app/appfunctions/AppFunctionException;

    .line 44
    .line 45
    const/16 v1, 0x3e9

    .line 46
    .line 47
    const-string v2, "Target package name cannot be empty."

    .line 48
    .line 49
    invoke-direct {v0, v1, v2}, Landroid/app/appfunctions/AppFunctionException;-><init>(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v9, v0}, Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;->onError(Landroid/app/appfunctions/AppFunctionException;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object v0, v8, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getFunctionIdentifier()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    iget-object v7, v8, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 71
    .line 72
    move/from16 v1, p2

    .line 73
    .line 74
    move/from16 v2, p3

    .line 75
    .line 76
    move-object v3, v10

    .line 77
    move-object v5, v11

    .line 78
    invoke-interface/range {v0 .. v7}, Lcom/android/server/appfunctions/CallerValidator;->verifyCallerCanExecuteAppFunction(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)Lcom/android/internal/infra/AndroidFuture;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;

    .line 83
    .line 84
    const/4 v2, 0x0

    .line 85
    invoke-direct {v1, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    move-object v5, p1

    .line 96
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/Object;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    invoke-direct {v1, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda8;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    new-instance v13, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;

    .line 114
    .line 115
    move-object v0, v13

    .line 116
    move-object v1, p0

    .line 117
    move-object v2, v11

    .line 118
    move-object v3, v10

    .line 119
    move-object/from16 v4, p5

    .line 120
    .line 121
    move-object v5, p1

    .line 122
    move-object/from16 v6, p4

    .line 123
    .line 124
    move-object/from16 v7, p6

    .line 125
    .line 126
    invoke-direct/range {v0 .. v7}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/appfunctions/SafeOneTimeExecuteAppFunctionCallback;Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v12, v13}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;

    .line 134
    .line 135
    const/4 v2, 0x1

    .line 136
    invoke-direct {v1, p0, v9, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/Object;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public getLockForPackage(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    .line 5
    .line 6
    check-cast v1, Ljava/util/WeakHashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v1, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mLocks:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-direct {v1, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    monitor-exit v0

    .line 33
    return-object p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final setAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mCallerValidator:Lcom/android/server/appfunctions/CallerValidator;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/android/server/appfunctions/CallerValidator;->validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    new-instance v8, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;

    .line 9
    .line 10
    move-object v1, v8

    .line 11
    move-object v2, p0

    .line 12
    move-object v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move-object v5, p3

    .line 15
    move v6, p4

    .line 16
    move-object v7, p5

    .line 17
    invoke-direct/range {v1 .. v7}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 21
    .line 22
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p0

    .line 27
    :try_start_1
    new-instance p1, Landroid/os/ParcelableException;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p5, p1}, Landroid/app/appfunctions/IAppFunctionEnabledCallback;->onError(Landroid/os/ParcelableException;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p0

    .line 37
    const-string p1, "AppFunctionManagerServiceImpl"

    .line 38
    .line 39
    const-string p2, "Failed to report the exception"

    .line 40
    .line 41
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public final setAppFunctionEnabledInternalLocked(ILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "Failed writing updated doc to AppSearch due to "

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-class v2, Landroid/app/appsearch/AppSearchManager;

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/app/appsearch/AppSearchManager;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    new-instance p2, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;

    .line 21
    .line 22
    const-string v2, "appfunctions-db"

    .line 23
    .line 24
    invoke-direct {p2, v2}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/app/appsearch/AppSearchManager$SearchContext$Builder;->build()Landroid/app/appsearch/AppSearchManager$SearchContext;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    .line 32
    .line 33
    sget-object v3, Lcom/android/server/appfunctions/AppFunctionExecutors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    invoke-direct {v2, p0, v3, p2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;-><init>(Landroid/app/appsearch/AppSearchManager;Ljava/util/concurrent/Executor;Landroid/app/appsearch/AppSearchManager$SearchContext;)V

    .line 36
    .line 37
    .line 38
    :try_start_0
    new-instance p0, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    .line 39
    .line 40
    invoke-static {p3, p4, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->getRuntimeMetadataGenericDocument(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;)Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-direct {p0, p2}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata;-><init>(Landroid/app/appsearch/GenericDocument;)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    .line 48
    .line 49
    invoke-direct {p2, p0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;-><init>(Landroid/app/appfunctions/AppFunctionRuntimeMetadata;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p1}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->setEnabled(I)Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/app/appfunctions/AppFunctionRuntimeMetadata$Builder;->build()Landroid/app/appfunctions/AppFunctionRuntimeMetadata;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    new-instance p1, Landroid/app/appsearch/PutDocumentsRequest$Builder;

    .line 61
    .line 62
    invoke-direct {p1}, Landroid/app/appsearch/PutDocumentsRequest$Builder;-><init>()V

    .line 63
    .line 64
    .line 65
    const/4 p2, 0x1

    .line 66
    new-array p2, p2, [Landroid/app/appsearch/GenericDocument;

    .line 67
    .line 68
    aput-object p0, p2, v1

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->addGenericDocuments([Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/PutDocumentsRequest$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/app/appsearch/PutDocumentsRequest$Builder;->build()Landroid/app/appsearch/PutDocumentsRequest;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->getSessionAsync()Lcom/android/internal/infra/AndroidFuture;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance p2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    const/4 p3, 0x1

    .line 88
    invoke-direct {p2, v2, p0, p3}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Ljava/lang/Object;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    check-cast p0, Landroid/app/appsearch/AppSearchBatchResult;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/app/appsearch/AppSearchBatchResult;->isSuccess()Z

    .line 102
    .line 103
    .line 104
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    if-eqz p1, :cond_0

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->close()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 112
    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catchall_1
    move-exception p1

    .line 135
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    :goto_0
    throw p0

    .line 139
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 140
    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string p3, "AppSearchManager not found for user:"

    .line 144
    .line 145
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0
.end method

.method public final trySyncRuntimeMetadata(Lcom/android/server/SystemService$TargetUser;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->mAppFunctionAgentPolicyManager:Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;

    .line 17
    .line 18
    invoke-static {v0, p1, p0}, Lcom/android/server/appfunctions/MetadataSyncPerUser;->getPerUserMetadataSyncAdapter(Landroid/os/UserHandle;Landroid/content/Context;Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyManager;)Lcom/android/server/appfunctions/MetadataSyncAdapter;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Lcom/android/server/appfunctions/MetadataSyncAdapter;->submitSyncRequest(Z)Lcom/android/internal/infra/AndroidFuture;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-instance p1, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
