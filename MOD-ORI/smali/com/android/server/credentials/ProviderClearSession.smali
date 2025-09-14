.class public final Lcom/android/server/credentials/ProviderClearSession;
.super Lcom/android/server/credentials/ProviderSession;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final invokeSession()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderSession;->startCandidateMetrics()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->setCallback(Lcom/android/server/credentials/ProviderSession;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroid/service/credentials/ClearCredentialStateRequest;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->onClearCredentialState(Landroid/service/credentials/ClearCredentialStateRequest;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onProviderCancellable(Landroid/os/ICancellationSignal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderCancellationSignal:Landroid/os/ICancellationSignal;

    .line 2
    .line 3
    return-void
.end method

.method public final onProviderResponseFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/credentials/ClearCredentialStateException;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Landroid/credentials/ClearCredentialStateException;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/credentials/ClearCredentialStateException;->getType()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v1, p1}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateFrameworkException(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateExceptionStatus()V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 20
    .line 21
    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onProviderResponseSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v0, "Remote provider responded with a valid response: "

    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "CredentialManager"

    .line 20
    .line 21
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponseSet:Ljava/lang/Boolean;

    .line 27
    .line 28
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->COMPLETE:Lcom/android/server/credentials/ProviderSession$Status;

    .line 29
    .line 30
    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onProviderServiceDied(Lcom/android/server/credentials/RemoteCredentialService;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/credentials/RemoteCredentialService;->getComponentName()Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->SERVICE_DEAD:Lcom/android/server/credentials/ProviderSession$Status;

    .line 14
    .line 15
    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string p0, "CredentialManager"

    .line 22
    .line 23
    const-string p1, "Component names different in onProviderServiceDied - this should not happen"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public final onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final prepareUiData()Landroid/credentials/selection/ProviderData;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method
