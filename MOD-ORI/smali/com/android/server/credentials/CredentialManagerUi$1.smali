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

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/CredentialManagerUi$1;->this$0:Lcom/android/server/credentials/CredentialManagerUi;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->TERMINATED:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/credentials/CredentialManagerUi;->mCallbacks:Lcom/android/server/credentials/RequestSession;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz p1, :cond_7

    .line 9
    .line 10
    if-eq p1, v2, :cond_6

    .line 11
    .line 12
    sget-object v3, Lcom/android/server/credentials/CredentialManagerUi$UiStatus;->IN_PROGRESS:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    if-eq p1, v4, :cond_1

    .line 16
    .line 17
    const/4 p2, 0x3

    .line 18
    if-eq p1, p2, :cond_0

    .line 19
    .line 20
    iput-object v3, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/credentials/RequestSession;->onUiSelectorInvocationFailure()V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/android/server/credentials/RequestSession;->onUiSelectorInvocationFailure()V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_1
    iput-object v3, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 35
    .line 36
    invoke-static {p2}, Landroid/credentials/selection/UserSelectionDialogResult;->fromResultData(Landroid/os/Bundle;)Landroid/credentials/selection/UserSelectionDialogResult;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_8

    .line 41
    .line 42
    const-string p1, "RequestSessionMetric"

    .line 43
    .line 44
    iget-object p2, v1, Lcom/android/server/credentials/RequestSession;->mRequestSessionStatus:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 45
    .line 46
    sget-object v0, Lcom/android/server/credentials/RequestSession$RequestSessionStatus;->COMPLETE:Lcom/android/server/credentials/RequestSession$RequestSessionStatus;

    .line 47
    .line 48
    const-string v3, "CredentialManager"

    .line 49
    .line 50
    if-ne p2, v0, :cond_2

    .line 51
    .line 52
    const-string p0, "Request has already been completed. This is strange."

    .line 53
    .line 54
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :cond_2
    iget-object p2, v1, Lcom/android/server/credentials/RequestSession;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    sget-object p0, Lcom/android/server/credentials/metrics/ApiStatus;->CLIENT_CANCELED:Lcom/android/server/credentials/metrics/ApiStatus;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    invoke-virtual {v1, p0, v2}, Lcom/android/server/credentials/RequestSession;->finishSession(IZ)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :cond_3
    invoke-virtual {p0}, Landroid/credentials/selection/UserSelectionDialogResult;->getProviderId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    iget-object v0, v1, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 83
    .line 84
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    .line 86
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Lcom/android/server/credentials/ProviderSession;

    .line 91
    .line 92
    if-nez p2, :cond_4

    .line 93
    .line 94
    const-string/jumbo p0, "providerSession not found in onUiSelection. This is strange."

    .line 95
    .line 96
    .line 97
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :cond_4
    iget-object v0, p2, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 103
    .line 104
    iget-object v3, v0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    .line 105
    .line 106
    check-cast v3, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    iget-object v4, v0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    const/4 v5, -0x1

    .line 120
    :try_start_0
    new-instance v6, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;

    .line 121
    .line 122
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 123
    .line 124
    .line 125
    sget-object v7, Lcom/android/server/credentials/metrics/EntryEnum;->UNKNOWN:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 126
    .line 127
    invoke-virtual {v7}, Lcom/android/server/credentials/metrics/EntryEnum;->getMetricCode()I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    iput v7, v6, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mEntryEnum:I

    .line 132
    .line 133
    iput v5, v6, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mProviderUid:I

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/credentials/selection/UserSelectionDialogResult;->getEntryKey()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-static {v7}, Lcom/android/server/credentials/metrics/EntryEnum;->getMetricCodeFromString(Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    iput v7, v6, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mEntryEnum:I

    .line 144
    .line 145
    iget v4, v4, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    .line 146
    .line 147
    iput v4, v6, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mProviderUid:I

    .line 148
    .line 149
    iget-object v4, v1, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    .line 150
    .line 151
    check-cast v4, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :catch_0
    move-exception v4

    .line 158
    const-string v6, "Unexpected error collecting browsing metric: "

    .line 159
    .line 160
    invoke-static {v4, v6, p1}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :goto_0
    invoke-virtual {p0}, Landroid/credentials/selection/UserSelectionDialogResult;->getEntryKey()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {p0}, Landroid/credentials/selection/UserSelectionDialogResult;->getEntrySubkey()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    invoke-virtual {p0}, Landroid/credentials/selection/UserSelectionDialogResult;->getPendingIntentProviderResponse()Landroid/credentials/selection/ProviderPendingIntentResponse;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {p2, v4, v6, p0}, Lcom/android/server/credentials/ProviderSession;->onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    .line 176
    .line 177
    .line 178
    iget-object p0, v0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    .line 179
    .line 180
    check-cast p0, Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    sub-int p2, p0, v3

    .line 187
    .line 188
    if-ne p2, v2, :cond_8

    .line 189
    .line 190
    iget-object p2, v0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    .line 191
    .line 192
    sub-int/2addr p0, v2

    .line 193
    check-cast p2, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    check-cast p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    .line 200
    .line 201
    :try_start_1
    iget p2, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderUid:I

    .line 202
    .line 203
    if-ne p2, v5, :cond_5

    .line 204
    .line 205
    const-string p0, "An authentication entry was not clicked"

    .line 206
    .line 207
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
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

    .line 214
    .line 215
    add-int/2addr p2, v2

    .line 216
    iput p2, v1, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 217
    .line 218
    invoke-static {p0, p2}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledAuthenticationMetric(Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :goto_1
    const-string p2, "Unexpected error during auth entry metric emit: "

    .line 223
    .line 224
    invoke-static {p0, p2, p1}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_6
    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 229
    .line 230
    const/4 p0, 0x0

    .line 231
    invoke-virtual {v1, p0}, Lcom/android/server/credentials/RequestSession;->onUiCancellation(Z)V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_7
    iput-object v0, p0, Lcom/android/server/credentials/CredentialManagerUi;->mStatus:Lcom/android/server/credentials/CredentialManagerUi$UiStatus;

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Lcom/android/server/credentials/RequestSession;->onUiCancellation(Z)V

    .line 238
    .line 239
    .line 240
    :cond_8
    :goto_2
    return-void
.end method
