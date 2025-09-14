.class public abstract Lcom/android/server/credentials/RequestSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCancellationSignal:Landroid/os/CancellationSignal;

.field public final mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

.field public final mClientCallback:Ljava/lang/Object;

.field public final mClientRequest:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

.field public final mDeathRecipient:Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;

.field public final mHybridService:Ljava/lang/String;

.field public final mLock:Ljava/lang/Object;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public final mProviders:Ljava/util/Map;

.field public final mRequestId:Landroid/os/IBinder;

.field public final mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

.field public mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

.field public final mSessionCallback:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;JZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 11
    new-instance v0, Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;

    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;-><init>(Lcom/android/server/credentials/RequestSession;)V

    .line 16
    iput-object v0, p0, Lcom/android/server/credentials/RequestSession;->mDeathRecipient:Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;

    .line 18
    sget-object v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->IN_PROGRESS:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 20
    iput-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 22
    iput-object p1, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    .line 24
    iput-object p3, p0, Lcom/android/server/credentials/RequestSession;->mLock:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lcom/android/server/credentials/RequestSession;->mSessionCallback:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    .line 28
    iput p4, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    .line 30
    iput-object p6, p0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    .line 32
    iput-object p7, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    .line 34
    iput-object p9, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 36
    iput-object p11, p0, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 38
    new-instance p2, Landroid/os/Handler;

    .line 40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 43
    move-result-object p3

    .line 44
    const/4 p6, 0x1

    .line 45
    const/4 p7, 0x0

    .line 46
    invoke-direct {p2, p3, p7, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 49
    new-instance p2, Landroid/os/Binder;

    .line 51
    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    .line 56
    new-instance p2, Lcom/android/server/credentials/CredentialManagerUi;

    .line 58
    invoke-direct {p2, p1, p4, p0, p10}, Lcom/android/server/credentials/CredentialManagerUi;-><init>(Landroid/content/Context;ILcom/android/server/credentials/RequestSession;Ljava/util/Set;)V

    .line 61
    iput-object p2, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object p1

    .line 67
    const p2, 0x1040317

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    .line 76
    new-instance p1, Ljava/security/SecureRandom;

    .line 78
    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    .line 81
    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    .line 84
    move-result p1

    .line 85
    new-instance p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 87
    new-instance p3, Ljava/security/SecureRandom;

    .line 89
    invoke-direct {p3}, Ljava/security/SecureRandom;-><init>()V

    .line 92
    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    .line 95
    move-result p3

    .line 96
    invoke-direct {p2, p1, p3}, Lcom/android/server/credentials/metrics/RequestSessionMetric;-><init>(II)V

    .line 99
    iput-object p2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 101
    invoke-static {p8}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCodeFromRequestInfo(Ljava/lang/String;)I

    .line 104
    move-result p1

    .line 105
    :try_start_0
    iget-object p2, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    .line 107
    iput-wide p12, p2, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCredentialServiceStartedTimeNanoseconds:J

    .line 109
    iput p5, p2, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCallerUid:I

    .line 111
    iput p1, p2, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mApiName:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 114
    :catch_0
    move-exception p1

    .line 115
    const-string p2, "Unexpected error collecting initial phase metric start info: "

    .line 117
    const-string p3, "RequestSessionMetric"

    .line 119
    invoke-static {p1, p2, p3}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 124
    new-instance p2, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda1;

    .line 126
    invoke-direct {p2, p0}, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/RequestSession;)V

    .line 129
    invoke-virtual {p1, p2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 132
    if-eqz p14, :cond_0

    .line 134
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->clearSessionEnabled()Z

    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    .line 142
    if-eqz p1, :cond_0

    .line 144
    instance-of p2, p1, Landroid/os/IInterface;

    .line 146
    if-eqz p2, :cond_0

    .line 148
    check-cast p1, Landroid/os/IInterface;

    .line 150
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RequestSession;->setUpClientCallbackListener(Landroid/os/IBinder;)V

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public final finishSession(IZ)V
    .locals 3

    .line 1
    const-string v0, "CredentialManager"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "finishing session with propagateCancellation "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    if-eqz p2, :cond_0

    .line 23
    iget-object p2, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 25
    check-cast p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 30
    move-result-object p2

    .line 31
    new-instance v0, Lcom/android/server/credentials/RequestSession$$ExternalSyntheticLambda0;

    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-interface {p2, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 39
    :cond_0
    iget-object p2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 41
    iget-object v0, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 43
    :try_start_0
    iget-object v1, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    .line 45
    iget v2, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 49
    iput v2, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 51
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledFinalPhase(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V

    .line 54
    iget-object v1, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    .line 56
    iget v2, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 60
    iput v2, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 62
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledNoUidFinal(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    const-string p2, "Unexpected error during final metric emit: "

    .line 69
    const-string v0, "RequestSessionMetric"

    .line 71
    invoke-static {p1, p2, v0}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    sget-object p1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 76
    iput-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 78
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 80
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 85
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mLock:Ljava/lang/Object;

    .line 87
    monitor-enter p1

    .line 88
    :try_start_1
    iget-object p2, p0, Lcom/android/server/credentials/RequestSession;->mSessionCallback:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    .line 90
    iget v0, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    .line 92
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    .line 94
    iget-object p2, p2, Lcom/android/server/credentials/CredentialManagerService$SessionManager;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 96
    iget-object v1, p2, Lcom/android/server/credentials/CredentialManagerService;->mRequestSessions:Landroid/util/SparseArray;

    .line 98
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_1

    .line 104
    iget-object p2, p2, Lcom/android/server/credentials/CredentialManagerService;->mRequestSessions:Landroid/util/SparseArray;

    .line 106
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object p2

    .line 110
    check-cast p2, Ljava/util/Map;

    .line 112
    invoke-interface {p2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_1
    monitor-exit p1

    .line 116
    return-void

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    throw p0
.end method

.method public final getProviderDataAndInitiateUi()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataForUi()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/credentials/RequestSession;->launchUiWithProviderData(Ljava/util/ArrayList;)V

    .line 14
    :cond_0
    return-void
.end method

.method public final getProviderDataForUi()Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "For ui, provider data size: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 10
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "CredentialManager"

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 35
    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 37
    iget-object v3, v2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    .line 39
    const/4 v4, 0x1

    .line 40
    :try_start_0
    iget v5, v2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 42
    add-int/2addr v5, v4

    .line 43
    iput v5, v2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 45
    invoke-static {v1, v5, v3}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledCandidatePhase(Ljava/util/Map;ILcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    .line 48
    iget v5, v3, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mApiName:I

    .line 50
    sget-object v6, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL:Lcom/android/server/credentials/metrics/ApiName;

    .line 52
    invoke-virtual {v6}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCode()I

    .line 55
    move-result v6

    .line 56
    if-eq v5, v6, :cond_0

    .line 58
    iget v3, v3, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mApiName:I

    .line 60
    sget-object v5, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL_VIA_REGISTRY:Lcom/android/server/credentials/metrics/ApiName;

    .line 62
    invoke-virtual {v5}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCode()I

    .line 65
    move-result v5

    .line 66
    if-ne v3, v5, :cond_1

    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    :goto_0
    iget v2, v2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 73
    invoke-static {v2, v1}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledCandidateGetMetric(ILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_2

    .line 77
    :goto_1
    const-string v2, "Unexpected error during candidate metric emit: "

    .line 79
    const-string v3, "RequestSessionMetric"

    .line 81
    invoke-static {v1, v2, v3}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 86
    invoke-virtual {v1}, Landroid/os/CancellationSignal;->isCanceled()Z

    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_2

    .line 92
    sget-object v1, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 94
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    .line 97
    move-result v1

    .line 98
    invoke-virtual {p0, v1, v4}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    .line 101
    return-object v0

    .line 102
    :cond_2
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 104
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 109
    move-result-object p0

    .line 110
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 113
    move-result-object p0

    .line 114
    :cond_3
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_4

    .line 120
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    move-result-object v1

    .line 124
    check-cast v1, Lcom/android/server/credentials/ProviderSession;

    .line 126
    invoke-virtual {v1}, Lcom/android/server/credentials/ProviderSession;->prepareUiData()Landroid/credentials/selection/ProviderData;

    .line 129
    move-result-object v1

    .line 130
    if-eqz v1, :cond_3

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    goto :goto_3

    .line 136
    :cond_4
    return-object v0
.end method

.method public abstract initiateProviderSession(Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderSession;
.end method

.method public abstract invokeClientCallbackError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract invokeClientCallbackSuccess(Ljava/lang/Object;)V
.end method

.method public final isAnyProviderPending()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 3
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/credentials/ProviderSession;

    .line 25
    iget-object v0, v0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    .line 27
    sget-object v1, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    .line 29
    if-ne v0, v1, :cond_0

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

.method public final isUiInvocationNeeded()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 3
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_2

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/server/credentials/ProviderSession;

    .line 26
    iget-object v2, v0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    .line 28
    invoke-static {v2}, Lcom/android/server/credentials/ProviderSession;->isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_1
    iget-object v0, v0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    .line 38
    sget-object v2, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    .line 40
    if-ne v0, v2, :cond_0

    .line 42
    :cond_2
    return v1
.end method

.method public abstract launchUiWithProviderData(Ljava/util/ArrayList;)V
.end method

.method public onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public abstract onUiCancellation(Z)V
.end method

.method public abstract onUiSelectorInvocationFailure()V
.end method

.method public final respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 3
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 5
    invoke-virtual {v1, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->logCandidateAggregateMetrics(Ljava/util/Map;)V

    .line 8
    sget-object v0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFinalPhaseProviderMetricStatus(ZLcom/android/server/credentials/metrics/ProviderStatusForMetrics;)V

    .line 14
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 16
    sget-object v3, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 18
    const-string v4, "CredentialManager"

    .line 20
    if-ne v0, v3, :cond_0

    .line 22
    const-string p0, "Request has already been completed. This is strange."

    .line 24
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 30
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 36
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 38
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    .line 41
    move-result p1

    .line 42
    invoke-virtual {p0, p1, v2}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    .line 45
    return-void

    .line 46
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->invokeClientCallbackError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p2

    .line 51
    const-string v0, "Issue while responding to client with error : "

    .line 53
    invoke-static {v0, p2, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 56
    :goto_0
    const-string p2, "TYPE_USER_CANCELED"

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 61
    move-result p1

    .line 62
    const/4 p2, 0x0

    .line 63
    if-eqz p1, :cond_2

    .line 65
    :try_start_1
    iget-object p1, v1, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 67
    iput-boolean p2, p1, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mHasException:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    goto :goto_1

    .line 70
    :catch_1
    move-exception p1

    .line 71
    const-string v0, "Unexpected error setting final exception metric: "

    .line 73
    const-string v1, "RequestSessionMetric"

    .line 75
    invoke-static {p1, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_1
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->USER_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 80
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    .line 83
    move-result p1

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 90
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    .line 93
    move-result p1

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    .line 97
    :goto_2
    return-void
.end method

.method public final respondToClientWithResponseAndFinish(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 3
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 5
    invoke-virtual {v1, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->logCandidateAggregateMetrics(Ljava/util/Map;)V

    .line 8
    sget-object v0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFinalPhaseProviderMetricStatus(ZLcom/android/server/credentials/metrics/ProviderStatusForMetrics;)V

    .line 14
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 16
    sget-object v3, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 18
    const-string v4, "CredentialManager"

    .line 20
    if-ne v0, v3, :cond_0

    .line 22
    const-string p0, "Request has already been completed. This is strange."

    .line 24
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 30
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    .line 33
    move-result v0

    .line 34
    const/4 v3, 0x1

    .line 35
    if-eqz v0, :cond_1

    .line 37
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 39
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0, p1, v3}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    .line 46
    return-void

    .line 47
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RequestSession;->invokeClientCallbackSuccess(Ljava/lang/Object;)V

    .line 50
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 52
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    .line 55
    move-result p1

    .line 56
    invoke-virtual {p0, p1, v2}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    sget-object v0, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 63
    invoke-virtual {v1, v3, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFinalPhaseProviderMetricStatus(ZLcom/android/server/credentials/metrics/ProviderStatusForMetrics;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    const-string v1, "Issue while responding to client with a response : "

    .line 70
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 85
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    .line 88
    move-result p1

    .line 89
    invoke-virtual {p0, p1, v2}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    .line 92
    :goto_0
    return-void
.end method

.method public final setUpClientCallbackListener(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    instance-of v1, v0, Landroid/os/IInterface;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Landroid/os/IInterface;

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mDeathRecipient:Lcom/android/server/credentials/RequestSession$RequestSessionDeathRecipient;

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string p1, "CredentialManager"

    .line 21
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    :goto_0
    return-void
.end method
