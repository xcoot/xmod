.class public final synthetic Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/credentials/GetRequestSession;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/credentials/GetRequestSession;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/GetRequestSession;

    .line 6
    iput-object p2, p0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    .line 8
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/credentials/GetRequestSession;

    .line 3
    iget-object p0, p0, Lcom/android/server/credentials/GetRequestSession$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    .line 5
    iget-object v1, v0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    .line 7
    iget-object v2, v0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 9
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v3, v0, Lcom/android/server/credentials/GetRequestSession;->mPrimaryProviders:Ljava/util/Set;

    .line 16
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v3

    .line 20
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Landroid/content/ComponentName;

    .line 32
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v3, v0, Lcom/android/server/credentials/RequestSession;->mPendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    if-eqz v3, :cond_1

    .line 44
    :try_start_1
    invoke-virtual {v3}, Landroid/app/PendingIntent;->cancel()V

    .line 47
    const/4 v3, 0x0

    .line 48
    iput-object v3, v0, Lcom/android/server/credentials/RequestSession;->mPendingIntent:Landroid/app/PendingIntent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception v3

    .line 52
    :try_start_2
    const-string v4, "CredentialManager"

    .line 54
    const-string v5, "Unable to cancel existing pending intent"

    .line 56
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :cond_1
    :goto_1
    iget-object v3, v0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    .line 61
    iget-object v4, v0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    .line 63
    check-cast v4, Landroid/credentials/GetCredentialRequest;

    .line 65
    iget-object v5, v0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 67
    invoke-virtual {v5}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    .line 70
    move-result-object v5

    .line 71
    iget-object v6, v0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    .line 73
    iget-object v8, v0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 75
    invoke-virtual {v8}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    .line 78
    move-result-object v8

    .line 79
    const-string v9, "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS"

    .line 81
    invoke-static {v6, v8, v9}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    move-result v6

    .line 85
    const/4 v8, 0x0

    .line 86
    invoke-static/range {v3 .. v8}, Landroid/credentials/selection/RequestInfo;->newGetRequestInfo(Landroid/os/IBinder;Landroid/credentials/GetCredentialRequest;Ljava/lang/String;ZLjava/util/List;Z)Landroid/credentials/selection/RequestInfo;

    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v1, v3, p0, v2}, Lcom/android/server/credentials/CredentialManagerUi;->createPendingIntent(Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Lcom/android/server/credentials/metrics/RequestSessionMetric;)Landroid/app/PendingIntent;

    .line 93
    move-result-object p0

    .line 94
    iput-object p0, v0, Lcom/android/server/credentials/RequestSession;->mPendingIntent:Landroid/app/PendingIntent;

    .line 96
    iget-object v3, v0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    .line 98
    check-cast v3, Landroid/credentials/IGetCredentialCallback;

    .line 100
    invoke-interface {v3, p0}, Landroid/credentials/IGetCredentialCallback;->onPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 103
    goto :goto_3

    .line 104
    :catch_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    :try_start_3
    iget-object p0, v2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 109
    const/4 v3, 0x0

    .line 110
    iput-boolean v3, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiReturned:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 112
    goto :goto_2

    .line 113
    :catch_2
    move-exception p0

    .line 114
    const-string v3, "Unexpected error collecting ui end time metric: "

    .line 116
    const-string v4, "RequestSessionMetric"

    .line 118
    invoke-static {p0, v3, v4}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_2
    sget-object p0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 123
    iput-object p0, v1, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 125
    const-string p0, "android.credentials.GetCredentialException.TYPE_UNKNOWN"

    .line 127
    invoke-virtual {v2, p0}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 130
    const-string v1, "Unable to instantiate selector"

    .line 132
    invoke-virtual {v0, p0, v1}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_3
    return-void
.end method
