.class public abstract Lcom/android/server/pm/ReconcilePackageUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->restrictNonpreloadsSystemShareduids()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    sput-boolean v0, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z

    .line 16
    .line 17
    return-void
.end method

.method public static reconcilePackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/SystemConfig;)Ljava/util/List;
    .locals 29

    .line 1
    move-object/from16 v10, p1

    .line 2
    .line 3
    move-object/from16 v11, p3

    .line 4
    .line 5
    move-object/from16 v12, p4

    .line 6
    .line 7
    new-instance v13, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    new-instance v14, Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/2addr v1, v0

    .line 27
    invoke-direct {v14, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v14, v10}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 31
    .line 32
    .line 33
    new-instance v15, Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-direct {v15}, Landroid/util/ArrayMap;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v9, 0x2

    .line 47
    const/4 v8, 0x3

    .line 48
    if-eqz v1, :cond_6

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 55
    .line 56
    iget-object v2, v1, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 57
    .line 58
    if-eqz v2, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2, v8}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v3, v1, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 70
    .line 71
    invoke-virtual {v14, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v11, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->getAllowedSharedLibInfos(Lcom/android/server/pm/InstallRequest;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_0

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_0

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Landroid/content/pm/SharedLibraryInfo;

    .line 95
    .line 96
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v15, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_3

    .line 105
    .line 106
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-ne v4, v9, :cond_2

    .line 111
    .line 112
    invoke-virtual {v15, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    .line 119
    .line 120
    .line 121
    move-result-wide v5

    .line 122
    iget-object v4, v4, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 123
    .line 124
    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-gez v4, :cond_2

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v1, "Shared Library "

    .line 134
    .line 135
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v1, " is being installed twice in this set!"

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    .line 155
    .line 156
    const-string v2, "Reconcile failed: "

    .line 157
    .line 158
    invoke-static {v2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const/4 v2, -0x6

    .line 163
    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    throw v1

    .line 167
    :cond_3
    new-instance v4, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 168
    .line 169
    invoke-direct {v4}, Lcom/android/server/utils/WatchedLongSparseArray;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v15, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    :goto_1
    invoke-virtual {v15, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    check-cast v3, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 180
    .line 181
    invoke-virtual {v2}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    .line 182
    .line 183
    .line 184
    move-result-wide v4

    .line 185
    iget-object v6, v3, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 186
    .line 187
    invoke-virtual {v6, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    iget-object v7, v3, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 192
    .line 193
    invoke-virtual {v7, v4, v5, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    iget-boolean v4, v3, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    .line 197
    .line 198
    if-eqz v4, :cond_4

    .line 199
    .line 200
    instance-of v4, v6, Lcom/android/server/utils/Watchable;

    .line 201
    .line 202
    if-eqz v4, :cond_4

    .line 203
    .line 204
    iget-object v4, v3, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    .line 205
    .line 206
    invoke-virtual {v4, v6}, Landroid/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    const/4 v5, -0x1

    .line 211
    if-ne v4, v5, :cond_4

    .line 212
    .line 213
    check-cast v6, Lcom/android/server/utils/Watchable;

    .line 214
    .line 215
    iget-object v4, v3, Lcom/android/server/utils/WatchedLongSparseArray;->mObserver:Lcom/android/server/utils/WatchedLongSparseArray$1;

    .line 216
    .line 217
    invoke-interface {v6, v4}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 218
    .line 219
    .line 220
    :cond_4
    iget-boolean v4, v3, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    .line 221
    .line 222
    if-eqz v4, :cond_5

    .line 223
    .line 224
    instance-of v4, v2, Lcom/android/server/utils/Watchable;

    .line 225
    .line 226
    if-eqz v4, :cond_5

    .line 227
    .line 228
    check-cast v2, Lcom/android/server/utils/Watchable;

    .line 229
    .line 230
    iget-object v4, v3, Lcom/android/server/utils/WatchedLongSparseArray;->mObserver:Lcom/android/server/utils/WatchedLongSparseArray$1;

    .line 231
    .line 232
    invoke-interface {v2, v4}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 233
    .line 234
    .line 235
    :cond_5
    invoke-virtual {v3, v3}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :cond_6
    const-string v0, "android"

    .line 241
    .line 242
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    move-object/from16 v16, v0

    .line 247
    .line 248
    check-cast v16, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 249
    .line 250
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object v17

    .line 254
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_27

    .line 259
    .line 260
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    move-object v7, v0

    .line 265
    check-cast v7, Lcom/android/server/pm/InstallRequest;

    .line 266
    .line 267
    iget-object v0, v7, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 268
    .line 269
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v11, v7}, Lcom/android/server/pm/SharedLibrariesImpl;->getAllowedSharedLibInfos(Lcom/android/server/pm/InstallRequest;)Ljava/util/List;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    iget-boolean v1, v7, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    .line 278
    .line 279
    const/4 v3, 0x1

    .line 280
    const/4 v4, 0x0

    .line 281
    if-eqz v1, :cond_9

    .line 282
    .line 283
    iget-boolean v1, v7, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    .line 284
    .line 285
    if-nez v1, :cond_9

    .line 286
    .line 287
    iget v1, v7, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 288
    .line 289
    and-int/lit16 v1, v1, 0x400

    .line 290
    .line 291
    if-nez v1, :cond_7

    .line 292
    .line 293
    const/4 v1, 0x0

    .line 294
    goto :goto_3

    .line 295
    :cond_7
    const/16 v1, 0x8

    .line 296
    .line 297
    :goto_3
    or-int/2addr v1, v3

    .line 298
    iget-object v5, v7, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 299
    .line 300
    iget-object v3, v7, Lcom/android/server/pm/InstallRequest;->mOriginalPs:Lcom/android/server/pm/PackageSetting;

    .line 301
    .line 302
    iget-object v2, v7, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 303
    .line 304
    invoke-static {v1, v4, v5, v3, v2}, Lcom/android/server/pm/DeletePackageHelper;->mayDeletePackageLocked(ILandroid/os/UserHandle;Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/DeletePackageAction;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    if-eqz v1, :cond_8

    .line 309
    .line 310
    move-object v5, v1

    .line 311
    goto :goto_4

    .line 312
    :cond_8
    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    .line 313
    .line 314
    const-string v2, "May not delete "

    .line 315
    .line 316
    const-string v3, " to replace"

    .line 317
    .line 318
    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    const/16 v2, -0xa

    .line 323
    .line 324
    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v1

    .line 328
    :cond_9
    move-object v5, v4

    .line 329
    :goto_4
    iget v1, v7, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 330
    .line 331
    iget v2, v7, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    .line 332
    .line 333
    iget-object v3, v7, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 334
    .line 335
    iget-object v4, v7, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 336
    .line 337
    invoke-virtual {v7}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 338
    .line 339
    .line 340
    iget-object v8, v7, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 341
    .line 342
    iget-object v8, v8, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 343
    .line 344
    if-nez v8, :cond_a

    .line 345
    .line 346
    :goto_5
    const/4 v9, 0x0

    .line 347
    goto :goto_7

    .line 348
    :cond_a
    iget-object v8, v7, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 349
    .line 350
    if-nez v8, :cond_b

    .line 351
    .line 352
    goto :goto_5

    .line 353
    :cond_b
    iget-object v8, v11, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 354
    .line 355
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 356
    .line 357
    sget-boolean v21, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 358
    .line 359
    monitor-enter v8

    .line 360
    :try_start_0
    iget-object v9, v7, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 361
    .line 362
    invoke-virtual {v11, v9}, Lcom/android/server/pm/SharedLibrariesImpl;->getLatestStaticSharedLibraVersionLPr(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    if-eqz v9, :cond_c

    .line 367
    .line 368
    iget-object v10, v11, Lcom/android/server/pm/SharedLibrariesImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 369
    .line 370
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 371
    .line 372
    invoke-virtual {v9}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v9

    .line 376
    invoke-virtual {v10, v9}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 377
    .line 378
    .line 379
    move-result-object v9

    .line 380
    goto :goto_6

    .line 381
    :catchall_0
    move-exception v0

    .line 382
    goto/16 :goto_1c

    .line 383
    .line 384
    :cond_c
    const/4 v9, 0x0

    .line 385
    :goto_6
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :goto_7
    if-eqz v9, :cond_d

    .line 387
    .line 388
    goto :goto_8

    .line 389
    :cond_d
    invoke-virtual {v7}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    .line 390
    .line 391
    .line 392
    move-result-object v9

    .line 393
    :goto_8
    if-eqz v3, :cond_e

    .line 394
    .line 395
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 396
    .line 397
    .line 398
    move-result-object v8

    .line 399
    goto :goto_9

    .line 400
    :cond_e
    const/4 v8, 0x0

    .line 401
    :goto_9
    and-int/lit8 v2, v2, 0x10

    .line 402
    .line 403
    if-eqz v2, :cond_f

    .line 404
    .line 405
    const/4 v2, 0x1

    .line 406
    goto :goto_a

    .line 407
    :cond_f
    const/4 v2, 0x0

    .line 408
    :goto_a
    const/high16 v10, 0x4000000

    .line 409
    .line 410
    and-int/2addr v10, v1

    .line 411
    if-eqz v10, :cond_10

    .line 412
    .line 413
    move-object/from16 v10, p5

    .line 414
    .line 415
    move-object/from16 v28, v13

    .line 416
    .line 417
    const/16 v27, 0x1

    .line 418
    .line 419
    goto :goto_b

    .line 420
    :cond_10
    move-object/from16 v10, p5

    .line 421
    .line 422
    move-object/from16 v28, v13

    .line 423
    .line 424
    const/16 v27, 0x0

    .line 425
    .line 426
    :goto_b
    invoke-virtual {v10, v9}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 427
    .line 428
    .line 429
    move-result-object v13

    .line 430
    invoke-virtual {v12, v9, v13, v1}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;I)Z

    .line 431
    .line 432
    .line 433
    move-result v1

    .line 434
    const/4 v10, 0x5

    .line 435
    if-eqz v1, :cond_13

    .line 436
    .line 437
    invoke-virtual {v12, v9, v3}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    if-eqz v0, :cond_11

    .line 442
    .line 443
    goto :goto_c

    .line 444
    :cond_11
    if-eqz v2, :cond_12

    .line 445
    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    const-string v1, "System package "

    .line 449
    .line 450
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v1, " signature changed; retaining data."

    .line 461
    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 470
    .line 471
    invoke-static {v10, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 472
    .line 473
    .line 474
    :goto_c
    move-object/from16 v10, p6

    .line 475
    .line 476
    const/4 v9, 0x2

    .line 477
    const/16 v19, 0x0

    .line 478
    .line 479
    const/16 v20, 0x0

    .line 480
    .line 481
    goto/16 :goto_1a

    .line 482
    .line 483
    :cond_12
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    .line 484
    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    const-string v2, "Package "

    .line 488
    .line 489
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v2, " upgrade keys do not match the previously installed version"

    .line 500
    .line 501
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    const/4 v2, -0x7

    .line 509
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    .line 510
    .line 511
    .line 512
    throw v0

    .line 513
    :cond_13
    move-object/from16 v1, p2

    .line 514
    .line 515
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 520
    .line 521
    iget v0, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 522
    .line 523
    const/4 v10, 0x2

    .line 524
    if-ge v0, v10, :cond_14

    .line 525
    .line 526
    const/4 v10, 0x3

    .line 527
    const/16 v24, 0x1

    .line 528
    .line 529
    goto :goto_d

    .line 530
    :cond_14
    const/4 v10, 0x3

    .line 531
    const/16 v24, 0x0

    .line 532
    .line 533
    :goto_d
    if-ge v0, v10, :cond_15

    .line 534
    .line 535
    const/16 v25, 0x1

    .line 536
    .line 537
    goto :goto_e

    .line 538
    :cond_15
    const/16 v25, 0x0

    .line 539
    .line 540
    :goto_e
    :try_start_2
    iget-object v0, v7, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 541
    .line 542
    if-eqz v0, :cond_16

    .line 543
    .line 544
    iget v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 545
    .line 546
    const/4 v10, 0x5

    .line 547
    if-ne v0, v10, :cond_16

    .line 548
    .line 549
    const/16 v26, 0x1

    .line 550
    .line 551
    goto :goto_f

    .line 552
    :cond_16
    const/16 v26, 0x0

    .line 553
    .line 554
    :goto_f
    move-object/from16 v20, v9

    .line 555
    .line 556
    move-object/from16 v21, v13

    .line 557
    .line 558
    move-object/from16 v22, v4

    .line 559
    .line 560
    move-object/from16 v23, v8

    .line 561
    .line 562
    :try_start_3
    invoke-static/range {v20 .. v26}, Lcom/android/server/pm/PackageManagerServiceUtils;->verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z

    .line 563
    .line 564
    .line 565
    move-result v4
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 566
    :try_start_4
    iget v0, v7, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 567
    .line 568
    and-int/lit8 v0, v0, 0x10

    .line 569
    .line 570
    if-nez v0, :cond_17

    .line 571
    .line 572
    iget-boolean v0, v7, Lcom/android/server/pm/InstallRequest;->mSystem:Z
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 573
    .line 574
    if-nez v0, :cond_17

    .line 575
    .line 576
    if-nez v2, :cond_17

    .line 577
    .line 578
    if-nez v27, :cond_17

    .line 579
    .line 580
    if-eqz v8, :cond_17

    .line 581
    .line 582
    if-eqz v16, :cond_17

    .line 583
    .line 584
    :try_start_5
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    if-eqz v0, :cond_17

    .line 589
    .line 590
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    const/4 v10, 0x4

    .line 595
    invoke-virtual {v0, v8, v10}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    if-eqz v0, :cond_17

    .line 600
    .line 601
    const-string v0, "PackageManager"

    .line 602
    .line 603
    new-instance v10, Ljava/lang/StringBuilder;

    .line 604
    .line 605
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .line 607
    .line 608
    const-string v1, "Non-preload app associated with system signature: "

    .line 609
    .line 610
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    .line 611
    .line 612
    .line 613
    :try_start_6
    iget-object v1, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;
    :try_end_6
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    .line 614
    .line 615
    :try_start_7
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0

    .line 623
    .line 624
    .line 625
    :try_start_8
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;
    :try_end_8
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0

    .line 626
    .line 627
    if-eqz v0, :cond_18

    .line 628
    .line 629
    :try_start_9
    const-string v1, "com.sec."

    .line 630
    .line 631
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    if-nez v0, :cond_17

    .line 636
    .line 637
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 638
    .line 639
    const-string v1, "com.samsung."

    .line 640
    .line 641
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 642
    .line 643
    .line 644
    move-result v0
    :try_end_9
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0

    .line 645
    if-eqz v0, :cond_18

    .line 646
    .line 647
    :cond_17
    move-object/from16 v10, p6

    .line 648
    .line 649
    move/from16 v20, v4

    .line 650
    .line 651
    goto/16 :goto_13

    .line 652
    .line 653
    :catch_0
    move-exception v0

    .line 654
    goto/16 :goto_17

    .line 655
    .line 656
    :catch_1
    move-exception v0

    .line 657
    move-object/from16 v10, p6

    .line 658
    .line 659
    goto/16 :goto_18

    .line 660
    .line 661
    :cond_18
    if-eqz v13, :cond_17

    .line 662
    .line 663
    :try_start_a
    sget-boolean v0, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z
    :try_end_a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0

    .line 664
    .line 665
    if-nez v0, :cond_17

    .line 666
    .line 667
    move-object/from16 v10, p6

    .line 668
    .line 669
    :try_start_b
    iget-object v0, v10, Lcom/android/server/SystemConfig;->mPackageToSharedUidAllowList:Landroid/util/ArrayMap;

    .line 670
    .line 671
    iget-object v1, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;
    :try_end_b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_0

    .line 672
    .line 673
    :try_start_c
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    check-cast v1, Ljava/lang/String;
    :try_end_c
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_0

    .line 678
    .line 679
    if-eqz v1, :cond_19

    .line 680
    .line 681
    move/from16 v20, v4

    .line 682
    .line 683
    :try_start_d
    iget-object v4, v13, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 684
    .line 685
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    move-result v1

    .line 689
    if-eqz v1, :cond_1a

    .line 690
    .line 691
    goto :goto_13

    .line 692
    :catch_2
    move-exception v0

    .line 693
    :goto_10
    move/from16 v4, v20

    .line 694
    .line 695
    goto/16 :goto_18

    .line 696
    .line 697
    :cond_19
    move/from16 v20, v4

    .line 698
    .line 699
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 700
    .line 701
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .line 703
    .line 704
    const-string v4, "Non-preload app "

    .line 705
    .line 706
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    iget-object v4, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 710
    .line 711
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    const-string v4, " signed with platform signature and joining shared uid: "

    .line 715
    .line 716
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    iget-object v4, v13, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 720
    .line 721
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    const-string v4, "PackageManager"

    .line 729
    .line 730
    new-instance v8, Ljava/lang/StringBuilder;

    .line 731
    .line 732
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    const-string v9, ", allowList: "

    .line 739
    .line 740
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    .line 752
    .line 753
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    .line 754
    .line 755
    const/16 v4, -0x6b

    .line 756
    .line 757
    invoke-direct {v0, v4, v1}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    .line 758
    .line 759
    .line 760
    throw v0

    .line 761
    :catch_3
    move-exception v0

    .line 762
    :goto_11
    move/from16 v20, v4

    .line 763
    .line 764
    goto/16 :goto_18

    .line 765
    .line 766
    :catch_4
    move-exception v0

    .line 767
    :goto_12
    move/from16 v20, v4

    .line 768
    .line 769
    goto :goto_10

    .line 770
    :catch_5
    move-exception v0

    .line 771
    move-object/from16 v10, p6

    .line 772
    .line 773
    goto :goto_11

    .line 774
    :catch_6
    move-exception v0

    .line 775
    move-object/from16 v10, p6

    .line 776
    .line 777
    goto :goto_12

    .line 778
    :goto_13
    if-eqz v13, :cond_1f

    .line 779
    .line 780
    iget-object v0, v13, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 781
    .line 782
    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 783
    .line 784
    invoke-virtual {v0, v8}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    if-eq v1, v0, :cond_1e

    .line 789
    .line 790
    invoke-virtual {v13}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 795
    .line 796
    .line 797
    move-result-object v0

    .line 798
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 799
    .line 800
    .line 801
    move-result v4

    .line 802
    if-eqz v4, :cond_1d

    .line 803
    .line 804
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v4

    .line 808
    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 809
    .line 810
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v9

    .line 814
    if-eqz v9, :cond_1b

    .line 815
    .line 816
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v9

    .line 820
    move-object/from16 v21, v0

    .line 821
    .line 822
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v0

    .line 830
    if-nez v0, :cond_1c

    .line 831
    .line 832
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    const/4 v4, 0x2

    .line 837
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    move-object v1, v0

    .line 842
    goto :goto_15

    .line 843
    :cond_1b
    move-object/from16 v21, v0

    .line 844
    .line 845
    :cond_1c
    :goto_15
    move-object/from16 v0, v21

    .line 846
    .line 847
    goto :goto_14

    .line 848
    :cond_1d
    iget-object v0, v13, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 849
    .line 850
    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 851
    .line 852
    :cond_1e
    iget-object v0, v13, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    .line 853
    .line 854
    if-nez v0, :cond_1f

    .line 855
    .line 856
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 857
    .line 858
    iput-object v0, v13, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;
    :try_end_d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_0

    .line 859
    .line 860
    :cond_1f
    const/4 v9, 0x2

    .line 861
    const/16 v19, 0x0

    .line 862
    .line 863
    goto/16 :goto_1a

    .line 864
    .line 865
    :catch_7
    move-exception v0

    .line 866
    :goto_16
    move-object/from16 v10, p6

    .line 867
    .line 868
    const/4 v4, 0x0

    .line 869
    goto :goto_18

    .line 870
    :catch_8
    move-exception v0

    .line 871
    goto :goto_16

    .line 872
    :goto_17
    new-instance v1, Ljava/lang/RuntimeException;

    .line 873
    .line 874
    const-string v2, "Signing certificates comparison made on incomparable signing details but somehow passed verifySignatures!"

    .line 875
    .line 876
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 877
    .line 878
    .line 879
    throw v1

    .line 880
    :goto_18
    if-eqz v2, :cond_26

    .line 881
    .line 882
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    if-eqz v13, :cond_23

    .line 887
    .line 888
    iget-object v1, v13, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    .line 889
    .line 890
    if-eqz v1, :cond_21

    .line 891
    .line 892
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 897
    .line 898
    .line 899
    move-result-object v2

    .line 900
    const/4 v9, 0x2

    .line 901
    invoke-static {v1, v2, v13, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->canJoinSharedUserId(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/SharedUserSetting;I)Z

    .line 902
    .line 903
    .line 904
    move-result v1

    .line 905
    if-nez v1, :cond_22

    .line 906
    .line 907
    const-string/jumbo v0, "ro.product.first_api_level"

    .line 908
    .line 909
    .line 910
    const/4 v1, 0x0

    .line 911
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 912
    .line 913
    .line 914
    move-result v0

    .line 915
    const/16 v1, 0x1d

    .line 916
    .line 917
    if-gt v0, v1, :cond_20

    .line 918
    .line 919
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    .line 920
    .line 921
    new-instance v1, Ljava/lang/StringBuilder;

    .line 922
    .line 923
    const-string v2, "Signature mismatch for shared user: "

    .line 924
    .line 925
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v1

    .line 935
    const/16 v2, -0x68

    .line 936
    .line 937
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    .line 938
    .line 939
    .line 940
    throw v0

    .line 941
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 942
    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    .line 944
    .line 945
    const-string v2, "Signature mismatch on system package "

    .line 946
    .line 947
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v2

    .line 954
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    const-string v2, " for shared user "

    .line 958
    .line 959
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v1

    .line 969
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 970
    .line 971
    .line 972
    throw v0

    .line 973
    :cond_21
    const/4 v9, 0x2

    .line 974
    :cond_22
    iget-object v1, v13, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 975
    .line 976
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    iput-object v2, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 981
    .line 982
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 983
    .line 984
    iput-object v1, v13, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    .line 985
    .line 986
    const/4 v2, 0x1

    .line 987
    goto :goto_19

    .line 988
    :cond_23
    const/4 v1, 0x0

    .line 989
    const/4 v9, 0x2

    .line 990
    move v2, v1

    .line 991
    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 992
    .line 993
    const-string v8, "System package "

    .line 994
    .line 995
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 996
    .line 997
    .line 998
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v3

    .line 1002
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    .line 1004
    .line 1005
    const-string v3, " signature changed; retaining data."

    .line 1006
    .line 1007
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v1

    .line 1014
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1015
    .line 1016
    const/4 v3, 0x5

    .line 1017
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 1018
    .line 1019
    .line 1020
    move-object v8, v0

    .line 1021
    move/from16 v19, v2

    .line 1022
    .line 1023
    move/from16 v20, v4

    .line 1024
    .line 1025
    :goto_1a
    new-instance v0, Lcom/android/server/pm/ReconciledPackage;

    .line 1026
    .line 1027
    move-object v1, v0

    .line 1028
    move-object/from16 v2, p0

    .line 1029
    .line 1030
    move-object/from16 v3, p1

    .line 1031
    .line 1032
    move-object v4, v7

    .line 1033
    move-object v13, v7

    .line 1034
    move-object v7, v8

    .line 1035
    const/4 v10, 0x3

    .line 1036
    move/from16 v8, v19

    .line 1037
    .line 1038
    move/from16 v18, v9

    .line 1039
    .line 1040
    move/from16 v9, v20

    .line 1041
    .line 1042
    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/ReconciledPackage;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/DeletePackageAction;Ljava/util/List;Landroid/content/pm/SigningDetails;ZZ)V

    .line 1043
    .line 1044
    .line 1045
    iget v1, v13, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 1046
    .line 1047
    and-int/lit8 v1, v1, 0x10

    .line 1048
    .line 1049
    if-nez v1, :cond_24

    .line 1050
    .line 1051
    iget v1, v13, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    .line 1052
    .line 1053
    and-int/lit8 v1, v1, 0x10

    .line 1054
    .line 1055
    if-nez v1, :cond_24

    .line 1056
    .line 1057
    :try_start_e
    iget-object v1, v13, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 1058
    .line 1059
    invoke-virtual {v11, v1, v14, v15}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v1

    .line 1063
    iput-object v1, v0, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;
    :try_end_e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_e .. :try_end_e} :catch_9

    .line 1064
    .line 1065
    goto :goto_1b

    .line 1066
    :catch_9
    move-exception v0

    .line 1067
    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    .line 1068
    .line 1069
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 1070
    .line 1071
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v0

    .line 1075
    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    .line 1076
    .line 1077
    .line 1078
    throw v1

    .line 1079
    :cond_24
    :goto_1b
    iget-object v1, v13, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 1080
    .line 1081
    if-eqz v1, :cond_25

    .line 1082
    .line 1083
    invoke-virtual {v1, v10}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    .line 1084
    .line 1085
    .line 1086
    :cond_25
    move-object/from16 v1, v28

    .line 1087
    .line 1088
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    .line 1090
    .line 1091
    move-object v13, v1

    .line 1092
    move v8, v10

    .line 1093
    move/from16 v9, v18

    .line 1094
    .line 1095
    move-object/from16 v10, p1

    .line 1096
    .line 1097
    goto/16 :goto_2

    .line 1098
    .line 1099
    :cond_26
    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    .line 1100
    .line 1101
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 1102
    .line 1103
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v0

    .line 1107
    invoke-direct {v1, v2, v0}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    throw v1

    .line 1111
    :goto_1c
    :try_start_f
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1112
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1113
    .line 1114
    throw v0

    .line 1115
    :cond_27
    move-object v1, v13

    .line 1116
    return-object v1
.end method
