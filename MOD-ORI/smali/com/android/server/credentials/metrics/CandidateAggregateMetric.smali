.class public final Lcom/android/server/credentials/metrics/CandidateAggregateMetric;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

.field public mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

.field public mAuthReturned:Z

.field public final mExceptionCountAuth:Ljava/util/Map;

.field public final mExceptionCountQuery:Ljava/util/Map;

.field public mMaxProviderTimestampNanoseconds:J

.field public mMinProviderTimestampNanoseconds:J

.field public mNumAuthEntriesTapped:I

.field public mNumProviders:I

.field public mQueryReturned:Z

.field public mServiceBeganTimeNanoseconds:J

.field public final mSessionIdProvider:I

.field public mTotalQueryFailures:I


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mQueryReturned:Z

    .line 6
    .line 7
    const-wide/16 v1, -0x1

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mServiceBeganTimeNanoseconds:J

    .line 10
    .line 11
    iput v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumProviders:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAuthReturned:Z

    .line 14
    .line 15
    iput v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumAuthEntriesTapped:I

    .line 16
    .line 17
    new-instance v3, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 18
    .line 19
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-direct {v3, v4, v5}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    iput-object v3, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 31
    .line 32
    new-instance v3, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 33
    .line 34
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-direct {v3, v4, v5}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 46
    .line 47
    iput-wide v1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMinProviderTimestampNanoseconds:J

    .line 48
    .line 49
    iput-wide v1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMaxProviderTimestampNanoseconds:J

    .line 50
    .line 51
    iput v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    .line 52
    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    .line 59
    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountAuth:Ljava/util/Map;

    .line 66
    .line 67
    iput p1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mSessionIdProvider:I

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final collectAverages(Ljava/util/Map;)V
    .locals 14

    .line 1
    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumProviders:I

    .line 8
    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-wide v3, 0x7fffffffffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    const-wide/high16 v5, -0x8000000000000000L

    .line 33
    .line 34
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x1

    .line 40
    const/4 v10, -0x1

    .line 41
    if-eqz v7, :cond_5

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Lcom/android/server/credentials/ProviderSession;

    .line 48
    .line 49
    iget-object v7, v7, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 50
    .line 51
    iget-object v7, v7, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mCandidatePhasePerProviderMetric:Lcom/android/server/credentials/metrics/CandidatePhaseMetric;

    .line 52
    .line 53
    iget v11, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mCandidateUid:I

    .line 54
    .line 55
    if-ne v11, v10, :cond_1

    .line 56
    .line 57
    iget v7, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumProviders:I

    .line 58
    .line 59
    sub-int/2addr v7, v9

    .line 60
    iput v7, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumProviders:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-wide v10, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mServiceBeganTimeNanoseconds:J

    .line 64
    .line 65
    const-wide/16 v12, -0x1

    .line 66
    .line 67
    cmp-long v10, v10, v12

    .line 68
    .line 69
    if-nez v10, :cond_2

    .line 70
    .line 71
    iget-wide v10, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mServiceBeganTimeNanoseconds:J

    .line 72
    .line 73
    iput-wide v10, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mServiceBeganTimeNanoseconds:J

    .line 74
    .line 75
    :cond_2
    iget-boolean v10, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mQueryReturned:Z

    .line 76
    .line 77
    if-nez v10, :cond_4

    .line 78
    .line 79
    iget-boolean v10, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryReturned:Z

    .line 80
    .line 81
    if-eqz v10, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move v10, v8

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    :goto_1
    move v10, v9

    .line 87
    :goto_2
    iput-boolean v10, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mQueryReturned:Z

    .line 88
    .line 89
    iget-object v10, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mResponseCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 90
    .line 91
    iget-object v11, v10, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mResponseCounts:Ljava/util/Map;

    .line 92
    .line 93
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    invoke-static {v0, v11}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->combineTypeCountMaps(Ljava/util/Map;Ljava/util/Map;)V

    .line 98
    .line 99
    .line 100
    iget-object v10, v10, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mEntryCounts:Ljava/util/Map;

    .line 101
    .line 102
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-static {v1, v10}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->combineTypeCountMaps(Ljava/util/Map;Ljava/util/Map;)V

    .line 107
    .line 108
    .line 109
    iget-wide v10, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mStartQueryTimeNanoseconds:J

    .line 110
    .line 111
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    iget-wide v10, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mQueryFinishTimeNanoseconds:J

    .line 116
    .line 117
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 118
    .line 119
    .line 120
    move-result-wide v5

    .line 121
    iget v10, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    .line 122
    .line 123
    iget-boolean v11, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mHasException:Z

    .line 124
    .line 125
    add-int/2addr v10, v11

    .line 126
    iput v10, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    .line 127
    .line 128
    iget-object v10, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mFrameworkException:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    if-nez v10, :cond_0

    .line 135
    .line 136
    iget-object v10, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    .line 137
    .line 138
    iget-object v7, v7, Lcom/android/server/credentials/metrics/CandidatePhaseMetric;->mFrameworkException:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    move-object v11, v10

    .line 145
    check-cast v11, Ljava/util/LinkedHashMap;

    .line 146
    .line 147
    invoke-virtual {v11, v7, v8}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    check-cast v8, Ljava/lang/Integer;

    .line 152
    .line 153
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    add-int/2addr v8, v9

    .line 158
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-interface {v10, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_5
    iput-wide v3, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMinProviderTimestampNanoseconds:J

    .line 168
    .line 169
    iput-wide v5, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mMaxProviderTimestampNanoseconds:J

    .line 170
    .line 171
    new-instance v2, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 172
    .line 173
    invoke-direct {v2, v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 174
    .line 175
    .line 176
    iput-object v2, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveQuery:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 177
    .line 178
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 179
    .line 180
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 184
    .line 185
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_b

    .line 201
    .line 202
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    check-cast v2, Lcom/android/server/credentials/ProviderSession;

    .line 207
    .line 208
    iget-object v2, v2, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    .line 209
    .line 210
    iget-object v2, v2, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->mBrowsedAuthenticationMetric:Ljava/util/List;

    .line 211
    .line 212
    check-cast v2, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-eqz v3, :cond_6

    .line 223
    .line 224
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    check-cast v3, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;

    .line 229
    .line 230
    iget v4, v3, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mProviderUid:I

    .line 231
    .line 232
    if-ne v4, v10, :cond_8

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_8
    iget v4, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumAuthEntriesTapped:I

    .line 236
    .line 237
    add-int/2addr v4, v9

    .line 238
    iput v4, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mNumAuthEntriesTapped:I

    .line 239
    .line 240
    iget-boolean v4, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAuthReturned:Z

    .line 241
    .line 242
    if-nez v4, :cond_a

    .line 243
    .line 244
    iget-boolean v4, v3, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthReturned:Z

    .line 245
    .line 246
    if-eqz v4, :cond_9

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_9
    move v4, v8

    .line 250
    goto :goto_5

    .line 251
    :cond_a
    :goto_4
    move v4, v9

    .line 252
    :goto_5
    iput-boolean v4, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAuthReturned:Z

    .line 253
    .line 254
    iget-object v4, v3, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mAuthEntryCollective:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 255
    .line 256
    iget-object v5, v4, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mResponseCounts:Ljava/util/Map;

    .line 257
    .line 258
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-static {v0, v5}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->combineTypeCountMaps(Ljava/util/Map;Ljava/util/Map;)V

    .line 263
    .line 264
    .line 265
    iget-object v4, v4, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->mEntryCounts:Ljava/util/Map;

    .line 266
    .line 267
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-static {v1, v4}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;->combineTypeCountMaps(Ljava/util/Map;Ljava/util/Map;)V

    .line 272
    .line 273
    .line 274
    iget v4, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    .line 275
    .line 276
    iget-boolean v5, v3, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mHasException:Z

    .line 277
    .line 278
    add-int/2addr v4, v5

    .line 279
    iput v4, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mTotalQueryFailures:I

    .line 280
    .line 281
    iget-object v3, v3, Lcom/android/server/credentials/metrics/BrowsedAuthenticationMetric;->mFrameworkException:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-nez v4, :cond_7

    .line 288
    .line 289
    iget-object v4, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mExceptionCountQuery:Ljava/util/Map;

    .line 290
    .line 291
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    move-object v6, v4

    .line 296
    check-cast v6, Ljava/util/LinkedHashMap;

    .line 297
    .line 298
    invoke-virtual {v6, v3, v5}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    check-cast v5, Ljava/lang/Integer;

    .line 303
    .line 304
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    add-int/2addr v5, v9

    .line 309
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    goto :goto_3

    .line 317
    :cond_b
    new-instance p1, Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 318
    .line 319
    invoke-direct {p1, v0, v1}, Lcom/android/server/credentials/metrics/shared/ResponseCollective;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 320
    .line 321
    .line 322
    iput-object p1, p0, Lcom/android/server/credentials/metrics/CandidateAggregateMetric;->mAggregateCollectiveAuth:Lcom/android/server/credentials/metrics/shared/ResponseCollective;

    .line 323
    .line 324
    return-void
.end method
