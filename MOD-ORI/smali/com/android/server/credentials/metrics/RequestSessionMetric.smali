.class public final Lcom/android/server/credentials/metrics/RequestSessionMetric;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

.field public final mCandidateBrowsingPhaseMetric:Ljava/util/List;

.field public final mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

.field public final mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

.field public mSequenceCounter:I

.field public final mSessionIdTrackTwo:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateBrowsingPhaseMetric:Ljava/util/List;

    .line 13
    .line 14
    iput p2, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSessionIdTrackTwo:I

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    .line 22
    .line 23
    new-instance v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    .line 29
    .line 30
    new-instance v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 31
    .line 32
    invoke-direct {v0, p1, p2}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;-><init>(II)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final collectChosenMetricViaCandidateTransfer(Lcom/android/server/credentials/metrics/CandidatePhaseMetric;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 2
    .line 3
    :try_start_0
    iget v0, p1, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenUid:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mIsPrimary:Z

    .line 9
    .line 10
    iget-wide v0, p1, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mServiceBeganTimeNanoseconds:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mServiceBeganTimeNanoseconds:J

    .line 13
    .line 14
    iget-wide v0, p1, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mStartQueryTimeNanoseconds:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryStartTimeNanoseconds:J

    .line 17
    .line 18
    iget-wide v0, p1, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryFinishTimeNanoseconds:J

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryEndTimeNanoseconds:J

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iput-wide v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFinalFinishTimeNanoseconds:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string p1, "Unexpected error during metric candidate to final transfer: "

    .line 35
    .line 36
    const-string v0, "RequestSessionMetric"

    .line 37
    .line 38
    invoke-static {p0, p1, v0}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public final collectChosenProviderStatus(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenProviderStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const-string p1, "Unexpected error setting chosen provider status metric: "

    .line 8
    .line 9
    const-string v0, "RequestSessionMetric"

    .line 10
    .line 11
    invoke-static {p0, p1, v0}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final collectFinalPhaseProviderMetricStatus(ZLcom/android/server/credentials/metrics/ProviderStatusForMetrics;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mHasException:Z

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/android/server/credentials/metrics/ProviderStatusForMetrics;->getMetricCode()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenProviderStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    const-string p1, "Unexpected error during final phase provider status metric logging: "

    .line 14
    .line 15
    const-string p2, "RequestSessionMetric"

    .line 16
    .line 17
    invoke-static {p0, p1, p2}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public final collectFrameworkException(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1e

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFrameworkException:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "Unexpected error during metric logging: "

    .line 18
    .line 19
    const-string v0, "RequestSessionMetric"

    .line 20
    .line 21
    invoke-static {p0, p1, v0}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final collectGetFlowInitialMetricInfo(Landroid/credentials/GetCredentialRequest;)V
    .locals 4

    .line 1
    const-string v0, "RequestSessionMetric"

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mInitialPhaseMetric:Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getOrigin()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mOriginSpecified:Z

    .line 15
    .line 16
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    .line 20
    .line 21
    :try_start_1
    invoke-virtual {p1}, Landroid/credentials/GetCredentialRequest;->getCredentialOptions()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v2, Lcom/android/server/credentials/metrics/RequestSessionMetric$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v2, v1}, Lcom/android/server/credentials/metrics/RequestSessionMetric$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "Unexpected error during get request count map metric logging: "

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :goto_1
    iput-object v1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mRequestCounts:Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :catch_1
    move-exception p0

    .line 56
    const-string p1, "Unexpected error collecting get flow initial metric: "

    .line 57
    .line 58
    invoke-static {p0, p1, v0}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_2
    return-void
.end method

.method public final collectUiConfigurationResults(Landroid/content/Context;Landroid/credentials/selection/IntentCreationResult;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Landroid/credentials/selection/IntentCreationResult;->getOemUiPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0, p3}, Lcom/android/server/credentials/MetricUtilities;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUid:I

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/credentials/selection/IntentCreationResult;->getFallbackUiPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p1, v0, p3}, Lcom/android/server/credentials/MetricUtilities;->getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFallbackUiUid:I

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/credentials/selection/IntentCreationResult;->getOemUiUsageStatus()Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object p2, Lcom/android/server/credentials/metrics/OemUiUsageStatus$1;->$SwitchMap$android$credentials$selection$IntentCreationResult$OemUiUsageStatus:[I

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    aget p1, p2, p1

    .line 34
    .line 35
    sget-object p2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->UNKNOWN:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 36
    .line 37
    const/4 p3, 0x1

    .line 38
    if-eq p1, p3, :cond_4

    .line 39
    .line 40
    const/4 p3, 0x2

    .line 41
    if-eq p1, p3, :cond_3

    .line 42
    .line 43
    const/4 p3, 0x3

    .line 44
    if-eq p1, p3, :cond_2

    .line 45
    .line 46
    const/4 p3, 0x4

    .line 47
    if-eq p1, p3, :cond_1

    .line 48
    .line 49
    const/4 p3, 0x5

    .line 50
    if-eq p1, p3, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    sget-object p2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->FAILURE_SPECIFIED_BUT_NOT_ENABLED:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    sget-object p2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->FAILURE_SPECIFIED_BUT_NOT_FOUND:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    sget-object p2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->FAILURE_NOT_SPECIFIED:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    sget-object p2, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->SUCCESS:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 63
    .line 64
    :cond_4
    :goto_0
    iput-object p2, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUsageStatus:Lcom/android/server/credentials/metrics/OemUiUsageStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catch_0
    move-exception p0

    .line 68
    const-string p1, "Unexpected error during ui configuration result collection: "

    .line 69
    .line 70
    const-string p2, "RequestSessionMetric"

    .line 71
    .line 72
    invoke-static {p0, p1, p2}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void
.end method

.method public final collectUiResponseData(J)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mChosenProviderFinalPhaseMetric:Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiReturned:Z

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallEndTimeNanoseconds:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    const-string p1, "Unexpected error collecting ui response metric: "

    .line 11
    .line 12
    const-string p2, "RequestSessionMetric"

    .line 13
    .line 14
    invoke-static {p0, p1, p2}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final logCandidateAggregateMetrics(Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mCandidateAggregateMetric:Lcom/android/server/credentials/metrics/CandidateAggregateMetric;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->collectAverages(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Lcom/android/server/credentials/metrics/RequestSessionMetric;->mSequenceCounter:I

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/android/server/credentials/MetricUtilities;->logApiCalledAggregateCandidate(Lcom/android/server/credentials/metrics/CandidateAggregateMetric;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "Unexpected error during aggregate candidate logging "

    .line 18
    .line 19
    const-string v0, "RequestSessionMetric"

    .line 20
    .line 21
    invoke-static {p0, p1, v0}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final updateMetricsOnResponseReceived(Ljava/util/Map;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/android/server/credentials/ProviderSession;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectChosenMetricViaCandidateTransfer(Lcom/android/server/credentials/metrics/CandidatePhaseMetric;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string p1, "Exception upon candidate to chosen metric transfer: "

    .line 23
    .line 24
    const-string p2, "RequestSessionMetric"

    .line 25
    .line 26
    invoke-static {p0, p1, p2}, Lcom/android/server/PackageWatchdog$BootThreshold$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    return-void
.end method
