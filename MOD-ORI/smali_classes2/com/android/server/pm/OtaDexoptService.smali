.class public final Lcom/android/server/pm/OtaDexoptService;
.super Landroid/content/pm/IOtaDexopt$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public availableSpaceAfterBulkDelete:J

.field public availableSpaceAfterDexopt:J

.field public availableSpaceBefore:J

.field public completeSize:I

.field public dexoptCommandCountExecuted:I

.field public dexoptCommandCountTotal:I

.field public importantPackageCount:I

.field public final mContext:Landroid/content/Context;

.field public mDexoptCommands:Ljava/util/List;

.field public final mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field public final metricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public otaDexoptTimeStart:J

.field public otherPackageCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/pm/IOtaDexopt$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 7
    .line 8
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 14
    .line 15
    return-void
.end method

.method public static inMegabytes(J)I
    .locals 2

    .line 1
    const-wide/32 v0, 0x100000

    .line 2
    .line 3
    .line 4
    div-long/2addr p0, v0

    .line 5
    const-wide/32 v0, 0x7fffffff

    .line 6
    .line 7
    .line 8
    cmp-long v0, p0, v0

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "Recording "

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, "MB of free space, overflowing range"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "OTADexopt"

    .line 32
    .line 33
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const p0, 0x7fffffff

    .line 37
    .line 38
    .line 39
    return p0

    .line 40
    :cond_0
    long-to-int p0, p0

    .line 41
    return p0
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/pm/OtaDexoptService;

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/OtaDexoptService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "otadexopt"

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 17
    .line 18
    iget-object v0, v1, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 19
    .line 20
    if-nez v0, :cond_c

    .line 21
    .line 22
    iget-object v0, v1, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const-string v3, "OTADexopt"

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const-string v0, "No upgrade, skipping A/B artifacts check."

    .line 33
    .line 34
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    goto/16 :goto_7

    .line 38
    .line 39
    :cond_0
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 46
    .line 47
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const/4 v0, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    :goto_0
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-ge v6, v8, :cond_b

    .line 67
    .line 68
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    check-cast v8, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 73
    .line 74
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    if-nez v9, :cond_1

    .line 79
    .line 80
    goto/16 :goto_6

    .line 81
    .line 82
    :cond_1
    iget-object v10, v1, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 83
    .line 84
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 85
    .line 86
    invoke-virtual {v10, v9}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-nez v10, :cond_2

    .line 91
    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :cond_2
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    if-nez v10, :cond_3

    .line 99
    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v10, "Package "

    .line 103
    .line 104
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v9, " can be optimized but has null codePath"

    .line 111
    .line 112
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    goto/16 :goto_6

    .line 123
    .line 124
    :cond_3
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    const-string v11, "/system"

    .line 129
    .line 130
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    if-nez v10, :cond_a

    .line 135
    .line 136
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    const-string v11, "/vendor"

    .line 141
    .line 142
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    if-nez v10, :cond_a

    .line 147
    .line 148
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    const-string v11, "/product"

    .line 153
    .line 154
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    if-nez v10, :cond_a

    .line 159
    .line 160
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    const-string v11, "/system_ext"

    .line 165
    .line 166
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    if-eqz v10, :cond_4

    .line 171
    .line 172
    goto/16 :goto_6

    .line 173
    .line 174
    :cond_4
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getSecondaryCpuAbi()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    invoke-static {v10, v8}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    move-object v10, v9

    .line 187
    check-cast v10, Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    .line 188
    .line 189
    new-instance v11, Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v10}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->isDeclaredHavingCode()Z

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    if-eqz v12, :cond_5

    .line 199
    .line 200
    invoke-virtual {v10}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getBaseApkPath()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v12

    .line 204
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    :cond_5
    invoke-virtual {v10}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getSplitCodePaths()[Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v13

    .line 215
    if-nez v13, :cond_7

    .line 216
    .line 217
    const/4 v13, 0x0

    .line 218
    :goto_1
    array-length v14, v12

    .line 219
    if-ge v13, v14, :cond_7

    .line 220
    .line 221
    invoke-virtual {v10}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->getSplitFlags()[I

    .line 222
    .line 223
    .line 224
    move-result-object v14

    .line 225
    aget v14, v14, v13

    .line 226
    .line 227
    and-int/lit8 v14, v14, 0x4

    .line 228
    .line 229
    if-eqz v14, :cond_6

    .line 230
    .line 231
    aget-object v14, v12, v13

    .line 232
    .line 233
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    :cond_6
    add-int/lit8 v13, v13, 0x1

    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_7
    invoke-static {v8}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    array-length v12, v8

    .line 248
    const/4 v13, 0x0

    .line 249
    :goto_2
    if-ge v13, v12, :cond_a

    .line 250
    .line 251
    aget-object v14, v8, v13

    .line 252
    .line 253
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object v15

    .line 257
    move/from16 v18, v7

    .line 258
    .line 259
    move v7, v0

    .line 260
    move/from16 v0, v18

    .line 261
    .line 262
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v16

    .line 266
    if-eqz v16, :cond_9

    .line 267
    .line 268
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v16

    .line 272
    move-object/from16 v5, v16

    .line 273
    .line 274
    check-cast v5, Ljava/lang/String;

    .line 275
    .line 276
    move-object/from16 v16, v1

    .line 277
    .line 278
    new-instance v1, Ljava/io/File;

    .line 279
    .line 280
    move-object/from16 p1, v4

    .line 281
    .line 282
    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    new-instance v4, Ljava/io/File;

    .line 290
    .line 291
    move-object/from16 v17, v8

    .line 292
    .line 293
    const-string/jumbo v8, "oat"

    .line 294
    .line 295
    .line 296
    invoke-direct {v4, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    add-int/lit8 v4, v0, 0x1

    .line 304
    .line 305
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-nez v0, :cond_8

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_8
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-interface {v0, v5}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-interface {v0, v1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 324
    .line 325
    .line 326
    :try_start_1
    iget-object v0, v2, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 327
    .line 328
    invoke-interface {v0, v10, v5, v14, v1}, Landroid/os/IInstalld;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 329
    .line 330
    .line 331
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 332
    .line 333
    goto :goto_5

    .line 334
    :catch_0
    move-exception v0

    .line 335
    :try_start_2
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 336
    .line 337
    .line 338
    const/4 v0, 0x0

    .line 339
    throw v0
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 340
    :catch_1
    :goto_5
    move v0, v4

    .line 341
    move-object/from16 v1, v16

    .line 342
    .line 343
    move-object/from16 v8, v17

    .line 344
    .line 345
    move-object/from16 v4, p1

    .line 346
    .line 347
    goto :goto_3

    .line 348
    :cond_9
    move-object/from16 v16, v1

    .line 349
    .line 350
    move-object/from16 p1, v4

    .line 351
    .line 352
    move-object/from16 v17, v8

    .line 353
    .line 354
    add-int/lit8 v13, v13, 0x1

    .line 355
    .line 356
    move/from16 v18, v7

    .line 357
    .line 358
    move v7, v0

    .line 359
    move/from16 v0, v18

    .line 360
    .line 361
    goto :goto_2

    .line 362
    :cond_a
    :goto_6
    move-object/from16 v16, v1

    .line 363
    .line 364
    move-object/from16 p1, v4

    .line 365
    .line 366
    add-int/lit8 v6, v6, 0x1

    .line 367
    .line 368
    move-object/from16 v4, p1

    .line 369
    .line 370
    move-object/from16 v1, v16

    .line 371
    .line 372
    goto/16 :goto_0

    .line 373
    .line 374
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    const-string v2, "Moved "

    .line 377
    .line 378
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v0, "/"

    .line 385
    .line 386
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    :goto_7
    return-void

    .line 400
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 401
    .line 402
    const-string v1, "Should not be ota-dexopting when trying to move."

    .line 403
    .line 404
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    throw v0
.end method


# virtual methods
.method public final declared-synchronized cleanup()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "OTADexopt"

    .line 3
    .line 4
    const-string v1, "Cleaning up OTA Dexopt state."

    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->performMetricsLogging()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0

    .line 25
    throw v0
.end method

.method public final declared-synchronized dexoptNextPackage()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 5
    .line 6
    .line 7
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    .line 10
    throw v0
.end method

.method public final declared-synchronized generatePackageDexopts(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/util/List;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/android/server/pm/OtaDexoptService$1;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/OtaDexoptService$1;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string v5, "*otadexopt*"

    .line 23
    .line 24
    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/server/pm/PackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v1, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    new-instance v1, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v1, Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    :cond_0
    new-instance v1, Lcom/android/server/pm/dex/DexoptOptions;

    .line 54
    .line 55
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const/4 v4, 0x4

    .line 60
    invoke-direct {v1, p3, v4, v3}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/DexoptOptions;)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$LegacyDexoptDisabledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception p1

    .line 70
    :try_start_2
    const-string p2, "OTADexopt"

    .line 71
    .line 72
    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    .line 74
    .line 75
    :goto_0
    monitor-exit p0

    .line 76
    return-object v0

    .line 77
    :goto_1
    monitor-exit p0

    .line 78
    throw p1
.end method

.method public final getAvailableSpace()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long p0, v0, v2

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    sub-long/2addr v2, v0

    .line 30
    return-wide v2

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "Invalid low memory threshold"

    .line 34
    .line 35
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public final declared-synchronized getProgress()F
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/high16 p0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 11
    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    sub-int v0, v1, v0

    .line 21
    .line 22
    int-to-float v0, v0

    .line 23
    int-to-float v1, v1

    .line 24
    div-float/2addr v0, v1

    .line 25
    monitor-exit p0

    .line 26
    return v0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0

    .line 29
    throw v0
.end method

.method public final declared-synchronized isDone()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v1, "done() called before prepare()"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :goto_0
    monitor-exit p0

    .line 23
    throw v0
.end method

.method public final declared-synchronized nextDexoptCommand()Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "Not enough space for OTA dexopt, stopping with "

    .line 2
    .line 3
    const-string v1, "Next command: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const-string v0, "(all done)"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    const-wide/16 v5, 0x0

    .line 36
    .line 37
    cmp-long v3, v3, v5

    .line 38
    .line 39
    if-lez v3, :cond_1

    .line 40
    .line 41
    iget v0, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    .line 46
    .line 47
    const-string v0, "OTADexopt"

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    monitor-exit p0

    .line 65
    return-object v2

    .line 66
    :cond_1
    :try_start_2
    const-string v1, "OTADexopt"

    .line 67
    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, " commands left."

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    .line 100
    .line 101
    const-string v0, "(no free space)"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    .line 103
    monitor-exit p0

    .line 104
    return-object v0

    .line 105
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    const-string v1, "dexoptNextPackage() called before prepare()"

    .line 108
    .line 109
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    :goto_0
    monitor-exit p0

    .line 114
    throw v0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/pm/OtaDexoptShellCommand;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/pm/OtaDexoptShellCommand;-><init>(Lcom/android/server/pm/OtaDexoptService;)V

    .line 4
    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    move-object v7, p6

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final performMetricsLogging()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceBefore:J

    .line 8
    .line 9
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const-string/jumbo v4, "ota_dexopt_available_space_before_mb"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 20
    .line 21
    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterBulkDelete:J

    .line 22
    .line 23
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const-string/jumbo v4, "ota_dexopt_available_space_after_bulk_delete_mb"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 34
    .line 35
    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 36
    .line 37
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const-string/jumbo v4, "ota_dexopt_available_space_after_dexopt_mb"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 48
    .line 49
    const-string/jumbo v3, "ota_dexopt_num_important_packages"

    .line 50
    .line 51
    .line 52
    iget v4, p0, Lcom/android/server/pm/OtaDexoptService;->importantPackageCount:I

    .line 53
    .line 54
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 58
    .line 59
    const-string/jumbo v3, "ota_dexopt_num_other_packages"

    .line 60
    .line 61
    .line 62
    iget v4, p0, Lcom/android/server/pm/OtaDexoptService;->otherPackageCount:I

    .line 63
    .line 64
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 68
    .line 69
    const-string/jumbo v3, "ota_dexopt_num_commands"

    .line 70
    .line 71
    .line 72
    iget v4, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountTotal:I

    .line 73
    .line 74
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 78
    .line 79
    const-string/jumbo v3, "ota_dexopt_num_commands_executed"

    .line 80
    .line 81
    .line 82
    iget v4, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    .line 83
    .line 84
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 88
    .line 89
    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->otaDexoptTimeStart:J

    .line 90
    .line 91
    sub-long/2addr v0, v3

    .line 92
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    long-to-int v0, v0

    .line 97
    iget-object p0, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 98
    .line 99
    const-string/jumbo v1, "ota_dexopt_time_s"

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final declared-synchronized prepare()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_5

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/pm/OtaDexoptService$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 26
    .line 27
    invoke-static {v1, v2}, Lcom/android/server/pm/DexOptHelper;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object v3, v2

    .line 32
    check-cast v3, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 35
    .line 36
    .line 37
    new-instance v4, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 43
    .line 44
    .line 45
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 48
    .line 49
    .line 50
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_APEX_PKG:Lcom/android/server/pm/PackageManagerServiceUtils$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 56
    .line 57
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    mul-int/lit8 v1, v1, 0x3

    .line 65
    .line 66
    div-int/lit8 v1, v1, 0x2

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 88
    .line 89
    iget-object v5, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const/16 v7, 0xa

    .line 96
    .line 97
    invoke-virtual {p0, v6, v1, v7}, Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v5, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto/16 :goto_4

    .line 109
    .line 110
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const/4 v5, 0x0

    .line 119
    if-eqz v1, :cond_2

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 126
    .line 127
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isCoreApp()Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-nez v6, :cond_1

    .line 136
    .line 137
    iget-object v6, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {p0, v7, v1, v5}, Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v6, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    const-string v1, "Found a core app that\'s not important"

    .line 156
    .line 157
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 162
    .line 163
    check-cast v0, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I

    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    .line 172
    .line 173
    .line 174
    move-result-wide v0

    .line 175
    const-wide/32 v6, 0x40000000

    .line 176
    .line 177
    .line 178
    cmp-long v6, v0, v6

    .line 179
    .line 180
    if-gez v6, :cond_3

    .line 181
    .line 182
    const-string v6, "OTADexopt"

    .line 183
    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v8, "Low on space, deleting oat files in an attempt to free up space: "

    .line 190
    .line 191
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-static {v4}, Lcom/android/server/pm/DexOptHelper;->packagesToString(Ljava/util/List;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-eqz v7, :cond_3

    .line 217
    .line 218
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 223
    .line 224
    iget-object v8, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 225
    .line 226
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Ljava/lang/String;)J

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    .line 238
    .line 239
    .line 240
    move-result-wide v6

    .line 241
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceBefore:J

    .line 250
    .line 251
    iput-wide v6, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterBulkDelete:J

    .line 252
    .line 253
    const-wide/16 v0, 0x0

    .line 254
    .line 255
    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 256
    .line 257
    iput v3, p0, Lcom/android/server/pm/OtaDexoptService;->importantPackageCount:I

    .line 258
    .line 259
    iput v8, p0, Lcom/android/server/pm/OtaDexoptService;->otherPackageCount:I

    .line 260
    .line 261
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 262
    .line 263
    check-cast v0, Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountTotal:I

    .line 270
    .line 271
    iput v5, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    .line 272
    .line 273
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 274
    .line 275
    .line 276
    move-result-wide v0

    .line 277
    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->otaDexoptTimeStart:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .line 279
    :try_start_1
    new-instance v0, Lcom/android/server/pm/OtaDexoptService$$ExternalSyntheticLambda1;

    .line 280
    .line 281
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-static {v2, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    check-cast v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 293
    .line 294
    const-string v1, "OTADexopt"

    .line 295
    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    const-string v3, "A/B OTA: lastUsed time = "

    .line 302
    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    .line 311
    .line 312
    .line 313
    move-result-wide v5

    .line 314
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    const-string v0, "OTADexopt"

    .line 325
    .line 326
    const-string v1, "A/B OTA: deprioritized packages:"

    .line 327
    .line 328
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_4

    .line 340
    .line 341
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 346
    .line 347
    const-string v2, "OTADexopt"

    .line 348
    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    const-string v4, "  "

    .line 355
    .line 356
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v4, " - "

    .line 367
    .line 368
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    .line 376
    .line 377
    .line 378
    move-result-wide v4

    .line 379
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    .line 388
    .line 389
    goto :goto_3

    .line 390
    :catch_0
    :cond_4
    monitor-exit p0

    .line 391
    return-void

    .line 392
    :cond_5
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 393
    .line 394
    const-string v1, "already called prepare()"

    .line 395
    .line 396
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    :goto_4
    monitor-exit p0

    .line 401
    throw v0
.end method
