.class public final Lcom/android/server/credentials/ClearRequestSession;
.super Lcom/android/server/credentials/RequestSession;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;


# virtual methods
.method public final initiateProviderSession(Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderSession;
    .locals 9

    .line 1
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/credentials/ClearCredentialStateRequest;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 8
    .line 9
    new-instance v3, Landroid/service/credentials/ClearCredentialStateRequest;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/credentials/ClearCredentialStateRequest;->getData()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {v3, v2, v0}, Landroid/service/credentials/ClearCredentialStateRequest;-><init>(Landroid/service/credentials/CallingAppInfo;Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    new-instance v7, Lcom/android/server/credentials/ProviderClearSession;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    iget v5, p0, Lcom/android/server/credentials/RequestSession;->mUserId:I

    .line 25
    .line 26
    move-object v0, v7

    .line 27
    move-object v2, v3

    .line 28
    move-object v3, p0

    .line 29
    move-object v4, v8

    .line 30
    move-object v6, p2

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/android/server/credentials/ProviderSession;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;Landroid/content/ComponentName;ILcom/android/server/credentials/RemoteCredentialService;)V

    .line 32
    .line 33
    .line 34
    sget-object p2, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    .line 35
    .line 36
    iput-object p2, v7, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    .line 37
    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v0, "Provider session created and being added for: "

    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string p2, "CredentialManager"

    .line 57
    .line 58
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 62
    .line 63
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    .line 69
    invoke-virtual {p0, p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    return-object v7
.end method

.method public final invokeClientCallbackError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/credentials/IClearCredentialStateCallback;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Landroid/credentials/IClearCredentialStateCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final invokeClientCallbackSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/credentials/RequestSession;->mClientCallback:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/credentials/IClearCredentialStateCallback;

    .line 6
    .line 7
    invoke-interface {p0}, Landroid/credentials/IClearCredentialStateCallback;->onSuccess()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final launchUiWithProviderData(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/Void;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p2, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 8
    .line 9
    invoke-virtual {p2, v0, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectUiResponseData(J)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v2, v0

    .line 19
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/credentials/ProviderSession;

    .line 26
    .line 27
    invoke-virtual {p2, v0, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->updateMetricsOnResponseReceived(Ljava/util/Map;Landroid/content/ComponentName;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/RequestSession;->respondToClientWithResponseAndFinish(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Provider changed with status: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", and source: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    const-string v0, "CredentialManager"

    .line 24
    .line 25
    invoke-static {v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    sget-object p3, Lcom/android/server/credentials/ProviderSession$Status;->CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 29
    .line 30
    if-eq p1, p3, :cond_1

    .line 31
    .line 32
    sget-object p3, Lcom/android/server/credentials/ProviderSession$Status;->SERVICE_DEAD:Lcom/android/server/credentials/ProviderSession$Status;

    .line 33
    .line 34
    if-ne p1, p3, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p3, 0x0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    const/4 p3, 0x1

    .line 40
    :goto_1
    iget-object v1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz p3, :cond_5

    .line 44
    .line 45
    const-string p1, "Provider terminating status"

    .line 46
    .line 47
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isAnyProviderPending()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_7

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 57
    .line 58
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Lcom/android/server/credentials/ProviderSession;

    .line 79
    .line 80
    iget-object p3, p2, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    .line 81
    .line 82
    if-nez p3, :cond_3

    .line 83
    .line 84
    iget-object p2, p2, Lcom/android/server/credentials/ProviderSession;->mProviderResponseSet:Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_2

    .line 91
    .line 92
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/credentials/RequestSession;->respondToClientWithResponseAndFinish(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_4
    const-string p1, "android.credentials.ClearCredentialStateException.TYPE_UNKNOWN"

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectFrameworkException(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string p2, "All providers failed"

    .line 102
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/RequestSession;->respondToClientWithErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    sget-object p3, Lcom/android/server/credentials/ProviderSession$Status;->COMPLETE:Lcom/android/server/credentials/ProviderSession$Status;

    .line 108
    .line 109
    if-eq p1, p3, :cond_6

    .line 110
    .line 111
    sget-object p3, Lcom/android/server/credentials/ProviderSession$Status;->EMPTY_RESPONSE:Lcom/android/server/credentials/ProviderSession$Status;

    .line 112
    .line 113
    if-ne p1, p3, :cond_7

    .line 114
    .line 115
    :cond_6
    const-string p1, "Provider has completion status"

    .line 116
    .line 117
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/android/server/credentials/RequestSession;->isAnyProviderPending()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_7

    .line 125
    .line 126
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 127
    .line 128
    .line 129
    move-result-wide v3

    .line 130
    invoke-virtual {v1, v3, v4}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectUiResponseData(J)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 134
    .line 135
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    move-object v0, p1

    .line 140
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 141
    .line 142
    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    check-cast p3, Lcom/android/server/credentials/ProviderSession;

    .line 147
    .line 148
    invoke-virtual {v1, p1, p2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->updateMetricsOnResponseReceived(Ljava/util/Map;Landroid/content/ComponentName;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v2}, Lcom/android/server/credentials/RequestSession;->respondToClientWithResponseAndFinish(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    :cond_7
    :goto_2
    return-void
.end method

.method public final onUiCancellation(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUiSelectorInvocationFailure()V
    .locals 0

    .line 1
    return-void
.end method
