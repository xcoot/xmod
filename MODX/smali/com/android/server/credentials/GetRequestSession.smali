.class public Lcom/android/server/credentials/GetRequestSession;
.super Lcom/android/server/credentials/RequestSession;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;


# instance fields
.field public final mPrimaryProviders:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Ljava/util/Set;Landroid/os/CancellationSignal;J)V
    .locals 16

    .line 1
    move-object/from16 v15, p0

    .line 3
    invoke-virtual/range {p7 .. p7}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/credentials/CredentialOption;

    .line 23
    invoke-virtual {v1}, Landroid/credentials/CredentialOption;->getCredentialRetrievalData()Landroid/os/Bundle;

    .line 26
    move-result-object v1

    .line 27
    const-string v2, "android.credentials.GetCredentialOption.SUPPORTED_ELEMENT_KEYS"

    .line 29
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 35
    const-string v0, "android.credentials.selection.TYPE_GET_VIA_REGISTRY"

    .line 37
    :goto_0
    move-object v8, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string v0, "android.credentials.selection.TYPE_GET"

    .line 41
    goto :goto_0

    .line 42
    :goto_1
    const/4 v14, 0x1

    .line 43
    move-object/from16 v0, p0

    .line 45
    move-object/from16 v1, p1

    .line 47
    move-object/from16 v2, p2

    .line 49
    move-object/from16 v3, p3

    .line 51
    move/from16 v4, p4

    .line 53
    move/from16 v5, p5

    .line 55
    move-object/from16 v6, p7

    .line 57
    move-object/from16 v7, p6

    .line 59
    move-object/from16 v9, p8

    .line 61
    move-object/from16 v10, p9

    .line 63
    move-object/from16 v11, p11

    .line 65
    move-wide/from16 v12, p12

    .line 67
    invoke-direct/range {v0 .. v14}, Lcom/android/server/credentials/RequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;JZ)V

    .line 70
    iget-object v0, v15, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 72
    move-object/from16 v1, p7

    .line 74
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectGetFlowInitialMetricInfo(Landroid/credentials/GetCredentialRequest;)V

    .line 77
    move-object/from16 v0, p10

    .line 79
    iput-object v0, v15, Lcom/android/server/credentials/GetRequestSession;->mPrimaryProviders:Ljava/util/Set;

    .line 81
    return-void
.end method


# virtual methods
.method public final handleEmptyAuthenticationSelection(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda0;

    .line 11
    invoke-direct {v1, p0, p1}, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/credentials/GetRequestSession;Landroid/content/ComponentName;)V

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataAndInitiateUi()V

    .line 20
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 22
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 46
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/server/credentials/ProviderGetSession;

    .line 54
    iget-object v0, v0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 56
    iget-object v1, v0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    .line 58
    check-cast v1, Ljava/util/HashMap;

    .line 60
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 66
    iget-object v1, v0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    .line 68
    if-nez v1, :cond_1

    .line 70
    iget-object v0, v0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 72
    check-cast v0, Ljava/util/HashMap;

    .line 74
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 81
    move-result-object v0

    .line 82
    new-instance v1, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda1;

    .line 84
    const/4 v2, 0x0

    .line 85
    invoke-direct {v1, v2}, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda1;-><init>(I)V

    .line 88
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_1

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 97
    const-string v0, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    .line 99
    invoke-virtual {p1, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 102
    const-string p1, "No credentials available"

    .line 104
    invoke-virtual {p0, v0, p1}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    return-void
.end method

.method public final initiateProviderSession(Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderSession;
    .locals 13

    .line 1
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getCapabilities()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    .line 9
    check-cast v2, Landroid/credentials/GetCredentialRequest;

    .line 11
    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    .line 13
    invoke-static {v0, v2, p1, v3}, Lcom/android/server/credentials/ProviderGetSession;->filterOptions(Ljava/util/List;Landroid/credentials/GetCredentialRequest;Landroid/credentials/CredentialProviderInfo;Ljava/lang/String;)Landroid/credentials/GetCredentialRequest;

    .line 16
    move-result-object v7

    .line 17
    const-string v11, "CredentialManager"

    .line 19
    if-eqz v7, :cond_1

    .line 21
    new-instance v9, Ljava/util/HashMap;

    .line 23
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 26
    new-instance v12, Lcom/android/server/credentials/ProviderGetSession;

    .line 28
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 30
    invoke-virtual {v2}, Landroid/credentials/GetCredentialRequest;->alwaysSendAppInfoToProvider()Z

    .line 33
    move-result v2

    .line 34
    new-instance v3, Landroid/service/credentials/BeginGetCredentialRequest$Builder;

    .line 36
    invoke-direct {v3}, Landroid/service/credentials/BeginGetCredentialRequest$Builder;-><init>()V

    .line 39
    invoke-virtual {v7}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    .line 42
    move-result-object v4

    .line 43
    new-instance v5, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;

    .line 45
    invoke-direct {v5, v3, v9}, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;-><init>(Landroid/service/credentials/BeginGetCredentialRequest$Builder;Ljava/util/Map;)V

    .line 48
    invoke-interface {v4, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 51
    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v3, v0}, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->setCallingAppInfo(Landroid/service/credentials/CallingAppInfo;)Landroid/service/credentials/BeginGetCredentialRequest$Builder;

    .line 56
    :cond_0
    invoke-virtual {v3}, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->build()Landroid/service/credentials/BeginGetCredentialRequest;

    .line 59
    move-result-object v6

    .line 60
    iget-object v8, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 62
    iget-object v10, p0, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    .line 64
    iget v4, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    .line 66
    move-object v0, v12

    .line 67
    move-object v2, p1

    .line 68
    move-object v3, p0

    .line 69
    move-object v5, p2

    .line 70
    invoke-direct/range {v0 .. v10}, Lcom/android/server/credentials/ProviderGetSession;-><init>(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;ILcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginGetCredentialRequest;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Map;Ljava/lang/String;)V

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    const-string v0, "Unable to create provider session for: "

    .line 78
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p2

    .line 92
    invoke-static {v11, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v12, 0x0

    .line 96
    :goto_0
    if-eqz v12, :cond_2

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    const-string v0, "Provider session created and being added for: "

    .line 102
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    invoke-static {v11, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 121
    iget-object p1, v12, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 123
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 129
    invoke-virtual {p0, p1, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_2
    return-object v12
.end method

.method public final invokeClientCallbackError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    .line 3
    check-cast p0, Landroid/credentials/IGetCredentialCallback;

    .line 5
    invoke-interface {p0, p1, p2}, Landroid/credentials/IGetCredentialCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public final invokeClientCallbackSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/credentials/GetCredentialResponse;

    .line 3
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    .line 5
    check-cast p0, Landroid/credentials/IGetCredentialCallback;

    .line 7
    invoke-interface {p0, p1}, Landroid/credentials/IGetCredentialCallback;->onResponse(Landroid/credentials/GetCredentialResponse;)V

    .line 10
    return-void
.end method

.method public final launchUiWithProviderData(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    :try_start_0
    iget-object v2, v2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 12
    iput-wide v0, v2, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallStartTimeNanoseconds:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    const-string v1, "Unexpected error collecting ui start metric: "

    .line 18
    const-string v2, "RequestSessionMetric"

    .line 20
    invoke-static {v0, v1, v2}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :goto_0
    sget-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->USER_INTERACTION:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 25
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    .line 27
    iput-object v0, v1, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 29
    new-instance v0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda1;

    .line 31
    invoke-direct {v0, p0, p1}, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/GetRequestSession;Ljava/util/ArrayList;)V

    .line 34
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 37
    return-void
.end method

.method public final onFinalResponseReceived(Landroid/content/ComponentName;Landroid/credentials/GetCredentialResponse;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onFinalResponseReceived from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CredentialManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectUiResponseData(J)V

    .line 4
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 5
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/credentials/ProviderSession;

    .line 6
    invoke-virtual {v2, v0, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->updateMetricsOnResponseReceived(Ljava/util/Map;Landroid/content/ComponentName;)V

    .line 7
    sget-object p1, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 8
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    move-result p1

    .line 9
    invoke-virtual {v2, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectChosenProviderStatus(I)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/server/credentials/RequestSession;->respondToClientWithResponseAndFinish(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/credentials/GetCredentialResponse;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/GetRequestSession;->onFinalResponseReceived(Landroid/content/ComponentName;Landroid/credentials/GetCredentialResponse;)V

    return-void
.end method

.method public onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Status changed for: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", with status: "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, ", and source: "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p3

    .line 31
    const-string v0, "CredentialManager"

    .line 33
    invoke-static {v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object p3, Lcom/android/server/credentials/ProviderSession$Status;->NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

    .line 38
    if-ne p1, p3, :cond_0

    .line 40
    invoke-virtual {p0, p2}, Lcom/android/server/credentials/GetRequestSession;->handleEmptyAuthenticationSelection(Landroid/content/ComponentName;)V

    .line 43
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isAnyProviderPending()Z

    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isUiInvocationNeeded()Z

    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 56
    const-string p1, "Provider status changed - ui invocation is needed"

    .line 58
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataAndInitiateUi()V

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 67
    const-string p2, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    .line 69
    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 72
    const-string p1, "No credentials available"

    .line 74
    invoke-virtual {p0, p2, p1}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_2
    :goto_0
    return-void
.end method

.method public final onUiCancellation(Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    const-string p1, "android.credentials.GetCredentialException.TYPE_INTERRUPTED"

    .line 5
    const-string v0, "The UI was interrupted - please try again."

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p1, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    .line 10
    const-string v0, "User cancelled the selector"

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 14
    invoke-virtual {v1, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public final onUiSelectorInvocationFailure()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 3
    const-string v1, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 8
    const-string v0, "No credentials available."

    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method
