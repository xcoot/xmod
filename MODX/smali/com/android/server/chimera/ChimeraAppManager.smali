.class public final Lcom/android/server/chimera/ChimeraAppManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;


# instance fields
.field public final mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

.field public final mCemPkgProtectedIntervalMs:I

.field public final mForceUsePss:Z

.field public final mForegroundG3ProcList:Ljava/util/Set;

.field public final mGcApps:Ljava/util/Map;

.field public final mReclaimApps:Ljava/util/Map;

.field public final mStandbyInfoMap:Ljava/util/Map;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0xea60

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/chimera/ChimeraAppManager;->CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    .line 7
    new-instance v0, Landroid/util/ArrayMap;

    .line 9
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    .line 14
    new-instance v0, Landroid/util/ArrayMap;

    .line 16
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    .line 21
    new-instance v0, Landroid/util/ArrayMap;

    .line 23
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    .line 30
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    .line 35
    new-instance v0, Lcom/android/server/chimera/ChimeraAppClassifier;

    .line 37
    invoke-direct {v0, p1}, Lcom/android/server/chimera/ChimeraAppClassifier;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 40
    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    .line 42
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    const-string/jumbo v0, "persist.sys.chimera_cem_pkg_protected_interval_ms"

    .line 50
    sget-object v1, Lcom/android/server/chimera/ChimeraAppManager;->CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;

    .line 52
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    const-string/jumbo v0, "ro.slmk.chimera_force_use_pss"

    .line 68
    const-string/jumbo v1, "false"

    .line 71
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 78
    move-result v0

    .line 79
    iput-boolean v0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mForceUsePss:Z

    .line 81
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 83
    const-class v0, Landroid/app/usage/UsageStatsManager;

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Landroid/app/usage/UsageStatsManager;

    .line 91
    if-nez p1, :cond_0

    .line 93
    new-instance p1, Ljava/util/HashMap;

    .line 95
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBuckets()Ljava/util/Map;

    .line 102
    move-result-object p1

    .line 103
    :goto_0
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    .line 105
    return-void
.end method


# virtual methods
.method public final getAppsToKill(Lcom/android/server/chimera/SkipReasonLogger;ILcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;Ljava/util/List;)Ljava/util/List;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p3

    .line 7
    iget-object v9, v0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 9
    iget-object v10, v9, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 11
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 13
    invoke-virtual {v10}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    .line 16
    move-result v10

    .line 17
    new-instance v11, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v12, "getAppsToKill() - protectedLruCount: "

    .line 22
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    move/from16 v12, p2

    .line 27
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v11

    .line 34
    const-string v13, "ChimeraAppManager"

    .line 36
    invoke-static {v13, v11}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v11, Landroid/util/ArrayMap;

    .line 41
    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 44
    new-instance v14, Ljava/util/HashSet;

    .line 46
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 49
    new-instance v15, Ljava/util/ArrayList;

    .line 51
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {v9}, Lcom/android/server/chimera/SystemRepository;->getAccessibilityServicePackages()Ljava/util/List;

    .line 57
    move-result-object v3

    .line 58
    sget-object v17, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 60
    const-string/jumbo v4, "persist.sys.bub_onoff"

    .line 63
    const-string/jumbo v6, "on"

    .line 66
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v4

    .line 74
    invoke-static {}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    .line 77
    move-result-object v6

    .line 78
    new-instance v5, Ljava/util/ArrayList;

    .line 80
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    .line 85
    check-cast v7, Landroid/util/ArrayMap;

    .line 87
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 90
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    .line 92
    check-cast v7, Landroid/util/ArrayMap;

    .line 94
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 97
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object v7

    .line 101
    const/16 v20, -0x1

    .line 103
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v21

    .line 107
    sget-object v8, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 109
    move/from16 v23, v10

    .line 111
    move-object/from16 v24, v11

    .line 113
    const-string v10, "/"

    .line 115
    if-eqz v21, :cond_17

    .line 117
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    move-result-object v21

    .line 121
    move-object/from16 v11, v21

    .line 123
    check-cast v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 125
    move-object/from16 v29, v7

    .line 127
    const/16 v21, 0x1

    .line 129
    add-int/lit8 v7, v20, 0x1

    .line 131
    move-object/from16 v20, v15

    .line 133
    iget v15, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 135
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object v15

    .line 139
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v15, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 144
    if-eqz v15, :cond_15

    .line 146
    move-object/from16 v21, v5

    .line 148
    array-length v5, v15

    .line 149
    if-gtz v5, :cond_0

    .line 151
    move-object/from16 v31, v3

    .line 153
    move/from16 v30, v4

    .line 155
    :goto_1
    move-object/from16 v33, v9

    .line 157
    move/from16 v28, v12

    .line 159
    move-object/from16 v32, v13

    .line 161
    move-object/from16 v27, v14

    .line 163
    move-object/from16 v13, v20

    .line 165
    move-object/from16 v5, v24

    .line 167
    move-object/from16 v24, v6

    .line 169
    move/from16 v20, v7

    .line 171
    goto/16 :goto_f

    .line 173
    :cond_0
    const/4 v5, 0x0

    .line 174
    aget-object v15, v15, v5

    .line 176
    iget v5, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 178
    move-object/from16 v30, v10

    .line 180
    const/16 v10, 0x11

    .line 182
    if-ne v5, v10, :cond_1

    .line 184
    iget v5, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 186
    sget-object v8, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACC:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 188
    invoke-virtual {v1, v5, v8}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 191
    :goto_2
    move-object/from16 v31, v3

    .line 193
    move-object v3, v6

    .line 194
    move-object/from16 v33, v9

    .line 196
    move/from16 v28, v12

    .line 198
    move-object v6, v13

    .line 199
    const/4 v5, 0x0

    .line 200
    move v9, v7

    .line 201
    goto/16 :goto_7

    .line 203
    :cond_1
    invoke-static {v15, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_2

    .line 209
    :goto_3
    goto :goto_2

    .line 210
    :cond_2
    invoke-interface {v3, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 213
    move-result v5

    .line 214
    if-eqz v5, :cond_3

    .line 216
    goto :goto_3

    .line 217
    :cond_3
    sget-object v5, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_QUOTA:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 219
    if-eq v2, v5, :cond_4

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 224
    move-result-wide v31

    .line 225
    move-object/from16 v33, v9

    .line 227
    iget-wide v9, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 229
    sub-long v31, v31, v9

    .line 231
    const-wide/16 v9, 0x1388

    .line 233
    cmp-long v9, v31, v9

    .line 235
    if-gez v9, :cond_5

    .line 237
    move-object/from16 v31, v3

    .line 239
    move-object v3, v6

    .line 240
    move v9, v7

    .line 241
    :goto_4
    move/from16 v28, v12

    .line 243
    move-object v6, v13

    .line 244
    :goto_5
    const/4 v5, 0x0

    .line 245
    goto/16 :goto_7

    .line 247
    :cond_4
    move-object/from16 v33, v9

    .line 249
    :cond_5
    iget v9, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 251
    iget v10, v0, Lcom/android/server/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    .line 253
    move-object/from16 v31, v3

    .line 255
    const/16 v3, 0x13

    .line 257
    if-ne v9, v3, :cond_6

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 262
    move-result-wide v34

    .line 263
    move-object v3, v6

    .line 264
    move v9, v7

    .line 265
    iget-wide v6, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 267
    sub-long v34, v34, v6

    .line 269
    int-to-long v6, v10

    .line 270
    cmp-long v6, v34, v6

    .line 272
    if-gez v6, :cond_7

    .line 274
    iget v5, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 276
    sget-object v6, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACHED_EMPTY:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 278
    invoke-virtual {v1, v5, v6}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 281
    goto :goto_4

    .line 282
    :cond_6
    move-object v3, v6

    .line 283
    move v9, v7

    .line 284
    :cond_7
    iget v6, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 286
    const/16 v7, 0xa

    .line 288
    if-ne v6, v7, :cond_8

    .line 290
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 293
    move-result-wide v6

    .line 294
    move/from16 v28, v12

    .line 296
    move-object/from16 v32, v13

    .line 298
    iget-wide v12, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 300
    sub-long/2addr v6, v12

    .line 301
    int-to-long v12, v10

    .line 302
    cmp-long v6, v6, v12

    .line 304
    if-gez v6, :cond_9

    .line 306
    iget v5, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 308
    sget-object v6, Lcom/android/server/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 310
    invoke-virtual {v1, v5, v6}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 313
    :goto_6
    move-object/from16 v6, v32

    .line 315
    goto :goto_5

    .line 316
    :cond_8
    move/from16 v28, v12

    .line 318
    move-object/from16 v32, v13

    .line 320
    :cond_9
    iget v6, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 322
    const/4 v7, 0x1

    .line 323
    if-gt v6, v7, :cond_a

    .line 325
    iget v5, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 327
    invoke-virtual {v1, v5, v8}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 330
    goto :goto_6

    .line 331
    :cond_a
    if-eq v2, v5, :cond_b

    .line 333
    if-nez v4, :cond_b

    .line 335
    iget-boolean v5, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->isProtectedInPicked:Z

    .line 337
    if-eqz v5, :cond_b

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    .line 341
    const-string/jumbo v6, "getAppsToKill() - Protected by Picked "

    .line 344
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    move-result-object v5

    .line 354
    move-object/from16 v6, v32

    .line 356
    invoke-static {v6, v5}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget v5, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 361
    sget-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PICKED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 363
    invoke-virtual {v1, v5, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 366
    goto :goto_5

    .line 367
    :cond_b
    move-object/from16 v6, v32

    .line 369
    invoke-virtual {v14, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 372
    move-result v5

    .line 373
    const/4 v7, 0x1

    .line 374
    xor-int/2addr v5, v7

    .line 375
    :goto_7
    if-nez v5, :cond_c

    .line 377
    invoke-virtual {v14, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 380
    move/from16 v30, v4

    .line 382
    move-object/from16 v32, v6

    .line 384
    move-object/from16 v27, v14

    .line 386
    move-object/from16 v13, v20

    .line 388
    move-object/from16 v5, v24

    .line 390
    move-object/from16 v24, v3

    .line 392
    move/from16 v20, v9

    .line 394
    goto/16 :goto_f

    .line 396
    :cond_c
    iget v5, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    .line 398
    const/4 v7, 0x4

    .line 399
    and-int/2addr v5, v7

    .line 400
    if-gtz v5, :cond_e

    .line 402
    iget v5, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 404
    const/16 v7, 0x12

    .line 406
    if-ne v5, v7, :cond_d

    .line 408
    goto :goto_8

    .line 409
    :cond_d
    move-object/from16 v5, v24

    .line 411
    goto :goto_a

    .line 412
    :cond_e
    :goto_8
    if-lez v28, :cond_d

    .line 414
    new-instance v5, Ljava/lang/StringBuilder;

    .line 416
    const-string/jumbo v7, "getAppsToKill() - Protected by LRU : "

    .line 419
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    move-result-object v5

    .line 429
    invoke-static {v6, v5}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v5, -0x1

    .line 433
    add-int/lit8 v12, v28, -0x1

    .line 435
    invoke-virtual {v14, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 438
    iget v5, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 440
    sget-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->LRU:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 442
    invoke-virtual {v1, v5, v7}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 445
    move-object v13, v6

    .line 446
    move-object/from16 v15, v20

    .line 448
    move-object/from16 v5, v21

    .line 450
    move/from16 v10, v23

    .line 452
    move-object/from16 v11, v24

    .line 454
    move-object/from16 v7, v29

    .line 456
    move-object v6, v3

    .line 457
    move/from16 v20, v9

    .line 459
    move-object/from16 v3, v31

    .line 461
    :goto_9
    move-object/from16 v9, v33

    .line 463
    goto/16 :goto_0

    .line 465
    :goto_a
    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    move-result-object v7

    .line 469
    check-cast v7, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 471
    if-nez v7, :cond_10

    .line 473
    new-instance v7, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 475
    iget v8, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 477
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 480
    const/4 v10, 0x0

    .line 481
    iput v10, v7, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 483
    const/4 v10, -0x1

    .line 484
    iput v10, v7, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 486
    iput v10, v7, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 488
    iput v10, v7, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    .line 490
    const-wide/16 v12, 0x0

    .line 492
    iput-wide v12, v7, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 494
    iput-wide v12, v7, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    .line 496
    iput v10, v7, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 498
    new-instance v12, Ljava/util/ArrayList;

    .line 500
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 503
    iput-object v12, v7, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 505
    iput-object v15, v7, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 507
    iput v8, v7, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 509
    iput v9, v7, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 511
    iget-object v12, v0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    .line 513
    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    move-result-object v12

    .line 517
    check-cast v12, Ljava/lang/Integer;

    .line 519
    if-eqz v12, :cond_f

    .line 521
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 524
    move-result v8

    .line 525
    iput v8, v7, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 527
    move-object/from16 v24, v3

    .line 529
    move-object/from16 v10, v33

    .line 531
    goto :goto_b

    .line 532
    :cond_f
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 535
    move-result v8

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 539
    move-result-wide v12

    .line 540
    move-object/from16 v24, v3

    .line 542
    move-object/from16 v10, v33

    .line 544
    iget-object v3, v10, Lcom/android/server/chimera/SystemRepository;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 546
    invoke-virtual {v3, v8, v15, v12, v13}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    .line 549
    move-result v3

    .line 550
    iput v3, v7, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 552
    iget-object v8, v0, Lcom/android/server/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    .line 554
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 557
    move-result-object v3

    .line 558
    invoke-interface {v8, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    :goto_b
    iget v3, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 563
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 566
    move-result v3

    .line 567
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 570
    move-result-wide v12

    .line 571
    iget-object v8, v10, Lcom/android/server/chimera/SystemRepository;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 573
    invoke-virtual {v8, v3, v15, v12, v13}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    .line 576
    move-result v3

    .line 577
    iput v3, v7, Lcom/android/server/chimera/ChimeraAppInfo;->curStandbyBucket:I

    .line 579
    invoke-virtual {v5, v15, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iget v3, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 584
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 587
    move-result v3

    .line 588
    new-instance v8, Ljava/lang/StringBuilder;

    .line 590
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 593
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    move-object/from16 v12, v30

    .line 598
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    iget v3, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 609
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 615
    move-result-object v3

    .line 616
    move-object/from16 v13, v20

    .line 618
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    :goto_c
    move v15, v4

    .line 622
    goto :goto_d

    .line 623
    :cond_10
    move-object/from16 v24, v3

    .line 625
    move-object/from16 v13, v20

    .line 627
    move-object/from16 v10, v33

    .line 629
    goto :goto_c

    .line 630
    :goto_d
    iget-wide v3, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    .line 632
    if-eqz v23, :cond_11

    .line 634
    const-wide/16 v25, 0x0

    .line 636
    cmp-long v8, v3, v25

    .line 638
    if-gtz v8, :cond_13

    .line 640
    iget v3, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 642
    const/4 v8, 0x0

    .line 643
    invoke-static {v3, v8, v8}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 646
    move-result-wide v3

    .line 647
    goto :goto_e

    .line 648
    :cond_11
    const/4 v8, 0x0

    .line 649
    iget-boolean v12, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForceUsePss:Z

    .line 651
    if-eqz v12, :cond_12

    .line 653
    iget v3, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 655
    invoke-static {v3, v8, v8}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 658
    move-result-wide v3

    .line 659
    goto :goto_e

    .line 660
    :cond_12
    const-wide/16 v25, 0x0

    .line 662
    cmp-long v12, v3, v25

    .line 664
    if-gtz v12, :cond_13

    .line 666
    iget v3, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 668
    invoke-static {v3, v8}, Landroid/os/Debug;->getRss(I[J)J

    .line 671
    move-result-wide v3

    .line 672
    :cond_13
    :goto_e
    iget v8, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 674
    iget-object v12, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 676
    move/from16 v20, v9

    .line 678
    move-object/from16 v33, v10

    .line 680
    iget-wide v9, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    .line 682
    move-object/from16 v27, v14

    .line 684
    move/from16 v30, v15

    .line 686
    iget-wide v14, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastSwapPss:J

    .line 688
    move-object/from16 v32, v6

    .line 690
    iget v6, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->importance:I

    .line 692
    new-instance v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 694
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 697
    iput v8, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 699
    iput-object v12, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    .line 701
    iput-wide v3, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    .line 703
    iput-wide v9, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->avgPss:J

    .line 705
    iput v6, v1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->importance:I

    .line 707
    iget-object v6, v7, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 709
    check-cast v6, Ljava/util/ArrayList;

    .line 711
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    iget-wide v8, v7, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 716
    add-long/2addr v8, v3

    .line 717
    iput-wide v8, v7, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 719
    iget-wide v3, v7, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    .line 721
    add-long/2addr v3, v14

    .line 722
    iput-wide v3, v7, Lcom/android/server/chimera/ChimeraAppInfo;->swapPss:J

    .line 724
    iget v1, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    .line 726
    const/16 v3, 0x8

    .line 728
    and-int/lit8 v4, v1, 0x8

    .line 730
    if-lez v4, :cond_14

    .line 732
    iget v3, v7, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 734
    const/high16 v4, 0x20000

    .line 736
    or-int/2addr v3, v4

    .line 737
    iput v3, v7, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 739
    :cond_14
    const/4 v3, 0x4

    .line 740
    and-int/2addr v1, v3

    .line 741
    if-lez v1, :cond_16

    .line 743
    iget v1, v7, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 745
    const/high16 v3, 0x1000000

    .line 747
    or-int/2addr v1, v3

    .line 748
    iput v1, v7, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 750
    goto :goto_f

    .line 751
    :cond_15
    move-object/from16 v31, v3

    .line 753
    move/from16 v30, v4

    .line 755
    move-object/from16 v21, v5

    .line 757
    goto/16 :goto_1

    .line 759
    :cond_16
    :goto_f
    move-object/from16 v1, p1

    .line 761
    move-object v11, v5

    .line 762
    move-object v15, v13

    .line 763
    move-object/from16 v5, v21

    .line 765
    move/from16 v10, v23

    .line 767
    move-object/from16 v6, v24

    .line 769
    move-object/from16 v14, v27

    .line 771
    move/from16 v12, v28

    .line 773
    move-object/from16 v7, v29

    .line 775
    move/from16 v4, v30

    .line 777
    move-object/from16 v3, v31

    .line 779
    move-object/from16 v13, v32

    .line 781
    goto/16 :goto_9

    .line 783
    :cond_17
    move-object/from16 v21, v5

    .line 785
    move-object v12, v10

    .line 786
    move-object v13, v15

    .line 787
    move-object/from16 v5, v24

    .line 789
    const/4 v1, 0x0

    .line 790
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 793
    move-result v3

    .line 794
    if-lez v3, :cond_47

    .line 796
    iget-object v1, v0, Lcom/android/server/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/chimera/ChimeraAppClassifier;

    .line 798
    iput-object v2, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 800
    iget-object v2, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    .line 802
    check-cast v2, Ljava/util/HashMap;

    .line 804
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 807
    iget-object v2, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    .line 809
    check-cast v2, Ljava/util/ArrayList;

    .line 811
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 814
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 817
    move-result-object v2

    .line 818
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 821
    move-result-object v2

    .line 822
    new-instance v3, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda1;

    .line 824
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 827
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 830
    move-result-object v2

    .line 831
    new-instance v3, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda2;

    .line 833
    invoke-direct {v3, v1}, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/chimera/ChimeraAppClassifier;)V

    .line 836
    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 839
    iget-object v2, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    .line 841
    check-cast v2, Landroid/util/ArrayMap;

    .line 843
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 846
    iget-object v2, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 848
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 851
    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 853
    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 855
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 858
    sget-boolean v3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 860
    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 862
    invoke-virtual {v3}, Lcom/android/server/am/FreecessController;->updateRunningLocationPackages()V

    .line 865
    sget-object v3, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 867
    invoke-virtual {v3}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 870
    new-instance v3, Ljava/util/ArrayList;

    .line 872
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 875
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 878
    move-result-object v4

    .line 879
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 882
    move-result v6

    .line 883
    const-string v7, "NumberFormatException!"

    .line 885
    if-eqz v6, :cond_1d

    .line 887
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 890
    move-result-object v6

    .line 891
    check-cast v6, Ljava/lang/String;

    .line 893
    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 896
    move-result-object v6

    .line 897
    if-eqz v6, :cond_1c

    .line 899
    const/4 v9, 0x0

    .line 900
    aget-object v10, v6, v9

    .line 902
    const/4 v9, 0x1

    .line 903
    :try_start_0
    aget-object v11, v6, v9

    .line 905
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 908
    move-result v9

    .line 909
    const/4 v11, 0x2

    .line 910
    aget-object v6, v6, v11

    .line 912
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 915
    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    sget-object v7, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 918
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 921
    const/4 v7, 0x0

    .line 922
    const/4 v11, 0x2

    .line 923
    :goto_11
    const/16 v13, 0x22

    .line 925
    if-ge v11, v13, :cond_1b

    .line 927
    const/16 v13, 0x8

    .line 929
    if-ne v11, v13, :cond_19

    .line 931
    :cond_18
    const/4 v13, 0x1

    .line 932
    const/16 v14, 0x11

    .line 934
    goto :goto_12

    .line 935
    :cond_19
    sget-object v13, Lcom/android/server/am/mars/filter/FilterFactory$FilterFactoryHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterFactory;

    .line 937
    invoke-virtual {v13, v11}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    .line 940
    move-result-object v13

    .line 941
    if-eqz v13, :cond_18

    .line 943
    const/16 v14, 0x11

    .line 945
    invoke-interface {v13, v9, v6, v14, v10}, Lcom/android/server/am/mars/filter/IFilter;->filter(IIILjava/lang/String;)I

    .line 948
    move-result v13

    .line 949
    if-eqz v13, :cond_1a

    .line 951
    const/4 v13, 0x1

    .line 952
    add-int/lit8 v15, v11, -0x1

    .line 954
    shl-int v15, v13, v15

    .line 956
    or-int/2addr v7, v15

    .line 957
    goto :goto_12

    .line 958
    :cond_1a
    const/4 v13, 0x1

    .line 959
    :goto_12
    add-int/2addr v11, v13

    .line 960
    goto :goto_11

    .line 961
    :cond_1b
    const/16 v14, 0x11

    .line 963
    new-instance v6, Ljava/lang/StringBuilder;

    .line 965
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 968
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 983
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 986
    move-result-object v6

    .line 987
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    goto :goto_10

    .line 991
    :catch_0
    const/16 v14, 0x11

    .line 993
    const-string v6, "MARsPolicyManager"

    .line 995
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    goto :goto_10

    .line 999
    :cond_1c
    const/16 v14, 0x11

    .line 1001
    goto :goto_10

    .line 1002
    :cond_1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1005
    move-result v4

    .line 1006
    const-string v6, "ChimeraAppClassifier"

    .line 1008
    if-lez v4, :cond_1f

    .line 1010
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1013
    move-result-object v3

    .line 1014
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1017
    move-result v4

    .line 1018
    if-eqz v4, :cond_1f

    .line 1020
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1023
    move-result-object v4

    .line 1024
    check-cast v4, Ljava/lang/String;

    .line 1026
    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1029
    move-result-object v4

    .line 1030
    if-eqz v4, :cond_1e

    .line 1032
    const/4 v9, 0x0

    .line 1033
    :try_start_1
    aget-object v10, v4, v9

    .line 1035
    const/4 v11, 0x1

    .line 1036
    aget-object v13, v4, v11

    .line 1038
    const/4 v11, 0x2

    .line 1039
    aget-object v4, v4, v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1041
    iget-object v11, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    .line 1043
    invoke-static {v10, v12, v13}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1046
    move-result-object v10

    .line 1047
    check-cast v11, Landroid/util/ArrayMap;

    .line 1049
    invoke-virtual {v11, v10, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    goto :goto_13

    .line 1053
    :catch_1
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    goto :goto_13

    .line 1057
    :cond_1e
    const/4 v9, 0x0

    .line 1058
    goto :goto_13

    .line 1059
    :cond_1f
    const/4 v9, 0x0

    .line 1060
    new-instance v10, Ljava/util/ArrayList;

    .line 1062
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 1068
    move-result-object v3

    .line 1069
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1072
    move-result-object v3

    .line 1073
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1076
    move-result v4

    .line 1077
    if-eqz v4, :cond_48

    .line 1079
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1082
    move-result-object v4

    .line 1083
    check-cast v4, Lcom/android/server/chimera/ChimeraAppInfo;

    .line 1085
    iget-wide v13, v4, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 1087
    iput-wide v13, v4, Lcom/android/server/chimera/ChimeraAppInfo;->reclaimGain:J

    .line 1089
    iget v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->uid:I

    .line 1091
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 1094
    move-result v7

    .line 1095
    iget v11, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 1097
    invoke-virtual {v4}, Lcom/android/server/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    .line 1100
    iget-object v13, v4, Lcom/android/server/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 1102
    if-eqz v13, :cond_2d

    .line 1104
    iget-object v14, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    .line 1106
    check-cast v14, Landroid/util/ArrayMap;

    .line 1108
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    .line 1111
    move-result v14

    .line 1112
    if-lez v14, :cond_2d

    .line 1114
    iget-object v14, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    .line 1116
    invoke-static {v7, v13, v12}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1119
    move-result-object v15

    .line 1120
    check-cast v14, Landroid/util/ArrayMap;

    .line 1122
    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    move-result-object v14

    .line 1126
    check-cast v14, Ljava/lang/String;

    .line 1128
    if-eqz v14, :cond_20

    .line 1130
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1133
    move-result v14

    .line 1134
    goto :goto_15

    .line 1135
    :cond_20
    move v14, v9

    .line 1136
    :goto_15
    and-int/lit16 v15, v14, 0x400

    .line 1138
    if-lez v15, :cond_21

    .line 1140
    const/16 v15, 0x10

    .line 1142
    goto :goto_16

    .line 1143
    :cond_21
    move v15, v9

    .line 1144
    :goto_16
    and-int/lit16 v9, v14, 0x200

    .line 1146
    if-lez v9, :cond_22

    .line 1148
    or-int/lit16 v15, v15, 0x4000

    .line 1150
    :cond_22
    const/16 v9, 0x10

    .line 1152
    and-int/lit8 v16, v14, 0x10

    .line 1154
    if-lez v16, :cond_23

    .line 1156
    const/high16 v16, 0x20000

    .line 1158
    or-int v15, v15, v16

    .line 1160
    goto :goto_17

    .line 1161
    :cond_23
    const/high16 v16, 0x20000

    .line 1163
    :goto_17
    const v19, 0x30120

    .line 1166
    and-int v19, v14, v19

    .line 1168
    if-lez v19, :cond_24

    .line 1170
    const/high16 v19, 0x40000

    .line 1172
    or-int v15, v15, v19

    .line 1174
    :cond_24
    and-int/lit16 v9, v14, 0x1000

    .line 1176
    if-lez v9, :cond_25

    .line 1178
    const/high16 v9, 0x800000

    .line 1180
    or-int/2addr v15, v9

    .line 1181
    :cond_25
    and-int/lit8 v9, v14, 0x40

    .line 1183
    if-lez v9, :cond_26

    .line 1185
    or-int/lit16 v15, v15, 0x80

    .line 1187
    :cond_26
    and-int/lit16 v9, v14, 0x80

    .line 1189
    if-lez v9, :cond_27

    .line 1191
    or-int/lit8 v15, v15, 0x20

    .line 1193
    :cond_27
    and-int/lit16 v9, v14, 0x4000

    .line 1195
    if-lez v9, :cond_28

    .line 1197
    or-int/lit8 v15, v15, 0x40

    .line 1199
    :cond_28
    const/16 v9, 0x8

    .line 1201
    and-int/lit8 v18, v14, 0x8

    .line 1203
    if-lez v18, :cond_29

    .line 1205
    or-int/lit16 v15, v15, 0x800

    .line 1207
    :cond_29
    const/16 v18, 0x4

    .line 1209
    and-int/lit8 v19, v14, 0x4

    .line 1211
    if-lez v19, :cond_2a

    .line 1213
    or-int/2addr v15, v9

    .line 1214
    :cond_2a
    and-int/lit16 v9, v14, 0x2000

    .line 1216
    if-lez v9, :cond_2b

    .line 1218
    const/4 v9, 0x2

    .line 1219
    or-int/2addr v15, v9

    .line 1220
    goto :goto_18

    .line 1221
    :cond_2b
    const/4 v9, 0x2

    .line 1222
    :goto_18
    if-eqz v14, :cond_2c

    .line 1224
    if-nez v15, :cond_2e

    .line 1226
    :cond_2c
    const/4 v14, 0x1

    .line 1227
    or-int/2addr v15, v14

    .line 1228
    goto :goto_19

    .line 1229
    :cond_2d
    const/4 v9, 0x2

    .line 1230
    const/high16 v16, 0x20000

    .line 1232
    const/4 v15, 0x0

    .line 1233
    :cond_2e
    :goto_19
    sget-boolean v14, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 1235
    sget-object v14, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1237
    invoke-virtual {v14}, Lcom/android/server/am/MARsPolicyManager;->getMARsEnabled()Z

    .line 1240
    move-result v17

    .line 1241
    if-eqz v17, :cond_2f

    .line 1243
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 1246
    move-result v17

    .line 1247
    if-eqz v17, :cond_2f

    .line 1249
    invoke-virtual {v14, v7, v13}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    .line 1252
    move-result v14

    .line 1253
    if-eqz v14, :cond_2f

    .line 1255
    or-int/lit16 v15, v15, 0x1000

    .line 1257
    :cond_2f
    iget-object v14, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    .line 1259
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1262
    move-result-object v7

    .line 1263
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    new-instance v9, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda0;

    .line 1268
    invoke-direct {v9, v2}, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 1271
    check-cast v14, Ljava/util/HashMap;

    .line 1273
    invoke-virtual {v14, v7, v9}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 1276
    move-result-object v7

    .line 1277
    check-cast v7, Ljava/util/List;

    .line 1279
    if-eqz v7, :cond_31

    .line 1281
    invoke-interface {v7, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1284
    move-result v7

    .line 1285
    if-eqz v7, :cond_31

    .line 1287
    const-string/jumbo v7, "isLongLiveApp: "

    .line 1290
    invoke-static {v7, v13, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    :cond_30
    :goto_1a
    const/4 v7, 0x1

    .line 1294
    goto :goto_1b

    .line 1295
    :cond_31
    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    .line 1297
    sget-object v7, Lcom/android/server/am/DynamicHiddenApp$DhaClassLazyHolder;->INSTANCE:Lcom/android/server/am/DynamicHiddenApp;

    .line 1299
    iget-boolean v7, v7, Lcom/android/server/am/DynamicHiddenApp;->HomeHubState:Z

    .line 1301
    if-eqz v7, :cond_32

    .line 1303
    sget-object v7, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_WHILE_DOCKING:Ljava/util/List;

    .line 1305
    check-cast v7, Ljava/util/ArrayList;

    .line 1307
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1310
    move-result v7

    .line 1311
    if-eqz v7, :cond_32

    .line 1313
    goto :goto_1a

    .line 1314
    :cond_32
    if-eqz v13, :cond_33

    .line 1316
    const-string/jumbo v7, "com.android.cts."

    .line 1319
    invoke-virtual {v13, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1322
    move-result v7

    .line 1323
    if-eqz v7, :cond_33

    .line 1325
    goto :goto_1a

    .line 1326
    :cond_33
    iget-object v7, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 1328
    sget-object v9, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 1330
    if-ne v7, v9, :cond_34

    .line 1332
    sget-object v7, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    .line 1334
    check-cast v7, Ljava/util/ArrayList;

    .line 1336
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1339
    move-result v7

    .line 1340
    goto :goto_1b

    .line 1341
    :cond_34
    sget-object v7, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    .line 1343
    check-cast v7, Ljava/util/ArrayList;

    .line 1345
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1348
    move-result v7

    .line 1349
    if-nez v7, :cond_30

    .line 1351
    sget-object v7, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_EXCEPT_FOR_PMM_TRIGGER:Ljava/util/List;

    .line 1353
    check-cast v7, Ljava/util/ArrayList;

    .line 1355
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1358
    move-result v7

    .line 1359
    if-eqz v7, :cond_35

    .line 1361
    goto :goto_1a

    .line 1362
    :cond_35
    const/4 v7, 0x0

    .line 1363
    :goto_1b
    if-eqz v7, :cond_36

    .line 1365
    const/high16 v7, 0x100000

    .line 1367
    or-int/2addr v15, v7

    .line 1368
    :cond_36
    iget-object v7, v1, Lcom/android/server/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    .line 1370
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1373
    move-result-object v9

    .line 1374
    check-cast v7, Ljava/util/ArrayList;

    .line 1376
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1379
    move-result v7

    .line 1380
    if-eqz v7, :cond_37

    .line 1382
    const/high16 v7, 0x200000

    .line 1384
    or-int/2addr v15, v7

    .line 1385
    :cond_37
    sget-object v7, Lcom/android/server/chimera/ChimeraAppClassifier;->mProtectOnBubDisabledList:Ljava/util/List;

    .line 1387
    check-cast v7, Ljava/util/ArrayList;

    .line 1389
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1392
    move-result v7

    .line 1393
    if-eqz v7, :cond_38

    .line 1395
    const/high16 v7, 0x400000

    .line 1397
    or-int/2addr v15, v7

    .line 1398
    :cond_38
    or-int v7, v11, v15

    .line 1400
    iput v7, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 1402
    const/16 v9, 0xec0

    .line 1404
    const v11, 0x2800c

    .line 1407
    const v13, 0xb55030

    .line 1410
    const/4 v14, 0x3

    .line 1411
    filled-new-array {v13, v9, v11, v14}, [I

    .line 1414
    move-result-object v9

    .line 1415
    const/4 v11, 0x0

    .line 1416
    :goto_1c
    const/4 v13, 0x4

    .line 1417
    if-ge v11, v13, :cond_3a

    .line 1419
    aget v15, v9, v11

    .line 1421
    and-int/2addr v15, v7

    .line 1422
    if-lez v15, :cond_39

    .line 1424
    rsub-int/lit8 v7, v11, 0x4

    .line 1426
    const/4 v13, 0x1

    .line 1427
    goto :goto_1d

    .line 1428
    :cond_39
    const/4 v13, 0x1

    .line 1429
    add-int/2addr v11, v13

    .line 1430
    goto :goto_1c

    .line 1431
    :cond_3a
    const/4 v13, 0x1

    .line 1432
    const/4 v7, 0x0

    .line 1433
    :goto_1d
    iput v7, v4, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 1435
    if-ne v7, v14, :cond_3e

    .line 1437
    sget-object v7, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 1439
    invoke-virtual {v7, v5}, Lcom/android/server/am/MARsPolicyManager;->getForegroundServiceStartTime(I)J

    .line 1442
    move-result-wide v14

    .line 1443
    const-wide/16 v22, 0x0

    .line 1445
    cmp-long v5, v14, v22

    .line 1447
    if-eqz v5, :cond_3b

    .line 1449
    move v5, v13

    .line 1450
    goto :goto_1e

    .line 1451
    :cond_3b
    const/4 v5, 0x0

    .line 1452
    :goto_1e
    if-eqz v5, :cond_3e

    .line 1454
    iget-object v4, v4, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 1456
    check-cast v4, Ljava/util/ArrayList;

    .line 1458
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1461
    move-result-object v4

    .line 1462
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1465
    move-result v5

    .line 1466
    if-eqz v5, :cond_3c

    .line 1468
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1471
    move-result-object v5

    .line 1472
    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 1474
    iget v7, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 1476
    move-object/from16 v9, p1

    .line 1478
    invoke-virtual {v9, v7, v8}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 1481
    iget-object v7, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    .line 1483
    iget v5, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 1485
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1488
    move-result-object v5

    .line 1489
    check-cast v7, Ljava/util/HashSet;

    .line 1491
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1494
    goto :goto_1f

    .line 1495
    :cond_3c
    move-object/from16 v9, p1

    .line 1497
    :cond_3d
    :goto_20
    const/4 v9, 0x0

    .line 1498
    goto/16 :goto_14

    .line 1500
    :cond_3e
    move-object/from16 v9, p1

    .line 1502
    iget v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    .line 1504
    if-ltz v5, :cond_40

    .line 1506
    iget v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->lruIdx:I

    .line 1508
    if-ltz v5, :cond_40

    .line 1510
    iget-wide v14, v4, Lcom/android/server/chimera/ChimeraAppInfo;->pss:J

    .line 1512
    const-wide/16 v22, 0x0

    .line 1514
    cmp-long v5, v14, v22

    .line 1516
    if-lez v5, :cond_41

    .line 1518
    iget v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 1520
    if-gez v5, :cond_3f

    .line 1522
    goto :goto_21

    .line 1523
    :cond_3f
    const/4 v5, 0x0

    .line 1524
    goto :goto_22

    .line 1525
    :cond_40
    const-wide/16 v22, 0x0

    .line 1527
    :cond_41
    :goto_21
    move v5, v13

    .line 1528
    :goto_22
    if-nez v5, :cond_46

    .line 1530
    iget v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->group:I

    .line 1532
    const/4 v7, 0x4

    .line 1533
    if-ne v5, v7, :cond_42

    .line 1535
    move v5, v13

    .line 1536
    goto :goto_23

    .line 1537
    :cond_42
    const/4 v5, 0x0

    .line 1538
    :goto_23
    if-eqz v5, :cond_43

    .line 1540
    goto :goto_25

    .line 1541
    :cond_43
    iget-object v5, v4, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 1543
    check-cast v5, Ljava/util/ArrayList;

    .line 1545
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1548
    move-result-object v5

    .line 1549
    :cond_44
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1552
    move-result v11

    .line 1553
    if-eqz v11, :cond_45

    .line 1555
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1558
    move-result-object v11

    .line 1559
    check-cast v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 1561
    iget-object v14, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    .line 1563
    iget v15, v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 1565
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1568
    move-result-object v15

    .line 1569
    check-cast v14, Ljava/util/HashSet;

    .line 1571
    invoke-virtual {v14, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1574
    move-result v14

    .line 1575
    if-eqz v14, :cond_44

    .line 1577
    iget v5, v11, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 1579
    invoke-virtual {v9, v5, v8}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 1582
    move v5, v13

    .line 1583
    goto :goto_24

    .line 1584
    :cond_45
    const/4 v5, 0x0

    .line 1585
    :goto_24
    if-nez v5, :cond_3d

    .line 1587
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1590
    goto :goto_20

    .line 1591
    :cond_46
    const/4 v7, 0x4

    .line 1592
    :goto_25
    iget-object v4, v4, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 1594
    check-cast v4, Ljava/util/ArrayList;

    .line 1596
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1599
    move-result-object v4

    .line 1600
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1603
    move-result v5

    .line 1604
    if-eqz v5, :cond_3d

    .line 1606
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1609
    move-result-object v5

    .line 1610
    check-cast v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 1612
    iget v5, v5, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 1614
    invoke-virtual {v9, v5, v8}, Lcom/android/server/chimera/SkipReasonLogger;->mark(ILcom/android/server/chimera/SkipReasonLogger$Reason;)V

    .line 1617
    goto :goto_26

    .line 1618
    :cond_47
    move-object v10, v1

    .line 1619
    :cond_48
    new-instance v1, Ljava/util/ArrayList;

    .line 1621
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1624
    iget-object v2, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    .line 1626
    check-cast v2, Ljava/util/HashSet;

    .line 1628
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1631
    move-result-object v2

    .line 1632
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1635
    move-result v3

    .line 1636
    if-eqz v3, :cond_4a

    .line 1638
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1641
    move-result-object v3

    .line 1642
    check-cast v3, Ljava/lang/Integer;

    .line 1644
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1647
    move-object/from16 v4, v21

    .line 1649
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1652
    move-result v5

    .line 1653
    if-nez v5, :cond_49

    .line 1655
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1658
    :cond_49
    move-object/from16 v21, v4

    .line 1660
    goto :goto_27

    .line 1661
    :cond_4a
    iget-object v0, v0, Lcom/android/server/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    .line 1663
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1666
    return-object v10
.end method

.method public final logSkip(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, " "

    .line 3
    invoke-static {p2, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p2

    .line 7
    iget v1, p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    const-string p0, "ChimeraAppManager"

    .line 31
    invoke-static {p0, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
