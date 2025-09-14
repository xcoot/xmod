.class public final Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActivelyScanningPackages:Ljava/util/Set;

.field public mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

.field public final mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

.field public final mManagerRecords:Ljava/util/ArrayList;

.field public final mRouterRecords:Ljava/util/ArrayList;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;ILandroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 18
    sget-object v0, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    .line 20
    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 22
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mActivelyScanningPackages:Ljava/util/Set;

    .line 28
    iput p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    .line 30
    new-instance p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 32
    invoke-direct {p2, p1, p0, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl;Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Landroid/os/Looper;)V

    .line 35
    iput-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 37
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, "UserRecord"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string p2, "  "

    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    const-string/jumbo v1, "mUserId="

    .line 41
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object v1

    .line 45
    iget v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v2, "Router Records:"

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mRouterRecords:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v1

    .line 91
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_1

    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v5, "RouterRecord"

    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v3

    .line 156
    const-string/jumbo v4, "mPackageName="

    .line 159
    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    move-result-object v4

    .line 163
    iget-object v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPackageName:Ljava/lang/String;

    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    .line 177
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string/jumbo v5, "mSelectRouteSequenceNumbers="

    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mSelectRouteSequenceNumbers:Ljava/util/List;

    .line 191
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    .line 203
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string/jumbo v5, "mUid="

    .line 212
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mUid:I

    .line 217
    const-string/jumbo v6, "mPid="

    .line 220
    invoke-static {v4, v5, p1, v3, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    move-result-object v4

    .line 224
    iget v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mPid:I

    .line 226
    const-string/jumbo v6, "mHasConfigureWifiDisplayPermission="

    .line 229
    invoke-static {v4, v5, p1, v3, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    move-result-object v4

    .line 233
    iget-boolean v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasConfigureWifiDisplayPermission:Z

    .line 235
    const-string/jumbo v6, "mHasModifyAudioRoutingPermission="

    .line 238
    invoke-static {v4, v5, p1, v3, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    move-result-object v4

    .line 242
    iget-boolean v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasModifyAudioRoutingPermission:Z

    .line 244
    const-string/jumbo v6, "mHasBluetoothRoutingPermission="

    .line 247
    invoke-static {v4, v5, p1, v3, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    move-result-object v4

    .line 251
    iget-object v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mHasBluetoothRoutingPermission:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 253
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 256
    move-result v5

    .line 257
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    move-result-object v4

    .line 264
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    .line 269
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string/jumbo v5, "hasSystemRoutingPermission="

    .line 278
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->hasSystemRoutingPermission()Z

    .line 284
    move-result v5

    .line 285
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    move-result-object v4

    .line 292
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    .line 297
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string/jumbo v5, "mRouterId="

    .line 306
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouterId:I

    .line 311
    invoke-static {v4, v5, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 314
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 316
    invoke-virtual {v2, p1, v3}, Landroid/media/RouteDiscoveryPreference;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 319
    goto/16 :goto_0

    .line 321
    :cond_0
    const-string v1, "<no router records>"

    .line 323
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_1
    const-string v1, "Manager Records:"

    .line 328
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 333
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 336
    move-result v1

    .line 337
    if-nez v1, :cond_3

    .line 339
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mManagerRecords:Ljava/util/ArrayList;

    .line 341
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 344
    move-result-object v1

    .line 345
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_4

    .line 351
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    move-result-object v2

    .line 355
    check-cast v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    .line 359
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    move-result-object v3

    .line 372
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    .line 377
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string v5, "ManagerRecord"

    .line 385
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    move-result-object v4

    .line 392
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    .line 397
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    move-result-object v3

    .line 410
    const-string/jumbo v4, "mOwnerPackageName="

    .line 413
    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    move-result-object v4

    .line 417
    iget-object v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerPackageName:Ljava/lang/String;

    .line 419
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    move-result-object v4

    .line 426
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    .line 431
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string/jumbo v5, "mTargetPackageName="

    .line 440
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-object v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mTargetPackageName:Ljava/lang/String;

    .line 445
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    move-result-object v4

    .line 452
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    new-instance v4, Ljava/lang/StringBuilder;

    .line 457
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string/jumbo v5, "mManagerId="

    .line 466
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 471
    const-string/jumbo v6, "mOwnerUid="

    .line 474
    invoke-static {v4, v5, p1, v3, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    move-result-object v4

    .line 478
    iget v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerUid:I

    .line 480
    const-string/jumbo v6, "mOwnerPid="

    .line 483
    invoke-static {v4, v5, p1, v3, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    move-result-object v4

    .line 487
    iget v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mOwnerPid:I

    .line 489
    const-string/jumbo v6, "mScanningState="

    .line 492
    invoke-static {v4, v5, p1, v3, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    move-result-object v4

    .line 496
    iget v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mScanningState:I

    .line 498
    invoke-static {v5}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getScanningStateString(I)Ljava/lang/String;

    .line 501
    move-result-object v5

    .line 502
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    move-result-object v4

    .line 509
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mLastSessionCreationRequest:Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 514
    if-eqz v2, :cond_2

    .line 516
    new-instance v4, Ljava/lang/StringBuilder;

    .line 518
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string v5, "SessionCreationRequest"

    .line 526
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    move-result-object v4

    .line 533
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    .line 538
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    move-result-object v4

    .line 551
    const-string/jumbo v5, "mUniqueRequestId="

    .line 554
    invoke-static {v4, v5}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    move-result-object v5

    .line 558
    iget-wide v6, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mUniqueRequestId:J

    .line 560
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    move-result-object v5

    .line 567
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    new-instance v5, Ljava/lang/StringBuilder;

    .line 572
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string/jumbo v6, "mManagerRequestId="

    .line 581
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget-wide v6, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    .line 586
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    move-result-object v5

    .line 593
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    iget-object v5, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    .line 598
    invoke-virtual {v5, p1, v4}, Landroid/media/RoutingSessionInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 601
    iget-object v2, v2, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 603
    invoke-virtual {v2, p1, v3}, Landroid/media/MediaRoute2Info;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 606
    goto/16 :goto_1

    .line 608
    :cond_3
    const-string v1, "<no manager records>"

    .line 610
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_4
    const-string v1, "Composite discovery preference:"

    .line 615
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mCompositeDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    .line 622
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 634
    move-result-object p2

    .line 635
    invoke-virtual {v1, p1, p2}, Landroid/media/RouteDiscoveryPreference;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 638
    new-instance p2, Ljava/lang/StringBuilder;

    .line 640
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const-string v1, "Packages actively scanning: "

    .line 648
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    const-string v1, ", "

    .line 653
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mActivelyScanningPackages:Ljava/util/Set;

    .line 655
    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 658
    move-result-object v1

    .line 659
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    move-result-object p2

    .line 666
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    new-instance p2, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticLambda2;

    .line 671
    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 674
    const-wide/16 v1, 0x3e8

    .line 676
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 678
    invoke-virtual {p0, p2, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 681
    move-result p0

    .line 682
    if-nez p0, :cond_5

    .line 684
    const-string p0, "<could not dump handler state>"

    .line 686
    invoke-static {p1, v0, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_5
    return-void
.end method
