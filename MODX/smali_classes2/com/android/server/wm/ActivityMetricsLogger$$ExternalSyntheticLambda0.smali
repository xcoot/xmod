.class public final synthetic Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityMetricsLogger;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

.field public final synthetic f$5:Z

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;JILcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$2:J

    .line 9
    .line 10
    iput p5, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 13
    .line 14
    iput-boolean p7, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$5:Z

    .line 15
    .line 16
    iput p8, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$6:I

    .line 17
    .line 18
    iput p9, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$7:I

    .line 19
    .line 20
    iput-boolean p10, p0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$8:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, -0x1

    .line 4
    iget-object v3, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 5
    .line 6
    iget-object v4, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 7
    .line 8
    iget-wide v5, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$2:J

    .line 9
    .line 10
    iget v13, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    .line 12
    iget-object v12, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    .line 13
    .line 14
    iget-boolean v11, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$5:Z

    .line 15
    .line 16
    iget v10, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$6:I

    .line 17
    .line 18
    iget v9, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$7:I

    .line 19
    .line 20
    iget-boolean v8, v0, Lcom/android/server/wm/ActivityMetricsLogger$$ExternalSyntheticLambda0;->f$8:Z

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-boolean v0, v4, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    .line 26
    .line 27
    const/4 v14, 0x0

    .line 28
    if-eqz v0, :cond_46

    .line 29
    .line 30
    new-instance v0, Landroid/metrics/LogMaker;

    .line 31
    .line 32
    const/16 v7, 0x2f9

    .line 33
    .line 34
    invoke-direct {v0, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iget-object v7, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v7}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 40
    .line 41
    .line 42
    iget v7, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    .line 43
    .line 44
    invoke-virtual {v0, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 45
    .line 46
    .line 47
    const/16 v7, 0x367

    .line 48
    .line 49
    iget-object v15, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v7, v15}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 52
    .line 53
    .line 54
    iget-object v7, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 55
    .line 56
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    .line 57
    .line 58
    .line 59
    move-result v16

    .line 60
    iget-object v7, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v7, :cond_0

    .line 63
    .line 64
    const/16 v15, 0x388

    .line 65
    .line 66
    invoke-virtual {v0, v15, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object v15, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v15, :cond_1

    .line 72
    .line 73
    const/16 v7, 0x387

    .line 74
    .line 75
    invoke-virtual {v0, v7, v15}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    const/16 v1, 0x389

    .line 83
    .line 84
    invoke-virtual {v0, v1, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 85
    .line 86
    .line 87
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 88
    .line 89
    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 90
    .line 91
    .line 92
    move-result-wide v5

    .line 93
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/16 v5, 0x145

    .line 98
    .line 99
    invoke-virtual {v0, v5, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 100
    .line 101
    .line 102
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const/16 v5, 0x13f

    .line 107
    .line 108
    invoke-virtual {v0, v5, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 109
    .line 110
    .line 111
    iget v1, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 114
    .line 115
    .line 116
    iget v1, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->startingWindowDelayMs:I

    .line 117
    .line 118
    if-eq v1, v2, :cond_2

    .line 119
    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const/16 v5, 0x141

    .line 125
    .line 126
    invoke-virtual {v0, v5, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 127
    .line 128
    .line 129
    :cond_2
    iget v1, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->bindApplicationDelayMs:I

    .line 130
    .line 131
    if-eq v1, v2, :cond_3

    .line 132
    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const/16 v5, 0x3b1

    .line 138
    .line 139
    invoke-virtual {v0, v5, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 140
    .line 141
    .line 142
    :cond_3
    iget v1, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 143
    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    const/16 v5, 0x142

    .line 149
    .line 150
    invoke-virtual {v0, v5, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 151
    .line 152
    .line 153
    iget-object v1, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    .line 154
    .line 155
    if-nez v1, :cond_4

    .line 156
    .line 157
    const-class v1, Landroid/content/pm/dex/ArtManagerInternal;

    .line 158
    .line 159
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Landroid/content/pm/dex/ArtManagerInternal;

    .line 164
    .line 165
    iput-object v1, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    .line 166
    .line 167
    :cond_4
    iget-object v1, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    .line 168
    .line 169
    if-eqz v1, :cond_6

    .line 170
    .line 171
    iget-object v5, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    .line 172
    .line 173
    if-nez v5, :cond_5

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_5
    iget-object v6, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 177
    .line 178
    iget-object v7, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v1, v6, v5, v7}, Landroid/content/pm/dex/ArtManagerInternal;->getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    goto :goto_1

    .line 185
    :cond_6
    :goto_0
    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    :goto_1
    invoke-virtual {v1}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    const/16 v6, 0x529

    .line 198
    .line 199
    invoke-virtual {v0, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    const/16 v6, 0x528

    .line 211
    .line 212
    invoke-virtual {v0, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 213
    .line 214
    .line 215
    iget-object v5, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 216
    .line 217
    invoke-virtual {v5, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 218
    .line 219
    .line 220
    iget-object v0, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 221
    .line 222
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    if-eqz v0, :cond_8

    .line 227
    .line 228
    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_8

    .line 233
    .line 234
    iget-object v0, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 235
    .line 236
    iget v5, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    .line 237
    .line 238
    iget-object v6, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 239
    .line 240
    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 241
    .line 242
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {v6, v14, v5, v0}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(IILjava/lang/String;)Landroid/content/pm/IncrementalStatesInfo;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    if-eqz v0, :cond_7

    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/content/pm/IncrementalStatesInfo;->isLoading()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_7

    .line 257
    .line 258
    const/4 v0, 0x1

    .line 259
    goto :goto_2

    .line 260
    :cond_7
    move v0, v14

    .line 261
    :goto_2
    move/from16 v28, v0

    .line 262
    .line 263
    const/16 v27, 0x1

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_8
    move/from16 v27, v14

    .line 267
    .line 268
    move/from16 v28, v27

    .line 269
    .line 270
    :goto_3
    iget-object v0, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    .line 271
    .line 272
    const/4 v5, 0x2

    .line 273
    if-eqz v0, :cond_a

    .line 274
    .line 275
    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mStoppedState:I

    .line 276
    .line 277
    if-ne v0, v5, :cond_9

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_9
    iget-object v0, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    .line 281
    .line 282
    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mStoppedState:I

    .line 283
    .line 284
    const/4 v6, 0x1

    .line 285
    if-ne v0, v6, :cond_b

    .line 286
    .line 287
    :goto_4
    iget-object v0, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    .line 288
    .line 289
    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mWasStoppedLogged:Z

    .line 290
    .line 291
    if-nez v0, :cond_b

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_a
    iget-object v0, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 295
    .line 296
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 297
    .line 298
    const/high16 v6, 0x200000

    .line 299
    .line 300
    and-int/2addr v0, v6

    .line 301
    if-eqz v0, :cond_b

    .line 302
    .line 303
    :goto_5
    move/from16 v34, v5

    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_b
    const/16 v34, 0x1

    .line 307
    .line 308
    :goto_6
    iget-object v0, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    .line 309
    .line 310
    if-eqz v0, :cond_d

    .line 311
    .line 312
    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mStoppedState:I

    .line 313
    .line 314
    const/4 v6, 0x1

    .line 315
    if-ne v0, v6, :cond_c

    .line 316
    .line 317
    iget-object v0, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    .line 318
    .line 319
    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mWasStoppedLogged:Z

    .line 320
    .line 321
    if-nez v0, :cond_c

    .line 322
    .line 323
    const/4 v0, 0x1

    .line 324
    goto :goto_7

    .line 325
    :cond_c
    move v0, v14

    .line 326
    :goto_7
    move/from16 v36, v0

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_d
    :try_start_0
    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 330
    .line 331
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 332
    .line 333
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    iget-object v6, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 338
    .line 339
    iget v7, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    .line 340
    .line 341
    invoke-virtual {v0, v7, v6}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(ILjava/lang/String;)Z

    .line 342
    .line 343
    .line 344
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    const/4 v6, 0x1

    .line 346
    xor-int/2addr v0, v6

    .line 347
    goto :goto_7

    .line 348
    :catch_0
    const/16 v36, 0x1

    .line 349
    .line 350
    :goto_8
    iget-object v0, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 351
    .line 352
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 353
    .line 354
    iget-object v6, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 355
    .line 356
    iget v7, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    .line 357
    .line 358
    iget-boolean v14, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->relaunched:Z

    .line 359
    .line 360
    invoke-static {v7, v14}, Lcom/android/server/wm/ActivityMetricsLogger;->getAppStartTransitionType(IZ)I

    .line 361
    .line 362
    .line 363
    move-result v17

    .line 364
    iget-object v14, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 365
    .line 366
    iget-object v7, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    .line 367
    .line 368
    iget v5, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    .line 369
    .line 370
    iget v2, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->startingWindowDelayMs:I

    .line 371
    .line 372
    move-object/from16 v18, v14

    .line 373
    .line 374
    iget v14, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->bindApplicationDelayMs:I

    .line 375
    .line 376
    move-object/from16 v19, v7

    .line 377
    .line 378
    iget v7, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 379
    .line 380
    move/from16 v20, v7

    .line 381
    .line 382
    invoke-virtual {v1}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    .line 383
    .line 384
    .line 385
    move-result v22

    .line 386
    invoke-virtual {v1}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    .line 387
    .line 388
    .line 389
    move-result v23

    .line 390
    iget v7, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceType:I

    .line 391
    .line 392
    move/from16 v24, v7

    .line 393
    .line 394
    iget v7, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceEventDelayMs:I

    .line 395
    .line 396
    move/from16 v25, v7

    .line 397
    .line 398
    iget-object v7, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 399
    .line 400
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 401
    .line 402
    .line 403
    move-result v29

    .line 404
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 405
    .line 406
    move/from16 v26, v8

    .line 407
    .line 408
    move/from16 v21, v9

    .line 409
    .line 410
    iget-wide v8, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->timestampNs:J

    .line 411
    .line 412
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 413
    .line 414
    .line 415
    move-result-wide v30

    .line 416
    iget v7, v12, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->multiWindowLaunchType:I

    .line 417
    .line 418
    move/from16 v39, v7

    .line 419
    .line 420
    const/16 v7, 0x30

    .line 421
    .line 422
    const-wide/16 v37, 0x0

    .line 423
    .line 424
    const-wide/16 v8, 0x0

    .line 425
    .line 426
    move/from16 v33, v14

    .line 427
    .line 428
    move-object/from16 v32, v15

    .line 429
    .line 430
    move-wide v14, v8

    .line 431
    const/16 v35, 0x0

    .line 432
    .line 433
    move/from16 v9, v26

    .line 434
    .line 435
    move v8, v0

    .line 436
    move/from16 v40, v9

    .line 437
    .line 438
    move/from16 v0, v21

    .line 439
    .line 440
    move-object v9, v6

    .line 441
    move v6, v10

    .line 442
    move/from16 v10, v17

    .line 443
    .line 444
    move/from16 v26, v11

    .line 445
    .line 446
    move-object/from16 v11, v18

    .line 447
    .line 448
    move-object/from16 v41, v12

    .line 449
    .line 450
    move-object/from16 v12, v19

    .line 451
    .line 452
    move/from16 p0, v13

    .line 453
    .line 454
    move/from16 v13, v16

    .line 455
    .line 456
    move/from16 v16, v5

    .line 457
    .line 458
    move/from16 v17, p0

    .line 459
    .line 460
    move/from16 v18, v2

    .line 461
    .line 462
    move/from16 v19, v33

    .line 463
    .line 464
    move-object/from16 v21, v32

    .line 465
    .line 466
    move/from16 v32, v6

    .line 467
    .line 468
    move/from16 v33, v0

    .line 469
    .line 470
    invoke-static/range {v7 .. v39}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZJIIIIILjava/lang/String;IIIIZZZIJIIIZZJI)V

    .line 471
    .line 472
    .line 473
    move-object/from16 v2, v41

    .line 474
    .line 475
    iget-object v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    .line 476
    .line 477
    if-eqz v0, :cond_e

    .line 478
    .line 479
    const/4 v5, 0x1

    .line 480
    iput-boolean v5, v0, Lcom/android/server/wm/WindowProcessController;->mWasStoppedLogged:Z

    .line 481
    .line 482
    :cond_e
    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    .line 483
    .line 484
    if-nez v0, :cond_f

    .line 485
    .line 486
    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 487
    .line 488
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 489
    .line 490
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 491
    .line 492
    const-string v5, "PkgPredictorService"

    .line 493
    .line 494
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    check-cast v0, Lcom/samsung/android/ipm/SecIpmManager;

    .line 499
    .line 500
    iput-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    .line 501
    .line 502
    :cond_f
    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    .line 503
    .line 504
    if-eqz v0, :cond_10

    .line 505
    .line 506
    const-string v0, "[secipm]"

    .line 507
    .line 508
    const-string/jumbo v5, "mSecIpmManager report to nap"

    .line 509
    .line 510
    .line 511
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    iget-object v6, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mSecIpmManager:Lcom/samsung/android/ipm/SecIpmManager;

    .line 515
    .line 516
    iget-object v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 517
    .line 518
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 519
    .line 520
    iget-object v8, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 521
    .line 522
    iget-object v9, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 523
    .line 524
    iget v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 525
    .line 526
    int-to-long v10, v0

    .line 527
    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/ipm/SecIpmManager;->reportToNAP(ILjava/lang/String;Ljava/lang/String;J)V

    .line 528
    .line 529
    .line 530
    :cond_10
    iget-object v12, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 531
    .line 532
    iget-object v13, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 533
    .line 534
    iget v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    .line 535
    .line 536
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->convertReason(I)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v14

    .line 540
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 541
    .line 542
    .line 543
    move-result-object v15

    .line 544
    iget v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->startingWindowDelayMs:I

    .line 545
    .line 546
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 547
    .line 548
    .line 549
    move-result-object v16

    .line 550
    iget v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->bindApplicationDelayMs:I

    .line 551
    .line 552
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 553
    .line 554
    .line 555
    move-result-object v17

    .line 556
    iget v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 557
    .line 558
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 559
    .line 560
    .line 561
    move-result-object v18

    .line 562
    iget v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    .line 563
    .line 564
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->convertTRtype(I)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v19

    .line 568
    invoke-virtual {v1}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->convertFilter(I)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v20

    .line 576
    filled-new-array/range {v12 .. v20}, [Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    const v5, 0x13d684

    .line 581
    .line 582
    .line 583
    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 584
    .line 585
    .line 586
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    iget-object v5, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processName:Ljava/lang/String;

    .line 591
    .line 592
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 593
    .line 594
    .line 595
    const/4 v6, 0x4

    .line 596
    :try_start_1
    iget-boolean v7, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 597
    .line 598
    if-nez v7, :cond_11

    .line 599
    .line 600
    :goto_9
    const/4 v7, 0x0

    .line 601
    goto :goto_b

    .line 602
    :cond_11
    sget v7, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SlotCount:I

    .line 603
    .line 604
    if-gtz v7, :cond_12

    .line 605
    .line 606
    goto :goto_9

    .line 607
    :cond_12
    if-nez v5, :cond_13

    .line 608
    .line 609
    goto :goto_9

    .line 610
    :cond_13
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mMsgHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapMsgHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 611
    .line 612
    const/4 v7, 0x0

    .line 613
    :try_start_2
    invoke-virtual {v0, v6, v7, v7, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 614
    .line 615
    .line 616
    move-result-object v5

    .line 617
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 618
    .line 619
    .line 620
    goto :goto_b

    .line 621
    :catch_1
    move-exception v0

    .line 622
    goto :goto_a

    .line 623
    :catch_2
    move-exception v0

    .line 624
    const/4 v7, 0x0

    .line 625
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 626
    .line 627
    .line 628
    :goto_b
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->sPmmEnabledBySpcm:Z

    .line 629
    .line 630
    if-eqz v0, :cond_42

    .line 631
    .line 632
    iget-object v0, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 633
    .line 634
    if-eqz v0, :cond_42

    .line 635
    .line 636
    iget-object v5, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    .line 637
    .line 638
    iget-object v5, v5, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 639
    .line 640
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->currentLauncherName:Ljava/lang/String;

    .line 641
    .line 642
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 643
    .line 644
    .line 645
    move-result v5

    .line 646
    if-nez v5, :cond_42

    .line 647
    .line 648
    const-string v5, "android"

    .line 649
    .line 650
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result v5

    .line 654
    if-nez v5, :cond_42

    .line 655
    .line 656
    sget-object v5, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    .line 657
    .line 658
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    if-eqz v0, :cond_14

    .line 663
    .line 664
    goto/16 :goto_25

    .line 665
    .line 666
    :cond_14
    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    .line 667
    .line 668
    iget-object v5, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 669
    .line 670
    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 671
    .line 672
    if-eqz v8, :cond_15

    .line 673
    .line 674
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 675
    .line 676
    .line 677
    move-result v8

    .line 678
    if-lez v8, :cond_15

    .line 679
    .line 680
    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 681
    .line 682
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    move-result v8

    .line 686
    const/4 v9, 0x1

    .line 687
    xor-int/2addr v8, v9

    .line 688
    goto :goto_c

    .line 689
    :cond_15
    const/4 v8, 0x1

    .line 690
    :goto_c
    sget-boolean v9, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 691
    .line 692
    if-eqz v9, :cond_16

    .line 693
    .line 694
    const-string v9, "isKpmSafe() callingPackage : "

    .line 695
    .line 696
    const-string v10, ", mPrevPackage : "

    .line 697
    .line 698
    invoke-static {v9, v5, v10}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    move-result-object v5

    .line 702
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 703
    .line 704
    const-string v9, "ActivityManager_kpm"

    .line 705
    .line 706
    invoke-static {v5, v0, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    :cond_16
    if-eqz v8, :cond_42

    .line 710
    .line 711
    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    .line 712
    .line 713
    iget-object v5, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 714
    .line 715
    iget-object v8, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processName:Ljava/lang/String;

    .line 716
    .line 717
    iget v9, v2, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    .line 718
    .line 719
    iget-boolean v10, v0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    .line 720
    .line 721
    const/4 v11, 0x5

    .line 722
    if-nez v10, :cond_1a

    .line 723
    .line 724
    iget v10, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 725
    .line 726
    rem-int/lit8 v12, v10, 0x18

    .line 727
    .line 728
    iput v12, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    .line 729
    .line 730
    const/4 v13, 0x1

    .line 731
    add-int/2addr v10, v13

    .line 732
    iput v10, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 733
    .line 734
    new-instance v14, Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 735
    .line 736
    invoke-direct {v14, v0, v10}, Lcom/android/server/am/KillPolicyManager$KpmRaw;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    .line 737
    .line 738
    .line 739
    iget-object v10, v0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 740
    .line 741
    aput-object v14, v10, v12

    .line 742
    .line 743
    iget v10, v0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    .line 744
    .line 745
    rem-int/lit8 v12, v10, 0x1e

    .line 746
    .line 747
    iput v12, v0, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    .line 748
    .line 749
    add-int/2addr v10, v13

    .line 750
    iput v10, v0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    .line 751
    .line 752
    new-instance v13, Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 753
    .line 754
    invoke-direct {v13, v0, v10}, Lcom/android/server/am/KillPolicyManager$KpmRaw;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    .line 755
    .line 756
    .line 757
    iget-object v10, v0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 758
    .line 759
    aput-object v13, v10, v12

    .line 760
    .line 761
    iget-object v10, v0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Lcom/android/server/am/KillPolicyManager$2;

    .line 762
    .line 763
    if-eqz v10, :cond_17

    .line 764
    .line 765
    :goto_d
    move-object/from16 v21, v4

    .line 766
    .line 767
    :goto_e
    const/4 v4, 0x1

    .line 768
    goto/16 :goto_11

    .line 769
    .line 770
    :cond_17
    iget-object v10, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 771
    .line 772
    const-string v12, "alarm"

    .line 773
    .line 774
    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v10

    .line 778
    move-object v12, v10

    .line 779
    check-cast v12, Landroid/app/AlarmManager;

    .line 780
    .line 781
    const-string v10, "ActivityManager_kpm"

    .line 782
    .line 783
    if-nez v12, :cond_18

    .line 784
    .line 785
    const-string/jumbo v12, "schedule regist failed \'Alarm get failed\'"

    .line 786
    .line 787
    .line 788
    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    .line 790
    .line 791
    goto :goto_d

    .line 792
    :cond_18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 793
    .line 794
    .line 795
    move-result-object v13

    .line 796
    const/16 v14, 0xd

    .line 797
    .line 798
    invoke-virtual {v13, v14, v7}, Ljava/util/Calendar;->set(II)V

    .line 799
    .line 800
    .line 801
    const/16 v14, 0xe

    .line 802
    .line 803
    invoke-virtual {v13, v14, v7}, Ljava/util/Calendar;->set(II)V

    .line 804
    .line 805
    .line 806
    sget-boolean v14, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 807
    .line 808
    if-eqz v14, :cond_19

    .line 809
    .line 810
    const/16 v14, 0xc

    .line 811
    .line 812
    invoke-virtual {v13, v14, v11}, Ljava/util/Calendar;->add(II)V

    .line 813
    .line 814
    .line 815
    const-wide/32 v14, 0x493e0

    .line 816
    .line 817
    .line 818
    :goto_f
    move-wide/from16 v16, v14

    .line 819
    .line 820
    goto :goto_10

    .line 821
    :cond_19
    const/4 v14, 0x1

    .line 822
    invoke-virtual {v13, v11, v14}, Ljava/util/Calendar;->add(II)V

    .line 823
    .line 824
    .line 825
    const-wide/32 v14, 0x5265c00

    .line 826
    .line 827
    .line 828
    goto :goto_f

    .line 829
    :goto_10
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 830
    .line 831
    .line 832
    move-result-wide v14

    .line 833
    new-instance v6, Ljava/lang/StringBuilder;

    .line 834
    .line 835
    const-string v11, "Schedule the sample, next trigger time : "

    .line 836
    .line 837
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 844
    .line 845
    .line 846
    move-result-object v6

    .line 847
    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    .line 849
    .line 850
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 851
    .line 852
    new-instance v10, Landroid/content/Intent;

    .line 853
    .line 854
    const-string v11, "com.samsung.KPM_USER_TREND_DAILY_SAMPLING"

    .line 855
    .line 856
    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    move-object/from16 v21, v4

    .line 860
    .line 861
    const/high16 v4, 0x4000000

    .line 862
    .line 863
    invoke-static {v6, v7, v10, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 864
    .line 865
    .line 866
    move-result-object v18

    .line 867
    new-instance v4, Lcom/android/server/am/KillPolicyManager$2;

    .line 868
    .line 869
    invoke-direct {v4, v0, v14, v15}, Lcom/android/server/am/KillPolicyManager$2;-><init>(Lcom/android/server/am/KillPolicyManager;J)V

    .line 870
    .line 871
    .line 872
    iput-object v4, v0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Lcom/android/server/am/KillPolicyManager$2;

    .line 873
    .line 874
    new-instance v4, Landroid/content/IntentFilter;

    .line 875
    .line 876
    invoke-direct {v4, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 880
    .line 881
    iget-object v10, v0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Lcom/android/server/am/KillPolicyManager$2;

    .line 882
    .line 883
    invoke-virtual {v6, v10, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 884
    .line 885
    .line 886
    new-instance v4, Landroid/content/IntentFilter;

    .line 887
    .line 888
    const-string v6, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 889
    .line 890
    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 894
    .line 895
    iget-object v10, v0, Lcom/android/server/am/KillPolicyManager;->mIdleModeReceiver:Lcom/android/server/am/KillPolicyManager$1;

    .line 896
    .line 897
    invoke-virtual {v6, v10, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 898
    .line 899
    .line 900
    const/4 v4, 0x1

    .line 901
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 902
    .line 903
    .line 904
    move-result-wide v14

    .line 905
    move v13, v4

    .line 906
    invoke-virtual/range {v12 .. v18}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 907
    .line 908
    .line 909
    goto/16 :goto_e

    .line 910
    .line 911
    :goto_11
    iput-boolean v4, v0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    .line 912
    .line 913
    goto :goto_12

    .line 914
    :cond_1a
    move-object/from16 v21, v4

    .line 915
    .line 916
    :goto_12
    iget-wide v10, v0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    .line 917
    .line 918
    const-wide/16 v12, 0x1

    .line 919
    .line 920
    add-long/2addr v10, v12

    .line 921
    iput-wide v10, v0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    .line 922
    .line 923
    iget-object v4, v0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    .line 924
    .line 925
    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->readLmkdKillCount()V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 929
    .line 930
    .line 931
    move-result-object v4

    .line 932
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 933
    .line 934
    .line 935
    move-result-object v6

    .line 936
    if-eqz v4, :cond_1b

    .line 937
    .line 938
    invoke-virtual {v4, v9, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateProcessStateInfo(ILjava/lang/String;)V

    .line 939
    .line 940
    .line 941
    :cond_1b
    if-eqz v6, :cond_1c

    .line 942
    .line 943
    invoke-virtual {v6, v9, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateProcessStateInfo(ILjava/lang/String;)V

    .line 944
    .line 945
    .line 946
    :cond_1c
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 947
    .line 948
    .line 949
    move-result-object v4

    .line 950
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 951
    .line 952
    .line 953
    move-result-object v6

    .line 954
    new-instance v9, Lcom/android/internal/util/MemInfoReader;

    .line 955
    .line 956
    invoke-direct {v9}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 957
    .line 958
    .line 959
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    .line 960
    .line 961
    .line 962
    new-instance v10, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 963
    .line 964
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 965
    .line 966
    .line 967
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    .line 968
    .line 969
    .line 970
    move-result-wide v14

    .line 971
    long-to-double v14, v14

    .line 972
    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    .line 973
    .line 974
    div-double v14, v14, v16

    .line 975
    .line 976
    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    .line 977
    .line 978
    add-double v14, v14, v22

    .line 979
    .line 980
    double-to-int v11, v14

    .line 981
    iput v11, v10, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    .line 982
    .line 983
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    .line 984
    .line 985
    .line 986
    move-result-wide v14

    .line 987
    long-to-double v14, v14

    .line 988
    div-double v14, v14, v16

    .line 989
    .line 990
    add-double v14, v14, v22

    .line 991
    .line 992
    double-to-int v11, v14

    .line 993
    iput v11, v10, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    .line 994
    .line 995
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    .line 996
    .line 997
    .line 998
    move-result-wide v14

    .line 999
    long-to-double v14, v14

    .line 1000
    const-wide/high16 v24, 0x4130000000000000L    # 1048576.0

    .line 1001
    .line 1002
    div-double v14, v14, v24

    .line 1003
    .line 1004
    add-double v14, v14, v22

    .line 1005
    .line 1006
    double-to-int v11, v14

    .line 1007
    iput v11, v10, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    .line 1008
    .line 1009
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    .line 1010
    .line 1011
    .line 1012
    move-result-wide v14

    .line 1013
    long-to-double v14, v14

    .line 1014
    div-double v14, v14, v16

    .line 1015
    .line 1016
    add-double v14, v14, v22

    .line 1017
    .line 1018
    double-to-int v11, v14

    .line 1019
    iput v11, v10, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    .line 1020
    .line 1021
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    .line 1022
    .line 1023
    .line 1024
    move-result-wide v14

    .line 1025
    long-to-double v14, v14

    .line 1026
    div-double v14, v14, v24

    .line 1027
    .line 1028
    add-double v14, v14, v22

    .line 1029
    .line 1030
    double-to-int v11, v14

    .line 1031
    iput v11, v10, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    .line 1032
    .line 1033
    iget v11, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 1034
    .line 1035
    if-gtz v11, :cond_1d

    .line 1036
    .line 1037
    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    .line 1038
    .line 1039
    .line 1040
    move-result-wide v14

    .line 1041
    long-to-double v14, v14

    .line 1042
    div-double v14, v14, v16

    .line 1043
    .line 1044
    add-double v14, v14, v22

    .line 1045
    .line 1046
    double-to-int v9, v14

    .line 1047
    iput v9, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    .line 1048
    .line 1049
    :cond_1d
    if-eqz v4, :cond_1e

    .line 1050
    .line 1051
    invoke-virtual {v4, v10}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateMemInfo(Lcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    .line 1052
    .line 1053
    .line 1054
    :cond_1e
    if-eqz v6, :cond_1f

    .line 1055
    .line 1056
    invoke-virtual {v6, v10}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateMemInfo(Lcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    .line 1057
    .line 1058
    .line 1059
    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v24

    .line 1063
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v4

    .line 1067
    iget-boolean v6, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiCpuPermission:Z

    .line 1068
    .line 1069
    const-string v9, "ActivityManager"

    .line 1070
    .line 1071
    if-eqz v6, :cond_21

    .line 1072
    .line 1073
    sget-object v6, Lcom/android/server/am/KillPolicyManager$PsiFileType;->CPU:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 1074
    .line 1075
    invoke-static {v6}, Lcom/android/server/am/KillPolicyManager;->getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;)Lcom/android/server/am/KillPolicyManager$PsiFile;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v6

    .line 1079
    iget-boolean v14, v6, Lcom/android/server/am/KillPolicyManager$PsiFile;->mIsEmptyFile:Z

    .line 1080
    .line 1081
    if-eqz v14, :cond_20

    .line 1082
    .line 1083
    iput-boolean v7, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiCpuPermission:Z

    .line 1084
    .line 1085
    const-string v6, "No permission - psi cpu"

    .line 1086
    .line 1087
    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    .line 1089
    .line 1090
    goto :goto_13

    .line 1091
    :cond_20
    iget-wide v14, v6, Lcom/android/server/am/KillPolicyManager$PsiFile;->mSomeAvg10:D

    .line 1092
    .line 1093
    goto :goto_14

    .line 1094
    :cond_21
    :goto_13
    const-wide/16 v14, 0x0

    .line 1095
    .line 1096
    :goto_14
    iget-boolean v6, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiMemoryPermission:Z

    .line 1097
    .line 1098
    if-eqz v6, :cond_23

    .line 1099
    .line 1100
    sget-object v6, Lcom/android/server/am/KillPolicyManager$PsiFileType;->MEMORY:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 1101
    .line 1102
    invoke-static {v6}, Lcom/android/server/am/KillPolicyManager;->getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;)Lcom/android/server/am/KillPolicyManager$PsiFile;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v6

    .line 1106
    iget-boolean v10, v6, Lcom/android/server/am/KillPolicyManager$PsiFile;->mIsEmptyFile:Z

    .line 1107
    .line 1108
    if-eqz v10, :cond_22

    .line 1109
    .line 1110
    iput-boolean v7, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiMemoryPermission:Z

    .line 1111
    .line 1112
    const-string v6, "No permission - psi memory"

    .line 1113
    .line 1114
    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    .line 1116
    .line 1117
    goto :goto_15

    .line 1118
    :cond_22
    iget-wide v10, v6, Lcom/android/server/am/KillPolicyManager$PsiFile;->mSomeAvg10:D

    .line 1119
    .line 1120
    goto :goto_16

    .line 1121
    :cond_23
    :goto_15
    const-wide/16 v10, 0x0

    .line 1122
    .line 1123
    :goto_16
    iget-boolean v6, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiIoPermission:Z

    .line 1124
    .line 1125
    if-eqz v6, :cond_25

    .line 1126
    .line 1127
    sget-object v6, Lcom/android/server/am/KillPolicyManager$PsiFileType;->IO:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 1128
    .line 1129
    invoke-static {v6}, Lcom/android/server/am/KillPolicyManager;->getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;)Lcom/android/server/am/KillPolicyManager$PsiFile;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v6

    .line 1133
    iget-boolean v12, v6, Lcom/android/server/am/KillPolicyManager$PsiFile;->mIsEmptyFile:Z

    .line 1134
    .line 1135
    if-eqz v12, :cond_24

    .line 1136
    .line 1137
    iput-boolean v7, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiIoPermission:Z

    .line 1138
    .line 1139
    const-string v6, "No permission - psi io"

    .line 1140
    .line 1141
    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    .line 1143
    .line 1144
    goto :goto_17

    .line 1145
    :cond_24
    iget-wide v12, v6, Lcom/android/server/am/KillPolicyManager$PsiFile;->mSomeAvg10:D

    .line 1146
    .line 1147
    move-wide/from16 v16, v12

    .line 1148
    .line 1149
    goto :goto_18

    .line 1150
    :cond_25
    :goto_17
    const-wide/16 v16, 0x0

    .line 1151
    .line 1152
    :goto_18
    if-eqz v24, :cond_26

    .line 1153
    .line 1154
    move-wide/from16 v25, v14

    .line 1155
    .line 1156
    move-wide/from16 v27, v10

    .line 1157
    .line 1158
    move-wide/from16 v29, v16

    .line 1159
    .line 1160
    invoke-virtual/range {v24 .. v30}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updatePsiInfo(DDD)V

    .line 1161
    .line 1162
    .line 1163
    :cond_26
    if-eqz v4, :cond_27

    .line 1164
    .line 1165
    move-object/from16 v25, v4

    .line 1166
    .line 1167
    move-wide/from16 v26, v14

    .line 1168
    .line 1169
    move-wide/from16 v28, v10

    .line 1170
    .line 1171
    move-wide/from16 v30, v16

    .line 1172
    .line 1173
    invoke-virtual/range {v25 .. v31}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updatePsiInfo(DDD)V

    .line 1174
    .line 1175
    .line 1176
    :cond_27
    iget-wide v9, v0, Lcom/android/server/am/KillPolicyManager;->mAppLaunchCount:J

    .line 1177
    .line 1178
    sget v4, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    .line 1179
    .line 1180
    sget v6, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    .line 1181
    .line 1182
    mul-int/2addr v4, v6

    .line 1183
    int-to-long v11, v4

    .line 1184
    cmp-long v4, v9, v11

    .line 1185
    .line 1186
    if-gtz v4, :cond_28

    .line 1187
    .line 1188
    const/4 v14, 0x1

    .line 1189
    goto :goto_19

    .line 1190
    :cond_28
    move v14, v7

    .line 1191
    :goto_19
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v4

    .line 1195
    if-eqz v14, :cond_29

    .line 1196
    .line 1197
    sget v6, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    .line 1198
    .line 1199
    goto :goto_1a

    .line 1200
    :cond_29
    sget v6, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    .line 1201
    .line 1202
    :goto_1a
    iput v6, v0, Lcom/android/server/am/KillPolicyManager;->mTrigger:I

    .line 1203
    .line 1204
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    .line 1205
    .line 1206
    const-string v9, "ActivityManager_kpm"

    .line 1207
    .line 1208
    if-eqz v4, :cond_2e

    .line 1209
    .line 1210
    iget v12, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 1211
    .line 1212
    if-eqz v12, :cond_2e

    .line 1213
    .line 1214
    const/4 v13, 0x5

    .line 1215
    rem-int/2addr v12, v13

    .line 1216
    if-nez v12, :cond_2e

    .line 1217
    .line 1218
    iget-object v12, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 1219
    .line 1220
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1221
    .line 1222
    .line 1223
    move-object v13, v8

    .line 1224
    iget-wide v7, v6, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 1225
    .line 1226
    iget-wide v10, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleCachedMinCountOfLmkd:J

    .line 1227
    .line 1228
    sub-long/2addr v7, v10

    .line 1229
    iput-wide v7, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleCachedMinKillCount:J

    .line 1230
    .line 1231
    iget-wide v7, v6, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 1232
    .line 1233
    iget-wide v10, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePickedCountOfLmkd:J

    .line 1234
    .line 1235
    sub-long/2addr v7, v10

    .line 1236
    iput-wide v7, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePickedKillCount:J

    .line 1237
    .line 1238
    iget-wide v7, v6, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 1239
    .line 1240
    iget-wide v10, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleBServiceCountOfLmkd:J

    .line 1241
    .line 1242
    sub-long/2addr v7, v10

    .line 1243
    iput-wide v7, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleBServiceKillCount:J

    .line 1244
    .line 1245
    iget-wide v7, v6, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 1246
    .line 1247
    iget-wide v10, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePreviousCountOfLmkd:J

    .line 1248
    .line 1249
    sub-long/2addr v7, v10

    .line 1250
    iput-wide v7, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePreviousKillCount:J

    .line 1251
    .line 1252
    sget-boolean v7, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 1253
    .line 1254
    if-eqz v7, :cond_2a

    .line 1255
    .line 1256
    const/16 v7, 0x80

    .line 1257
    .line 1258
    const-string v8, "TinyCycle currentKillCountLmkd : (cPr : "

    .line 1259
    .line 1260
    invoke-static {v7, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v7

    .line 1264
    iget-wide v10, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePreviousKillCount:J

    .line 1265
    .line 1266
    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1267
    .line 1268
    .line 1269
    const-string v8, ", cSv : "

    .line 1270
    .line 1271
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    .line 1273
    .line 1274
    iget-wide v10, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleBServiceKillCount:J

    .line 1275
    .line 1276
    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1277
    .line 1278
    .line 1279
    const-string v8, ", cPi : "

    .line 1280
    .line 1281
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    .line 1283
    .line 1284
    iget-wide v10, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePickedKillCount:J

    .line 1285
    .line 1286
    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1287
    .line 1288
    .line 1289
    const-string v8, ", cCm : "

    .line 1290
    .line 1291
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    iget-wide v10, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleCachedMinKillCount:J

    .line 1295
    .line 1296
    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1297
    .line 1298
    .line 1299
    const-string v8, ")"

    .line 1300
    .line 1301
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v7

    .line 1308
    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    .line 1310
    .line 1311
    :cond_2a
    iget-wide v7, v6, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 1312
    .line 1313
    iput-wide v7, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleCachedMinCountOfLmkd:J

    .line 1314
    .line 1315
    iget-wide v7, v6, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 1316
    .line 1317
    iput-wide v7, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePickedCountOfLmkd:J

    .line 1318
    .line 1319
    iget-wide v7, v6, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 1320
    .line 1321
    iput-wide v7, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleBServiceCountOfLmkd:J

    .line 1322
    .line 1323
    iget-wide v7, v6, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 1324
    .line 1325
    iput-wide v7, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePreviousCountOfLmkd:J

    .line 1326
    .line 1327
    iget v7, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 1328
    .line 1329
    const/4 v8, 0x5

    .line 1330
    div-int/2addr v7, v8

    .line 1331
    const/4 v8, 0x1

    .line 1332
    sub-int/2addr v7, v8

    .line 1333
    rem-int/lit8 v7, v7, 0xa

    .line 1334
    .line 1335
    iget-wide v10, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePreviousKillCount:J

    .line 1336
    .line 1337
    const-wide/16 v15, 0x0

    .line 1338
    .line 1339
    cmp-long v8, v10, v15

    .line 1340
    .line 1341
    if-lez v8, :cond_2b

    .line 1342
    .line 1343
    sget-object v8, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1344
    .line 1345
    move-object/from16 v41, v2

    .line 1346
    .line 1347
    move-object/from16 v42, v8

    .line 1348
    .line 1349
    move-object v8, v1

    .line 1350
    move-object/from16 v1, v42

    .line 1351
    .line 1352
    goto :goto_1b

    .line 1353
    :cond_2b
    iget-wide v10, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleCachedMinKillCount:J

    .line 1354
    .line 1355
    move-object v8, v1

    .line 1356
    move-object/from16 v41, v2

    .line 1357
    .line 1358
    iget-wide v1, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleBServiceKillCount:J

    .line 1359
    .line 1360
    add-long/2addr v10, v1

    .line 1361
    cmp-long v1, v10, v15

    .line 1362
    .line 1363
    if-lez v1, :cond_2c

    .line 1364
    .line 1365
    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1366
    .line 1367
    goto :goto_1b

    .line 1368
    :cond_2c
    iget-wide v1, v12, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePickedKillCount:J

    .line 1369
    .line 1370
    iget v10, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    .line 1371
    .line 1372
    iget v11, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevTinyCachedNormalKillCount:I

    .line 1373
    .line 1374
    sub-int/2addr v10, v11

    .line 1375
    int-to-long v10, v10

    .line 1376
    add-long/2addr v1, v10

    .line 1377
    cmp-long v1, v1, v15

    .line 1378
    .line 1379
    if-lez v1, :cond_2d

    .line 1380
    .line 1381
    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1382
    .line 1383
    goto :goto_1b

    .line 1384
    :cond_2d
    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1385
    .line 1386
    :goto_1b
    iget v2, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    .line 1387
    .line 1388
    iput v2, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevTinyCachedNormalKillCount:I

    .line 1389
    .line 1390
    iget-object v2, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1391
    .line 1392
    aput-object v1, v2, v7

    .line 1393
    .line 1394
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 1395
    .line 1396
    if-eqz v1, :cond_2f

    .line 1397
    .line 1398
    const-string v1, "Tiny KPM New State"

    .line 1399
    .line 1400
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    .line 1402
    .line 1403
    goto :goto_1c

    .line 1404
    :cond_2e
    move-object/from16 v41, v2

    .line 1405
    .line 1406
    move-object v13, v8

    .line 1407
    move-object v8, v1

    .line 1408
    :cond_2f
    :goto_1c
    if-eqz v4, :cond_3e

    .line 1409
    .line 1410
    iget v1, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    .line 1411
    .line 1412
    iget v2, v0, Lcom/android/server/am/KillPolicyManager;->mTrigger:I

    .line 1413
    .line 1414
    if-ne v1, v2, :cond_3e

    .line 1415
    .line 1416
    const/4 v1, 0x1

    .line 1417
    if-eqz v14, :cond_30

    .line 1418
    .line 1419
    iput-boolean v1, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    .line 1420
    .line 1421
    :cond_30
    iget-object v2, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 1422
    .line 1423
    invoke-virtual {v2, v6}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->getCycleLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateKillInfo()V

    .line 1427
    .line 1428
    .line 1429
    iget-object v2, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 1430
    .line 1431
    iget v6, v2, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 1432
    .line 1433
    if-eq v6, v1, :cond_33

    .line 1434
    .line 1435
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_BTIME_ENABLE:Z

    .line 1436
    .line 1437
    if-eqz v1, :cond_32

    .line 1438
    .line 1439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1440
    .line 1441
    .line 1442
    move-result-wide v6

    .line 1443
    iget-wide v10, v2, Lcom/android/server/am/KillPolicyManager;->mKpmStartTime:J

    .line 1444
    .line 1445
    sub-long/2addr v6, v10

    .line 1446
    const-wide/16 v10, 0x3e8

    .line 1447
    .line 1448
    div-long/2addr v6, v10

    .line 1449
    const-wide/16 v10, 0x3c

    .line 1450
    .line 1451
    div-long/2addr v6, v10

    .line 1452
    const-wide/16 v10, 0xb4

    .line 1453
    .line 1454
    cmp-long v1, v6, v10

    .line 1455
    .line 1456
    if-ltz v1, :cond_31

    .line 1457
    .line 1458
    invoke-static {v4}, Lcom/android/server/am/KillPolicyManager;->changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v1

    .line 1462
    iput-object v1, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1463
    .line 1464
    goto :goto_1d

    .line 1465
    :cond_31
    iget-object v1, v2, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1466
    .line 1467
    iput-object v1, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1468
    .line 1469
    goto :goto_1d

    .line 1470
    :cond_32
    invoke-static {v4}, Lcom/android/server/am/KillPolicyManager;->changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v1

    .line 1474
    iput-object v1, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1475
    .line 1476
    :cond_33
    :goto_1d
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 1477
    .line 1478
    const-string/jumbo v2, "yyyyMMdd_HHmmss"

    .line 1479
    .line 1480
    .line 1481
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1482
    .line 1483
    .line 1484
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v2

    .line 1488
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v2

    .line 1492
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v1

    .line 1496
    iput-object v1, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    .line 1497
    .line 1498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1499
    .line 1500
    .line 1501
    move-result-wide v1

    .line 1502
    iput-wide v1, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    .line 1503
    .line 1504
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1505
    .line 1506
    .line 1507
    move-result-wide v1

    .line 1508
    iput-wide v1, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->uptimeMillis:J

    .line 1509
    .line 1510
    invoke-static {v4}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mcheckMemCriticalLowTH(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 1511
    .line 1512
    .line 1513
    iget-object v1, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1514
    .line 1515
    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1516
    .line 1517
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1518
    .line 1519
    if-ne v1, v2, :cond_34

    .line 1520
    .line 1521
    iget-wide v1, v0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    .line 1522
    .line 1523
    const-wide/16 v6, 0x1

    .line 1524
    .line 1525
    add-long/2addr v1, v6

    .line 1526
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    .line 1527
    .line 1528
    :cond_34
    iget-object v1, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    .line 1529
    .line 1530
    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->fillLmkdCounts([J)V

    .line 1531
    .line 1532
    .line 1533
    array-length v2, v1

    .line 1534
    const/4 v6, 0x1

    .line 1535
    sub-int/2addr v2, v6

    .line 1536
    :goto_1e
    if-ltz v2, :cond_35

    .line 1537
    .line 1538
    aget-wide v6, v1, v2

    .line 1539
    .line 1540
    iget-object v10, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdPrevCount:[J

    .line 1541
    .line 1542
    aget-wide v10, v10, v2

    .line 1543
    .line 1544
    sub-long/2addr v6, v10

    .line 1545
    aput-wide v6, v1, v2

    .line 1546
    .line 1547
    const/4 v6, -0x1

    .line 1548
    add-int/2addr v2, v6

    .line 1549
    goto :goto_1e

    .line 1550
    :cond_35
    const/4 v6, -0x1

    .line 1551
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1552
    .line 1553
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1554
    .line 1555
    if-eq v1, v2, :cond_37

    .line 1556
    .line 1557
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 1558
    .line 1559
    .line 1560
    move-result v1

    .line 1561
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$KpmState;->values()[Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v2

    .line 1565
    array-length v2, v2

    .line 1566
    if-ge v1, v2, :cond_37

    .line 1567
    .line 1568
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 1569
    .line 1570
    if-eqz v1, :cond_36

    .line 1571
    .line 1572
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1573
    .line 1574
    const-string v2, " KPM State Change. New State: "

    .line 1575
    .line 1576
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1577
    .line 1578
    .line 1579
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1580
    .line 1581
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1582
    .line 1583
    .line 1584
    const-string v2, " Previous State: "

    .line 1585
    .line 1586
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    .line 1588
    .line 1589
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1590
    .line 1591
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1592
    .line 1593
    .line 1594
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v1

    .line 1598
    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    .line 1600
    .line 1601
    :cond_36
    const/4 v1, 0x1

    .line 1602
    iput-boolean v1, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    .line 1603
    .line 1604
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1605
    .line 1606
    iput-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1607
    .line 1608
    goto :goto_1f

    .line 1609
    :cond_37
    const/4 v1, 0x1

    .line 1610
    :goto_1f
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    .line 1611
    .line 1612
    if-eqz v2, :cond_3a

    .line 1613
    .line 1614
    iget v2, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 1615
    .line 1616
    const/4 v7, 0x4

    .line 1617
    if-le v2, v7, :cond_3a

    .line 1618
    .line 1619
    sub-int/2addr v2, v1

    .line 1620
    rem-int/lit8 v2, v2, 0x18

    .line 1621
    .line 1622
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 1623
    .line 1624
    aget-object v2, v1, v2

    .line 1625
    .line 1626
    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1627
    .line 1628
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 1629
    .line 1630
    .line 1631
    move-result v2

    .line 1632
    iget v7, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 1633
    .line 1634
    const/4 v10, 0x2

    .line 1635
    sub-int/2addr v7, v10

    .line 1636
    rem-int/lit8 v7, v7, 0x18

    .line 1637
    .line 1638
    aget-object v7, v1, v7

    .line 1639
    .line 1640
    iget-object v7, v7, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1641
    .line 1642
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 1643
    .line 1644
    .line 1645
    move-result v7

    .line 1646
    add-int/2addr v7, v2

    .line 1647
    iget v2, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 1648
    .line 1649
    add-int/lit8 v2, v2, -0x3

    .line 1650
    .line 1651
    rem-int/lit8 v2, v2, 0x18

    .line 1652
    .line 1653
    aget-object v2, v1, v2

    .line 1654
    .line 1655
    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1656
    .line 1657
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 1658
    .line 1659
    .line 1660
    move-result v2

    .line 1661
    add-int/2addr v2, v7

    .line 1662
    iget v7, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 1663
    .line 1664
    const/4 v10, 0x4

    .line 1665
    sub-int/2addr v7, v10

    .line 1666
    rem-int/lit8 v7, v7, 0x18

    .line 1667
    .line 1668
    aget-object v1, v1, v7

    .line 1669
    .line 1670
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1671
    .line 1672
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 1673
    .line 1674
    .line 1675
    move-result v1

    .line 1676
    add-int/2addr v1, v2

    .line 1677
    int-to-float v1, v1

    .line 1678
    const/high16 v2, 0x40800000    # 4.0f

    .line 1679
    .line 1680
    div-float/2addr v1, v2

    .line 1681
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 1682
    .line 1683
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->-$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v2

    .line 1687
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1688
    .line 1689
    .line 1690
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1691
    .line 1692
    const-string v10, "ChimeraTriggerManager::onPolicyScoreUpdated() - evaPolicy: "

    .line 1693
    .line 1694
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1695
    .line 1696
    .line 1697
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1698
    .line 1699
    .line 1700
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v7

    .line 1704
    const-string v10, "ActivityManager"

    .line 1705
    .line 1706
    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    .line 1708
    .line 1709
    iput v1, v2, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastPolicyScore:F

    .line 1710
    .line 1711
    sget v7, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->PMM_CRITICAL_SCORE_THRESHOLD:F

    .line 1712
    .line 1713
    cmpl-float v7, v1, v7

    .line 1714
    .line 1715
    if-ltz v7, :cond_38

    .line 1716
    .line 1717
    const/4 v14, 0x1

    .line 1718
    goto :goto_20

    .line 1719
    :cond_38
    const/4 v14, 0x0

    .line 1720
    :goto_20
    iput-boolean v14, v2, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mChimeraTriggerRequired:Z

    .line 1721
    .line 1722
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$KpmState;->values()[Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v2

    .line 1726
    float-to-double v10, v1

    .line 1727
    add-double v10, v10, v22

    .line 1728
    .line 1729
    double-to-int v1, v10

    .line 1730
    aget-object v1, v2, v1

    .line 1731
    .line 1732
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 1733
    .line 1734
    if-eqz v2, :cond_39

    .line 1735
    .line 1736
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1737
    .line 1738
    const-string v7, "Current policy : "

    .line 1739
    .line 1740
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1741
    .line 1742
    .line 1743
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1744
    .line 1745
    .line 1746
    const-string v7, ", eval policy : "

    .line 1747
    .line 1748
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    .line 1750
    .line 1751
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1752
    .line 1753
    .line 1754
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v2

    .line 1758
    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    .line 1760
    .line 1761
    :cond_39
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1762
    .line 1763
    if-eq v2, v1, :cond_3a

    .line 1764
    .line 1765
    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager;->changePolicy(Lcom/android/server/am/KillPolicyManager$KpmState;)V

    .line 1766
    .line 1767
    .line 1768
    :cond_3a
    iget-boolean v1, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    .line 1769
    .line 1770
    if-eqz v1, :cond_3b

    .line 1771
    .line 1772
    const-wide/16 v1, 0x0

    .line 1773
    .line 1774
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    .line 1775
    .line 1776
    :cond_3b
    iget-boolean v1, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    .line 1777
    .line 1778
    if-nez v1, :cond_3c

    .line 1779
    .line 1780
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpPolicy:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 1781
    .line 1782
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1783
    .line 1784
    .line 1785
    new-instance v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;

    .line 1786
    .line 1787
    invoke-direct {v2, v1, v4}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 1788
    .line 1789
    .line 1790
    iput-object v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcDumpMemThread:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;

    .line 1791
    .line 1792
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1793
    .line 1794
    .line 1795
    :cond_3c
    const-string v1, "ChimeraManagerService"

    .line 1796
    .line 1797
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1798
    .line 1799
    .line 1800
    move-result-object v1

    .line 1801
    check-cast v1, Lcom/android/server/chimera/ChimeraManagerService;

    .line 1802
    .line 1803
    if-eqz v1, :cond_3d

    .line 1804
    .line 1805
    invoke-virtual {v1}, Lcom/android/server/chimera/ChimeraManagerService;->getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;

    .line 1806
    .line 1807
    .line 1808
    move-result-object v1

    .line 1809
    if-eqz v1, :cond_3d

    .line 1810
    .line 1811
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 1812
    .line 1813
    invoke-static {v1, v2}, Lcom/android/server/chimera/ChimeraDataInfo;->getDiff(Lcom/android/server/chimera/ChimeraDataInfo;Lcom/android/server/chimera/ChimeraDataInfo;)Lcom/android/server/chimera/ChimeraDataInfo;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v2

    .line 1817
    iput-object v2, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 1818
    .line 1819
    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    .line 1820
    .line 1821
    :cond_3d
    iget-object v1, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    .line 1822
    .line 1823
    check-cast v1, Ljava/util/HashMap;

    .line 1824
    .line 1825
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1826
    .line 1827
    .line 1828
    iget v1, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 1829
    .line 1830
    rem-int/lit8 v2, v1, 0x18

    .line 1831
    .line 1832
    iput v2, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    .line 1833
    .line 1834
    const/4 v4, 0x1

    .line 1835
    add-int/2addr v1, v4

    .line 1836
    iput v1, v0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    .line 1837
    .line 1838
    new-instance v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 1839
    .line 1840
    invoke-direct {v4, v0, v1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    .line 1841
    .line 1842
    .line 1843
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 1844
    .line 1845
    aput-object v4, v1, v2

    .line 1846
    .line 1847
    goto :goto_21

    .line 1848
    :cond_3e
    const/4 v6, -0x1

    .line 1849
    :goto_21
    iput-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 1850
    .line 1851
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 1852
    .line 1853
    if-eqz v1, :cond_3f

    .line 1854
    .line 1855
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1856
    .line 1857
    const-string/jumbo v2, "setPrevPackage() mPrevPackage : "

    .line 1858
    .line 1859
    .line 1860
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1861
    .line 1862
    .line 1863
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    .line 1864
    .line 1865
    const-string v4, "ActivityManager_kpm"

    .line 1866
    .line 1867
    invoke-static {v1, v2, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    .line 1869
    .line 1870
    :cond_3f
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 1871
    .line 1872
    monitor-enter v1

    .line 1873
    :try_start_3
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 1874
    .line 1875
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1876
    .line 1877
    .line 1878
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 1879
    .line 1880
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1881
    .line 1882
    .line 1883
    move-result v2

    .line 1884
    const/4 v4, 0x5

    .line 1885
    if-le v2, v4, :cond_40

    .line 1886
    .line 1887
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 1888
    .line 1889
    const/4 v4, 0x0

    .line 1890
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1891
    .line 1892
    .line 1893
    goto :goto_22

    .line 1894
    :catchall_0
    move-exception v0

    .line 1895
    goto :goto_24

    .line 1896
    :cond_40
    :goto_22
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 1897
    .line 1898
    if-eqz v2, :cond_41

    .line 1899
    .line 1900
    const/4 v14, 0x0

    .line 1901
    :goto_23
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 1902
    .line 1903
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1904
    .line 1905
    .line 1906
    move-result v2

    .line 1907
    if-ge v14, v2, :cond_41

    .line 1908
    .line 1909
    const-string v2, "ActivityManager_kpm"

    .line 1910
    .line 1911
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1912
    .line 1913
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1914
    .line 1915
    .line 1916
    const-string v5, "idx["

    .line 1917
    .line 1918
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    .line 1920
    .line 1921
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1922
    .line 1923
    .line 1924
    const-string v5, "] Process name : "

    .line 1925
    .line 1926
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    .line 1928
    .line 1929
    iget-object v5, v0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    .line 1930
    .line 1931
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1932
    .line 1933
    .line 1934
    move-result-object v5

    .line 1935
    check-cast v5, Ljava/lang/String;

    .line 1936
    .line 1937
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    .line 1939
    .line 1940
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1941
    .line 1942
    .line 1943
    move-result-object v4

    .line 1944
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    .line 1946
    .line 1947
    const/4 v2, 0x1

    .line 1948
    add-int/2addr v14, v2

    .line 1949
    goto :goto_23

    .line 1950
    :cond_41
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1951
    sget-object v1, Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;->INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    .line 1952
    .line 1953
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 1954
    .line 1955
    sget-object v2, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->APP_LAUNCHED:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    .line 1956
    .line 1957
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->onMemoryEvent(Landroid/content/Context;Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;)V

    .line 1958
    .line 1959
    .line 1960
    goto :goto_26

    .line 1961
    :goto_24
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1962
    throw v0

    .line 1963
    :cond_42
    :goto_25
    move-object v8, v1

    .line 1964
    move-object/from16 v41, v2

    .line 1965
    .line 1966
    move-object/from16 v21, v4

    .line 1967
    .line 1968
    const/4 v6, -0x1

    .line 1969
    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1970
    .line 1971
    const-string v1, "["

    .line 1972
    .line 1973
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1974
    .line 1975
    .line 1976
    move-object/from16 v1, v41

    .line 1977
    .line 1978
    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 1979
    .line 1980
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1981
    .line 1982
    .line 1983
    const-string v2, "],"

    .line 1984
    .line 1985
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1986
    .line 1987
    .line 1988
    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 1989
    .line 1990
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1991
    .line 1992
    .line 1993
    const-string v2, ","

    .line 1994
    .line 1995
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1996
    .line 1997
    .line 1998
    iget v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    .line 1999
    .line 2000
    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->convertReason(I)Ljava/lang/String;

    .line 2001
    .line 2002
    .line 2003
    move-result-object v2

    .line 2004
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    .line 2006
    .line 2007
    const-string v2, ","

    .line 2008
    .line 2009
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2010
    .line 2011
    .line 2012
    move/from16 v2, p0

    .line 2013
    .line 2014
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2015
    .line 2016
    .line 2017
    const-string v4, ","

    .line 2018
    .line 2019
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    .line 2021
    .line 2022
    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->startingWindowDelayMs:I

    .line 2023
    .line 2024
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2025
    .line 2026
    .line 2027
    const-string v4, ","

    .line 2028
    .line 2029
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2030
    .line 2031
    .line 2032
    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->bindApplicationDelayMs:I

    .line 2033
    .line 2034
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2035
    .line 2036
    .line 2037
    const-string v4, ","

    .line 2038
    .line 2039
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2040
    .line 2041
    .line 2042
    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 2043
    .line 2044
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2045
    .line 2046
    .line 2047
    const-string v4, ","

    .line 2048
    .line 2049
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2050
    .line 2051
    .line 2052
    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    .line 2053
    .line 2054
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->convertTRtype(I)Ljava/lang/String;

    .line 2055
    .line 2056
    .line 2057
    move-result-object v4

    .line 2058
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2059
    .line 2060
    .line 2061
    const-string v4, ","

    .line 2062
    .line 2063
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    .line 2065
    .line 2066
    invoke-virtual {v8}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    .line 2067
    .line 2068
    .line 2069
    move-result v4

    .line 2070
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->convertFilter(I)Ljava/lang/String;

    .line 2071
    .line 2072
    .line 2073
    move-result-object v4

    .line 2074
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2075
    .line 2076
    .line 2077
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v0

    .line 2081
    const/4 v4, 0x4

    .line 2082
    invoke-static {v4, v0}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 2083
    .line 2084
    .line 2085
    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 2086
    .line 2087
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2088
    .line 2089
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 2090
    .line 2091
    if-eqz v9, :cond_43

    .line 2092
    .line 2093
    iget-object v10, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 2094
    .line 2095
    iget-object v11, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    .line 2096
    .line 2097
    iget v0, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 2098
    .line 2099
    int-to-long v12, v0

    .line 2100
    iget v14, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    .line 2101
    .line 2102
    iget v0, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    .line 2103
    .line 2104
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->convertReason(I)Ljava/lang/String;

    .line 2105
    .line 2106
    .line 2107
    move-result-object v15

    .line 2108
    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    .line 2109
    .line 2110
    iget v0, v0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    .line 2111
    .line 2112
    int-to-long v4, v0

    .line 2113
    invoke-virtual {v8}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    .line 2114
    .line 2115
    .line 2116
    move-result v0

    .line 2117
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->convertFilter(I)Ljava/lang/String;

    .line 2118
    .line 2119
    .line 2120
    move-result-object v18

    .line 2121
    move-wide/from16 v16, v4

    .line 2122
    .line 2123
    invoke-virtual/range {v9 .. v18}, Lcom/android/server/wm/ActivityManagerPerformance;->gatherAppLaunchTime(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JLjava/lang/String;)V

    .line 2124
    .line 2125
    .line 2126
    :cond_43
    iget-object v0, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    .line 2127
    .line 2128
    if-nez v0, :cond_44

    .line 2129
    .line 2130
    :goto_27
    move-object/from16 v41, v1

    .line 2131
    .line 2132
    goto :goto_28

    .line 2133
    :cond_44
    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 2134
    .line 2135
    iget-object v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2136
    .line 2137
    iget v8, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2138
    .line 2139
    invoke-static {v8, v0}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v0

    .line 2143
    if-nez v0, :cond_45

    .line 2144
    .line 2145
    goto :goto_27

    .line 2146
    :cond_45
    iget-object v9, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processName:Ljava/lang/String;

    .line 2147
    .line 2148
    iget-object v10, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 2149
    .line 2150
    iget-wide v11, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    .line 2151
    .line 2152
    iget-wide v13, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    .line 2153
    .line 2154
    iget-wide v4, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    .line 2155
    .line 2156
    iget-wide v6, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    .line 2157
    .line 2158
    move-object/from16 v41, v1

    .line 2159
    .line 2160
    iget-wide v0, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    .line 2161
    .line 2162
    const/16 v15, 0x37

    .line 2163
    .line 2164
    move-wide/from16 v17, v6

    .line 2165
    .line 2166
    move v7, v15

    .line 2167
    move-wide v15, v4

    .line 2168
    move-wide/from16 v19, v0

    .line 2169
    .line 2170
    invoke-static/range {v7 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJJJJ)V

    .line 2171
    .line 2172
    .line 2173
    :goto_28
    move-object/from16 v1, v21

    .line 2174
    .line 2175
    goto :goto_29

    .line 2176
    :cond_46
    move/from16 v40, v8

    .line 2177
    .line 2178
    move-object/from16 v41, v12

    .line 2179
    .line 2180
    move v2, v13

    .line 2181
    move-object v1, v4

    .line 2182
    :goto_29
    iget-boolean v0, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mIsInTaskActivityStart:Z

    .line 2183
    .line 2184
    if-eqz v0, :cond_47

    .line 2185
    .line 2186
    move/from16 v4, v40

    .line 2187
    .line 2188
    move-object/from16 v1, v41

    .line 2189
    .line 2190
    invoke-virtual {v3, v1, v4, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->logInTaskActivityStart(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;ZI)V

    .line 2191
    .line 2192
    .line 2193
    goto :goto_2a

    .line 2194
    :cond_47
    move-object/from16 v1, v41

    .line 2195
    .line 2196
    :goto_2a
    iget v0, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    .line 2197
    .line 2198
    const/16 v2, 0x8

    .line 2199
    .line 2200
    if-eq v0, v2, :cond_48

    .line 2201
    .line 2202
    const/4 v2, 0x7

    .line 2203
    if-ne v0, v2, :cond_4e

    .line 2204
    .line 2205
    :cond_48
    iget v0, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    .line 2206
    .line 2207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2208
    .line 2209
    .line 2210
    move-result-object v0

    .line 2211
    iget v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->activityRecordIdHashCode:I

    .line 2212
    .line 2213
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2214
    .line 2215
    .line 2216
    move-result-object v2

    .line 2217
    iget-object v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    .line 2218
    .line 2219
    iget v5, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 2220
    .line 2221
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2222
    .line 2223
    .line 2224
    move-result-object v5

    .line 2225
    filled-new-array {v0, v2, v4, v5}, [Ljava/lang/Object;

    .line 2226
    .line 2227
    .line 2228
    move-result-object v0

    .line 2229
    const/16 v2, 0x7539

    .line 2230
    .line 2231
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2232
    .line 2233
    .line 2234
    iget-object v0, v3, Lcom/android/server/wm/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2235
    .line 2236
    const/4 v2, 0x0

    .line 2237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2238
    .line 2239
    .line 2240
    const-string v2, "Displayed "

    .line 2241
    .line 2242
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2243
    .line 2244
    .line 2245
    iget-object v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    .line 2246
    .line 2247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2248
    .line 2249
    .line 2250
    const-string v2, " for user "

    .line 2251
    .line 2252
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2253
    .line 2254
    .line 2255
    iget v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    .line 2256
    .line 2257
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2258
    .line 2259
    .line 2260
    const-string v2, ": "

    .line 2261
    .line 2262
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2263
    .line 2264
    .line 2265
    iget v2, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 2266
    .line 2267
    int-to-long v2, v2

    .line 2268
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2269
    .line 2270
    .line 2271
    const-string v2, "ActivityTaskManager"

    .line 2272
    .line 2273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2274
    .line 2275
    .line 2276
    move-result-object v0

    .line 2277
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    .line 2279
    .line 2280
    iget-object v0, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    .line 2281
    .line 2282
    if-eqz v0, :cond_49

    .line 2283
    .line 2284
    iget v2, v0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 2285
    .line 2286
    move v5, v2

    .line 2287
    goto :goto_2b

    .line 2288
    :cond_49
    const/4 v5, -0x1

    .line 2289
    :goto_2b
    iget-object v8, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 2290
    .line 2291
    iget v4, v1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 2292
    .line 2293
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 2294
    .line 2295
    const-string v0, " "

    .line 2296
    .line 2297
    const-string v1, "Pageboost"

    .line 2298
    .line 2299
    const-string v2, "Launch time gathered : pid "

    .line 2300
    .line 2301
    const-string/jumbo v3, "packageName "

    .line 2302
    .line 2303
    .line 2304
    if-nez v8, :cond_4a

    .line 2305
    .line 2306
    goto/16 :goto_2c

    .line 2307
    .line 2308
    :cond_4a
    :try_start_5
    sget-boolean v6, Lcom/android/server/am/Pageboost;->munlock_firstapp:Z

    .line 2309
    .line 2310
    if-eqz v6, :cond_4b

    .line 2311
    .line 2312
    sget-object v6, Lcom/android/server/am/Pageboost;->mBootFileManager:Lcom/android/server/am/Pageboost$LRUPolicy;

    .line 2313
    .line 2314
    if-eqz v6, :cond_4b

    .line 2315
    .line 2316
    iget-object v6, v6, Lcom/android/server/am/Pageboost$LRUPolicy;->mLock:Ljava/lang/Object;

    .line 2317
    .line 2318
    check-cast v6, Ljava/util/ArrayList;

    .line 2319
    .line 2320
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2321
    .line 2322
    .line 2323
    move-result v6

    .line 2324
    const/4 v7, 0x1

    .line 2325
    xor-int/2addr v6, v7

    .line 2326
    if-eqz v6, :cond_4b

    .line 2327
    .line 2328
    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2329
    .line 2330
    .line 2331
    move-result-object v3

    .line 2332
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    .line 2334
    .line 2335
    const-string v3, "launcher"

    .line 2336
    .line 2337
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2338
    .line 2339
    .line 2340
    move-result v3

    .line 2341
    if-nez v3, :cond_4b

    .line 2342
    .line 2343
    const-string v3, "com.android.settings"

    .line 2344
    .line 2345
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2346
    .line 2347
    .line 2348
    move-result v3

    .line 2349
    if-nez v3, :cond_4b

    .line 2350
    .line 2351
    const-string v3, "com.samsung.android.mtp"

    .line 2352
    .line 2353
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2354
    .line 2355
    .line 2356
    move-result v3

    .line 2357
    if-nez v3, :cond_4b

    .line 2358
    .line 2359
    const/16 v9, 0x18

    .line 2360
    .line 2361
    const/4 v14, 0x0

    .line 2362
    const/4 v10, -0x1

    .line 2363
    const/4 v11, -0x1

    .line 2364
    const/4 v12, -0x1

    .line 2365
    const/16 v13, 0xbb8

    .line 2366
    .line 2367
    invoke-static/range {v9 .. v14}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V

    .line 2368
    .line 2369
    .line 2370
    :cond_4b
    invoke-static {}, Lcom/android/server/am/Pageboost;->isPageboostMinimized()Z

    .line 2371
    .line 2372
    .line 2373
    move-result v3

    .line 2374
    if-eqz v3, :cond_4c

    .line 2375
    .line 2376
    goto :goto_2c

    .line 2377
    :cond_4c
    const-string v3, "com.att.iqi"

    .line 2378
    .line 2379
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2380
    .line 2381
    .line 2382
    move-result v3

    .line 2383
    if-nez v3, :cond_4d

    .line 2384
    .line 2385
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2386
    .line 2387
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2388
    .line 2389
    .line 2390
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2391
    .line 2392
    .line 2393
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2394
    .line 2395
    .line 2396
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2397
    .line 2398
    .line 2399
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2400
    .line 2401
    .line 2402
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2403
    .line 2404
    .line 2405
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2406
    .line 2407
    .line 2408
    move-result-object v0

    .line 2409
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    .line 2411
    .line 2412
    :cond_4d
    const/16 v3, 0x9

    .line 2413
    .line 2414
    const/4 v6, -0x1

    .line 2415
    const/4 v7, 0x0

    .line 2416
    invoke-static/range {v3 .. v8}, Lcom/android/server/am/Pageboost;->sendMessage(IIIIILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 2417
    .line 2418
    .line 2419
    goto :goto_2c

    .line 2420
    :catch_3
    const-string v0, "failed to gatherLaunchTime by exception"

    .line 2421
    .line 2422
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    .line 2424
    .line 2425
    :cond_4e
    :goto_2c
    return-void
.end method
