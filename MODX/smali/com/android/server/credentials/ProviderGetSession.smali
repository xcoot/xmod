.class public final Lcom/android/server/credentials/ProviderGetSession;
.super Lcom/android/server/credentials/ProviderSession;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBeginGetOptionToCredentialOptionMap:Ljava/util/Map;

.field public final mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

.field public final mCompleteRequest:Landroid/credentials/GetCredentialRequest;

.field public final mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;ILcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginGetCredentialRequest;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Map;Ljava/lang/String;)V
    .locals 8

    .line 1
    move-object v7, p0

    .line 2
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    .line 5
    move-result-object v4

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p6

    .line 9
    move-object v3, p3

    .line 10
    move v5, p4

    .line 11
    move-object v6, p5

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/android/server/credentials/ProviderSession;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;Landroid/content/ComponentName;ILcom/android/server/credentials/RemoteCredentialService;)V

    .line 15
    move-object v0, p7

    .line 16
    iput-object v0, v7, Lcom/android/server/credentials/ProviderGetSession;->mCompleteRequest:Landroid/credentials/GetCredentialRequest;

    .line 18
    move-object/from16 v0, p8

    .line 20
    iput-object v0, v7, Lcom/android/server/credentials/ProviderGetSession;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 22
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    .line 24
    iput-object v0, v7, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    .line 28
    move-object/from16 v1, p9

    .line 30
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 33
    iput-object v0, v7, Lcom/android/server/credentials/ProviderGetSession;->mBeginGetOptionToCredentialOptionMap:Ljava/util/Map;

    .line 35
    new-instance v0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 37
    invoke-static/range {p10 .. p10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, p0, v1}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;-><init>(Lcom/android/server/credentials/ProviderGetSession;Landroid/content/ComponentName;)V

    .line 44
    iput-object v0, v7, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 46
    return-void
.end method

.method public static filterOptions(Ljava/util/List;Landroid/credentials/GetCredentialRequest;Landroid/credentials/CredentialProviderInfo;Ljava/lang/String;)Landroid/credentials/GetCredentialRequest;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Filtering request options for: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    .line 11
    move-result-object v1

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
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->hybridFilterOptFixEnabled()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 30
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 33
    move-result-object p3

    .line 34
    if-eqz p3, :cond_0

    .line 36
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result p3

    .line 44
    if-eqz p3, :cond_0

    .line 46
    const-string p0, "Skipping filtering of options for hybrid service"

    .line 48
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-object p1

    .line 52
    :cond_0
    const-string p3, "Could not parse hybrid service while filtering options"

    .line 54
    invoke-static {v1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    .line 59
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object v0

    .line 70
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_6

    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Landroid/credentials/CredentialOption;

    .line 82
    invoke-virtual {v2}, Landroid/credentials/CredentialOption;->getType()Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_2

    .line 92
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_3

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {v2}, Landroid/credentials/CredentialOption;->getAllowedProviders()Ljava/util/Set;

    .line 102
    move-result-object v3

    .line 103
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_4

    .line 109
    invoke-virtual {v2}, Landroid/credentials/CredentialOption;->getAllowedProviders()Ljava/util/Set;

    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    .line 116
    move-result-object v4

    .line 117
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_4

    .line 123
    const-string v2, "Provider allow list specified but does not contain this provider"

    .line 125
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    goto :goto_0

    .line 129
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    .line 132
    move-result v3

    .line 133
    invoke-virtual {v2}, Landroid/credentials/CredentialOption;->isSystemProviderRequired()Z

    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_5

    .line 139
    if-nez v3, :cond_5

    .line 141
    const-string v2, "System provider required, but this service is not a system provider"

    .line 143
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    goto :goto_0

    .line 147
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 149
    const-string v4, "Option of type: "

    .line 151
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2}, Landroid/credentials/CredentialOption;->getType()Ljava/lang/String;

    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v4, " meets all filteringconditions"

    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v3

    .line 170
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    goto :goto_0

    .line 177
    :cond_6
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 180
    move-result p0

    .line 181
    if-nez p0, :cond_7

    .line 183
    new-instance p0, Landroid/credentials/GetCredentialRequest$Builder;

    .line 185
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getData()Landroid/os/Bundle;

    .line 188
    move-result-object p1

    .line 189
    invoke-direct {p0, p1}, Landroid/credentials/GetCredentialRequest$Builder;-><init>(Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p0, p3}, Landroid/credentials/GetCredentialRequest$Builder;->setCredentialOptions(Ljava/util/List;)Landroid/credentials/GetCredentialRequest$Builder;

    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p0}, Landroid/credentials/GetCredentialRequest$Builder;->build()Landroid/credentials/GetCredentialRequest;

    .line 199
    move-result-object p0

    .line 200
    return-object p0

    .line 201
    :cond_7
    const-string p0, "No options filtered"

    .line 203
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 p0, 0x0

    .line 207
    return-object p0
.end method

.method public static maybeGetPendingIntentException(Landroid/credentials/selection/ProviderPendingIntentResponse;)Landroid/credentials/GetCredentialException;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultCode()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-ne v1, v2, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_1

    .line 18
    move-object p0, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const-string v1, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    .line 22
    const-class v2, Landroid/credentials/GetCredentialException;

    .line 24
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroid/credentials/GetCredentialException;

    .line 30
    :goto_0
    if-eqz p0, :cond_2

    .line 32
    return-object p0

    .line 33
    :cond_2
    return-object v0

    .line 34
    :cond_3
    invoke-virtual {p0}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultCode()I

    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_4

    .line 40
    new-instance p0, Landroid/credentials/GetCredentialException;

    .line 42
    const-string v0, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    .line 44
    invoke-direct {p0, v0}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    .line 47
    return-object p0

    .line 48
    :cond_4
    new-instance p0, Landroid/credentials/GetCredentialException;

    .line 50
    const-string v0, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    .line 52
    invoke-direct {p0, v0}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    .line 55
    return-object p0
.end method


# virtual methods
.method public final addToInitialRemoteResponse(Landroid/service/credentials/BeginGetCredentialResponse;Z)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getCredentialEntries()Ljava/util/List;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getActions()Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getAuthenticationActions()Ljava/util/List;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getRemoteCredentialEntry()Landroid/service/credentials/RemoteEntry;

    .line 19
    move-result-object p1

    .line 20
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance v3, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-direct {v3, p0, v4}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;I)V

    .line 31
    invoke-interface {v0, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 34
    new-instance v0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;

    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-direct {v0, p0, v3}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;I)V

    .line 40
    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 43
    new-instance v0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;

    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-direct {v0, p0, v1}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;I)V

    .line 49
    invoke-interface {v2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 52
    if-nez p1, :cond_1

    .line 54
    if-nez p2, :cond_4

    .line 56
    :cond_1
    iget-object p2, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mExpectedRemoteEntryProviderService:Landroid/content/ComponentName;

    .line 58
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderGetSession;

    .line 60
    invoke-virtual {v0, p2}, Lcom/android/server/credentials/ProviderSession;->enforceRemoteEntryRestrictions(Landroid/content/ComponentName;)Z

    .line 63
    move-result p2

    .line 64
    if-nez p2, :cond_2

    .line 66
    const-string p0, "CredentialManager"

    .line 68
    const-string p1, "Remote entry being dropped as it does not meet the restriction checks."

    .line 70
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    if-nez p1, :cond_3

    .line 76
    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    .line 83
    move-result-object p2

    .line 84
    new-instance v1, Landroid/credentials/selection/Entry;

    .line 86
    invoke-virtual {p1}, Landroid/service/credentials/RemoteEntry;->getSlice()Landroid/app/slice/Slice;

    .line 89
    move-result-object v2

    .line 90
    new-instance v3, Landroid/content/Intent;

    .line 92
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 95
    new-instance v4, Landroid/service/credentials/GetCredentialRequest;

    .line 97
    iget-object v5, v0, Lcom/android/server/credentials/ProviderGetSession;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 99
    iget-object v0, v0, Lcom/android/server/credentials/ProviderGetSession;->mCompleteRequest:Landroid/credentials/GetCredentialRequest;

    .line 101
    invoke-virtual {v0}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    .line 104
    move-result-object v0

    .line 105
    invoke-direct {v4, v5, v0}, Landroid/service/credentials/GetCredentialRequest;-><init>(Landroid/service/credentials/CallingAppInfo;Ljava/util/List;)V

    .line 108
    const-string v0, "android.service.credentials.extra.GET_CREDENTIAL_REQUEST"

    .line 110
    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    move-result-object v0

    .line 114
    const-string/jumbo v3, "remote_entry_key"

    .line 117
    invoke-direct {v1, v3, p2, v2, v0}, Landroid/credentials/selection/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V

    .line 120
    new-instance v0, Landroid/util/Pair;

    .line 122
    new-instance v2, Landroid/util/Pair;

    .line 124
    invoke-direct {v2, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    invoke-direct {v0, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    iput-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    .line 132
    :cond_4
    :goto_0
    return-void
.end method

.method public final invokeCallbackOnInternalInvalidState$1()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    .line 4
    const-string v1, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    .line 6
    invoke-interface {p0, v1, v0}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method

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
    check-cast p0, Landroid/service/credentials/BeginGetCredentialRequest;

    .line 15
    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->onBeginGetCredential(Landroid/service/credentials/BeginGetCredentialRequest;)V

    .line 18
    :cond_0
    return-void
.end method

.method public final onCredentialEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState$1()V

    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/android/server/credentials/ProviderGetSession;->maybeGetPendingIntentException(Landroid/credentials/selection/ProviderPendingIntentResponse;)Landroid/credentials/GetCredentialException;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v1, p0, p1}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_2

    .line 33
    const/4 p1, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const-string v0, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    .line 37
    const-class v2, Landroid/credentials/GetCredentialResponse;

    .line 39
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/credentials/GetCredentialResponse;

    .line 45
    :goto_0
    if-eqz p1, :cond_3

    .line 47
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 49
    invoke-interface {v1, p0, p1}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Object;)V

    .line 52
    return-void

    .line 53
    :cond_3
    const-string p1, "CredentialManager"

    .line 55
    const-string v0, "Pending intent response contains no credential, or error for a credential entry"

    .line 57
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState$1()V

    .line 63
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
    instance-of v0, p1, Landroid/credentials/GetCredentialException;

    .line 3
    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Landroid/credentials/GetCredentialException;

    .line 9
    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

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
    .locals 5

    .line 1
    check-cast p1, Landroid/service/credentials/BeginGetCredentialResponse;

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
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderGetSession;->addToInitialRemoteResponse(Landroid/service/credentials/BeginGetCredentialResponse;Z)V

    .line 30
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 32
    invoke-static {v0, p1}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->-$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;Landroid/service/credentials/BeginGetCredentialResponse;)Z

    .line 35
    move-result v0

    .line 36
    sget-object v1, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 40
    iget-object v4, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 42
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v4, p1, v3, v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    .line 47
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->EMPTY_RESPONSE:Lcom/android/server/credentials/ProviderSession$Status;

    .line 49
    invoke-virtual {p0, p1, v1}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v4, p1, v3, v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    .line 56
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 58
    invoke-virtual {p0, p1, v1}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    .line 61
    :goto_0
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
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v3, "onUiEntrySelected with entryType: "

    .line 8
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v3, ", and entryKey: "

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    const-string v3, "CredentialManager"

    .line 28
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    const/4 v2, 0x0

    .line 35
    iget-object v4, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 37
    const/4 v5, -0x1

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 41
    move-result v6

    .line 42
    sparse-switch v6, :sswitch_data_0

    .line 45
    goto :goto_0

    .line 46
    :sswitch_0
    const-string v6, "action_key"

    .line 48
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v5, 0x3

    .line 56
    goto :goto_0

    .line 57
    :sswitch_1
    const-string/jumbo v6, "credential_key"

    .line 60
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v5, 0x2

    .line 68
    goto :goto_0

    .line 69
    :sswitch_2
    const-string v6, "authentication_action_key"

    .line 71
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_2

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    move v5, v0

    .line 79
    goto :goto_0

    .line 80
    :sswitch_3
    const-string/jumbo v6, "remote_entry_key"

    .line 83
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_3

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    move v5, v1

    .line 91
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 94
    const-string p1, "Unsupported entry type selected"

    .line 96
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState$1()V

    .line 102
    goto/16 :goto_9

    .line 104
    :pswitch_0
    iget-object p1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    .line 106
    check-cast p1, Ljava/util/HashMap;

    .line 108
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 112
    if-nez p1, :cond_4

    .line 114
    goto :goto_1

    .line 115
    :cond_4
    iget-object p1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    .line 117
    check-cast p1, Ljava/util/HashMap;

    .line 119
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Landroid/util/Pair;

    .line 125
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 127
    move-object v2, p1

    .line 128
    check-cast v2, Landroid/service/credentials/Action;

    .line 130
    :goto_1
    if-nez v2, :cond_5

    .line 132
    const-string p1, "Unexpected action entry key"

    .line 134
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState$1()V

    .line 140
    return-void

    .line 141
    :cond_5
    const-string/jumbo p1, "onActionEntrySelected"

    .line 144
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderGetSession;->onCredentialEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    .line 150
    goto/16 :goto_9

    .line 152
    :pswitch_1
    iget-object p1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    .line 154
    check-cast p1, Ljava/util/HashMap;

    .line 156
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    move-result-object p1

    .line 160
    if-nez p1, :cond_6

    .line 162
    goto :goto_2

    .line 163
    :cond_6
    iget-object p1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    .line 165
    check-cast p1, Ljava/util/HashMap;

    .line 167
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Landroid/util/Pair;

    .line 173
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 175
    move-object v2, p1

    .line 176
    check-cast v2, Landroid/service/credentials/CredentialEntry;

    .line 178
    :goto_2
    if-nez v2, :cond_7

    .line 180
    const-string p1, "Unexpected credential entry key"

    .line 182
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState$1()V

    .line 188
    return-void

    .line 189
    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderGetSession;->onCredentialEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    .line 192
    goto/16 :goto_9

    .line 194
    :pswitch_2
    iget-object p1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 196
    check-cast p1, Ljava/util/HashMap;

    .line 198
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    move-result-object p1

    .line 202
    if-nez p1, :cond_8

    .line 204
    move-object p1, v2

    .line 205
    goto :goto_3

    .line 206
    :cond_8
    iget-object p1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 208
    check-cast p1, Ljava/util/HashMap;

    .line 210
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-result-object p1

    .line 214
    check-cast p1, Landroid/util/Pair;

    .line 216
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 218
    check-cast p1, Landroid/service/credentials/Action;

    .line 220
    :goto_3
    new-instance v5, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    .line 222
    iget-object v6, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 224
    iget-object v7, v6, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 226
    iget v7, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mSessionIdProvider:I

    .line 228
    invoke-direct {v5, v7}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;-><init>(I)V

    .line 231
    iget-object v7, v6, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    .line 233
    check-cast v7, Ljava/util/ArrayList;

    .line 235
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    if-nez p1, :cond_9

    .line 240
    const-string p1, "Unexpected authenticationEntry key"

    .line 242
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState$1()V

    .line 248
    return-void

    .line 249
    :cond_9
    sget-object p1, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    .line 251
    if-nez p3, :cond_a

    .line 253
    goto :goto_7

    .line 254
    :cond_a
    invoke-static {p3}, Lcom/android/server/credentials/ProviderGetSession;->maybeGetPendingIntentException(Landroid/credentials/selection/ProviderPendingIntentResponse;)Landroid/credentials/GetCredentialException;

    .line 257
    move-result-object v5

    .line 258
    if-eqz v5, :cond_b

    .line 260
    :try_start_0
    iget-object p3, v6, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    .line 262
    move-object v1, p3

    .line 263
    check-cast v1, Ljava/util/ArrayList;

    .line 265
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 268
    move-result v1

    .line 269
    sub-int/2addr v1, v0

    .line 270
    check-cast p3, Ljava/util/ArrayList;

    .line 272
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    move-result-object p3

    .line 276
    check-cast p3, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    .line 278
    iput-boolean v0, p3, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mHasException:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    goto :goto_4

    .line 281
    :catch_0
    move-exception p3

    .line 282
    const-string v0, "Error while setting authentication metric exception "

    .line 284
    const-string v1, "ProviderSessionMetric"

    .line 286
    invoke-static {p3, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_4
    invoke-virtual {v5}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    .line 292
    move-result-object p3

    .line 293
    invoke-virtual {v5}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    .line 296
    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    .line 299
    invoke-interface {v1, p3, v0}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    goto :goto_6

    .line 303
    :cond_b
    invoke-virtual {p3}, Landroid/credentials/selection/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    .line 306
    move-result-object p3

    .line 307
    if-nez p3, :cond_c

    .line 309
    move-object p3, v2

    .line 310
    goto :goto_5

    .line 311
    :cond_c
    const-string v5, "android.service.credentials.extra.BEGIN_GET_CREDENTIAL_RESPONSE"

    .line 313
    const-class v7, Landroid/service/credentials/BeginGetCredentialResponse;

    .line 315
    invoke-virtual {p3, v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 318
    move-result-object p3

    .line 319
    check-cast p3, Landroid/service/credentials/BeginGetCredentialResponse;

    .line 321
    :goto_5
    invoke-virtual {v6, p3, v0, v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    .line 324
    if-eqz p3, :cond_d

    .line 326
    invoke-static {v4, p3}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->-$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;Landroid/service/credentials/BeginGetCredentialResponse;)Z

    .line 329
    move-result v0

    .line 330
    if-nez v0, :cond_d

    .line 332
    invoke-virtual {p0, p3, v1}, Lcom/android/server/credentials/ProviderGetSession;->addToInitialRemoteResponse(Landroid/service/credentials/BeginGetCredentialResponse;Z)V

    .line 335
    :goto_6
    const-string p3, "Additional content received - removing authentication entry"

    .line 337
    invoke-static {v3, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object p3, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 342
    check-cast p3, Ljava/util/HashMap;

    .line 344
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-static {v4}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->-$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)Z

    .line 350
    move-result p2

    .line 351
    if-nez p2, :cond_11

    .line 353
    sget-object p2, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 355
    invoke-virtual {p0, p2, p1}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    .line 358
    goto/16 :goto_9

    .line 360
    :cond_d
    :goto_7
    const-string p3, "Additional content not received from authentication entry"

    .line 362
    invoke-static {v3, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-nez p2, :cond_e

    .line 367
    invoke-virtual {v4}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->updatePreviousMostRecentAuthEntry()V

    .line 370
    goto :goto_8

    .line 371
    :cond_e
    invoke-virtual {v4}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->updatePreviousMostRecentAuthEntry()V

    .line 374
    iget-object p3, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 376
    check-cast p3, Ljava/util/HashMap;

    .line 378
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    move-result-object p3

    .line 382
    check-cast p3, Landroid/util/Pair;

    .line 384
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 386
    check-cast p3, Landroid/credentials/selection/AuthenticationEntry;

    .line 388
    iget-object v0, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 390
    check-cast v0, Ljava/util/HashMap;

    .line 392
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    move-result-object v0

    .line 396
    check-cast v0, Landroid/util/Pair;

    .line 398
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 400
    check-cast v0, Landroid/service/credentials/Action;

    .line 402
    iget-object v1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 404
    new-instance v2, Landroid/util/Pair;

    .line 406
    new-instance v9, Landroid/credentials/selection/AuthenticationEntry;

    .line 408
    invoke-virtual {p3}, Landroid/credentials/selection/AuthenticationEntry;->getSubkey()Ljava/lang/String;

    .line 411
    move-result-object v5

    .line 412
    invoke-virtual {p3}, Landroid/credentials/selection/AuthenticationEntry;->getSlice()Landroid/app/slice/Slice;

    .line 415
    move-result-object v6

    .line 416
    invoke-virtual {p3}, Landroid/credentials/selection/AuthenticationEntry;->getFrameworkExtrasIntent()Landroid/content/Intent;

    .line 419
    move-result-object v8

    .line 420
    const-string v4, "authentication_action_key"

    .line 422
    const/4 v7, 0x2

    .line 423
    move-object v3, v9

    .line 424
    invoke-direct/range {v3 .. v8}, Landroid/credentials/selection/AuthenticationEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;ILandroid/content/Intent;)V

    .line 427
    invoke-direct {v2, v0, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 430
    check-cast v1, Ljava/util/HashMap;

    .line 432
    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :goto_8
    sget-object p2, Lcom/android/server/credentials/ProviderSession$Status;->NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

    .line 437
    invoke-virtual {p0, p2, p1}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    .line 440
    goto :goto_9

    .line 441
    :pswitch_3
    iget-object p1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    .line 443
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 445
    check-cast p1, Ljava/lang/String;

    .line 447
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 450
    move-result p1

    .line 451
    if-eqz p1, :cond_f

    .line 453
    iget-object p1, v4, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    .line 455
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 457
    if-eqz p1, :cond_f

    .line 459
    check-cast p1, Landroid/util/Pair;

    .line 461
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 463
    move-object v2, p1

    .line 464
    check-cast v2, Landroid/service/credentials/RemoteEntry;

    .line 466
    :cond_f
    if-eqz v2, :cond_10

    .line 468
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderGetSession;->onCredentialEntrySelected(Landroid/credentials/selection/ProviderPendingIntentResponse;)V

    .line 471
    goto :goto_9

    .line 472
    :cond_10
    const-string p1, "Unexpected remote entry key"

    .line 474
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderGetSession;->invokeCallbackOnInternalInvalidState$1()V

    .line 480
    :cond_11
    :goto_9
    return-void

    .line 481
    :sswitch_data_0
    .sparse-switch
        0x42312059 -> :sswitch_3
        0x4680f8fd -> :sswitch_2
        0x4806b277 -> :sswitch_1
        0x6e6640d6 -> :sswitch_0
    .end sparse-switch

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    goto/16 :goto_4

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    .line 39
    if-eqz v0, :cond_6

    .line 41
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    .line 43
    invoke-static {p0}, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->-$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)Z

    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_6

    .line 49
    new-instance v0, Landroid/credentials/selection/GetCredentialProviderData$Builder;

    .line 51
    iget-object v2, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderGetSession;

    .line 53
    iget-object v2, v2, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 55
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    invoke-direct {v0, v2}, Landroid/credentials/selection/GetCredentialProviderData$Builder;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    .line 64
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v3, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    .line 69
    check-cast v3, Ljava/util/HashMap;

    .line 71
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 74
    move-result-object v3

    .line 75
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v3

    .line 79
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_1

    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Ljava/lang/String;

    .line 91
    iget-object v5, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    .line 93
    check-cast v5, Ljava/util/HashMap;

    .line 95
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Landroid/util/Pair;

    .line 101
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 103
    check-cast v4, Landroid/credentials/selection/Entry;

    .line 105
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0, v2}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->setActionChips(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;

    .line 112
    move-result-object v0

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    .line 115
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    iget-object v3, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    .line 120
    check-cast v3, Ljava/util/HashMap;

    .line 122
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 125
    move-result-object v3

    .line 126
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 129
    move-result-object v3

    .line 130
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_2

    .line 136
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    move-result-object v4

    .line 140
    check-cast v4, Ljava/lang/String;

    .line 142
    iget-object v5, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    .line 144
    check-cast v5, Ljava/util/HashMap;

    .line 146
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Landroid/util/Pair;

    .line 152
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 154
    check-cast v4, Landroid/credentials/selection/Entry;

    .line 156
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {v0, v2}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->setCredentialEntries(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;

    .line 163
    move-result-object v0

    .line 164
    new-instance v2, Ljava/util/ArrayList;

    .line 166
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    iget-object v3, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 171
    check-cast v3, Ljava/util/HashMap;

    .line 173
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 176
    move-result-object v3

    .line 177
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 180
    move-result-object v3

    .line 181
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_3

    .line 187
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    move-result-object v4

    .line 191
    check-cast v4, Ljava/lang/String;

    .line 193
    iget-object v5, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 195
    check-cast v5, Ljava/util/HashMap;

    .line 197
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    move-result-object v4

    .line 201
    check-cast v4, Landroid/util/Pair;

    .line 203
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 205
    check-cast v4, Landroid/credentials/selection/AuthenticationEntry;

    .line 207
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    goto :goto_2

    .line 211
    :cond_3
    invoke-virtual {v0, v2}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->setAuthenticationEntries(Ljava/util/List;)Landroid/credentials/selection/GetCredentialProviderData$Builder;

    .line 214
    move-result-object v0

    .line 215
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    .line 217
    if-eqz p0, :cond_5

    .line 219
    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 221
    if-eqz v2, :cond_5

    .line 223
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 225
    if-nez p0, :cond_4

    .line 227
    goto :goto_3

    .line 228
    :cond_4
    check-cast p0, Landroid/util/Pair;

    .line 230
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 232
    move-object v1, p0

    .line 233
    check-cast v1, Landroid/credentials/selection/Entry;

    .line 235
    :cond_5
    :goto_3
    invoke-virtual {v0, v1}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->setRemoteEntry(Landroid/credentials/selection/Entry;)Landroid/credentials/selection/GetCredentialProviderData$Builder;

    .line 238
    move-result-object p0

    .line 239
    invoke-virtual {p0}, Landroid/credentials/selection/GetCredentialProviderData$Builder;->build()Landroid/credentials/selection/GetCredentialProviderData;

    .line 242
    move-result-object v1

    .line 243
    :cond_6
    :goto_4
    return-object v1
.end method
