.class public abstract Lcom/android/server/credentials/MetricUtilities;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_REPEATED_INT_32:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 4
    sput-object v0, Lcom/android/server/credentials/MetricUtilities;->DEFAULT_REPEATED_INT_32:[I

    .line 6
    return-void
.end method

.method public static getMetricTimestampDifferenceMicroseconds(JJ)I
    .locals 5

    .line 1
    sub-long v0, p0, p2

    .line 3
    const-wide/32 v2, 0x7fffffff

    .line 6
    cmp-long v2, v0, v2

    .line 8
    const/4 v3, -0x1

    .line 9
    const-string v4, "CredentialManager"

    .line 11
    if-lez v2, :cond_0

    .line 13
    const-string p0, "Input timestamps are too far apart and unsupported, falling back to default int"

    .line 15
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return v3

    .line 19
    :cond_0
    cmp-long p0, p0, p2

    .line 21
    if-gez p0, :cond_1

    .line 23
    const-string p0, "The timestamps aren\'t in expected order, falling back to default int"

    .line 25
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return v3

    .line 29
    :cond_1
    const-wide/16 p0, 0x3e8

    .line 31
    div-long/2addr v0, p0

    .line 32
    long-to-int p0, v0

    .line 33
    return p0
.end method

.method public static getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object p0

    .line 9
    const-wide/16 v1, 0x0

    .line 11
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    .line 18
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "Couldn\'t find uid for "

    .line 25
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string p1, ": "

    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    const-string p1, "CredentialManager"

    .line 45
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return v0
.end method

.method public static logApiCalledAggregateCandidate(Lcom/android/server/credentials/metrics/CandidateAggregateMetric;I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    :try_start_0
    iget v1, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mSessionIdProvider:I

    .line 5
    iget-boolean v3, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mQueryReturned:Z

    .line 7
    iget v4, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumProviders:I

    .line 9
    iget-wide v5, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMinProviderTimestampNanoseconds:J

    .line 11
    iget-wide v7, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mServiceBeganTimeNanoseconds:J

    .line 13
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/credentials/MetricUtilities;->getMetricTimestampDifferenceMicroseconds(JJ)I

    .line 16
    move-result v5

    .line 17
    iget-wide v6, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMaxProviderTimestampNanoseconds:J

    .line 19
    iget-wide v8, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mServiceBeganTimeNanoseconds:J

    .line 21
    invoke-static {v6, v7, v8, v9}, Lcom/android/server/credentials/MetricUtilities;->getMetricTimestampDifferenceMicroseconds(JJ)I

    .line 24
    move-result v6

    .line 25
    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 27
    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    .line 30
    move-result-object v7

    .line 31
    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 33
    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    .line 36
    move-result-object v8

    .line 37
    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 39
    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    .line 42
    move-result-object v9

    .line 43
    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 45
    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    .line 48
    move-result-object v10

    .line 49
    iget v11, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    .line 51
    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    .line 53
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 55
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 62
    move-result v2

    .line 63
    new-array v12, v2, [Ljava/lang/String;

    .line 65
    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    .line 67
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 69
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v2, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 76
    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    .line 78
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 80
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 83
    move-result-object v2

    .line 84
    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 87
    move-result-object v2

    .line 88
    new-instance v13, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 90
    const/4 v14, 0x2

    .line 91
    invoke-direct {v13, v14}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 94
    invoke-interface {v2, v13}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 97
    move-result-object v2

    .line 98
    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    .line 101
    move-result-object v13

    .line 102
    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 104
    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    .line 107
    move-result-object v14

    .line 108
    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 110
    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    .line 113
    move-result-object v15

    .line 114
    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 116
    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    .line 119
    move-result-object v16

    .line 120
    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 122
    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    .line 125
    move-result-object v17

    .line 126
    iget-object v2, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountAuth:Ljava/util/Map;

    .line 128
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 130
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 133
    move-result-object v2

    .line 134
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 137
    move-result v2

    .line 138
    new-array v2, v2, [Ljava/lang/String;

    .line 140
    move-object/from16 v19, v15

    .line 142
    iget-object v15, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountAuth:Ljava/util/Map;

    .line 144
    check-cast v15, Ljava/util/LinkedHashMap;

    .line 146
    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 149
    move-result-object v15

    .line 150
    invoke-interface {v15, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 153
    iget-object v15, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountAuth:Ljava/util/Map;

    .line 155
    check-cast v15, Ljava/util/LinkedHashMap;

    .line 157
    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 160
    move-result-object v15

    .line 161
    invoke-interface {v15}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 164
    move-result-object v15

    .line 165
    move-object/from16 v20, v2

    .line 167
    new-instance v2, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 169
    move-object/from16 v21, v14

    .line 171
    const/4 v14, 0x2

    .line 172
    invoke-direct {v2, v14}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 175
    invoke-interface {v15, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 178
    move-result-object v2

    .line 179
    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    .line 182
    move-result-object v22

    .line 183
    iget v15, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumAuthEntriesTapped:I

    .line 185
    iget-boolean v14, v0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAuthReturned:Z

    .line 187
    const/16 v0, 0x29b

    .line 189
    const/16 v18, 0x0

    .line 191
    move/from16 v2, p1

    .line 193
    move/from16 v23, v14

    .line 195
    move-object/from16 v14, v21

    .line 197
    move/from16 v21, v15

    .line 199
    move-object/from16 v15, v19

    .line 201
    move-object/from16 v19, v20

    .line 203
    move-object/from16 v20, v22

    .line 205
    move/from16 v22, v23

    .line 207
    invoke-static/range {v0 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIII[Ljava/lang/String;[I[I[II[Ljava/lang/String;[I[Ljava/lang/String;[I[I[II[Ljava/lang/String;[IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string v1, "Unexpected error during total candidate metric logging: "

    .line 214
    const-string v2, "CredentialManager"

    .line 216
    invoke-static {v0, v1, v2}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void
.end method

.method public static logApiCalledAuthenticationMetric(Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;I)V
    .locals 12

    .line 1
    :try_start_0
    iget v1, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mSessionIdProvider:I

    .line 3
    iget v3, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderUid:I

    .line 5
    iget-object v0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 7
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    .line 10
    move-result-object v4

    .line 11
    iget-object v0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 13
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    .line 16
    move-result-object v5

    .line 17
    iget-object v0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 19
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    .line 22
    move-result-object v6

    .line 23
    iget-object v0, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 25
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    .line 28
    move-result-object v7

    .line 29
    iget-object v8, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mFrameworkException:Ljava/lang/String;

    .line 31
    iget-boolean v9, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mHasException:Z

    .line 33
    iget v10, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderStatus:I

    .line 35
    iget-boolean v11, p0, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthReturned:Z

    .line 37
    const/16 v0, 0x29e

    .line 39
    move v2, p1

    .line 40
    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[Ljava/lang/String;[I[I[ILjava/lang/String;ZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    const-string p1, "Unexpected error during candidate auth metric logging: "

    .line 47
    const-string v0, "CredentialManager"

    .line 49
    invoke-static {p0, p1, v0}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void
.end method

.method public static logApiCalledCandidateGetMetric(ILjava/util/Map;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/credentials/ProviderSession;

    .line 21
    iget-object v0, v0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 23
    iget-object v0, v0, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 25
    iget v2, v0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mSessionIdProvider:I

    .line 27
    iget v4, v0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    .line 29
    iget-object v1, v0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 31
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    .line 34
    move-result-object v5

    .line 35
    iget-object v0, v0, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 37
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    .line 40
    move-result-object v6

    .line 41
    const/16 v1, 0x29d

    .line 43
    move v3, p0

    .line 44
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[Ljava/lang/String;[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    const-string p1, "Unexpected error during candidate get metric logging: "

    .line 51
    const-string v0, "CredentialManager"

    .line 53
    invoke-static {p0, p1, v0}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public static logApiCalledCandidatePhase(Ljava/util/Map;ILcom/android/server/credentials/metrics/InitialPhaseMetric;)V
    .locals 27

    .line 1
    move-object/from16 v0, p2

    .line 3
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 10
    move-result v2

    .line 11
    new-array v7, v2, [I

    .line 13
    new-array v8, v2, [I

    .line 15
    new-array v9, v2, [I

    .line 17
    new-array v10, v2, [I

    .line 19
    new-array v11, v2, [Z

    .line 21
    new-array v12, v2, [I

    .line 23
    new-array v14, v2, [I

    .line 25
    new-array v15, v2, [I

    .line 27
    new-array v13, v2, [I

    .line 29
    new-array v6, v2, [I

    .line 31
    new-array v5, v2, [I

    .line 33
    new-array v4, v2, [Ljava/lang/String;

    .line 35
    new-array v2, v2, [Z

    .line 37
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v1

    .line 41
    const/16 v16, 0x0

    .line 43
    move/from16 v17, v16

    .line 45
    const/4 v0, -0x1

    .line 46
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v18

    .line 50
    if-eqz v18, :cond_4

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v18

    .line 56
    move-object/from16 v3, v18

    .line 58
    check-cast v3, Lcom/android/server/credentials/ProviderSession;

    .line 60
    iget-object v3, v3, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 62
    iget-object v3, v3, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 64
    move-object/from16 v18, v1

    .line 66
    const/4 v1, -0x1

    .line 67
    if-ne v0, v1, :cond_0

    .line 69
    iget v0, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mSessionIdProvider:I

    .line 71
    :cond_0
    if-nez v16, :cond_1

    .line 73
    iget-boolean v1, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryReturned:Z

    .line 75
    move/from16 v16, v1

    .line 77
    :cond_1
    iget v1, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    .line 79
    aput v1, v7, v17

    .line 81
    move/from16 v19, v0

    .line 83
    iget-wide v0, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mStartQueryTimeNanoseconds:J

    .line 85
    move-object/from16 v21, v4

    .line 87
    move-object/from16 v20, v5

    .line 89
    iget-wide v4, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mServiceBeganTimeNanoseconds:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    cmp-long v22, v0, v4

    .line 93
    const-wide/16 v23, 0x3e8

    .line 95
    move-object/from16 v25, v7

    .line 97
    const-string v7, "The timestamp is before service started, falling back to default int"

    .line 99
    move-object/from16 v26, v2

    .line 101
    const-string v2, "CandidateProviderMetric"

    .line 103
    if-gez v22, :cond_2

    .line 105
    :try_start_1
    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, -0x1

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    sub-long/2addr v0, v4

    .line 111
    div-long v0, v0, v23

    .line 113
    long-to-int v0, v0

    .line 114
    :goto_1
    aput v0, v8, v17

    .line 116
    iget-wide v0, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryFinishTimeNanoseconds:J

    .line 118
    iget-wide v4, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mServiceBeganTimeNanoseconds:J

    .line 120
    cmp-long v22, v0, v4

    .line 122
    if-gez v22, :cond_3

    .line 124
    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, -0x1

    .line 128
    goto :goto_2

    .line 129
    :cond_3
    sub-long/2addr v0, v4

    .line 130
    div-long v0, v0, v23

    .line 132
    long-to-int v0, v0

    .line 133
    :goto_2
    aput v0, v9, v17

    .line 135
    iget v0, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mProviderQueryStatus:I

    .line 137
    aput v0, v10, v17

    .line 139
    iget-boolean v0, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mHasException:Z

    .line 141
    aput-boolean v0, v11, v17

    .line 143
    iget-object v0, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 145
    iget-object v0, v0, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mEntryCounts:Ljava/util/Map;

    .line 147
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 150
    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 154
    move-result-object v0

    .line 155
    new-instance v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;

    .line 157
    const/4 v2, 0x2

    .line 158
    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 161
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 164
    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    .line 168
    move-result v0

    .line 169
    aput v0, v12, v17

    .line 171
    iget-object v0, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 173
    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->CREDENTIAL_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 175
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    .line 178
    move-result v0

    .line 179
    aput v0, v14, v17

    .line 181
    iget-object v0, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 183
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 187
    array-length v0, v0

    .line 188
    aput v0, v15, v17

    .line 190
    iget-object v0, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 192
    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->ACTION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 194
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    .line 197
    move-result v0

    .line 198
    aput v0, v13, v17

    .line 200
    iget-object v0, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 202
    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->AUTHENTICATION_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 204
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    .line 207
    move-result v0

    .line 208
    aput v0, v6, v17

    .line 210
    iget-object v0, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 212
    sget-object v1, Lcom/android/server/credentials/metrics/EntryEnum;->REMOTE_ENTRY:Lcom/android/server/credentials/metrics/EntryEnum;

    .line 214
    invoke-virtual {v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getCountForEntry(Lcom/android/server/credentials/metrics/EntryEnum;)I

    .line 217
    move-result v0

    .line 218
    aput v0, v20, v17

    .line 220
    iget-object v0, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mFrameworkException:Ljava/lang/String;

    .line 222
    aput-object v0, v21, v17

    .line 224
    iget-boolean v0, v3, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mIsPrimary:Z

    .line 226
    aput-boolean v0, v26, v17

    .line 228
    add-int/lit8 v17, v17, 0x1

    .line 230
    move-object/from16 v1, v18

    .line 232
    move/from16 v0, v19

    .line 234
    move-object/from16 v5, v20

    .line 236
    move-object/from16 v4, v21

    .line 238
    move-object/from16 v7, v25

    .line 240
    move-object/from16 v2, v26

    .line 242
    goto/16 :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    goto :goto_3

    .line 246
    :cond_4
    move/from16 v19, v0

    .line 248
    move-object/from16 v26, v2

    .line 250
    move-object/from16 v21, v4

    .line 252
    move-object/from16 v20, v5

    .line 254
    move-object/from16 v25, v7

    .line 256
    move-object/from16 v0, p2

    .line 258
    iget-boolean v1, v0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mOriginSpecified:Z

    .line 260
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestStrings()[Ljava/lang/String;

    .line 263
    move-result-object v2

    .line 264
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestCounts()[I

    .line 267
    move-result-object v22

    .line 268
    iget v0, v0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mApiName:I

    .line 270
    const/16 v3, 0x28c

    .line 272
    move-object/from16 v18, v21

    .line 274
    move/from16 v4, v19

    .line 276
    move-object/from16 v17, v20

    .line 278
    move/from16 v5, p1

    .line 280
    move-object/from16 v19, v6

    .line 282
    move/from16 v6, v16

    .line 284
    move-object/from16 v7, v25

    .line 286
    move-object/from16 v16, v17

    .line 288
    move-object/from16 v17, v19

    .line 290
    move/from16 v19, v1

    .line 292
    move-object/from16 v20, v2

    .line 294
    move-object/from16 v21, v22

    .line 296
    move/from16 v22, v0

    .line 298
    move-object/from16 v23, v26

    .line 300
    invoke-static/range {v3 .. v23}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ[I[I[I[I[Z[I[I[I[I[I[I[Ljava/lang/String;Z[Ljava/lang/String;[II[Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 303
    goto :goto_4

    .line 304
    :goto_3
    const-string v1, "Unexpected error during candidate provider uid metric emit: "

    .line 306
    const-string v2, "CredentialManager"

    .line 308
    invoke-static {v0, v1, v2}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_4
    return-void
.end method

.method public static logApiCalledFinalPhase(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 3
    :try_start_0
    move-object/from16 v1, p1

    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 11
    new-array v15, v2, [I

    .line 13
    new-array v2, v2, [I

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;

    .line 32
    iget v5, v4, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mEntryEnum:I

    .line 34
    aput v5, v15, v3

    .line 36
    iget v4, v4, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mProviderUid:I

    .line 38
    aput v4, v2, v3

    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget v4, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mSessionIdProvider:I

    .line 47
    iget-boolean v6, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiReturned:Z

    .line 49
    iget v7, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenUid:I

    .line 51
    iget-wide v8, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryStartTimeNanoseconds:J

    .line 53
    invoke-virtual {v0, v8, v9}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    .line 56
    move-result v8

    .line 57
    iget-wide v9, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryEndTimeNanoseconds:J

    .line 59
    invoke-virtual {v0, v9, v10}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    .line 62
    move-result v9

    .line 63
    iget-wide v10, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallStartTimeNanoseconds:J

    .line 65
    invoke-virtual {v0, v10, v11}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    .line 68
    move-result v10

    .line 69
    iget-wide v11, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallEndTimeNanoseconds:J

    .line 71
    invoke-virtual {v0, v11, v12}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    .line 74
    move-result v11

    .line 75
    iget-wide v12, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFinalFinishTimeNanoseconds:J

    .line 77
    invoke-virtual {v0, v12, v13}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    .line 80
    move-result v12

    .line 81
    iget v13, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenProviderStatus:I

    .line 83
    iget-boolean v14, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mHasException:Z

    .line 85
    sget-object v1, Lcom/android/server/credentials/MetricUtilities;->DEFAULT_REPEATED_INT_32:[I

    .line 87
    iget-object v3, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 89
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    .line 92
    move-result-object v24

    .line 93
    iget-object v3, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 95
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    .line 98
    move-result-object v25

    .line 99
    iget-object v3, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 101
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    .line 104
    move-result-object v26

    .line 105
    iget-object v3, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 107
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    .line 110
    move-result-object v27

    .line 111
    iget-object v5, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFrameworkException:Ljava/lang/String;

    .line 113
    iget-boolean v0, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mIsPrimary:Z

    .line 115
    const/16 v19, -0x1

    .line 117
    const/16 v20, -0x1

    .line 119
    const/16 v3, 0x28d

    .line 121
    const/16 v16, -0x1

    .line 123
    const/16 v17, -0x1

    .line 125
    const/16 v18, -0x1

    .line 127
    move-object/from16 v28, v5

    .line 129
    move/from16 v5, p3

    .line 131
    move-object/from16 v21, v15

    .line 133
    move-object v15, v1

    .line 134
    move-object/from16 v22, v2

    .line 136
    move/from16 v23, p2

    .line 138
    move/from16 v29, v0

    .line 140
    invoke-static/range {v3 .. v29}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIIIIZ[IIIIII[I[II[I[I[Ljava/lang/String;[ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_2

    .line 144
    :goto_1
    const-string v1, "Unexpected error during final provider uid emit: "

    .line 146
    const-string v2, "CredentialManager"

    .line 148
    invoke-static {v0, v1, v2}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_2
    return-void
.end method

.method public static logApiCalledInitialPhase(Lcom/android/server/credentials/metrics/InitialPhaseMetric;I)V
    .locals 13

    .line 1
    :try_start_0
    iget v1, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mApiName:I

    .line 3
    iget v2, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCallerUid:I

    .line 5
    iget v3, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mSessionIdCaller:I

    .line 7
    iget-wide v5, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mCredentialServiceStartedTimeNanoseconds:J

    .line 9
    iget-object v0, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mRequestCounts:Ljava/util/Map;

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 14
    move-result v7

    .line 15
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestStrings()[Ljava/lang/String;

    .line 18
    move-result-object v8

    .line 19
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->getUniqueRequestCounts()[I

    .line 22
    move-result-object v9

    .line 23
    iget-boolean v10, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mOriginSpecified:Z

    .line 25
    iget v11, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mAutofillSessionId:I

    .line 27
    iget v12, p0, Lcom/android/server/credentials/metrics/InitialPhaseMetric;->mAutofillRequestId:I

    .line 29
    const/16 v0, 0x28b

    .line 31
    move v4, p1

    .line 32
    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIJI[Ljava/lang/String;[IZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    const-string p1, "Unexpected error during initial metric emit: "

    .line 39
    const-string v0, "CredentialManager"

    .line 41
    invoke-static {p0, p1, v0}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void
.end method

.method public static logApiCalledNoUidFinal(Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;Ljava/util/List;II)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    :try_start_0
    move-object/from16 v1, p1

    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 11
    new-array v15, v2, [I

    .line 13
    new-array v2, v2, [I

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;

    .line 32
    iget v4, v4, Lcom/android/server/credentials/metrics/CandidateBrowsingPhaseMetric;->mEntryEnum:I

    .line 34
    aput v4, v15, v3

    .line 36
    const/4 v4, -0x1

    .line 37
    aput v4, v2, v3

    .line 39
    add-int/lit8 v3, v3, 0x1

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget v4, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mSessionIdCaller:I

    .line 46
    iget-boolean v6, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiReturned:Z

    .line 48
    iget-wide v7, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryStartTimeNanoseconds:J

    .line 50
    invoke-virtual {v0, v7, v8}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    .line 53
    move-result v7

    .line 54
    iget-wide v8, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mQueryEndTimeNanoseconds:J

    .line 56
    invoke-virtual {v0, v8, v9}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    .line 59
    move-result v8

    .line 60
    iget-wide v9, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallStartTimeNanoseconds:J

    .line 62
    invoke-virtual {v0, v9, v10}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    .line 65
    move-result v9

    .line 66
    iget-wide v10, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mUiCallEndTimeNanoseconds:J

    .line 68
    invoke-virtual {v0, v10, v11}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    .line 71
    move-result v10

    .line 72
    iget-wide v11, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFinalFinishTimeNanoseconds:J

    .line 74
    invoke-virtual {v0, v11, v12}, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->getTimestampFromReferenceStartMicroseconds(J)I

    .line 77
    move-result v11

    .line 78
    iget v12, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mChosenProviderStatus:I

    .line 80
    iget-boolean v13, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mHasException:Z

    .line 82
    iget-object v1, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 84
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntries()[I

    .line 87
    move-result-object v14

    .line 88
    iget-object v1, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 90
    invoke-virtual {v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueEntryCounts()[I

    .line 93
    move-result-object v1

    .line 94
    iget-object v3, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 96
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseStrings()[Ljava/lang/String;

    .line 99
    move-result-object v16

    .line 100
    iget-object v3, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 102
    invoke-virtual {v3}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->getUniqueResponseCounts()[I

    .line 105
    move-result-object v17

    .line 106
    iget-object v5, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFrameworkException:Ljava/lang/String;

    .line 108
    iget-boolean v3, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mIsPrimary:Z

    .line 110
    move/from16 v18, v3

    .line 112
    iget v3, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUid:I

    .line 114
    move/from16 v19, v3

    .line 116
    iget v3, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mFallbackUiUid:I

    .line 118
    iget-object v0, v0, Lcom/android/server/credentials/metrics/ChosenProviderFinalPhaseMetric;->mOemUiUsageStatus:Lcom/android/server/credentials/metrics/OemUiUsageStatus;

    .line 120
    invoke-virtual {v0}, Lcom/android/server/credentials/metrics/OemUiUsageStatus;->getLoggingInt()I

    .line 123
    move-result v25

    .line 124
    const/16 v0, 0x29c

    .line 126
    move/from16 v24, v3

    .line 128
    move/from16 v22, v18

    .line 130
    move/from16 v23, v19

    .line 132
    move v3, v0

    .line 133
    move-object v0, v5

    .line 134
    move/from16 v5, p3

    .line 136
    move-object/from16 v19, v15

    .line 138
    move-object v15, v1

    .line 139
    move-object/from16 v18, v0

    .line 141
    move-object/from16 v20, v2

    .line 143
    move/from16 v21, p2

    .line 145
    invoke-static/range {v3 .. v25}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIIIZ[I[I[Ljava/lang/String;[ILjava/lang/String;[I[IIZIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_2

    .line 149
    :goto_1
    const-string v1, "Unexpected error during final no uid metric logging: "

    .line 151
    const-string v2, "CredentialManager"

    .line 153
    invoke-static {v0, v1, v2}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_2
    return-void
.end method

.method public static logApiCalledSimpleV2(Lcom/android/server/credentials/metrics/ApiName;Lcom/android/server/credentials/metrics/ApiStatus;I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/credentials/metrics/ApiName;->getMetricCode()I

    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Lcom/android/server/credentials/metrics/ApiStatus;->getMetricCode()I

    .line 8
    move-result p1

    .line 9
    const/16 v0, 0x29f

    .line 11
    invoke-static {v0, p0, p2, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string p1, "Unexpected error during simple v2 metric logging: "

    .line 18
    const-string p2, "CredentialManager"

    .line 20
    invoke-static {p0, p1, p2}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :goto_0
    return-void
.end method
