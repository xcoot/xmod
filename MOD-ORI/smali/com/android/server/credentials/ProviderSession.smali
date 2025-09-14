.class public abstract Lcom/android/server/credentials/ProviderSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;


# instance fields
.field public final mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mProviderCancellationSignal:Landroid/os/ICancellationSignal;

.field public final mProviderRequest:Ljava/lang/Object;

.field public mProviderResponse:Ljava/lang/Object;

.field public mProviderResponseSet:Ljava/lang/Boolean;

.field public final mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

.field public final mProviderSessionUid:I

.field public final mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

.field public mStatus:Lcom/android/server/credentials/ProviderSession$Status;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;Landroid/content/ComponentName;ILcom/android/server/credentials/RemoteCredentialService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->NOT_STARTED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    .line 7
    .line 8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponseSet:Ljava/lang/Boolean;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 19
    .line 20
    iput-object p6, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    .line 21
    .line 22
    if-nez p4, :cond_0

    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p1, p2, p5}, Lcom/android/server/credentials/MetricUtilities;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    :goto_0
    iput p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionUid:I

    .line 35
    .line 36
    new-instance p1, Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 37
    .line 38
    check-cast p3, Lcom/android/server/credentials/RequestSession;

    .line 39
    .line 40
    iget-object p2, p3, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 41
    .line 42
    iget p2, p2, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSessionIdTrackTwo:I

    .line 43
    .line 44
    invoke-direct {p1, p2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 48
    .line 49
    return-void
.end method

.method public static generateUniqueId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->SAVE_ENTRIES_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

    .line 10
    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
.end method


# virtual methods
.method public final enforceRemoteEntryRestrictions(Landroid/content/ComponentName;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-string v0, "CredentialManager"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p0, "Remote entry being dropped as it is not from the service configured by the OEM."

    .line 13
    .line 14
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v2, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-wide/32 v3, 0x100000

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/credentials/ProviderSession;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    const-string v3, "android.permission.PROVIDE_REMOTE_CREDENTIALS"

    .line 46
    .line 47
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 48
    .line 49
    const/4 v4, -0x1

    .line 50
    invoke-virtual {v2, v3, v4, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 51
    .line 52
    .line 53
    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    if-nez p0, :cond_1

    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    return v1

    .line 61
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "Error getting info for "

    .line 64
    .line 65
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .line 83
    .line 84
    return v1
.end method

.method public abstract invokeSession()V
.end method

.method public abstract onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/ProviderPendingIntentResponse;)V
.end method

.method public abstract prepareUiData()Landroid/credentials/selection/ProviderData;
.end method

.method public final startCandidateMetrics()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/credentials/RequestSession;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 15
    .line 16
    iget-wide v0, v0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCredentialServiceStartedTimeNanoseconds:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mServiceBeganTimeNanoseconds:J

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mStartQueryTimeNanoseconds:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    const-string v0, "Unexpected error during candidate setup metric logging: "

    .line 29
    .line 30
    const-string v1, "ProviderSessionMetric"

    .line 31
    .line 32
    invoke-static {p0, v0, v1}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
    .locals 10

    .line 1
    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->SERVICE_DEAD:Lcom/android/server/credentials/ProviderSession$Status;

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v0, v2

    .line 17
    :goto_1
    if-nez v0, :cond_3

    .line 18
    .line 19
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    .line 20
    .line 21
    if-ne p1, v0, :cond_2

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move v0, v1

    .line 25
    goto :goto_3

    .line 26
    :cond_3
    :goto_2
    move v0, v2

    .line 27
    :goto_3
    sget-object v3, Lcom/android/server/credentials/ProviderSession$Status;->COMPLETE:Lcom/android/server/credentials/ProviderSession$Status;

    .line 28
    .line 29
    if-eq p1, v3, :cond_6

    .line 30
    .line 31
    sget-object v3, Lcom/android/server/credentials/ProviderSession$Status;->EMPTY_RESPONSE:Lcom/android/server/credentials/ProviderSession$Status;

    .line 32
    .line 33
    if-ne p1, v3, :cond_4

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_4
    invoke-static {p1}, Lcom/android/server/credentials/ProviderSession;->isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_5

    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_5
    move v3, v1

    .line 44
    goto :goto_5

    .line 45
    :cond_6
    :goto_4
    move v3, v2

    .line 46
    :goto_5
    sget-object v4, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    .line 47
    .line 48
    if-ne p2, v4, :cond_7

    .line 49
    .line 50
    move v4, v2

    .line 51
    goto :goto_6

    .line 52
    :cond_7
    move v4, v1

    .line 53
    :goto_6
    iget-object v5, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 54
    .line 55
    iget-object v6, v5, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 56
    .line 57
    sget-object v7, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->QUERY_SUCCESS:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 58
    .line 59
    sget-object v8, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->QUERY_FAILURE:Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;

    .line 60
    .line 61
    iget v9, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionUid:I

    .line 62
    .line 63
    if-eqz v4, :cond_9

    .line 64
    .line 65
    :try_start_0
    iget-object v4, v5, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    .line 66
    .line 67
    move-object v5, v4

    .line 68
    check-cast v5, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    sub-int/2addr v5, v2

    .line 75
    check-cast v4, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    .line 82
    .line 83
    iput v9, v4, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderUid:I

    .line 84
    .line 85
    if-eqz v0, :cond_8

    .line 86
    .line 87
    iput-boolean v1, v4, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthReturned:Z

    .line 88
    .line 89
    invoke-virtual {v8}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iput v0, v4, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderStatus:I

    .line 94
    .line 95
    goto :goto_8

    .line 96
    :cond_8
    if-eqz v3, :cond_b

    .line 97
    .line 98
    iput-boolean v2, v4, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthReturned:Z

    .line 99
    .line 100
    invoke-virtual {v7}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iput v0, v4, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderStatus:I

    .line 105
    .line 106
    goto :goto_8

    .line 107
    :cond_9
    iput-boolean v1, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mIsPrimary:Z

    .line 108
    .line 109
    iput v9, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    .line 110
    .line 111
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 112
    .line 113
    .line 114
    move-result-wide v4

    .line 115
    iput-wide v4, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryFinishTimeNanoseconds:J

    .line 116
    .line 117
    if-eqz v0, :cond_a

    .line 118
    .line 119
    iput-boolean v1, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryReturned:Z

    .line 120
    .line 121
    invoke-virtual {v8}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iput v0, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mProviderQueryStatus:I

    .line 126
    .line 127
    goto :goto_8

    .line 128
    :catch_0
    move-exception v0

    .line 129
    goto :goto_7

    .line 130
    :cond_a
    if-eqz v3, :cond_b

    .line 131
    .line 132
    iput-boolean v2, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryReturned:Z

    .line 133
    .line 134
    invoke-virtual {v7}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iput v0, v6, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mProviderQueryStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    goto :goto_8

    .line 141
    :goto_7
    const-string v1, "Unexpected error during candidate update metric logging: "

    .line 142
    .line 143
    const-string v2, "ProviderSessionMetric"

    .line 144
    .line 145
    invoke-static {v0, v1, v2}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_b
    :goto_8
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 151
    .line 152
    invoke-interface {v0, p1, p0, p2}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method
