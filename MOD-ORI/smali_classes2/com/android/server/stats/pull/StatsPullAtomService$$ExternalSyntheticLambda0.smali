.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v1, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v1, "StatsPullAtomService"

    .line 16
    .line 17
    const-string v2, "Registering NetworkStats pullers with statsd"

    .line 18
    .line 19
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :try_start_0
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    .line 23
    .line 24
    const/16 v2, 0x9

    .line 25
    .line 26
    invoke-direct {v1, v2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const-string v1, "StatsPullAtomService"

    .line 35
    .line 36
    const-string v2, "Querying network stats for TYPE_PROXY is not allowed"

    .line 37
    .line 38
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    :goto_0
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v2

    .line 45
    :try_start_1
    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 46
    .line 47
    const/16 v4, 0x2710

    .line 48
    .line 49
    invoke-virtual {v0, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    .line 55
    .line 56
    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 57
    .line 58
    const/16 v5, 0x2711

    .line 59
    .line 60
    invoke-virtual {v0, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    .line 66
    .line 67
    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 68
    .line 69
    const/16 v6, 0x2712

    .line 70
    .line 71
    invoke-virtual {v0, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    .line 77
    .line 78
    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 79
    .line 80
    const/16 v7, 0x2713

    .line 81
    .line 82
    invoke-virtual {v0, v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    .line 88
    .line 89
    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 90
    .line 91
    const/16 v8, 0x2763

    .line 92
    .line 93
    invoke-virtual {v0, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 101
    .line 102
    const/16 v9, 0x2762

    .line 103
    .line 104
    invoke-virtual {v0, v9}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    .line 110
    .line 111
    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 112
    .line 113
    const/16 v10, 0x2774

    .line 114
    .line 115
    invoke-virtual {v0, v10}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 120
    .line 121
    .line 122
    const/16 v3, 0x27d8

    .line 123
    .line 124
    if-eqz v1, :cond_0

    .line 125
    .line 126
    iget-object v11, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtom(I)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    goto/16 :goto_4

    .line 138
    .line 139
    :cond_0
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 141
    .line 142
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    iget-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    .line 147
    .line 148
    invoke-virtual {v2, v11, v12}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 149
    .line 150
    .line 151
    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 152
    .line 153
    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 154
    .line 155
    .line 156
    const/4 v11, 0x2

    .line 157
    const/4 v12, 0x3

    .line 158
    const/4 v13, 0x4

    .line 159
    const/4 v14, 0x5

    .line 160
    filled-new-array {v11, v12, v13, v14}, [I

    .line 161
    .line 162
    .line 163
    move-result-object v15

    .line 164
    invoke-virtual {v2, v15}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    iget-object v15, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 173
    .line 174
    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 175
    .line 176
    iget-object v10, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 177
    .line 178
    invoke-virtual {v15, v4, v2, v3, v10}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 179
    .line 180
    .line 181
    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 182
    .line 183
    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 184
    .line 185
    .line 186
    const/4 v4, 0x6

    .line 187
    filled-new-array {v12, v13, v14, v4}, [I

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    invoke-virtual {v2, v10}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    iget-object v10, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 200
    .line 201
    iget-object v15, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 202
    .line 203
    invoke-virtual {v10, v5, v2, v3, v15}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 204
    .line 205
    .line 206
    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 207
    .line 208
    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 209
    .line 210
    .line 211
    filled-new-array {v11, v12, v13, v14}, [I

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v2, v5}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 224
    .line 225
    iget-object v10, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 226
    .line 227
    invoke-virtual {v5, v6, v2, v3, v10}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 228
    .line 229
    .line 230
    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 231
    .line 232
    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 233
    .line 234
    .line 235
    filled-new-array {v12, v13, v14, v4}, [I

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-virtual {v2, v5}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 248
    .line 249
    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 250
    .line 251
    invoke-virtual {v5, v7, v2, v3, v6}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 252
    .line 253
    .line 254
    sget-boolean v2, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    .line 255
    .line 256
    if-eqz v2, :cond_2

    .line 257
    .line 258
    const-string v5, "ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER = "

    .line 259
    .line 260
    const-string v6, "StatsPullAtomService"

    .line 261
    .line 262
    invoke-static {v5, v6, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 263
    .line 264
    .line 265
    if-eqz v2, :cond_1

    .line 266
    .line 267
    new-instance v2, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    .line 268
    .line 269
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 270
    .line 271
    const-class v6, Landroid/app/usage/NetworkStatsManager;

    .line 272
    .line 273
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    check-cast v5, Landroid/app/usage/NetworkStatsManager;

    .line 278
    .line 279
    invoke-direct {v2, v5}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;-><init>(Landroid/app/usage/NetworkStatsManager;)V

    .line 280
    .line 281
    .line 282
    iput-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAggregatedMobileDataStatsPuller:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    .line 283
    .line 284
    :cond_1
    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 285
    .line 286
    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 287
    .line 288
    .line 289
    filled-new-array {v12, v13, v14, v4}, [I

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    invoke-virtual {v2, v5}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 302
    .line 303
    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 304
    .line 305
    const/16 v7, 0x27dc

    .line 306
    .line 307
    invoke-virtual {v5, v7, v2, v3, v6}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 308
    .line 309
    .line 310
    :cond_2
    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 311
    .line 312
    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 313
    .line 314
    .line 315
    const/4 v5, 0x7

    .line 316
    filled-new-array {v13, v14, v4, v5}, [I

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    invoke-virtual {v2, v6}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 329
    .line 330
    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 331
    .line 332
    invoke-virtual {v6, v8, v2, v3, v7}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 333
    .line 334
    .line 335
    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 336
    .line 337
    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 338
    .line 339
    .line 340
    filled-new-array {v11, v12, v13, v14}, [I

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    invoke-virtual {v2, v6}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 353
    .line 354
    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 355
    .line 356
    invoke-virtual {v6, v9, v2, v3, v7}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 357
    .line 358
    .line 359
    new-instance v2, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 360
    .line 361
    invoke-direct {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 362
    .line 363
    .line 364
    const/16 v6, 0x8

    .line 365
    .line 366
    filled-new-array {v14, v4, v5, v6}, [I

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    invoke-virtual {v2, v5}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-virtual {v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 379
    .line 380
    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 381
    .line 382
    const/16 v7, 0x2774

    .line 383
    .line 384
    invoke-virtual {v5, v7, v2, v3, v6}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 385
    .line 386
    .line 387
    if-eqz v1, :cond_3

    .line 388
    .line 389
    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 390
    .line 391
    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    .line 392
    .line 393
    .line 394
    filled-new-array {v12, v13, v14, v4}, [I

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    invoke-virtual {v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 407
    .line 408
    iget-object v4, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 409
    .line 410
    const/16 v5, 0x27d8

    .line 411
    .line 412
    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 413
    .line 414
    .line 415
    :cond_3
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 416
    .line 417
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    const-string v2, "android.hardware.uwb"

    .line 422
    .line 423
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    const/4 v2, 0x0

    .line 428
    if-eqz v1, :cond_4

    .line 429
    .line 430
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 431
    .line 432
    const-class v4, Landroid/uwb/UwbManager;

    .line 433
    .line 434
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    check-cast v1, Landroid/uwb/UwbManager;

    .line 439
    .line 440
    goto :goto_2

    .line 441
    :cond_4
    move-object v1, v2

    .line 442
    :goto_2
    iput-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mUwbManager:Landroid/uwb/UwbManager;

    .line 443
    .line 444
    if-nez v1, :cond_5

    .line 445
    .line 446
    goto :goto_3

    .line 447
    :cond_5
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 448
    .line 449
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 450
    .line 451
    const/16 v4, 0x27cc

    .line 452
    .line 453
    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 454
    .line 455
    .line 456
    :goto_3
    return-void

    .line 457
    :goto_4
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    throw v0

    .line 459
    :pswitch_0
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->$r8$lambda$qb74jErDmbpYjoDRKkDDIHHyoHk(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    .line 460
    .line 461
    .line 462
    return-void

    .line 463
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
