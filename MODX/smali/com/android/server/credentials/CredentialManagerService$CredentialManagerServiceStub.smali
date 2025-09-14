.class public final Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;
.super Landroid/credentials/ICredentialManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/credentials/CredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/credentials/CredentialManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 3
    invoke-direct {p0}, Landroid/credentials/ICredentialManager$Stub;-><init>()V

    .line 6
    return-void
.end method

.method public static finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/RequestSession;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 15
    iput v1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 17
    invoke-static {v0, v1}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledInitialPhase(Lcom/android/server/credentials/metrics/InitialPhaseMetric;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string v0, "CredentialManager"

    .line 24
    const-string v1, "Unexpected error during metric logging: "

    .line 26
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public final clearCredentialState(Landroid/credentials/ClearCredentialStateRequest;Landroid/credentials/IClearCredentialStateCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p3

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 8
    move-result-wide v13

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v3, "starting clearCredentialState with callingPackage: "

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    const-string v15, "CredentialManager"

    .line 26
    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 32
    move-result v12

    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 36
    move-result v6

    .line 37
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 39
    invoke-static {v2, v1, v6}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    .line 42
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    .line 45
    move-result-object v16

    .line 46
    new-instance v11, Lcom/android/server/credentials/ClearRequestSession;

    .line 48
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 50
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v2

    .line 54
    iget-object v3, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 56
    iget-object v4, v3, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    .line 58
    iget-object v5, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 60
    const/4 v7, 0x0

    .line 61
    invoke-static {v3, v1, v12, v7}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    .line 64
    move-result-object v10

    .line 65
    invoke-virtual {v0, v12}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    .line 68
    move-result-object v17

    .line 69
    invoke-static/range {v16 .. v16}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    .line 72
    move-result-object v18

    .line 73
    const-string v9, "android.credentials.selection.TYPE_UNDEFINED"

    .line 75
    const/16 v19, 0x1

    .line 77
    move-object v1, v11

    .line 78
    move-object v3, v4

    .line 79
    move-object v4, v5

    .line 80
    move v5, v12

    .line 81
    move-object/from16 v7, p1

    .line 83
    move-object/from16 v8, p2

    .line 85
    move-object/from16 v20, v11

    .line 87
    move-object/from16 v11, v17

    .line 89
    move/from16 v21, v12

    .line 91
    move-object/from16 v12, v18

    .line 93
    move-object/from16 v22, v15

    .line 95
    move/from16 v15, v19

    .line 97
    invoke-direct/range {v1 .. v15}, Lcom/android/server/credentials/RequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;JZ)V

    .line 100
    iget-object v1, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 102
    move-object/from16 v3, v20

    .line 104
    move/from16 v2, v21

    .line 106
    invoke-static {v1, v2, v3}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$maddSessionLocked(Lcom/android/server/credentials/CredentialManagerService;ILcom/android/server/credentials/RequestSession;)V

    .line 109
    iget-object v0, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 111
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    .line 114
    move-result-object v1

    .line 115
    invoke-static {v0, v3, v1}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    .line 118
    move-result-object v0

    .line 119
    move-object v1, v0

    .line 120
    check-cast v1, Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    const-string v0, "UNKNOWN"

    .line 130
    const-string v2, "No credentials available on this device"

    .line 132
    move-object/from16 v4, p2

    .line 134
    invoke-interface {v4, v0, v2}, Landroid/credentials/IClearCredentialStateCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v2, "Issue invoking onError on IClearCredentialStateCallback callback: "

    .line 141
    move-object/from16 v4, v22

    .line 143
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :cond_0
    :goto_0
    invoke-static {v3}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/RequestSession;)V

    .line 149
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda1;

    .line 151
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 157
    return-object v16
.end method

.method public final executeCreateCredential(Landroid/credentials/CreateCredentialRequest;Landroid/credentials/ICreateCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p3

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 8
    move-result-wide v13

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v3, "starting executeCreateCredential with callingPackage: "

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    const-string v15, "CredentialManager"

    .line 26
    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    .line 32
    move-result-object v16

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/credentials/CreateCredentialRequest;->getOrigin()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 39
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 41
    iget-object v2, v2, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 43
    const-string v3, "android.permission.CREDENTIAL_MANAGER_SET_ORIGIN"

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 52
    move-result v12

    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 56
    move-result v6

    .line 57
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 59
    invoke-static {v2, v1, v6}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    .line 62
    new-instance v11, Lcom/android/server/credentials/CreateRequestSession;

    .line 64
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 66
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 69
    move-result-object v2

    .line 70
    iget-object v3, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 72
    iget-object v4, v3, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    .line 74
    iget-object v5, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/credentials/CreateCredentialRequest;->getOrigin()Ljava/lang/String;

    .line 79
    move-result-object v7

    .line 80
    invoke-static {v3, v1, v12, v7}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {v0, v12}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    .line 87
    move-result-object v10

    .line 88
    iget-object v1, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 90
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 93
    move-result-object v1

    .line 94
    invoke-static {v1, v12}, Lcom/android/server/credentials/CredentialManagerService;->getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;

    .line 97
    move-result-object v17

    .line 98
    invoke-static/range {v16 .. v16}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    .line 101
    move-result-object v18

    .line 102
    move-object v1, v11

    .line 103
    move-object v3, v4

    .line 104
    move-object v4, v5

    .line 105
    move v5, v12

    .line 106
    move-object/from16 v7, p1

    .line 108
    move-object/from16 v8, p2

    .line 110
    move-object/from16 v19, v15

    .line 112
    move-object v15, v11

    .line 113
    move-object/from16 v11, v17

    .line 115
    move/from16 v20, v12

    .line 117
    move-object/from16 v12, v18

    .line 119
    invoke-direct/range {v1 .. v14}, Lcom/android/server/credentials/CreateRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILandroid/credentials/CreateCredentialRequest;Landroid/credentials/ICreateCredentialCallback;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Ljava/util/Set;Landroid/os/CancellationSignal;J)V

    .line 122
    iget-object v1, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 124
    move/from16 v2, v20

    .line 126
    invoke-static {v1, v2, v15}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$maddSessionLocked(Lcom/android/server/credentials/CredentialManagerService;ILcom/android/server/credentials/RequestSession;)V

    .line 129
    iget-object v0, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 138
    move-result-object v1

    .line 139
    invoke-static {v0, v15, v1}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    .line 142
    move-result-object v0

    .line 143
    move-object v1, v0

    .line 144
    check-cast v1, Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_1

    .line 152
    :try_start_0
    const-string v0, "android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS"

    .line 154
    const-string v2, "No create options available."

    .line 156
    move-object/from16 v3, p2

    .line 158
    invoke-interface {v3, v0, v2}, Landroid/credentials/ICreateCredentialCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string v2, "Issue invoking onError on ICreateCredentialCallback callback: "

    .line 165
    move-object/from16 v3, v19

    .line 167
    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    :cond_1
    :goto_0
    invoke-static {v15}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/RequestSession;)V

    .line 173
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda1;

    .line 175
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 181
    return-object v16
.end method

.method public final executeGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p3

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 8
    move-result-wide v13

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v3, "starting executeGetCredential with callingPackage: "

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    const-string v15, "CredentialManager"

    .line 26
    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    .line 32
    move-result-object v16

    .line 33
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 36
    move-result v12

    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 40
    move-result v6

    .line 41
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 43
    invoke-static {v2, v1, v6}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    .line 46
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    const/4 v4, 0x0

    .line 56
    if-eqz v3, :cond_0

    .line 58
    iget-object v3, v2, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 60
    const-string v5, "android.permission.CREDENTIAL_MANAGER_SET_ORIGIN"

    .line 62
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 72
    move-result-object v3

    .line 73
    new-instance v5, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;

    .line 75
    const/4 v7, 0x0

    .line 76
    invoke-direct {v5, v7}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 79
    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_1

    .line 85
    iget-object v2, v2, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 87
    const-string v3, "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS"

    .line 89
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_1
    new-instance v11, Lcom/android/server/credentials/GetRequestSession;

    .line 94
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 96
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 99
    move-result-object v2

    .line 100
    iget-object v3, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 102
    iget-object v4, v3, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    .line 104
    iget-object v5, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    .line 109
    move-result-object v7

    .line 110
    invoke-static {v3, v1, v12, v7}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v0, v12}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    .line 117
    move-result-object v10

    .line 118
    iget-object v1, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 120
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 123
    move-result-object v1

    .line 124
    invoke-static {v1, v12}, Lcom/android/server/credentials/CredentialManagerService;->getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;

    .line 127
    move-result-object v17

    .line 128
    invoke-static/range {v16 .. v16}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    .line 131
    move-result-object v18

    .line 132
    move-object v1, v11

    .line 133
    move-object v3, v4

    .line 134
    move-object v4, v5

    .line 135
    move v5, v12

    .line 136
    move-object/from16 v7, p2

    .line 138
    move-object/from16 v8, p1

    .line 140
    move-object/from16 v19, v15

    .line 142
    move-object v15, v11

    .line 143
    move-object/from16 v11, v17

    .line 145
    move/from16 v20, v12

    .line 147
    move-object/from16 v12, v18

    .line 149
    invoke-direct/range {v1 .. v14}, Lcom/android/server/credentials/GetRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Ljava/util/Set;Landroid/os/CancellationSignal;J)V

    .line 152
    iget-object v1, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 154
    move/from16 v2, v20

    .line 156
    invoke-static {v1, v2, v15}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$maddSessionLocked(Lcom/android/server/credentials/CredentialManagerService;ILcom/android/server/credentials/RequestSession;)V

    .line 159
    move-object/from16 v1, p1

    .line 161
    invoke-virtual {v0, v1, v15}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->prepareProviderSessions(Landroid/credentials/GetCredentialRequest;Lcom/android/server/credentials/GetRequestSession;)Ljava/util/List;

    .line 164
    move-result-object v1

    .line 165
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_2

    .line 171
    :try_start_0
    const-string v0, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    .line 173
    const-string v2, "No credentials available on this device."

    .line 175
    move-object/from16 v3, p2

    .line 177
    invoke-interface {v3, v0, v2}, Landroid/credentials/IGetCredentialCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    .line 184
    const-string v3, "Issue invoking onError on IGetCredentialCallback callback: "

    .line 186
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object v0

    .line 200
    move-object/from16 v2, v19

    .line 202
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda1;

    .line 207
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 213
    return-object v16
.end method

.method public final executePrepareGetCredential(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IPrepareGetCredentialCallback;Landroid/credentials/IGetCredentialCallback;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p4

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 8
    move-result-wide v14

    .line 9
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    .line 12
    move-result-object v17

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 20
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 22
    iget-object v2, v2, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 24
    const-string v4, "android.permission.CREDENTIAL_MANAGER_SET_ORIGIN"

    .line 26
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 41
    move-result-object v4

    .line 42
    new-instance v5, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;

    .line 44
    const/4 v6, 0x0

    .line 45
    invoke-direct {v5, v6}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 48
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 54
    iget-object v2, v2, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 56
    const-string v4, "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS"

    .line 58
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 64
    move-result v6

    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 68
    move-result v7

    .line 69
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 71
    invoke-static {v2, v1, v7}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    .line 74
    new-instance v13, Lcom/android/server/credentials/PrepareGetRequestSession;

    .line 76
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 78
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 81
    move-result-object v3

    .line 82
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 84
    iget-object v4, v2, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    .line 86
    iget-object v5, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    .line 91
    move-result-object v8

    .line 92
    invoke-static {v2, v1, v6, v8}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    .line 95
    move-result-object v10

    .line 96
    invoke-virtual {v0, v6}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    .line 99
    move-result-object v11

    .line 100
    iget-object v2, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 102
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 105
    move-result-object v2

    .line 106
    invoke-static {v2, v6}, Lcom/android/server/credentials/CredentialManagerService;->getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;

    .line 109
    move-result-object v12

    .line 110
    invoke-static/range {v17 .. v17}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    .line 113
    move-result-object v16

    .line 114
    move-object v2, v13

    .line 115
    move-object/from16 v8, p3

    .line 117
    move-object/from16 v9, p1

    .line 119
    move-object v1, v13

    .line 120
    move-object/from16 v13, v16

    .line 122
    move-object/from16 v16, p2

    .line 124
    invoke-direct/range {v2 .. v16}, Lcom/android/server/credentials/PrepareGetRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Ljava/util/Set;Landroid/os/CancellationSignal;JLandroid/credentials/IPrepareGetCredentialCallback;)V

    .line 127
    move-object/from16 v2, p1

    .line 129
    invoke-virtual {v0, v2, v1}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->prepareProviderSessions(Landroid/credentials/GetCredentialRequest;Lcom/android/server/credentials/GetRequestSession;)Ljava/util/List;

    .line 132
    move-result-object v1

    .line 133
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_2

    .line 139
    :try_start_0
    new-instance v2, Landroid/credentials/PrepareGetCredentialResponseInternal;

    .line 141
    iget-object v0, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 143
    iget-object v0, v0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 145
    const-string v3, "android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS"

    .line 147
    move-object/from16 v4, p4

    .line 149
    invoke-static {v0, v4, v3}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 152
    move-result v4

    .line 153
    const/4 v5, 0x0

    .line 154
    const/4 v6, 0x0

    .line 155
    const/4 v7, 0x0

    .line 156
    const/4 v8, 0x0

    .line 157
    move-object v3, v2

    .line 158
    invoke-direct/range {v3 .. v8}, Landroid/credentials/PrepareGetCredentialResponseInternal;-><init>(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V

    .line 161
    move-object/from16 v0, p2

    .line 163
    invoke-interface {v0, v2}, Landroid/credentials/IPrepareGetCredentialCallback;->onResponse(Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    const-string v3, "Issue invoking onError on IGetCredentialCallback callback: "

    .line 172
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object v0

    .line 186
    const-string v2, "CredentialManager"

    .line 188
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda1;

    .line 193
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 196
    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 199
    return-object v17
.end method

.method public final getCandidateCredentials(Landroid/credentials/GetCredentialRequest;Landroid/credentials/IGetCandidateCredentialsCallback;Landroid/os/IBinder;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p4

    .line 5
    const-string v2, "Credential Autofill service does not exist on this device."

    .line 7
    const-string v3, " is not the device\'s credential autofill package."

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v5, "starting getCandidateCredentials with callingPackage: "

    .line 14
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v4

    .line 24
    const-string v5, "CredentialManager"

    .line 26
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    .line 32
    move-result-object v4

    .line 33
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 36
    move-result v15

    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 40
    move-result v11

    .line 41
    :try_start_0
    iget-object v6, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 43
    iget-object v6, v6, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v6

    .line 49
    const v7, 0x1040316

    .line 52
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 55
    move-result-object v6

    .line 56
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 59
    move-result-object v6

    .line 60
    if-eqz v6, :cond_3

    .line 62
    iget-object v7, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 64
    iget-object v7, v7, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {v11}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 69
    move-result-object v8

    .line 70
    const/4 v9, 0x0

    .line 71
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 78
    move-result-object v7

    .line 79
    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 82
    move-result-object v7

    .line 83
    if-eqz v7, :cond_2

    .line 85
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 88
    move-result-object v6

    .line 89
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    move-result v6
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    if-eqz v6, :cond_1

    .line 95
    new-instance v2, Lcom/android/server/credentials/GetCandidateRequestSession;

    .line 97
    iget-object v3, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 99
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 102
    move-result-object v7

    .line 103
    iget-object v3, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 105
    iget-object v8, v3, Lcom/android/server/credentials/CredentialManagerService;->mSessionManager:Lcom/android/server/credentials/CredentialManagerService$SessionManager;

    .line 107
    iget-object v9, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    .line 112
    move-result-object v6

    .line 113
    invoke-static {v3, v1, v15, v6}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$mconstructCallingAppInfo(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;ILjava/lang/String;)Landroid/service/credentials/CallingAppInfo;

    .line 116
    move-result-object v14

    .line 117
    invoke-virtual {v0, v15}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    .line 120
    move-result-object v1

    .line 121
    invoke-static {v4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    .line 124
    move-result-object v16

    .line 125
    move-object v6, v2

    .line 126
    move v10, v15

    .line 127
    move-object/from16 v12, p2

    .line 129
    move-object/from16 v13, p1

    .line 131
    move v3, v15

    .line 132
    move-object v15, v1

    .line 133
    move-object/from16 v17, p3

    .line 135
    invoke-direct/range {v6 .. v17}, Lcom/android/server/credentials/GetCandidateRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILandroid/credentials/IGetCandidateCredentialsCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Landroid/os/CancellationSignal;Landroid/os/IBinder;)V

    .line 138
    iget-object v1, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 140
    invoke-static {v1, v3, v2}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$maddSessionLocked(Lcom/android/server/credentials/CredentialManagerService;ILcom/android/server/credentials/RequestSession;)V

    .line 143
    iget-object v0, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    .line 148
    move-result-object v1

    .line 149
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 152
    move-result-object v1

    .line 153
    new-instance v3, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;

    .line 155
    const/4 v6, 0x1

    .line 156
    invoke-direct {v3, v6}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 159
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 162
    move-result-object v1

    .line 163
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 166
    move-result-object v3

    .line 167
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Ljava/util/List;

    .line 173
    invoke-static {v0, v2, v1}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    .line 176
    move-result-object v0

    .line 177
    iget-object v1, v2, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 179
    iget-object v1, v1, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    .line 181
    iget v3, v2, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillSessionId:I

    .line 183
    iput v3, v1, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mAutofillSessionId:I

    .line 185
    iget v3, v2, Lcom/android/server/credentials/GetCandidateRequestSession;->mAutofillRequestId:I

    .line 187
    iput v3, v1, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mAutofillRequestId:I

    .line 189
    invoke-static {v2}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/RequestSession;)V

    .line 192
    move-object v1, v0

    .line 193
    check-cast v1, Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_0

    .line 201
    :try_start_1
    const-string v0, "android.credentials.GetCandidateCredentialsException.TYPE_NO_CREDENTIAL"

    .line 203
    const-string v2, "No credentials available on this device."

    .line 205
    move-object/from16 v3, p2

    .line 207
    invoke-interface {v3, v0, v2}, Landroid/credentials/IGetCandidateCredentialsCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    const-string v3, "Issue invoking onError on IGetCredentialCallback callback: "

    .line 216
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 230
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub$$ExternalSyntheticLambda1;

    .line 235
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 238
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 241
    return-object v4

    .line 242
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/SecurityException;

    .line 244
    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    move-result-object v1

    .line 248
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 251
    throw v0

    .line 252
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    .line 254
    const-string v1, "Couldn\'t determine the identity of the caller."

    .line 256
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 259
    throw v0

    .line 260
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 262
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 265
    throw v0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 266
    :catch_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 268
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 271
    throw v0
.end method

.method public final getCredentialProviderServices(II)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 3
    const-string v1, "android.permission.QUERY_ALL_PACKAGES"

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/CredentialManagerService;->hasPermission(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "android.permission.LIST_ENABLED_CREDENTIAL_PROVIDERS"

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/CredentialManagerService;->hasPermission(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 20
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    move-result v0

    .line 24
    sget-object v1, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL_PROVIDER_SERVICES:Lcom/android/server/credentials/metrics/ApiName;

    .line 26
    sget-object v2, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 28
    invoke-static {v1, v2, v0}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 31
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 33
    iget-object v0, v0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    .line 38
    move-result-object v1

    .line 39
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 41
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {p0, p1}, Lcom/android/server/credentials/CredentialManagerService;->getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;

    .line 46
    move-result-object p0

    .line 47
    invoke-static {v0, p1, p2, v1, p0}, Landroid/service/credentials/CredentialProviderInfoFactory;->getCredentialProviderServices(Landroid/content/Context;IILjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 54
    const-string p1, "Caller is missing permission: QUERY_ALL_PACKAGES or LIST_ENABLED_CREDENTIAL_PROVIDERS"

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0
.end method

.method public final getCredentialProviderServicesForTesting(I)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 3
    const-string v1, "android.permission.QUERY_ALL_PACKAGES"

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/CredentialManagerService;->hasPermission(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "android.permission.LIST_ENABLED_CREDENTIAL_PROVIDERS"

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/CredentialManagerService;->hasPermission(Ljava/lang/String;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 20
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 26
    iget-object v1, v1, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    .line 31
    move-result-object v2

    .line 32
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 34
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {p0, v0}, Lcom/android/server/credentials/CredentialManagerService;->getPrimaryProvidersForUserId(Landroid/content/Context;I)Ljava/util/Set;

    .line 39
    move-result-object p0

    .line 40
    invoke-static {v1, v0, p1, v2, p0}, Landroid/service/credentials/CredentialProviderInfoFactory;->getCredentialProviderServicesForTesting(Landroid/content/Context;IILjava/util/Set;Ljava/util/Set;)Ljava/util/List;

    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 47
    const-string p1, "Caller is missing permission: QUERY_ALL_PACKAGES or LIST_ENABLED_CREDENTIAL_PROVIDERS"

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0
.end method

.method public final getEnabledProvidersForUser(I)Ljava/util/Set;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v1

    .line 9
    const-string/jumbo v5, "getEnabledProvidersForUser"

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    move v2, p1

    .line 16
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 19
    move-result p1

    .line 20
    new-instance v0, Ljava/util/HashSet;

    .line 22
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 25
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 27
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    move-result-object p0

    .line 33
    const-string/jumbo v1, "credential_service"

    .line 36
    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 46
    const-string p1, ":"

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    array-length p1, p0

    .line 53
    const/4 v1, 0x0

    .line 54
    :goto_0
    if-ge v1, p1, :cond_1

    .line 56
    aget-object v2, p0, v1

    .line 58
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    return-object v0
.end method

.method public final isEnabledCredentialProviderService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "isEnabledCredentialProviderService with componentName: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "CredentialManager"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 28
    move-result v0

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    move-result v2

    .line 33
    iget-object v3, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 35
    invoke-static {v3, p2, v2}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    .line 38
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->getEnabledProvidersForUser(I)Ljava/util/Set;

    .line 51
    move-result-object p0

    .line 52
    sget-object p2, Lcom/android/server/credentials/metrics/ApiName;->IS_ENABLED_CREDENTIAL_PROVIDER_SERVICE:Lcom/android/server/credentials/metrics/ApiName;

    .line 54
    sget-object v0, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 56
    invoke-static {p2, v0, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 59
    check-cast p0, Ljava/util/HashSet;

    .line 61
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 64
    move-result p0

    .line 65
    return p0

    .line 66
    :cond_0
    const-string/jumbo p0, "isEnabledCredentialProviderService component name does not match requested component"

    .line 69
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object p0, Lcom/android/server/credentials/metrics/ApiName;->IS_ENABLED_CREDENTIAL_PROVIDER_SERVICE:Lcom/android/server/credentials/metrics/ApiName;

    .line 74
    sget-object p1, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 76
    invoke-static {p0, p1, v2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 79
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 81
    const-string/jumbo p1, "provided component name does not match does not match requesting component"

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p0
.end method

.method public final isServiceEnabled()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    const-string/jumbo p0, "credential_manager"

    .line 8
    const-string/jumbo v2, "enable_credential_manager"

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-static {p0, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 15
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    throw p0
.end method

.method public final prepareProviderSessions(Landroid/credentials/GetCredentialRequest;Lcom/android/server/credentials/GetRequestSession;)Ljava/util/List;
    .locals 12

    .line 1
    invoke-static {}, Lcom/android/server/credentials/CredentialManagerService;->isCredentialDescriptionApiEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, v2}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 21
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 36
    move-result-object p1

    .line 37
    new-instance v1, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;

    .line 39
    const/4 v2, 0x2

    .line 40
    invoke-direct {v1, v2}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 43
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 50
    move-result-object p1

    .line 51
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 59
    move-result v2

    .line 60
    invoke-static {v2}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 67
    move-result-object v3

    .line 68
    new-instance v4, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;

    .line 70
    const/4 v5, 0x0

    .line 71
    invoke-direct {v4, v5}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 74
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 77
    move-result-object v3

    .line 78
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 81
    move-result-object v4

    .line 82
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Ljava/util/Set;

    .line 88
    new-instance v4, Ljava/util/HashSet;

    .line 90
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 93
    iget-object v5, v2, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 95
    check-cast v5, Ljava/util/HashMap;

    .line 97
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 100
    move-result-object v5

    .line 101
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object v5

    .line 105
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_3

    .line 111
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object v6

    .line 115
    check-cast v6, Ljava/lang/String;

    .line 117
    iget-object v7, v2, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 119
    check-cast v7, Ljava/util/HashMap;

    .line 121
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    move-result-object v7

    .line 125
    check-cast v7, Ljava/util/Set;

    .line 127
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 130
    move-result-object v7

    .line 131
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    move-result v8

    .line 135
    if-eqz v8, :cond_0

    .line 137
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    move-result-object v8

    .line 141
    check-cast v8, Landroid/credentials/CredentialDescription;

    .line 143
    invoke-virtual {v8}, Landroid/credentials/CredentialDescription;->getSupportedElementKeys()Ljava/util/Set;

    .line 146
    move-result-object v9

    .line 147
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 150
    move-result-object v10

    .line 151
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    move-result v11

    .line 155
    if-eqz v11, :cond_1

    .line 157
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    move-result-object v11

    .line 161
    check-cast v11, Ljava/util/Set;

    .line 163
    invoke-interface {v9, v11}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 166
    move-result v11

    .line 167
    if-eqz v11, :cond_2

    .line 169
    new-instance v9, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;

    .line 171
    invoke-virtual {v8}, Landroid/credentials/CredentialDescription;->getSupportedElementKeys()Ljava/util/Set;

    .line 174
    move-result-object v10

    .line 175
    invoke-virtual {v8}, Landroid/credentials/CredentialDescription;->getCredentialEntries()Ljava/util/List;

    .line 178
    move-result-object v8

    .line 179
    invoke-direct {v9, v6, v10, v8}, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V

    .line 182
    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    goto :goto_0

    .line 186
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    .line 188
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 191
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 194
    move-result-object v3

    .line 195
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_6

    .line 201
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    move-result-object v4

    .line 205
    check-cast v4, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;

    .line 207
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 210
    move-result-object v5

    .line 211
    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    move-result v6

    .line 215
    if-eqz v6, :cond_4

    .line 217
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    move-result-object v6

    .line 221
    check-cast v6, Landroid/credentials/CredentialOption;

    .line 223
    new-instance v7, Ljava/util/HashSet;

    .line 225
    invoke-virtual {v6}, Landroid/credentials/CredentialOption;->getCredentialRetrievalData()Landroid/os/Bundle;

    .line 228
    move-result-object v8

    .line 229
    const-string v9, "android.credentials.GetCredentialOption.SUPPORTED_ELEMENT_KEYS"

    .line 231
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 234
    move-result-object v8

    .line 235
    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 238
    iget-object v8, v4, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;->mElementKeys:Ljava/util/Set;

    .line 240
    invoke-interface {v8, v7}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 243
    move-result v7

    .line 244
    if-eqz v7, :cond_5

    .line 246
    new-instance v7, Landroid/util/Pair;

    .line 248
    invoke-direct {v7, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    goto :goto_1

    .line 255
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    .line 257
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 263
    move-result-object v2

    .line 264
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    move-result v3

    .line 268
    if-eqz v3, :cond_7

    .line 270
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    move-result-object v3

    .line 274
    check-cast v3, Landroid/util/Pair;

    .line 276
    iget-object v5, v1, Lcom/android/server/credentials/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 278
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 281
    move-result v6

    .line 282
    iget-object v8, p2, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 284
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 286
    check-cast v4, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;

    .line 288
    iget-object v9, v4, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;->mPackageName:Ljava/lang/String;

    .line 290
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 292
    move-object v10, v3

    .line 293
    check-cast v10, Landroid/credentials/CredentialOption;

    .line 295
    new-instance v3, Lcom/android/server/credentials/ProviderRegistryGetSession;

    .line 297
    move-object v4, v3

    .line 298
    move-object v7, p2

    .line 299
    invoke-direct/range {v4 .. v10}, Lcom/android/server/credentials/ProviderRegistryGetSession;-><init>(Landroid/content/Context;ILcom/android/server/credentials/GetRequestSession;Landroid/service/credentials/CallingAppInfo;Ljava/lang/String;Landroid/credentials/CredentialOption;)V

    .line 302
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v4, v3, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 307
    iget-object v5, p2, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 309
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 312
    move-result-object v4

    .line 313
    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    .line 315
    invoke-virtual {v5, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    goto :goto_2

    .line 319
    :cond_7
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 321
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 324
    move-result-object p1

    .line 325
    new-instance v1, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;

    .line 327
    const/4 v2, 0x1

    .line 328
    invoke-direct {v1, v2}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 331
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 334
    move-result-object p1

    .line 335
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 338
    move-result-object v1

    .line 339
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 342
    move-result-object p1

    .line 343
    check-cast p1, Ljava/util/List;

    .line 345
    invoke-static {p0, p2, p1}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    .line 348
    move-result-object p0

    .line 349
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 351
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 354
    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 357
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 360
    new-instance p0, Ljava/util/ArrayList;

    .line 362
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 365
    goto :goto_3

    .line 366
    :cond_8
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 368
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    .line 371
    move-result-object p1

    .line 372
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 375
    move-result-object p1

    .line 376
    new-instance v0, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;

    .line 378
    const/4 v1, 0x1

    .line 379
    invoke-direct {v0, v1}, Lcom/android/server/credentials/CredentialManagerService$$ExternalSyntheticLambda2;-><init>(I)V

    .line 382
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 385
    move-result-object p1

    .line 386
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 389
    move-result-object v0

    .line 390
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 393
    move-result-object p1

    .line 394
    check-cast p1, Ljava/util/List;

    .line 396
    invoke-static {p0, p2, p1}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$minitiateProviderSessions(Lcom/android/server/credentials/CredentialManagerService;Lcom/android/server/credentials/RequestSession;Ljava/util/List;)Ljava/util/List;

    .line 399
    move-result-object p0

    .line 400
    :goto_3
    invoke-static {p2}, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->finalizeAndEmitInitialPhaseMetric(Lcom/android/server/credentials/RequestSession;)V

    .line 403
    return-object p0
.end method

.method public final registerCredentialDescription(Landroid/credentials/RegisterCredentialDescriptionRequest;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "registerCredentialDescription with callingPackage: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "CredentialManager"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/android/server/credentials/CredentialManagerService;->isCredentialDescriptionApiEnabled()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 27
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    move-result v0

    .line 33
    invoke-static {p0, p2, v0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    .line 36
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 39
    move-result p0

    .line 40
    invoke-static {p0}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    .line 43
    move-result-object p0

    .line 44
    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 46
    check-cast v0, Ljava/util/HashMap;

    .line 48
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 56
    new-instance v1, Ljava/util/HashSet;

    .line 58
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 61
    check-cast v0, Ljava/util/HashMap;

    .line 63
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    iget v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    .line 68
    const/16 v1, 0x80

    .line 70
    if-gt v0, v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 74
    check-cast v0, Ljava/util/HashMap;

    .line 76
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/util/Set;

    .line 82
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 85
    move-result v0

    .line 86
    const/16 v1, 0x10

    .line 88
    if-gt v0, v1, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/credentials/RegisterCredentialDescriptionRequest;->getCredentialDescriptions()Ljava/util/Set;

    .line 93
    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 96
    check-cast v0, Ljava/util/HashMap;

    .line 98
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Ljava/util/Set;

    .line 104
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 107
    move-result v0

    .line 108
    iget-object v1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 110
    check-cast v1, Ljava/util/HashMap;

    .line 112
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Ljava/util/Set;

    .line 118
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 121
    iget p1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    .line 123
    iget-object v1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 125
    check-cast v1, Ljava/util/HashMap;

    .line 127
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-result-object p2

    .line 131
    check-cast p2, Ljava/util/Set;

    .line 133
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 136
    move-result p2

    .line 137
    sub-int/2addr p2, v0

    .line 138
    add-int/2addr p2, p1

    .line 139
    iput p2, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    .line 141
    :cond_1
    return-void

    .line 142
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 144
    const-string p1, "Feature not supported"

    .line 146
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 149
    throw p0
.end method

.method public final setEnabledProviders(Ljava/util/List;Ljava/util/List;ILandroid/credentials/ISetEnabledProvidersCallback;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p4

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v3

    .line 10
    iget-object v4, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 12
    const-string v5, "android.permission.WRITE_SECURE_SETTINGS"

    .line 14
    invoke-virtual {v4, v5}, Lcom/android/server/credentials/CredentialManagerService;->hasPermission(Ljava/lang/String;)Z

    .line 17
    move-result v4

    .line 18
    const-string v5, "Issue with invoking response: "

    .line 20
    const-string v6, "CredentialManager"

    .line 22
    sget-object v7, Lcom/android/server/credentials/metrics/ApiStatus;->FAILURE:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 24
    if-nez v4, :cond_0

    .line 26
    :try_start_0
    sget-object v0, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    .line 28
    invoke-static {v0, v7, v3}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 31
    const-string/jumbo v0, "permission_denied"

    .line 34
    const-string v1, "Caller is missing WRITE_SECURE_SETTINGS permission"

    .line 36
    invoke-interface {v2, v0, v1}, Landroid/credentials/ISetEnabledProvidersCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    sget-object v1, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    .line 43
    invoke-static {v1, v7, v3}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 46
    invoke-static {v6, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 53
    move-result v8

    .line 54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 57
    move-result v9

    .line 58
    const-string/jumbo v13, "setEnabledProviders"

    .line 61
    const/4 v14, 0x0

    .line 62
    const/4 v11, 0x0

    .line 63
    const/4 v12, 0x0

    .line 64
    move/from16 v10, p3

    .line 66
    invoke-static/range {v8 .. v14}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 69
    move-result v4

    .line 70
    new-instance v8, Ljava/util/HashSet;

    .line 72
    move-object/from16 v9, p2

    .line 74
    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 77
    invoke-interface {v8, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object v9, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 82
    invoke-virtual {v9}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 85
    move-result-object v9

    .line 86
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 89
    move-result-object v9

    .line 90
    const-string/jumbo v10, "credential_service"

    .line 93
    const-string v11, ":"

    .line 95
    invoke-static {v11, v8}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 98
    move-result-object v8

    .line 99
    invoke-static {v9, v10, v8, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 102
    move-result v8

    .line 103
    iget-object v0, v0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 105
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 112
    move-result-object v0

    .line 113
    const-string/jumbo v9, "credential_service_primary"

    .line 116
    invoke-static {v11, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    invoke-static {v0, v9, v1, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 123
    move-result v0

    .line 124
    if-eqz v8, :cond_1

    .line 126
    if-nez v0, :cond_2

    .line 128
    :cond_1
    const-string v0, "Failed to store setting containing enabled or primary providers"

    .line 130
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_1
    sget-object v1, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    .line 135
    invoke-static {v1, v7, v3}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 138
    const-string/jumbo v1, "failed_setting_store"

    .line 141
    invoke-interface {v2, v1, v0}, Landroid/credentials/ISetEnabledProvidersCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 144
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    .line 146
    sget-object v1, Lcom/android/server/credentials/metrics/ApiStatus;->SUCCESS:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 148
    invoke-static {v0, v1, v3}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 151
    invoke-interface/range {p4 .. p4}, Landroid/credentials/ISetEnabledProvidersCallback;->onResponse()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 154
    goto :goto_1

    .line 155
    :catch_1
    move-exception v0

    .line 156
    sget-object v1, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    .line 158
    invoke-static {v1, v7, v3}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 161
    invoke-static {v6, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :goto_1
    return-void

    .line 165
    :catch_2
    move-exception v0

    .line 166
    sget-object v1, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    .line 168
    invoke-static {v1, v7, v3}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V

    .line 171
    const-string v1, "Issue with invoking error response: "

    .line 173
    invoke-static {v6, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    return-void
.end method

.method public final unregisterCredentialDescription(Landroid/credentials/UnregisterCredentialDescriptionRequest;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "unregisterCredentialDescription with callingPackage: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "CredentialManager"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/android/server/credentials/CredentialManagerService;->isCredentialDescriptionApiEnabled()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerService$CredentialManagerServiceStub;->this$0:Lcom/android/server/credentials/CredentialManagerService;

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    move-result v0

    .line 33
    invoke-static {p0, p2, v0}, Lcom/android/server/credentials/CredentialManagerService;->-$$Nest$menforceCallingPackage(Lcom/android/server/credentials/CredentialManagerService;Ljava/lang/String;I)V

    .line 36
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 39
    move-result p0

    .line 40
    invoke-static {p0}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    .line 43
    move-result-object p0

    .line 44
    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 46
    check-cast v0, Ljava/util/HashMap;

    .line 48
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 56
    check-cast v0, Ljava/util/HashMap;

    .line 58
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/util/Set;

    .line 64
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 67
    move-result v0

    .line 68
    iget-object v1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 70
    check-cast v1, Ljava/util/HashMap;

    .line 72
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Ljava/util/Set;

    .line 78
    invoke-virtual {p1}, Landroid/credentials/UnregisterCredentialDescriptionRequest;->getCredentialDescriptions()Ljava/util/Set;

    .line 81
    move-result-object p1

    .line 82
    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 85
    iget p1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    .line 87
    iget-object v1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 89
    check-cast v1, Ljava/util/HashMap;

    .line 91
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    move-result-object p2

    .line 95
    check-cast p2, Ljava/util/Set;

    .line 97
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 100
    move-result p2

    .line 101
    sub-int/2addr v0, p2

    .line 102
    sub-int/2addr p1, v0

    .line 103
    iput p1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mTotalDescriptionCount:I

    .line 105
    :cond_0
    return-void

    .line 106
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 108
    const-string p1, "Feature not supported"

    .line 110
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 113
    throw p0
.end method
