.class public final Lcom/android/server/credentials/CreateRequestSession;
.super Lcom/android/server/credentials/RequestSession;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;


# instance fields
.field public final mPrimaryProviders:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILandroid/credentials/CreateCredentialRequest;Landroid/credentials/ICreateCredentialCallback;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Ljava/util/Set;Landroid/os/CancellationSignal;J)V
    .locals 16

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    const-string v9, "android.credentials.selection.TYPE_CREATE"

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    move-object/from16 v1, p0

    .line 7
    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    move-object/from16 v4, p3

    .line 13
    .line 14
    move/from16 v5, p4

    .line 15
    .line 16
    move/from16 v6, p5

    .line 17
    .line 18
    move-object/from16 v7, p6

    .line 19
    .line 20
    move-object/from16 v8, p7

    .line 21
    .line 22
    move-object/from16 v10, p8

    .line 23
    .line 24
    move-object/from16 v11, p9

    .line 25
    .line 26
    move-object/from16 v12, p11

    .line 27
    .line 28
    move-wide/from16 v13, p12

    .line 29
    .line 30
    move v15, v0

    .line 31
    invoke-direct/range {v1 .. v15}, Lcom/android/server/credentials/RequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;JZ)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v1, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 35
    .line 36
    invoke-virtual/range {p6 .. p6}, Landroid/credentials/CreateCredentialRequest;->getOrigin()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x1

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    move v2, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v2, 0x0

    .line 46
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    :try_start_0
    iget-object v0, v0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    .line 50
    .line 51
    iput-boolean v2, v0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mOriginSpecified:Z

    .line 52
    .line 53
    invoke-virtual/range {p6 .. p6}, Landroid/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    add-int/lit8 v4, v4, -0x14

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v2, v3}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iput-object v2, v0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mRequestCounts:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    :goto_1
    move-object/from16 v2, p10

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v2, "Unexpected error collecting create flow metric: "

    .line 82
    .line 83
    const-string v3, "RequestSessionMetric"

    .line 84
    .line 85
    invoke-static {v0, v2, v3}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :goto_2
    iput-object v2, v1, Lcom/android/server/credentials/CreateRequestSession;->mPrimaryProviders:Ljava/util/Set;

    .line 90
    .line 91
    return-void
.end method


# virtual methods
.method public final initiateProviderSession(Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderSession;
    .locals 11

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
    check-cast v2, Landroid/credentials/CreateCredentialRequest;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {v2}, Landroid/credentials/CreateCredentialRequest;->isSystemProviderRequired()Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/4 v6, 0x0

    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    :cond_0
    move-object v7, v6

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v2}, Landroid/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    new-instance v0, Landroid/service/credentials/CreateCredentialRequest;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/credentials/CreateCredentialRequest;->getCredentialData()Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-direct {v0, v3, v4, v5}, Landroid/service/credentials/CreateCredentialRequest;-><init>(Landroid/service/credentials/CallingAppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    move-object v7, v0

    .line 48
    :goto_0
    const-string v9, "CredentialManager"

    .line 49
    .line 50
    if-eqz v7, :cond_3

    .line 51
    .line 52
    new-instance v10, Lcom/android/server/credentials/ProviderCreateSession;

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v2}, Landroid/credentials/CreateCredentialRequest;->getCandidateQueryData()Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v4, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/credentials/CreateCredentialRequest;->alwaysSendAppInfoToProvider()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    new-instance v2, Landroid/service/credentials/BeginCreateCredentialRequest;

    .line 71
    .line 72
    invoke-direct {v2, v0, v3, v4}, Landroid/service/credentials/BeginCreateCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/credentials/CallingAppInfo;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    move-object v6, v2

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    new-instance v2, Landroid/service/credentials/BeginCreateCredentialRequest;

    .line 78
    .line 79
    invoke-direct {v2, v0, v3}, Landroid/service/credentials/BeginCreateCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :goto_2
    iget-object v8, p0, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    .line 84
    .line 85
    iget v4, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    .line 86
    .line 87
    move-object v0, v10

    .line 88
    move-object v2, p1

    .line 89
    move-object v3, p0

    .line 90
    move-object v5, p2

    .line 91
    invoke-direct/range {v0 .. v8}, Lcom/android/server/credentials/ProviderCreateSession;-><init>(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;ILcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialRequest;Landroid/service/credentials/CreateCredentialRequest;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    move-object v6, v10

    .line 95
    goto :goto_3

    .line 96
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v0, "Unable to create provider session for: "

    .line 99
    .line 100
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-static {v9, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :goto_3
    if-eqz v6, :cond_4

    .line 118
    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v0, "Provider session created and being added for: "

    .line 122
    .line 123
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {v9, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 141
    .line 142
    iget-object p1, v6, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 149
    .line 150
    invoke-virtual {p0, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :cond_4
    return-object v6
.end method

.method public final invokeClientCallbackError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/credentials/ICreateCredentialCallback;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Landroid/credentials/ICreateCredentialCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final invokeClientCallbackSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/credentials/CreateCredentialResponse;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/credentials/ICreateCredentialCallback;

    .line 6
    .line 7
    invoke-interface {p0, p1}, Landroid/credentials/ICreateCredentialCallback;->onResponse(Landroid/credentials/CreateCredentialResponse;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final launchUiWithProviderData(Ljava/util/ArrayList;)V
    .locals 13

    .line 1
    const-string v0, "RequestSessionMetric"

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-object v3, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v4, v3, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 13
    .line 14
    :try_start_0
    iput-wide v1, v4, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallStartTimeNanoseconds:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v1

    .line 18
    const-string v2, "Unexpected error collecting ui start metric: "

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    sget-object v1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->USER_INTERACTION:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    .line 26
    .line 27
    iput-object v1, v2, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mPendingIntent:Landroid/app/PendingIntent;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    :try_start_1
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-object v1, p0, Lcom/android/server/credentials/RequestSession;->mPendingIntent:Landroid/app/PendingIntent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catch_1
    move-exception v1

    .line 41
    const-string v5, "CredentialManager"

    .line 42
    .line 43
    const-string v6, "Unable to cancel existing pending intent"

    .line 44
    .line 45
    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_1
    :try_start_2
    new-instance v11, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/android/server/credentials/CreateRequestSession;->mPrimaryProviders:Ljava/util/Set;

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Landroid/content/ComponentName;

    .line 70
    .line 71
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    iget-object v7, p0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    .line 82
    .line 83
    move-object v8, v1

    .line 84
    check-cast v8, Landroid/credentials/CreateCredentialRequest;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    const/4 v10, 0x0

    .line 93
    const/4 v12, 0x0

    .line 94
    invoke-static/range {v7 .. v12}, Landroid/credentials/selection/RequestInfo;->newCreateRequestInfo(Landroid/os/IBinder;Landroid/credentials/CreateCredentialRequest;Ljava/lang/String;ZLjava/util/List;Z)Landroid/credentials/selection/RequestInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v2, v1, p1, v3}, Lcom/android/server/credentials/CredentialManagerUi;->createPendingIntent(Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Lcom/android/server/credentials/metrics/RequestSessionMetric;)Landroid/app/PendingIntent;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/android/server/credentials/RequestSession;->mPendingIntent:Landroid/app/PendingIntent;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v1, Landroid/credentials/ICreateCredentialCallback;

    .line 107
    .line 108
    invoke-interface {v1, p1}, Landroid/credentials/ICreateCredentialCallback;->onPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 109
    .line 110
    .line 111
    goto :goto_4

    .line 112
    :catch_2
    const/4 p1, 0x0

    .line 113
    :try_start_3
    iput-boolean p1, v4, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiReturned:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :catch_3
    move-exception p1

    .line 117
    const-string v1, "Unexpected error collecting ui end time metric: "

    .line 118
    .line 119
    invoke-static {p1, v1, v0}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :goto_3
    sget-object p1, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 123
    .line 124
    iput-object p1, v2, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 125
    .line 126
    const-string p1, "android.credentials.CreateCredentialException.TYPE_UNKNOWN"

    .line 127
    .line 128
    const-string v0, "Unable to invoke selector"

    .line 129
    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :goto_4
    return-void
.end method

.method public final onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Landroid/credentials/CreateCredentialResponse;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "Final credential received from: "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "CredentialManager"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 31
    .line 32
    invoke-virtual {v2, v0, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectUiResponseData(J)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    move-object v3, v0

    .line 42
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/android/server/credentials/ProviderSession;

    .line 49
    .line 50
    invoke-virtual {v2, v0, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->updateMetricsOnResponseReceived(Ljava/util/Map;Landroid/content/ComponentName;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->FINAL_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {v2, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectChosenProviderStatus(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2}, Lcom/android/server/credentials/RequestSession;->respondToClientWithResponseAndFinish(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "Provider status changed: "

    .line 4
    .line 5
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p1, ", and source: "

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "CredentialManager"

    .line 24
    .line 25
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isAnyProviderPending()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isUiInvocationNeeded()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    const-string p1, "Provider status changed - ui invocation is needed"

    .line 41
    .line 42
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataAndInitiateUi()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 50
    .line 51
    const-string p2, "android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS"

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string p1, "No create options available."

    .line 57
    .line 58
    invoke-virtual {p0, p2, p1}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.method public final onUiCancellation(Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "android.credentials.CreateCredentialException.TYPE_INTERRUPTED"

    .line 4
    .line 5
    const-string v0, "The UI was interrupted - please try again."

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p1, "android.credentials.CreateCredentialException.TYPE_USER_CANCELED"

    .line 9
    .line 10
    const-string v0, "User cancelled the selector"

    .line 11
    .line 12
    :goto_0
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onUiSelectorInvocationFailure()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 2
    .line 3
    const-string v1, "android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "No create options available."

    .line 9
    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
