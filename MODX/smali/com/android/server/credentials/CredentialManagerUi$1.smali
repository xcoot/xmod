.class public final Lcom/android/server/credentials/CredentialManagerUi$1;
.super Landroid/os/ResultReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/credentials/CredentialManagerUi;


# direct methods
.method public constructor <init>(Lcom/android/server/credentials/CredentialManagerUi;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/credentials/CredentialManagerUi$1;->this$0:Lcom/android/server/credentials/CredentialManagerUi;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerUi$1;->this$0:Lcom/android/server/credentials/CredentialManagerUi;

    .line 3
    sget-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 5
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/RequestSession;

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz p1, :cond_7

    .line 10
    if-eq p1, v2, :cond_6

    .line 12
    sget-object v3, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 14
    const/4 v4, 0x2

    .line 15
    if-eq p1, v4, :cond_1

    .line 17
    const/4 p2, 0x3

    .line 18
    if-eq p1, p2, :cond_0

    .line 20
    iput-object v3, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 22
    invoke-virtual {v1}, Lcom/android/server/credentials/RequestSession;->onUiSelectorInvocationFailure()V

    .line 25
    goto/16 :goto_2

    .line 27
    :cond_0
    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 29
    invoke-virtual {v1}, Lcom/android/server/credentials/RequestSession;->onUiSelectorInvocationFailure()V

    .line 32
    goto/16 :goto_2

    .line 34
    :cond_1
    iput-object v3, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 36
    invoke-static {p2}, Landroid/credentials/selection/UserSelectionDialogResult;->fromResultData(Landroid/os/Bundle;)Landroid/credentials/selection/UserSelectionDialogResult;

    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_8

    .line 42
    const-string p1, "RequestSessionMetric"

    .line 44
    iget-object p2, v1, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 46
    sget-object v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 48
    const-string v3, "CredentialManager"

    .line 50
    if-ne p2, v0, :cond_2

    .line 52
    const-string p0, "Request has already been completed. This is strange."

    .line 54
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    goto/16 :goto_2

    .line 59
    :cond_2
    iget-object p2, v1, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 61
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_3

    .line 67
    sget-object p0, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 69
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    .line 72
    move-result p0

    .line 73
    invoke-virtual {v1, p0, v2}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    .line 76
    goto/16 :goto_2

    .line 78
    :cond_3
    invoke-virtual {p0}, Landroid/credentials/selection/UserSelectionDialogResult;->getProviderId()Ljava/lang/String;

    .line 81
    move-result-object p2

    .line 82
    iget-object v0, v1, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 84
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Lcom/android/server/credentials/ProviderSession;

    .line 92
    if-nez p2, :cond_4

    .line 94
    const-string/jumbo p0, "providerSession not found in onUiSelection. This is strange."

    .line 97
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    goto/16 :goto_2

    .line 102
    :cond_4
    iget-object v0, p2, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 104
    iget-object v3, v0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    .line 106
    check-cast v3, Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 111
    move-result v3

    .line 112
    iget-object v4, v0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 114
    iget-object v1, v1, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    const/4 v5, -0x1

    .line 120
    :try_start_0
    new-instance v6, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;

    .line 122
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 125
    sget-object v7, Lcom/android/server/credentials/metrics/EntryEnum;->UNKNOWN:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 127
    invoke-virtual {v7}, Lcom/android/server/credentials/metrics/EntryEnum;->getMetricCode()I

    .line 130
    move-result v7

    .line 131
    iput v7, v6, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mEntryEnum:I

    .line 133
    iput v5, v6, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mProviderUid:I

    .line 135
    invoke-virtual {p0}, Landroid/credentials/selection/UserSelectionDialogResult;->getEntryKey()Ljava/lang/String;

    .line 138
    move-result-object v7

    .line 139
    invoke-static {v7}, Lcom/android/server/credentials/metrics/EntryEnum;->getMetricCodeFromString(Ljava/lang/String;)I

    .line 142
    move-result v7

    .line 143
    iput v7, v6, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mEntryEnum:I

    .line 145
    iget v4, v4, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    .line 147
    iput v4, v6, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mProviderUid:I

    .line 149
    iget-object v4, v1, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    .line 151
    check-cast v4, Ljava/util/ArrayList;

    .line 153
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 157
    :catch_0
    move-exception v4

    .line 158
    const-string v6, "Unexpected error collecting browsing metric: "

    .line 160
    invoke-static {v4, v6, p1}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_0
    invoke-virtual {p0}, Landroid/credentials/selection/UserSelectionDialogResult;->getEntryKey()Ljava/lang/String;

    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {p0}, Landroid/credentials/selection/UserSelectionDialogResult;->getEntrySubkey()Ljava/lang/String;

    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {p0}, Landroid/credentials/selection/UserSelectionDialogResult;->getPendingIntentProviderResponse()Landroid/credentials/selection/ProviderPendingIntentResponse;

    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {p2, v4, v6, p0}, Lcom/android/server/credentials/ProviderSession;->onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    .line 178
    iget-object p0, v0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    .line 180
    check-cast p0, Ljava/util/ArrayList;

    .line 182
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 185
    move-result p0

    .line 186
    sub-int p2, p0, v3

    .line 188
    if-ne p2, v2, :cond_8

    .line 190
    iget-object p2, v0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    .line 192
    sub-int/2addr p0, v2

    .line 193
    check-cast p2, Ljava/util/ArrayList;

    .line 195
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 198
    move-result-object p0

    .line 199
    check-cast p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    .line 201
    :try_start_1
    iget p2, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderUid:I

    .line 203
    if-ne p2, v5, :cond_5

    .line 205
    const-string p0, "An authentication entry was not clicked"

    .line 207
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    goto :goto_2

    .line 211
    :catch_1
    move-exception p0

    .line 212
    goto :goto_1

    .line 213
    :cond_5
    iget p2, v1, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 215
    add-int/2addr p2, v2

    .line 216
    iput p2, v1, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 218
    invoke-static {p0, p2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledAuthenticationMetric(Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    goto :goto_2

    .line 222
    :goto_1
    const-string p2, "Unexpected error during auth entry metric emit: "

    .line 224
    invoke-static {p0, p2, p1}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    goto :goto_2

    .line 228
    :cond_6
    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 230
    const/4 p0, 0x0

    .line 231
    invoke-virtual {v1, p0}, Lcom/android/server/credentials/RequestSession;->onUiCancellation(Z)V

    .line 234
    goto :goto_2

    .line 235
    :cond_7
    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 237
    invoke-virtual {v1, v2}, Lcom/android/server/credentials/RequestSession;->onUiCancellation(Z)V

    .line 240
    :cond_8
    :goto_2
    return-void
.end method
