.class public final Lcom/android/server/am/PDSController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG_ENG:Z

.field public static final DEBUG_HIGH:Z

.field public static final DEBUG_MID:Z

.field public static final PDSLock:Lcom/android/server/am/PDSController$Lock;


# instance fields
.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mContext:Landroid/content/Context;

.field public mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

.field public mIsPDSEnable:Z

.field public mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

.field public mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

.field public mPDSTargetlist:Ljava/util/List;

.field public mScreenOn:Z

.field public mpsmPolicy:Lcom/android/server/am/PDSController$Policy;

.field public udsPolicy:Lcom/android/server/am/PDSController$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/am/PDSController$Lock;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    .line 8
    const-string/jumbo v0, "ro.boot.debug_level"

    .line 11
    const-string v1, ""

    .line 13
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    const-string v3, "0x494d"

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    sput-boolean v2, Lcom/android/server/am/PDSController;->DEBUG_MID:Z

    .line 25
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    const-string v2, "0x4948"

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 35
    sput-boolean v1, Lcom/android/server/am/PDSController;->DEBUG_HIGH:Z

    .line 37
    const-string/jumbo v1, "ro.build.type"

    .line 40
    const-string/jumbo v2, "user"

    .line 43
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 53
    const-string v1, "0x4f4c"

    .line 55
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 69
    :goto_1
    sput-boolean v0, Lcom/android/server/am/PDSController;->DEBUG_ENG:Z

    .line 71
    return-void
.end method

.method public static formatDateTimeWithoutYear(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p0, v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string/jumbo p0, "null"

    .line 10
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    const-string p1, "%18s"

    .line 16
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 23
    const-string v1, "MM/dd HH:mm:ss.SSS"

    .line 25
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v1, Ljava/util/Date;

    .line 30
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 33
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method


# virtual methods
.method public final dumpPDS(Ljava/io/PrintWriter;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "mPDSTargetPackages --- size "

    .line 4
    const-string v1, "UDS = "

    .line 6
    const-string v2, "PDSController"

    .line 8
    const-string/jumbo v3, "dumpPDS"

    .line 11
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const-string v2, "ACTIVITY MANAGER PDS (dumpsys activity PDS)"

    .line 16
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    sget-object v2, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    .line 21
    monitor-enter v2

    .line 22
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/android/server/am/PDSController;->udsPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 29
    iget-boolean v1, v1, Lcom/android/server/am/PDSController$Policy;->enabled:Z

    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", MP = "

    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Lcom/android/server/am/PDSController;->mpsmPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 41
    iget-boolean v1, v1, Lcom/android/server/am/PDSController$Policy;->enabled:Z

    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 60
    invoke-virtual {v0}, Lcom/android/server/am/pds/PDSPkgMap;->totalSize()I

    .line 63
    move-result v0

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 76
    iget-object v0, v0, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 78
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_0

    .line 84
    const-string v0, "No Policy Trigger !!!"

    .line 86
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto/16 :goto_8

    .line 93
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 94
    move v1, v0

    .line 95
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 97
    iget-object v3, v3, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 99
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 102
    move-result v3

    .line 103
    if-ge v1, v3, :cond_7

    .line 105
    iget-object v3, p0, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 107
    iget-object v3, v3, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 109
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Landroid/util/SparseArray;

    .line 115
    move v4, v0

    .line 116
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 119
    move-result v5

    .line 120
    if-ge v4, v5, :cond_6

    .line 122
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Lcom/android/server/am/pds/PDSPackageInfo;

    .line 128
    if-eqz v5, :cond_5

    .line 130
    const-string v6, "-RST "

    .line 132
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 135
    iget-wide v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->disableResetTime:J

    .line 137
    const-wide/16 v8, 0x0

    .line 139
    cmp-long v8, v6, v8

    .line 141
    if-nez v8, :cond_1

    .line 143
    const-string/jumbo v6, "null"

    .line 146
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 149
    move-result-object v6

    .line 150
    const-string v7, "%23s"

    .line 152
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    move-result-object v6

    .line 156
    goto :goto_3

    .line 157
    :cond_1
    new-instance v8, Ljava/text/SimpleDateFormat;

    .line 159
    const-string/jumbo v9, "yyyy/MM/dd HH:mm:ss.SSS"

    .line 162
    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 165
    new-instance v9, Ljava/util/Date;

    .line 167
    invoke-direct {v9, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 170
    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 173
    move-result-object v6

    .line 174
    :goto_3
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    const-string v6, "-Uid "

    .line 179
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    const-string v6, "%8d"

    .line 184
    iget v7, v5, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    .line 186
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    move-result-object v7

    .line 190
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 193
    move-result-object v7

    .line 194
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    move-result-object v6

    .line 198
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    sget-boolean v6, Lcom/android/server/am/PDSController;->DEBUG_ENG:Z

    .line 203
    if-eqz v6, :cond_2

    .line 205
    const-string v6, "-curLv "

    .line 207
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    :cond_2
    iget v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->curLevel:I

    .line 212
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 215
    const-string v6, "("

    .line 217
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    iget v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->fasType:I

    .line 222
    and-int/lit16 v6, v6, 0x81

    .line 224
    if-eqz v6, :cond_3

    .line 226
    const-string v6, "A"

    .line 228
    goto :goto_4

    .line 229
    :cond_3
    const-string v6, "-"

    .line 231
    :goto_4
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    const-string v6, ")"

    .line 236
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    const-string v6, "-Pkg "

    .line 241
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    iget-object v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 246
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 249
    sget-object v6, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    .line 251
    iget v5, v5, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    .line 253
    invoke-virtual {v6, v5}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_4

    .line 259
    const-string v5, "--(R)"

    .line 261
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    :cond_4
    const-string v5, " "

    .line 266
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 271
    goto/16 :goto_2

    .line 273
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 275
    goto/16 :goto_1

    .line 277
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 279
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    const-string/jumbo v3, "mPDSRestrictedPackages --- size "

    .line 285
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v3, p0, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 290
    invoke-virtual {v3}, Lcom/android/server/am/pds/PDSPkgMap;->totalSize()I

    .line 293
    move-result v3

    .line 294
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    move v1, v0

    .line 305
    :goto_5
    iget-object v3, p0, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 307
    iget-object v3, v3, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 309
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 312
    move-result v3

    .line 313
    if-ge v1, v3, :cond_a

    .line 315
    iget-object v3, p0, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 317
    iget-object v3, v3, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 319
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 322
    move-result-object v3

    .line 323
    check-cast v3, Landroid/util/SparseArray;

    .line 325
    move v4, v0

    .line 326
    :goto_6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 329
    move-result v5

    .line 330
    if-ge v4, v5, :cond_9

    .line 332
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 335
    move-result-object v5

    .line 336
    check-cast v5, Lcom/android/server/am/pds/PDSPackageInfo;

    .line 338
    const-string v6, "-Uid "

    .line 340
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    const-string v6, "%8d"

    .line 345
    iget v7, v5, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    .line 347
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    move-result-object v7

    .line 351
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 354
    move-result-object v7

    .line 355
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 358
    move-result-object v6

    .line 359
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    const-string v6, "-Pkg "

    .line 364
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    iget-object v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 369
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    const-string v6, "-POL "

    .line 374
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 377
    iget-object v5, v5, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 379
    if-eqz v5, :cond_8

    .line 381
    invoke-virtual {v5}, Lcom/android/server/am/PDSController$Policy;->toString()Ljava/lang/String;

    .line 384
    move-result-object v5

    .line 385
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 388
    move-result v6

    .line 389
    add-int/lit8 v6, v6, -0x3

    .line 391
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 394
    move-result v7

    .line 395
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 398
    move-result-object v5

    .line 399
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    goto :goto_7

    .line 403
    :cond_8
    const-string/jumbo v5, "null"

    .line 406
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    :goto_7
    const-string v5, " "

    .line 411
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    add-int/lit8 v4, v4, 0x1

    .line 416
    goto :goto_6

    .line 417
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 419
    goto :goto_5

    .line 420
    :cond_a
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    const-string p0, " "

    .line 423
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    sget-object p0, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    .line 428
    iget-object p0, p0, Lcom/android/server/am/pds/PDSHandler;->mMainHandler:Lcom/android/server/am/pds/PDSHandler$MainHandler;

    .line 430
    if-eqz p0, :cond_b

    .line 432
    new-instance v0, Landroid/util/PrintWriterPrinter;

    .line 434
    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 437
    const-string p1, "PDSHandler"

    .line 439
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 442
    :cond_b
    return-void

    .line 443
    :goto_8
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    throw p0
.end method

.method public final dumpPDSHistory(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, ""

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    const-string v0, "ACTIVITY MANAGER PDS HISTORY (dumpsys activity PDS history)"

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    sget-boolean v0, Lcom/android/server/am/PDSController;->DEBUG_MID:Z

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_2

    .line 16
    sget-boolean v0, Lcom/android/server/am/PDSController;->DEBUG_HIGH:Z

    .line 18
    if-eqz v0, :cond_0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PDSController;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 23
    if-eqz v0, :cond_4

    .line 25
    invoke-virtual {v0}, Lcom/android/server/am/mars/HistoryBuffer;->getBuffer()[Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PDSController;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 31
    iget v2, v2, Lcom/android/server/am/mars/HistoryBuffer;->size:I

    .line 33
    if-ge v1, v2, :cond_1

    .line 35
    aget-object v2, v0, v1

    .line 37
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p0, ""

    .line 45
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    goto :goto_3

    .line 49
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/server/am/pds/PDSHistoryBuffer$PDSHistoryBufferHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHistoryBuffer;

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    sget-object v0, Lcom/android/server/am/pds/PDSHistoryLog$PDSHistoryLogHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHistoryLog;

    .line 54
    invoke-virtual {v0}, Lcom/android/server/am/pds/PDSHistoryLog;->getLog()Ljava/util/ArrayList;

    .line 57
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    .line 59
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 62
    move-result p0

    .line 63
    if-ge v1, p0, :cond_3

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Ljava/lang/String;

    .line 71
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    const-string p0, ""

    .line 79
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    :cond_4
    :goto_3
    return-void

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    monitor-exit p0

    .line 85
    throw p1
.end method

.method public final forceRunPolicyForSpecificPolicy(I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v0, p1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const/4 v5, 0x5

    .line 16
    const/16 v6, 0xa

    .line 18
    if-ne v0, v5, :cond_0

    .line 20
    iget-object v7, v1, Lcom/android/server/am/PDSController;->udsPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-ne v0, v6, :cond_1

    .line 25
    iget-object v7, v1, Lcom/android/server/am/PDSController;->mpsmPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v7, 0x0

    .line 29
    :goto_0
    if-eqz v7, :cond_1b

    .line 31
    iget-boolean v8, v7, Lcom/android/server/am/PDSController$Policy;->enabled:Z

    .line 33
    if-nez v8, :cond_2

    .line 35
    goto/16 :goto_14

    .line 37
    :cond_2
    iget v8, v7, Lcom/android/server/am/PDSController$Policy;->num:I

    .line 39
    if-eq v8, v5, :cond_4

    .line 41
    if-eq v8, v6, :cond_3

    .line 43
    const/4 v8, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const/16 v8, 0x9

    .line 47
    goto :goto_1

    .line 48
    :cond_4
    const/4 v8, 0x6

    .line 49
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    sget-object v10, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 54
    invoke-virtual {v10}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 57
    sget-object v10, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    .line 59
    monitor-enter v10

    .line 60
    const/4 v11, 0x0

    .line 61
    :goto_2
    :try_start_0
    iget-object v12, v1, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 63
    iget-object v12, v12, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 65
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    .line 68
    move-result v12

    .line 69
    if-ge v11, v12, :cond_d

    .line 71
    iget-object v12, v1, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 73
    iget-object v12, v12, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 75
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 78
    move-result-object v12

    .line 79
    check-cast v12, Landroid/util/SparseArray;

    .line 81
    const/4 v14, 0x0

    .line 82
    :goto_3
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    .line 85
    move-result v15

    .line 86
    if-ge v14, v15, :cond_c

    .line 88
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 91
    move-result-object v15

    .line 92
    check-cast v15, Lcom/android/server/am/pds/PDSPackageInfo;

    .line 94
    iget-object v4, v15, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 96
    iget v9, v7, Lcom/android/server/am/PDSController$Policy;->num:I

    .line 98
    const-string/jumbo v13, "com.samsung.android.app.routineplus"

    .line 101
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_5

    .line 107
    if-ne v9, v6, :cond_5

    .line 109
    sget-boolean v4, Lcom/android/server/am/PDSController;->DEBUG_ENG:Z

    .line 111
    if-eqz v4, :cond_b

    .line 113
    const-string v4, "PDSController"

    .line 115
    new-instance v9, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    const-string/jumbo v13, "package "

    .line 123
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v13, v15, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 128
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v13, " inPolicyAllowList, don\'t execute this policy "

    .line 133
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v9

    .line 143
    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    goto/16 :goto_6

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    goto/16 :goto_13

    .line 151
    :cond_5
    sget-object v4, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->INSTANCE:Lcom/android/server/am/mars/filter/FilterManager;

    .line 153
    iget v9, v7, Lcom/android/server/am/PDSController$Policy;->num:I

    .line 155
    if-eq v9, v5, :cond_7

    .line 157
    if-eq v9, v6, :cond_6

    .line 159
    const/4 v9, -0x1

    .line 160
    goto :goto_4

    .line 161
    :cond_6
    const/16 v9, 0x10

    .line 163
    goto :goto_4

    .line 164
    :cond_7
    move v9, v5

    .line 165
    :goto_4
    iget-object v13, v15, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 167
    iget v6, v15, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    .line 169
    iget v5, v15, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    .line 171
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    invoke-static {v9, v6, v5, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(IIILjava/lang/String;)I

    .line 177
    move-result v4

    .line 178
    if-lez v4, :cond_9

    .line 180
    const-string v4, "PDSController"

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    const-string v6, "FilterManager package "

    .line 189
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v6, v15, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 194
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v6, " inFilterManager, don\'t execute this policy "

    .line 199
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v5

    .line 209
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v5, 0x5

    .line 213
    :cond_8
    :goto_5
    const/16 v6, 0xa

    .line 215
    goto :goto_6

    .line 216
    :cond_9
    new-instance v4, Lcom/android/server/am/PDSController$PkgStatusInfo;

    .line 218
    iget-object v5, v15, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 220
    iget v6, v15, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    .line 222
    iget v9, v15, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    .line 224
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object v5, v4, Lcom/android/server/am/PDSController$PkgStatusInfo;->name:Ljava/lang/String;

    .line 229
    iput v6, v4, Lcom/android/server/am/PDSController$PkgStatusInfo;->uid:I

    .line 231
    iput v9, v4, Lcom/android/server/am/PDSController$PkgStatusInfo;->userId:I

    .line 233
    const/4 v5, 0x5

    .line 234
    if-ne v0, v5, :cond_a

    .line 236
    iget v6, v15, Lcom/android/server/am/pds/PDSPackageInfo;->uds:I

    .line 238
    const/4 v9, 0x1

    .line 239
    if-ne v6, v9, :cond_8

    .line 241
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    goto :goto_5

    .line 245
    :cond_a
    const/16 v6, 0xa

    .line 247
    if-ne v0, v6, :cond_b

    .line 249
    iget v9, v15, Lcom/android/server/am/pds/PDSPackageInfo;->mpsm:I

    .line 251
    const/4 v13, 0x1

    .line 252
    if-ne v9, v13, :cond_b

    .line 254
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_b
    :goto_6
    add-int/lit8 v14, v14, 0x1

    .line 259
    goto/16 :goto_3

    .line 261
    :cond_c
    add-int/lit8 v11, v11, 0x1

    .line 263
    goto/16 :goto_2

    .line 265
    :cond_d
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 269
    move-result-wide v4

    .line 270
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 273
    move-result v0

    .line 274
    const/4 v9, 0x1

    .line 275
    sub-int/2addr v0, v9

    .line 276
    move-wide v5, v4

    .line 277
    move v4, v0

    .line 278
    const/4 v0, 0x0

    .line 279
    :goto_7
    if-ltz v4, :cond_f

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 284
    move-result-wide v10

    .line 285
    sub-long/2addr v10, v5

    .line 286
    const-wide/16 v12, 0x32

    .line 288
    cmp-long v0, v10, v12

    .line 290
    if-ltz v0, :cond_e

    .line 292
    const-wide/16 v5, 0xa

    .line 294
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    goto :goto_8

    .line 298
    :catch_0
    move-exception v0

    .line 299
    move-object v5, v0

    .line 300
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 303
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 306
    move-result-wide v5

    .line 307
    :cond_e
    iget-object v10, v1, Lcom/android/server/am/PDSController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 309
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 312
    monitor-enter v10

    .line 313
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Lcom/android/server/am/PDSController$PkgStatusInfo;

    .line 319
    iget-object v11, v1, Lcom/android/server/am/PDSController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 321
    iget-object v12, v0, Lcom/android/server/am/PDSController$PkgStatusInfo;->name:Ljava/lang/String;

    .line 323
    iget v13, v0, Lcom/android/server/am/PDSController$PkgStatusInfo;->userId:I

    .line 325
    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 328
    new-instance v11, Ljava/lang/StringBuilder;

    .line 330
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    const-string v12, " "

    .line 335
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget v0, v0, Lcom/android/server/am/PDSController$PkgStatusInfo;->uid:I

    .line 340
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 351
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 354
    add-int/lit8 v4, v4, -0x1

    .line 356
    move v0, v9

    .line 357
    goto :goto_7

    .line 358
    :catchall_1
    move-exception v0

    .line 359
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 360
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 363
    throw v0

    .line 364
    :cond_f
    sget-object v4, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    .line 366
    monitor-enter v4

    .line 367
    const/4 v9, 0x0

    .line 368
    :goto_9
    :try_start_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 371
    move-result v5

    .line 372
    if-ge v9, v5, :cond_16

    .line 374
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 377
    move-result-object v5

    .line 378
    check-cast v5, Lcom/android/server/am/PDSController$PkgStatusInfo;

    .line 380
    iget-object v6, v1, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 382
    iget-object v10, v5, Lcom/android/server/am/PDSController$PkgStatusInfo;->name:Ljava/lang/String;

    .line 384
    iget v5, v5, Lcom/android/server/am/PDSController$PkgStatusInfo;->userId:I

    .line 386
    if-eqz v6, :cond_11

    .line 388
    invoke-virtual {v6}, Lcom/android/server/am/pds/PDSPkgMap;->totalSize()I

    .line 391
    move-result v11

    .line 392
    if-eqz v11, :cond_11

    .line 394
    iget-object v6, v6, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 396
    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    move-result-object v6

    .line 400
    check-cast v6, Landroid/util/SparseArray;

    .line 402
    if-nez v6, :cond_10

    .line 404
    const/4 v5, 0x0

    .line 405
    goto :goto_a

    .line 406
    :cond_10
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 409
    move-result-object v5

    .line 410
    :goto_a
    check-cast v5, Lcom/android/server/am/pds/PDSPackageInfo;

    .line 412
    goto :goto_b

    .line 413
    :cond_11
    const/4 v5, 0x0

    .line 414
    :goto_b
    if-eqz v5, :cond_15

    .line 416
    iput-object v7, v5, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 418
    iput v8, v5, Lcom/android/server/am/pds/PDSPackageInfo;->curLevel:I

    .line 420
    iget-object v6, v1, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 422
    iget-object v10, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 424
    iget v11, v5, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    .line 426
    iget-object v6, v6, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 428
    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    move-result-object v6

    .line 432
    check-cast v6, Landroid/util/SparseArray;

    .line 434
    if-nez v6, :cond_12

    .line 436
    const/4 v6, 0x0

    .line 437
    goto :goto_c

    .line 438
    :cond_12
    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 441
    move-result-object v6

    .line 442
    :goto_c
    if-nez v6, :cond_14

    .line 444
    iget-object v6, v1, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 446
    iget-object v10, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 448
    iget v11, v5, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    .line 450
    iget-object v12, v6, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 452
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    move-result-object v12

    .line 456
    check-cast v12, Landroid/util/SparseArray;

    .line 458
    if-nez v12, :cond_13

    .line 460
    new-instance v12, Landroid/util/SparseArray;

    .line 462
    const/4 v13, 0x2

    .line 463
    invoke-direct {v12, v13}, Landroid/util/SparseArray;-><init>(I)V

    .line 466
    iget-object v6, v6, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 468
    invoke-virtual {v6, v10, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_13
    invoke-virtual {v12, v11, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    goto :goto_d

    .line 475
    :catchall_2
    move-exception v0

    .line 476
    goto/16 :goto_12

    .line 478
    :cond_14
    :goto_d
    sget-boolean v6, Lcom/android/server/am/PDSController;->DEBUG_ENG:Z

    .line 480
    if-eqz v6, :cond_15

    .line 482
    const-string v6, "PDSController"

    .line 484
    new-instance v10, Ljava/lang/StringBuilder;

    .line 486
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    const-string v11, "add mPDSRestrictedPackages "

    .line 491
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v5, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 496
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v5, " policy --"

    .line 501
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    move-result-object v5

    .line 511
    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_15
    add-int/lit8 v9, v9, 0x1

    .line 516
    goto/16 :goto_9

    .line 518
    :cond_16
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 519
    if-eqz v0, :cond_1a

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    .line 523
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    iget-object v2, v7, Lcom/android/server/am/PDSController$Policy;->name:Ljava/lang/String;

    .line 528
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const-string v2, " "

    .line 533
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    move-result-object v2

    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    move-result-object v0

    .line 547
    sget-boolean v2, Lcom/android/server/am/PDSController;->DEBUG_MID:Z

    .line 549
    const-string v3, "]\n"

    .line 551
    const-string v4, "] "

    .line 553
    const-string v5, "["

    .line 555
    if-nez v2, :cond_18

    .line 557
    sget-boolean v2, Lcom/android/server/am/PDSController;->DEBUG_HIGH:Z

    .line 559
    if-eqz v2, :cond_17

    .line 561
    goto :goto_e

    .line 562
    :cond_17
    iget-object v2, v1, Lcom/android/server/am/PDSController;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 564
    if-eqz v2, :cond_1a

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    .line 568
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    new-instance v6, Ljava/lang/StringBuilder;

    .line 573
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 579
    move-result-wide v7

    .line 580
    invoke-static {v7, v8}, Lcom/android/server/am/PDSController;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 583
    move-result-object v7

    .line 584
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    move-result-object v4

    .line 594
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    const-string v4, "[EXE] "

    .line 599
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    new-instance v4, Ljava/lang/StringBuilder;

    .line 604
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    move-result-object v0

    .line 617
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    iget-object v0, v1, Lcom/android/server/am/PDSController;->mHistoryBufferArray:Lcom/android/server/am/mars/HistoryBuffer;

    .line 622
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    move-result-object v1

    .line 626
    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/HistoryBuffer;->put(Ljava/lang/String;)V

    .line 629
    goto :goto_11

    .line 630
    :cond_18
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 632
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    .line 637
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 643
    move-result-wide v6

    .line 644
    invoke-static {v6, v7}, Lcom/android/server/am/PDSController;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    .line 647
    move-result-object v6

    .line 648
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    move-result-object v2

    .line 658
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v2, "[EXE] "

    .line 663
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    .line 668
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    move-result-object v0

    .line 681
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    sget-object v2, Lcom/android/server/am/pds/PDSHistoryBuffer$PDSHistoryBufferHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHistoryBuffer;

    .line 686
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 689
    move-result-object v0

    .line 690
    monitor-enter v2

    .line 691
    :try_start_5
    iget-object v1, v2, Lcom/android/server/am/pds/PDSHistoryBuffer;->buffer:[Ljava/lang/String;

    .line 693
    iget v3, v2, Lcom/android/server/am/pds/PDSHistoryBuffer;->pointer:I

    .line 695
    add-int/lit8 v4, v3, 0x1

    .line 697
    iput v4, v2, Lcom/android/server/am/pds/PDSHistoryBuffer;->pointer:I

    .line 699
    aput-object v0, v1, v3

    .line 701
    iget v0, v2, Lcom/android/server/am/pds/PDSHistoryBuffer;->size:I

    .line 703
    if-lt v4, v0, :cond_19

    .line 705
    sget-object v0, Lcom/android/server/am/pds/PDSHistoryLog$PDSHistoryLogHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHistoryLog;

    .line 707
    const/4 v1, 0x1

    .line 708
    invoke-virtual {v0, v1}, Lcom/android/server/am/pds/PDSHistoryLog;->saveLogToFile(Z)V

    .line 711
    const/4 v0, 0x0

    .line 712
    iput v0, v2, Lcom/android/server/am/pds/PDSHistoryBuffer;->pointer:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 714
    goto :goto_f

    .line 715
    :catchall_3
    move-exception v0

    .line 716
    goto :goto_10

    .line 717
    :cond_19
    :goto_f
    monitor-exit v2

    .line 718
    goto :goto_11

    .line 719
    :goto_10
    monitor-exit v2

    .line 720
    throw v0

    .line 721
    :cond_1a
    :goto_11
    return-void

    .line 722
    :goto_12
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 723
    throw v0

    .line 724
    :goto_13
    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 725
    throw v0

    .line 726
    :cond_1b
    :goto_14
    const-string v0, "PDSController"

    .line 728
    const-string/jumbo v1, "policy is not exist or not enabled!"

    .line 731
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return-void
.end method
