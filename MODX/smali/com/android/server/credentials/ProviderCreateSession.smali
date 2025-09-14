.class public final Lcom/android/server/credentials/ProviderCreateSession;
.super Lcom/android/server/credentials/ProviderSession;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCompleteRequest:Landroid/service/credentials/CreateCredentialRequest;

.field public final mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;ILcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialRequest;Landroid/service/credentials/CreateCredentialRequest;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    .line 4
    move-result-object v4

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p6

    .line 8
    move-object v3, p3

    .line 9
    move v5, p4

    .line 10
    move-object v6, p5

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/android/server/credentials/ProviderSession;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;Landroid/content/ComponentName;ILcom/android/server/credentials/RemoteCredentialService;)V

    .line 14
    iput-object p7, p0, Lcom/android/server/credentials/ProviderCreateSession;->mCompleteRequest:Landroid/service/credentials/CreateCredentialRequest;

    .line 16
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    .line 18
    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    .line 20
    new-instance p1, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    .line 22
    invoke-static {p8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p1, p0, p2}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;-><init>(Lcom/android/server/credentials/ProviderCreateSession;Landroid/content/ComponentName;)V

    .line 29
    iput-object p1, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    .line 31
    return-void
.end method


# virtual methods
.method public final invokeSession()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderSession;->startCandidateMetrics()V

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->setCallback(Lcom/android/server/credentials/ProviderSession;)V

    .line 11
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    .line 13
    check-cast p0, Landroid/service/credentials/BeginCreateCredentialRequest;

    .line 15
    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->onBeginCreateCredential(Landroid/service/credentials/BeginCreateCredentialRequest;)V

    .line 18
    :cond_0
    return-void
.end method

.method public final onCreateEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "CredentialManager"

    .line 4
    const-string v2, "android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS"

    .line 6
    if-nez p1, :cond_0

    .line 8
    const-string/jumbo v3, "pendingIntentResponse is null"

    .line 11
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v3, Landroid/credentials/CreateCredentialException;

    .line 16
    invoke-direct {v3, v2}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;)V

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultCode()I

    .line 23
    move-result v3

    .line 24
    const/4 v4, -0x1

    .line 25
    if-ne v3, v4, :cond_3

    .line 27
    invoke-virtual {p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    .line 30
    move-result-object v2

    .line 31
    if-nez v2, :cond_1

    .line 33
    move-object v3, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v3, "android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION"

    .line 37
    const-class v4, Landroid/credentials/CreateCredentialException;

    .line 39
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroid/credentials/CreateCredentialException;

    .line 45
    move-object v3, v2

    .line 46
    :goto_0
    if-eqz v3, :cond_2

    .line 48
    const-string v2, "Pending intent contains provider exception"

    .line 50
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move-object v3, v0

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-virtual {p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultCode()I

    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_4

    .line 62
    new-instance v3, Landroid/credentials/CreateCredentialException;

    .line 64
    const-string v2, "android.credentials.CreateCredentialException.TYPE_USER_CANCELED"

    .line 66
    invoke-direct {v3, v2}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;)V

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    new-instance v3, Landroid/credentials/CreateCredentialException;

    .line 72
    invoke-direct {v3, v2}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;)V

    .line 75
    :goto_1
    iget-object v2, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    .line 77
    if-eqz v3, :cond_5

    .line 79
    invoke-virtual {v3}, Landroid/credentials/CreateCredentialException;->getType()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v3}, Landroid/credentials/CreateCredentialException;->getMessage()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    invoke-interface {v2, p0, p1}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void

    .line 91
    :cond_5
    invoke-virtual {p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    .line 94
    move-result-object p1

    .line 95
    if-nez p1, :cond_6

    .line 97
    move-object p1, v0

    .line 98
    goto :goto_2

    .line 99
    :cond_6
    const-string v3, "android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE"

    .line 101
    const-class v4, Landroid/credentials/CreateCredentialResponse;

    .line 103
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroid/credentials/CreateCredentialResponse;

    .line 109
    :goto_2
    if-eqz p1, :cond_7

    .line 111
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 113
    invoke-interface {v2, p0, p1}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Object;)V

    .line 116
    goto :goto_3

    .line 117
    :cond_7
    const-string/jumbo p0, "onSaveEntrySelected - no response or error found in pending intent response"

    .line 120
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string p0, "android.credentials.CreateCredentialException.TYPE_UNKNOWN"

    .line 125
    invoke-interface {v2, p0, v0}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_3
    return-void
.end method

.method public final onProviderCancellable(Landroid/os/ICancellationSignal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderCancellationSignal:Landroid/os/ICancellationSignal;

    .line 3
    return-void
.end method

.method public final onProviderResponseFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/credentials/CreateCredentialException;

    .line 3
    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Landroid/credentials/CreateCredentialException;

    .line 9
    invoke-virtual {p1}, Landroid/credentials/CreateCredentialException;->getType()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v1, p1}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateFrameworkException(Ljava/lang/String;)V

    .line 16
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateExceptionStatus()V

    .line 19
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 21
    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    .line 26
    return-void
.end method

.method public final onProviderResponseSuccess(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Landroid/service/credentials/BeginCreateCredentialResponse;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    const-string v1, "Remote provider responded with a valid response: "

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "CredentialManager"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    .line 26
    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getCreateEntries()Ljava/util/List;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getRemoteCreateEntry()Landroid/service/credentials/RemoteEntry;

    .line 33
    move-result-object v2

    .line 34
    iget-object v3, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    new-instance v4, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler$$ExternalSyntheticLambda0;

    .line 41
    invoke-direct {v4, v3}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;)V

    .line 44
    invoke-interface {v0, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 47
    if-eqz v2, :cond_1

    .line 49
    iget-object v0, v3, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mExpectedRemoteEntryProviderService:Landroid/content/ComponentName;

    .line 51
    iget-object v4, v3, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderCreateSession;

    .line 53
    invoke-virtual {v4, v0}, Lcom/android/server/credentials/ProviderSession;->enforceRemoteEntryRestrictions(Landroid/content/ComponentName;)Z

    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 59
    const-string v0, "Remote entry being dropped as it does not meet the restrictionchecks."

    .line 61
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    new-instance v1, Landroid/credentials/selection/Entry;

    .line 71
    invoke-virtual {v2}, Landroid/service/credentials/RemoteEntry;->getSlice()Landroid/app/slice/Slice;

    .line 74
    move-result-object v5

    .line 75
    new-instance v6, Landroid/content/Intent;

    .line 77
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 80
    const-string v7, "android.service.credentials.extra.CREATE_CREDENTIAL_REQUEST"

    .line 82
    iget-object v4, v4, Lcom/android/server/credentials/ProviderCreateSession;->mCompleteRequest:Landroid/service/credentials/CreateCredentialRequest;

    .line 84
    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    const-string/jumbo v4, "remote_entry_key"

    .line 90
    invoke-direct {v1, v4, v0, v5, v6}, Landroid/credentials/selection/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V

    .line 93
    new-instance v4, Landroid/util/Pair;

    .line 95
    new-instance v5, Landroid/util/Pair;

    .line 97
    invoke-direct {v5, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    invoke-direct {v4, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    iput-object v4, v3, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    .line 105
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getCreateEntries()Ljava/util/List;

    .line 108
    move-result-object v0

    .line 109
    sget-object v1, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    .line 111
    iget-object v2, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    .line 113
    const/4 v3, 0x0

    .line 114
    iget-object v4, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 116
    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getCreateEntries()Ljava/util/List;

    .line 121
    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_3

    .line 128
    :cond_2
    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getRemoteCreateEntry()Landroid/service/credentials/RemoteEntry;

    .line 131
    move-result-object v0

    .line 132
    if-nez v0, :cond_3

    .line 134
    check-cast v2, Lcom/android/server/credentials/RequestSession;

    .line 136
    iget-object v0, v2, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 138
    iget-object v0, v0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    .line 140
    invoke-virtual {v4, p1, v3, v0}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    .line 143
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->EMPTY_RESPONSE:Lcom/android/server/credentials/ProviderSession$Status;

    .line 145
    invoke-virtual {p0, p1, v1}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    check-cast v2, Lcom/android/server/credentials/RequestSession;

    .line 151
    iget-object v0, v2, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 153
    iget-object v0, v0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    .line 155
    invoke-virtual {v4, p1, v3, v0}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    .line 158
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->SAVE_ENTRIES_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 160
    invoke-virtual {p0, p1, v1}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    .line 163
    :goto_1
    return-void
.end method

.method public final onProviderServiceDied(Lcom/android/server/credentials/RemoteCredentialService;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/credentials/RemoteCredentialService;->getComponentName()Landroid/content/ComponentName;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->SERVICE_DEAD:Lcom/android/server/credentials/ProviderSession$Status;

    .line 15
    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "CredentialManager"

    .line 23
    const-string p1, "Component names different in onProviderServiceDied - this should not happen"

    .line 25
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :goto_0
    return-void
.end method

.method public final onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "android.credentials.CreateCredentialException.TYPE_UNKNOWN"

    .line 6
    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    .line 8
    const/4 v2, 0x0

    .line 9
    iget-object v3, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    .line 11
    const-string v4, "CredentialManager"

    .line 13
    const-string/jumbo v5, "save_entry_key"

    .line 16
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v5

    .line 20
    if-nez v5, :cond_4

    .line 22
    const-string/jumbo v5, "remote_entry_key"

    .line 25
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 31
    const-string p0, "Unsupported entry type selected"

    .line 33
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-interface {v1, v0, v2}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    goto :goto_3

    .line 40
    :cond_0
    iget-object p1, v3, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    .line 42
    if-eqz p1, :cond_2

    .line 44
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 46
    if-eqz p1, :cond_2

    .line 48
    check-cast p1, Ljava/lang/String;

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_2

    .line 56
    iget-object p1, v3, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    .line 58
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 60
    if-nez p1, :cond_1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    check-cast p1, Landroid/util/Pair;

    .line 65
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 67
    check-cast p1, Landroid/service/credentials/RemoteEntry;

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    :goto_0
    move-object p1, v2

    .line 71
    :goto_1
    if-nez p1, :cond_3

    .line 73
    const-string p0, "Unexpected remote entry key"

    .line 75
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-interface {v1, v0, v2}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void

    .line 82
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderCreateSession;->onCreateEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    .line 85
    goto :goto_3

    .line 86
    :cond_4
    iget-object p1, v3, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    .line 88
    check-cast p1, Ljava/util/HashMap;

    .line 90
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 94
    if-nez p1, :cond_5

    .line 96
    move-object p1, v2

    .line 97
    goto :goto_2

    .line 98
    :cond_5
    iget-object p1, v3, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    .line 100
    check-cast p1, Ljava/util/HashMap;

    .line 102
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Landroid/util/Pair;

    .line 108
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 110
    check-cast p1, Landroid/service/credentials/CreateEntry;

    .line 112
    :goto_2
    if-nez p1, :cond_6

    .line 114
    const-string p0, "Unexpected save entry key"

    .line 116
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-interface {v1, v0, v2}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void

    .line 123
    :cond_6
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderCreateSession;->onCreateEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    .line 126
    :goto_3
    return-void
.end method

.method public final prepareUiData()Landroid/credentials/selection/ProviderData;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    .line 3
    invoke-static {v0}, Lcom/android/server/credentials/ProviderSession;->isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "No data for UI from: "

    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 19
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    const-string v0, "CredentialManager"

    .line 32
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    goto/16 :goto_2

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    .line 39
    if-eqz v0, :cond_5

    .line 41
    iget-object p0, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    .line 43
    iget-object v0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    .line 45
    check-cast v0, Ljava/util/HashMap;

    .line 47
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    .line 55
    if-nez v0, :cond_1

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    new-instance v0, Landroid/credentials/selection/CreateCredentialProviderData$Builder;

    .line 60
    iget-object v2, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderCreateSession;

    .line 62
    iget-object v2, v2, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 64
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-direct {v0, v2}, Landroid/credentials/selection/CreateCredentialProviderData$Builder;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    .line 73
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v3, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    .line 78
    check-cast v3, Ljava/util/HashMap;

    .line 80
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 83
    move-result-object v3

    .line 84
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    move-result-object v3

    .line 88
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_2

    .line 94
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Ljava/lang/String;

    .line 100
    iget-object v5, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiCreateEntries:Ljava/util/Map;

    .line 102
    check-cast v5, Ljava/util/HashMap;

    .line 104
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Landroid/util/Pair;

    .line 110
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 112
    check-cast v4, Landroid/credentials/selection/Entry;

    .line 114
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v0, v2}, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->setSaveEntries(Ljava/util/List;)Landroid/credentials/selection/CreateCredentialProviderData$Builder;

    .line 121
    move-result-object v0

    .line 122
    iget-object p0, p0, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    .line 124
    if-eqz p0, :cond_4

    .line 126
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 128
    if-eqz v2, :cond_4

    .line 130
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 132
    if-nez p0, :cond_3

    .line 134
    goto :goto_1

    .line 135
    :cond_3
    check-cast p0, Landroid/util/Pair;

    .line 137
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 139
    move-object v1, p0

    .line 140
    check-cast v1, Landroid/credentials/selection/Entry;

    .line 142
    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->setRemoteEntry(Landroid/credentials/selection/Entry;)Landroid/credentials/selection/CreateCredentialProviderData$Builder;

    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p0}, Landroid/credentials/selection/CreateCredentialProviderData$Builder;->build()Landroid/credentials/selection/CreateCredentialProviderData;

    .line 149
    move-result-object v1

    .line 150
    :cond_5
    :goto_2
    return-object v1
.end method
