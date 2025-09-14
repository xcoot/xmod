.class public final Lcom/android/server/credentials/metrics/ProviderSessionMetric;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBrowsedAuthenticationMetric:Ljava/util/List;

.field public final mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 17
    .line 18
    new-instance p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final beginCreateCredentialResponseCollectionCandidateEntryMetrics(Landroid/service/credentials/BeginCreateCredentialResponse;Lcom/android/server/credentials/metrics/InitialPhaseMetric;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getCreateEntries()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getRemoteCreateEntry()Landroid/service/credentials/RemoteEntry;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    move p1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    sget-object v3, Lcom/android/server/credentials/metrics/EntryEnum;->REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/android/server/credentials/metrics/EntryEnum;->CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 34
    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    new-array v1, v2, [Ljava/lang/String;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestStrings()[Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_1
    array-length v3, v1

    .line 57
    if-lez v3, :cond_2

    .line 58
    .line 59
    aget-object v1, v1, v2

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestCounts()[I

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    aget p2, p2, v2

    .line 66
    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_2
    new-instance p2, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 75
    .line 76
    invoke-direct {p2, p1, v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 80
    .line 81
    iput-object p2, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 82
    .line 83
    return-void
.end method

.method public final beginGetCredentialResponseCollectionCandidateEntryMetrics(Landroid/service/credentials/BeginGetCredentialResponse;Z)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getCredentialEntries()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getActions()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getAuthenticationActions()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getRemoteCredentialEntry()Landroid/service/credentials/RemoteEntry;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/4 v6, 0x1

    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v5, v6

    .line 45
    :goto_0
    sget-object v7, Lcom/android/server/credentials/metrics/EntryEnum;->REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 46
    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    sget-object v5, Lcom/android/server/credentials/metrics/EntryEnum;->CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 55
    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    sget-object v2, Lcom/android/server/credentials/metrics/EntryEnum;->ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 64
    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    sget-object v2, Lcom/android/server/credentials/metrics/EntryEnum;->AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 73
    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/service/credentials/BeginGetCredentialResponse;->getCredentialEntries()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance v2, Lcom/android/server/credentials/metrics/ProviderSessionMetric$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    const/4 v3, 0x1

    .line 88
    invoke-direct {v2, v3, v1}, Lcom/android/server/credentials/metrics/ProviderSessionMetric$$ExternalSyntheticLambda0;-><init>(ILjava/util/Map;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 92
    .line 93
    .line 94
    new-instance p1, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 95
    .line 96
    invoke-direct {p1, v1, v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 97
    .line 98
    .line 99
    if-nez p2, :cond_1

    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    .line 107
    .line 108
    check-cast p0, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    sub-int/2addr p2, v6

    .line 115
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    .line 120
    .line 121
    iput-object p1, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 122
    .line 123
    :goto_1
    return-void
.end method

.method public final collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V
    .locals 2

    .line 1
    const-string v0, "ProviderSessionMetric"

    .line 2
    .line 3
    :try_start_0
    instance-of v1, p1, Landroid/service/credentials/BeginGetCredentialResponse;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast p1, Landroid/service/credentials/BeginGetCredentialResponse;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->beginGetCredentialResponseCollectionCandidateEntryMetrics(Landroid/service/credentials/BeginGetCredentialResponse;Z)V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :catch_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of p2, p1, Landroid/service/credentials/BeginCreateCredentialResponse;

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    check-cast p1, Landroid/service/credentials/BeginCreateCredentialResponse;

    .line 20
    .line 21
    invoke-virtual {p0, p1, p3}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->beginCreateCredentialResponseCollectionCandidateEntryMetrics(Landroid/service/credentials/BeginCreateCredentialResponse;Lcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const-string p0, "Your response type is unsupported for candidate metric logging"

    .line 26
    .line 27
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :goto_0
    const-string p1, "Unexpected error during candidate entry metric logging: "

    .line 32
    .line 33
    invoke-static {p0, p1, v0}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_1
    return-void
.end method

.method public final collectCandidateExceptionStatus()V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mHasException:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "Error while setting candidate metric exception "

    .line 9
    .line 10
    const-string v1, "ProviderSessionMetric"

    .line 11
    .line 12
    invoke-static {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final collectCandidateFrameworkException(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mFrameworkException:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const-string p1, "Unexpected error during candidate exception metric logging: "

    .line 8
    .line 9
    const-string v0, "ProviderSessionMetric"

    .line 10
    .line 11
    invoke-static {p0, p1, v0}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
