.class public final Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCredentialEntryTypes:Ljava/util/Set;

.field public final mExpectedRemoteEntryProviderService:Landroid/content/ComponentName;

.field public final mUiActionsEntries:Ljava/util/Map;

.field public final mUiAuthenticationEntries:Ljava/util/Map;

.field public final mUiCredentialEntries:Ljava/util/Map;

.field public mUiRemoteEntry:Landroid/util/Pair;

.field public final synthetic this$0:Lcom/android/server/credentials/ProviderGetSession;


# direct methods
.method public static -$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    .line 2
    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static -$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;Landroid/service/credentials/BeginGetCredentialResponse;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getCredentialEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getActions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getAuthenticationActions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getRemoteCredentialEntry()Landroid/service/credentials/RemoteEntry;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public constructor <init>(Lcom/android/server/credentials/ProviderGetSession;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->this$0:Lcom/android/server/credentials/ProviderGetSession;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiCredentialEntries:Ljava/util/Map;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiActionsEntries:Ljava/util/Map;

    .line 20
    new-instance p1, Ljava/util/HashMap;

    .line 22
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 27
    new-instance p1, Ljava/util/HashSet;

    .line 29
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mCredentialEntryTypes:Ljava/util/Set;

    .line 34
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiRemoteEntry:Landroid/util/Pair;

    .line 37
    iput-object p2, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mExpectedRemoteEntryProviderService:Landroid/content/ComponentName;

    .line 39
    return-void
.end method


# virtual methods
.method public final updatePreviousMostRecentAuthEntry()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda1;

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v1, v2}, Lcom/android/server/credentials/ProviderGetSession$$ExternalSyntheticLambda1;-><init>(I)V

    .line 19
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 33
    return-void

    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 48
    check-cast v2, Ljava/util/HashMap;

    .line 50
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mUiAuthenticationEntries:Ljava/util/Map;

    .line 55
    new-instance v2, Landroid/util/Pair;

    .line 57
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Landroid/util/Pair;

    .line 69
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 71
    check-cast v3, Landroid/service/credentials/Action;

    .line 73
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/util/Pair;

    .line 85
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 87
    check-cast v0, Landroid/credentials/selection/AuthenticationEntry;

    .line 89
    new-instance v10, Landroid/credentials/selection/AuthenticationEntry;

    .line 91
    invoke-virtual {v0}, Landroid/credentials/selection/AuthenticationEntry;->getSubkey()Ljava/lang/String;

    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v0}, Landroid/credentials/selection/AuthenticationEntry;->getSlice()Landroid/app/slice/Slice;

    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v0}, Landroid/credentials/selection/AuthenticationEntry;->getFrameworkExtrasIntent()Landroid/content/Intent;

    .line 102
    move-result-object v9

    .line 103
    const-string v5, "authentication_action_key"

    .line 105
    const/4 v8, 0x1

    .line 106
    move-object v4, v10

    .line 107
    invoke-direct/range {v4 .. v9}, Landroid/credentials/selection/AuthenticationEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;ILandroid/content/Intent;)V

    .line 110
    invoke-direct {v2, v3, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    check-cast p0, Ljava/util/HashMap;

    .line 115
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method
