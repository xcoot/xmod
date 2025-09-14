.class public final Lcom/android/server/credentials/ProviderRegistryGetSession;
.super Lcom/android/server/credentials/ProviderSession;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final CREDENTIAL_ENTRY_KEY:Ljava/lang/String; = "credential_key"


# instance fields
.field public final mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

.field public final mCredentialDescriptionRegistry:Lcom/android/server/credentials/CredentialDescriptionRegistry;

.field mCredentialEntries:Ljava/util/List;

.field public final mCredentialProviderPackageName:Ljava/lang/String;

.field public final mElementKeys:Ljava/util/Set;

.field public final mUiCredentialEntries:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/credentials/GetRequestSession;Landroid/service/credentials/CallingAppInfo;Ljava/lang/String;Landroid/credentials/CredentialOption;)V
    .locals 7

    .line 1
    new-instance v4, Landroid/content/ComponentName;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-direct {v4, p5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move-object v2, p6

    .line 18
    move-object v3, p3

    .line 19
    move v5, p2

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/android/server/credentials/ProviderSession;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;Landroid/content/ComponentName;ILcom/android/server/credentials/RemoteCredentialService;)V

    .line 23
    new-instance p1, Ljava/util/HashMap;

    .line 25
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mUiCredentialEntries:Ljava/util/Map;

    .line 30
    invoke-static {p2}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialDescriptionRegistry:Lcom/android/server/credentials/CredentialDescriptionRegistry;

    .line 36
    iput-object p4, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 38
    iput-object p5, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialProviderPackageName:Ljava/lang/String;

    .line 40
    new-instance p1, Ljava/util/HashSet;

    .line 42
    invoke-virtual {p6}, Landroid/credentials/CredentialOption;->getCredentialRetrievalData()Landroid/os/Bundle;

    .line 45
    move-result-object p2

    .line 46
    const-string p3, "android.credentials.GetCredentialOption.SUPPORTED_ELEMENT_KEYS"

    .line 48
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 55
    iput-object p1, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mElementKeys:Ljava/util/Set;

    .line 57
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    .line 59
    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    .line 61
    return-void
.end method


# virtual methods
.method public final invokeSession()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderSession;->startCandidateMetrics()V

    .line 4
    iget-object v0, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mElementKeys:Ljava/util/Set;

    .line 6
    iget-object v1, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialDescriptionRegistry:Lcom/android/server/credentials/CredentialDescriptionRegistry;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v2, Ljava/util/HashSet;

    .line 13
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 16
    iget-object v3, v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 18
    check-cast v3, Ljava/util/HashMap;

    .line 20
    iget-object v4, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialProviderPackageName:Ljava/lang/String;

    .line 22
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v1, v1, Lcom/android/server/credentials/CredentialDescriptionRegistry;->mCredentialDescriptions:Ljava/util/Map;

    .line 31
    check-cast v1, Ljava/util/HashMap;

    .line 33
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/Set;

    .line 39
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v1

    .line 43
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Landroid/credentials/CredentialDescription;

    .line 55
    invoke-virtual {v3}, Landroid/credentials/CredentialDescription;->getSupportedElementKeys()Ljava/util/Set;

    .line 58
    move-result-object v5

    .line 59
    invoke-interface {v5, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_1

    .line 65
    new-instance v5, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;

    .line 67
    invoke-virtual {v3}, Landroid/credentials/CredentialDescription;->getSupportedElementKeys()Ljava/util/Set;

    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v3}, Landroid/credentials/CredentialDescription;->getCredentialEntries()Ljava/util/List;

    .line 74
    move-result-object v3

    .line 75
    invoke-direct {v5, v4, v6, v3}, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V

    .line 78
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    .line 84
    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Lcom/android/server/credentials/ProviderRegistryGetSession$$ExternalSyntheticLambda0;

    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-direct {v1, v2}, Lcom/android/server/credentials/ProviderRegistryGetSession$$ExternalSyntheticLambda0;-><init>(I)V

    .line 94
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 97
    move-result-object v0

    .line 98
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 101
    move-result-object v1

    .line 102
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Ljava/util/List;

    .line 108
    iput-object v0, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialEntries:Ljava/util/List;

    .line 110
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 112
    sget-object v1, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REGISTRY:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialEntries:Ljava/util/List;

    .line 119
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 127
    move-result v1

    .line 128
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 130
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 133
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 135
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 138
    sget-object v4, Lcom/android/server/credentials/metrics/EntryEnum;->REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 140
    const/4 v5, 0x0

    .line 141
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    move-result-object v5

    .line 145
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v4, Lcom/android/server/credentials/metrics/EntryEnum;->CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v1

    .line 154
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 159
    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 164
    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v1, Lcom/android/server/credentials/metrics/ProviderSessionMetric$$ExternalSyntheticLambda0;

    .line 169
    const/4 v4, 0x0

    .line 170
    invoke-direct {v1, v4, v3}, Lcom/android/server/credentials/metrics/ProviderSessionMetric$$ExternalSyntheticLambda0;-><init>(ILjava/util/Map;)V

    .line 173
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 176
    new-instance v0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 178
    invoke-direct {v0, v3, v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 181
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 183
    iput-object v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 185
    return-void
.end method

.method public final onProviderCancellable(Landroid/os/ICancellationSignal;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onProviderResponseFailure(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final bridge synthetic onProviderResponseSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Set;

    .line 3
    return-void
.end method

.method public final onProviderServiceDied(Lcom/android/server/credentials/RemoteCredentialService;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string v0, "CredentialManager"

    .line 6
    const-string/jumbo v1, "credential_key"

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 15
    const-string p0, "Unsupported entry type selected"

    .line 17
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    goto/16 :goto_3

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mUiCredentialEntries:Ljava/util/Map;

    .line 24
    check-cast p1, Ljava/util/HashMap;

    .line 26
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/service/credentials/CredentialEntry;

    .line 32
    if-nez p1, :cond_1

    .line 34
    const-string p0, "Unexpected credential entry key"

    .line 36
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 40
    :cond_1
    if-eqz p3, :cond_8

    .line 42
    invoke-virtual {p3}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultCode()I

    .line 45
    move-result p1

    .line 46
    const/4 p2, -0x1

    .line 47
    const/4 v1, 0x0

    .line 48
    if-ne p1, p2, :cond_4

    .line 50
    invoke-virtual {p3}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_2

    .line 56
    move-object p1, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const-string p2, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    .line 60
    const-class v2, Landroid/credentials/GetCredentialException;

    .line 62
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/credentials/GetCredentialException;

    .line 68
    :goto_0
    if-eqz p1, :cond_3

    .line 70
    const-string p2, "Pending intent contains provider exception"

    .line 72
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move-object p1, v1

    .line 77
    goto :goto_1

    .line 78
    :cond_4
    invoke-virtual {p3}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultCode()I

    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_5

    .line 84
    new-instance p1, Landroid/credentials/GetCredentialException;

    .line 86
    const-string p2, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    .line 88
    invoke-direct {p1, p2}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    new-instance p1, Landroid/credentials/GetCredentialException;

    .line 94
    const-string p2, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    .line 96
    invoke-direct {p1, p2}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    .line 99
    :goto_1
    iget-object p2, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    .line 101
    if-eqz p1, :cond_6

    .line 103
    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p2, p0, p1}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    goto :goto_3

    .line 115
    :cond_6
    invoke-virtual {p3}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    .line 118
    move-result-object p1

    .line 119
    if-nez p1, :cond_7

    .line 121
    goto :goto_2

    .line 122
    :cond_7
    const-string p3, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    .line 124
    const-class v1, Landroid/credentials/GetCredentialResponse;

    .line 126
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 129
    move-result-object p1

    .line 130
    move-object v1, p1

    .line 131
    check-cast v1, Landroid/credentials/GetCredentialResponse;

    .line 133
    :goto_2
    if-eqz v1, :cond_8

    .line 135
    if-eqz p2, :cond_9

    .line 137
    check-cast p2, Lcom/android/server/credentials/GetRequestSession;

    .line 139
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 141
    invoke-virtual {p2, p0, v1}, Lcom/android/server/credentials/GetRequestSession;->onFinalResponseReceived(Landroid/content/ComponentName;Landroid/credentials/GetCredentialResponse;)V

    .line 144
    goto :goto_3

    .line 145
    :cond_8
    const-string p0, "CredentialEntry does not have a credential or a pending intent result"

    .line 147
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_9
    :goto_3
    return-void
.end method

.method public final prepareUiData()Landroid/credentials/selection/ProviderData;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    .line 3
    invoke-static {v0}, Lcom/android/server/credentials/ProviderSession;->isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "CredentialManager"

    .line 10
    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v3, "No date for UI coming from: "

    .line 16
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 21
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-object v1

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    .line 38
    if-nez v0, :cond_1

    .line 40
    const-string/jumbo p0, "response is null when preparing ui data. This is strange."

    .line 43
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-object v1

    .line 47
    :cond_1
    new-instance v0, Landroid/credentials/selection/GetCredentialProviderData$Builder;

    .line 49
    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 51
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Landroid/credentials/selection/GetCredentialProviderData$Builder;-><init>(Ljava/lang/String;)V

    .line 58
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 60
    invoke-virtual {v0, v1}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->setActionChips(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, v1}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->setAuthenticationEntries(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;

    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    .line 70
    check-cast v1, Ljava/util/Set;

    .line 72
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 75
    move-result-object v1

    .line 76
    new-instance v2, Lcom/android/server/credentials/ProviderRegistryGetSession$$ExternalSyntheticLambda0;

    .line 78
    const/4 v3, 0x1

    .line 79
    invoke-direct {v2, v3}, Lcom/android/server/credentials/ProviderRegistryGetSession$$ExternalSyntheticLambda0;-><init>(I)V

    .line 82
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 85
    move-result-object v1

    .line 86
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Ljava/util/List;

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    .line 98
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object v1

    .line 105
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_2

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Landroid/service/credentials/CredentialEntry;

    .line 117
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    .line 120
    move-result-object v4

    .line 121
    iget-object v5, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mUiCredentialEntries:Ljava/util/Map;

    .line 123
    check-cast v5, Ljava/util/HashMap;

    .line 125
    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v5, Landroid/credentials/selection/Entry;

    .line 130
    invoke-virtual {v3}, Landroid/service/credentials/CredentialEntry;->getSlice()Landroid/app/slice/Slice;

    .line 133
    move-result-object v3

    .line 134
    new-instance v6, Landroid/content/Intent;

    .line 136
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 139
    new-instance v7, Landroid/service/credentials/GetCredentialRequest;

    .line 141
    iget-object v8, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 143
    iget-object v9, p0, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    .line 145
    check-cast v9, Landroid/credentials/CredentialOption;

    .line 147
    invoke-static {v9}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 150
    move-result-object v9

    .line 151
    invoke-direct {v7, v8, v9}, Landroid/service/credentials/GetCredentialRequest;-><init>(Landroid/service/credentials/CallingAppInfo;Ljava/util/List;)V

    .line 154
    const-string v8, "android.service.credentials.extra.GET_CREDENTIAL_REQUEST"

    .line 156
    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    const-string/jumbo v7, "credential_key"

    .line 162
    invoke-direct {v5, v7, v4, v3, v6}, Landroid/credentials/selection/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V

    .line 165
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {v0, v2}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->setCredentialEntries(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;

    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->build()Landroid/credentials/selection/GetCredentialProviderData;

    .line 176
    move-result-object p0

    .line 177
    return-object p0
.end method
