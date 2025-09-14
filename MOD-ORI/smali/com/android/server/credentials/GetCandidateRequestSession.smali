.class public final Lcom/android/server/credentials/GetCandidateRequestSession;
.super Lcom/android/server/credentials/RequestSession;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;


# instance fields
.field public final mAutofillCallback:Landroid/os/ResultReceiver;

.field public final mAutofillRequestId:I

.field public final mAutofillSessionId:I

.field public final mClientBinder:Landroid/os/IBinder;

.field public mPrimaryProviderComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILandroid/credentials/IGetCandidateCredentialsCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;Landroid/os/IBinder;)V
    .locals 17

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v14, p11

    .line 4
    .line 5
    const/16 v16, 0x0

    .line 6
    .line 7
    const-string v8, "android.credentials.selection.TYPE_GET"

    .line 8
    .line 9
    const-wide/16 v12, 0x0

    .line 10
    .line 11
    move-object/from16 v0, p0

    .line 12
    .line 13
    move-object/from16 v1, p1

    .line 14
    .line 15
    move-object/from16 v2, p2

    .line 16
    .line 17
    move-object/from16 v3, p3

    .line 18
    .line 19
    move/from16 v4, p4

    .line 20
    .line 21
    move/from16 v5, p5

    .line 22
    .line 23
    move-object/from16 v6, p7

    .line 24
    .line 25
    move-object/from16 v7, p6

    .line 26
    .line 27
    move-object/from16 v9, p8

    .line 28
    .line 29
    move-object/from16 v10, p9

    .line 30
    .line 31
    move-object/from16 v11, p10

    .line 32
    .line 33
    move/from16 v14, v16

    .line 34
    .line 35
    invoke-direct/range {v0 .. v14}, Lcom/android/server/credentials/RequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;JZ)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, v15, Lcom/android/server/credentials/GetCandidateRequestSession;->mPrimaryProviderComponentName:Landroid/content/ComponentName;

    .line 40
    .line 41
    move-object/from16 v0, p11

    .line 42
    .line 43
    iput-object v0, v15, Lcom/android/server/credentials/GetCandidateRequestSession;->mClientBinder:Landroid/os/IBinder;

    .line 44
    .line 45
    invoke-virtual/range {p7 .. p7}, Landroid/credentials/GetCredentialRequest;->getData()Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "autofill_session_id"

    .line 50
    .line 51
    const/4 v3, -0x1

    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iput v1, v15, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillSessionId:I

    .line 57
    .line 58
    invoke-virtual/range {p7 .. p7}, Landroid/credentials/GetCredentialRequest;->getData()Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "autofill_request_id"

    .line 63
    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iput v1, v15, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillRequestId:I

    .line 69
    .line 70
    invoke-virtual/range {p7 .. p7}, Landroid/credentials/GetCredentialRequest;->getData()Landroid/os/Bundle;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v2, "android.credentials.AUTOFILL_RESULT_RECEIVER"

    .line 75
    .line 76
    const-class v3, Landroid/os/ResultReceiver;

    .line 77
    .line 78
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/os/ResultReceiver;

    .line 83
    .line 84
    iput-object v1, v15, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillCallback:Landroid/os/ResultReceiver;

    .line 85
    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    invoke-virtual {v15, v0}, Lcom/android/server/credentials/RequestSession;->setUpClientCallbackListener(Landroid/os/IBinder;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public final initiateProviderSession(Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderSession;
    .locals 13

    .line 1
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getCapabilities()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Landroid/credentials/GetCredentialRequest;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v2, p1, v3}, Lcom/android/server/credentials/ProviderGetSession;->filterOptions(Ljava/util/List;Landroid/credentials/GetCredentialRequest;Landroid/credentials/CredentialProviderInfo;Ljava/lang/String;)Landroid/credentials/GetCredentialRequest;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    const-string v11, "CredentialManager"

    .line 18
    .line 19
    if-eqz v7, :cond_1

    .line 20
    .line 21
    new-instance v9, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v12, Lcom/android/server/credentials/ProviderGetSession;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/credentials/GetCredentialRequest;->alwaysSendAppInfoToProvider()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    new-instance v3, Landroid/service/credentials/BeginGetCredentialRequest$Builder;

    .line 35
    .line 36
    invoke-direct {v3}, Landroid/service/credentials/BeginGetCredentialRequest$Builder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v7}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    new-instance v5, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    invoke-direct {v5, v3, v9}, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda0;-><init>(Landroid/service/credentials/BeginGetCredentialRequest$Builder;Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v4, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 49
    .line 50
    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->setCallingAppInfo(Landroid/service/credentials/CallingAppInfo;)Landroid/service/credentials/BeginGetCredentialRequest$Builder;

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {v3}, Landroid/service/credentials/BeginGetCredentialRequest$Builder;->build()Landroid/service/credentials/BeginGetCredentialRequest;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    iget-object v8, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 61
    .line 62
    iget-object v10, p0, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    .line 63
    .line 64
    iget v4, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    .line 65
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

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v0, "Unable to create provider session for: "

    .line 77
    .line 78
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-static {v11, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    const/4 v12, 0x0

    .line 96
    :goto_0
    if-eqz v12, :cond_3

    .line 97
    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v0, "In startProviderSession - provider session created and being added for: "

    .line 101
    .line 102
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-static {v11, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    iget-object p2, v12, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->isPrimary()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_2

    .line 126
    .line 127
    iput-object p2, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mPrimaryProviderComponentName:Landroid/content/ComponentName;

    .line 128
    .line 129
    :cond_2
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 130
    .line 131
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 136
    .line 137
    invoke-virtual {p0, p1, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_3
    return-object v12
.end method

.method public final invokeClientCallbackError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/credentials/IGetCandidateCredentialsCallback;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Landroid/credentials/IGetCandidateCredentialsCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final invokeClientCallbackSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/credentials/GetCandidateCredentialsResponse;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/credentials/IGetCandidateCredentialsCallback;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Landroid/credentials/IGetCandidateCredentialsCallback;->onResponse(Landroid/credentials/GetCandidateCredentialsResponse;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final launchUiWithProviderData(Ljava/util/ArrayList;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "android.credentials.GetCandidateCredentialsException.TYPE_NO_CREDENTIAL"

    .line 8
    .line 9
    const-string v0, "No credentials found"

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Landroid/credentials/GetCredentialRequest;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v5, "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS"

    .line 36
    .line 37
    invoke-static {v3, v4, v5}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-static {v0, v1, v2, v3, v4}, Landroid/credentials/selection/RequestInfo;->newGetRequestInfo(Landroid/os/IBinder;Landroid/credentials/GetCredentialRequest;Ljava/lang/String;ZZ)Landroid/credentials/selection/RequestInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    .line 47
    .line 48
    iget-object v2, v1, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    new-instance v3, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v4, v1, Lcom/android/server/credentials/CredentialManagerUi;->mResultReceiver:Lcom/android/server/credentials/CredentialManagerUi$1;

    .line 56
    .line 57
    invoke-static {v2, v0, v3, v4}, Landroid/credentials/selection/IntentFactory;->createCredentialSelectorIntentForAutofill(Landroid/content/Context;Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Landroid/os/ResultReceiver;)Landroid/credentials/selection/IntentCreationResult;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v2, v1, Lcom/android/server/credentials/CredentialManagerUi;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    iget v1, v1, Lcom/android/server/credentials/CredentialManagerUi;->mUserId:I

    .line 64
    .line 65
    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 66
    .line 67
    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectUiConfigurationResults(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/credentials/selection/IntentCreationResult;->getIntent()Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Landroid/credentials/selection/ProviderData;

    .line 94
    .line 95
    check-cast v2, Landroid/credentials/selection/GetCredentialProviderData;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    :try_start_0
    new-instance p1, Landroid/credentials/GetCandidateCredentialsResponse;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mPrimaryProviderComponentName:Landroid/content/ComponentName;

    .line 104
    .line 105
    invoke-direct {p1, v1, v0, v2}, Landroid/credentials/GetCandidateCredentialsResponse;-><init>(Ljava/util/List;Landroid/content/Intent;Landroid/content/ComponentName;)V

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p0, Landroid/credentials/IGetCandidateCredentialsCallback;

    .line 111
    .line 112
    invoke-interface {p0, p1}, Landroid/credentials/IGetCandidateCredentialsCallback;->onResponse(Landroid/credentials/GetCandidateCredentialsResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_0
    move-exception p0

    .line 117
    const-string p1, "Issue while responding to client with error : "

    .line 118
    .line 119
    const-string v0, "CredentialManager"

    .line 120
    .line 121
    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    return-void
.end method

.method public final onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "CredentialManager"

    .line 2
    .line 3
    const-string/jumbo v1, "onFinalErrorReceived"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const-string v1, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string p0, "User canceled but session is not being terminated"

    .line 18
    .line 19
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 24
    .line 25
    sget-object v2, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 26
    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    const-string p0, "Request has already been completed. This is strange."

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillCallback:Landroid/os/ResultReceiver;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    new-instance v0, Landroid/os/Bundle;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v1, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    .line 45
    .line 46
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillCallback:Landroid/os/ResultReceiver;

    .line 54
    .line 55
    const/4 p2, -0x1

    .line 56
    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const-string/jumbo p1, "onUiCancellation called but mAutofillCallback not found"

    .line 61
    .line 62
    .line 63
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :goto_0
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    const/4 p2, 0x0

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    .line 74
    .line 75
    .line 76
    :goto_1
    return-void
.end method

.method public final onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Landroid/credentials/GetCredentialResponse;

    .line 2
    .line 3
    const-string/jumbo p1, "onFinalResponseReceived"

    .line 4
    .line 5
    .line 6
    const-string v0, "CredentialManager"

    .line 7
    .line 8
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 12
    .line 13
    sget-object v1, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 14
    .line 15
    const-string v2, "Request has already been completed. This is strange."

    .line 16
    .line 17
    if-ne p1, v1, :cond_0

    .line 18
    .line 19
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillCallback:Landroid/os/ResultReceiver;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const-string/jumbo p1, "onFinalResponseReceived sending through final receiver"

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    new-instance p1, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v0, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    .line 46
    .line 47
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillCallback:Landroid/os/ResultReceiver;

    .line 51
    .line 52
    invoke-virtual {p2, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {p0, p1, v1}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const-string/jumbo p1, "onFinalResponseReceived result receiver not found for pinned entry"

    .line 66
    .line 67
    .line 68
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    invoke-virtual {p0, p1, v1}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method public final onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v0, "in onStatusChanged with status: "

    .line 4
    .line 5
    .line 6
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string p1, ", and source: "

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "CredentialManager"

    .line 25
    .line 26
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isAnyProviderPending()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isUiInvocationNeeded()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    const-string/jumbo p1, "in onProviderStatusChanged - isUiInvocationNeeded"

    .line 42
    .line 43
    .line 44
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataAndInitiateUi()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string p1, "android.credentials.GetCandidateCredentialsException.TYPE_NO_CREDENTIAL"

    .line 52
    .line 53
    const-string p2, "No credentials available"

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method public final onUiCancellation(Z)V
    .locals 0

    .line 1
    const-string p0, "CredentialManager"

    .line 2
    .line 3
    const-string p1, "User canceled but session is not being terminated"

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onUiSelectorInvocationFailure()V
    .locals 1

    .line 1
    const-string v0, "android.credentials.GetCandidateCredentialsException.TYPE_NO_CREDENTIAL"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
