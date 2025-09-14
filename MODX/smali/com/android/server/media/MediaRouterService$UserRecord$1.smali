.class public final Lcom/android/server/media/MediaRouterService$UserRecord$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/media/MediaRouterService$UserRecord;

.field public final synthetic val$indent:Ljava/lang/String;

.field public final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService$UserRecord;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->this$1:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 6
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->val$pw:Ljava/io/PrintWriter;

    .line 8
    iput-object p3, p0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->val$indent:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->this$1:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 5
    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 7
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->val$pw:Ljava/io/PrintWriter;

    .line 9
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$UserRecord$1;->val$indent:Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v4, "Handler"

    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v4, "  "

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    const-string/jumbo v5, "mRunning="

    .line 54
    invoke-static {v3, v5}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object v5

    .line 58
    iget-boolean v6, v1, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 60
    const-string/jumbo v7, "mDiscoveryMode="

    .line 63
    invoke-static {v5, v6, v2, v3, v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    move-result-object v5

    .line 67
    iget v6, v1, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 69
    const-string/jumbo v7, "mSelectedRouteRecord="

    .line 72
    invoke-static {v5, v6, v2, v3, v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    move-result-object v5

    .line 76
    iget-object v6, v1, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string/jumbo v6, "mConnectionPhase="

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v6, v1, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 104
    const-string/jumbo v7, "mConnectionTimeoutReason="

    .line 107
    invoke-static {v5, v6, v2, v3, v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    move-result-object v5

    .line 111
    iget v6, v1, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 113
    const-string/jumbo v7, "mConnectionTimeoutStartTime="

    .line 116
    invoke-static {v5, v6, v2, v3, v7}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    move-result-object v5

    .line 120
    iget v6, v1, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 122
    if-eqz v6, :cond_0

    .line 124
    iget-wide v6, v1, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    .line 126
    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    .line 129
    move-result-object v6

    .line 130
    goto :goto_0

    .line 131
    :cond_0
    const-string v6, "<n/a>"

    .line 133
    :goto_0
    invoke-static {v5, v6, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 136
    iget-object v5, v1, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    .line 138
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v7, "Watcher"

    .line 151
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v7, "  mUserId="

    .line 171
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget v8, v5, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mUserId:I

    .line 176
    const-string v9, "  mRunning="

    .line 178
    invoke-static {v6, v8, v2, v0, v9}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    move-result-object v6

    .line 182
    iget-boolean v8, v5, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mRunning:Z

    .line 184
    const-string v10, "  mProviders.size()="

    .line 186
    invoke-static {v6, v8, v2, v0, v10}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    move-result-object v6

    .line 190
    iget-object v5, v5, Lcom/android/server/media/RemoteDisplayProviderWatcher;->mProviders:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 195
    move-result v5

    .line 196
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v5

    .line 203
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    iget-object v5, v1, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 208
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_3

    .line 214
    const/4 v6, 0x0

    .line 215
    :goto_1
    if-ge v6, v5, :cond_4

    .line 217
    iget-object v8, v1, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    move-result-object v8

    .line 223
    check-cast v8, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 225
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    new-instance v10, Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object v10

    .line 243
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    new-instance v10, Ljava/lang/StringBuilder;

    .line 248
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v10

    .line 261
    iget-object v11, v8, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mProvider:Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 263
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    new-instance v12, Ljava/lang/StringBuilder;

    .line 268
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v13, "Proxy"

    .line 276
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    move-result-object v12

    .line 283
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    new-instance v12, Ljava/lang/StringBuilder;

    .line 288
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    iget v13, v11, Lcom/android/server/media/RemoteDisplayProviderProxy;->mUserId:I

    .line 299
    invoke-static {v12, v13, v2, v10, v9}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    move-result-object v12

    .line 303
    iget-boolean v13, v11, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    .line 305
    const-string v14, "  mBound="

    .line 307
    invoke-static {v12, v13, v2, v10, v14}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    move-result-object v12

    .line 311
    iget-boolean v13, v11, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    .line 313
    const-string v14, "  mActiveConnection="

    .line 315
    invoke-static {v12, v13, v2, v10, v14}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    move-result-object v12

    .line 319
    iget-object v13, v11, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 321
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    move-result-object v12

    .line 328
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    new-instance v12, Ljava/lang/StringBuilder;

    .line 333
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v13, "  mConnectionReady="

    .line 341
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-boolean v13, v11, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    .line 346
    const-string v14, "  mDiscoveryMode="

    .line 348
    invoke-static {v12, v13, v2, v10, v14}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    move-result-object v12

    .line 352
    iget v13, v11, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    .line 354
    const-string v14, "  mSelectedDisplayId="

    .line 356
    invoke-static {v12, v13, v2, v10, v14}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    move-result-object v12

    .line 360
    iget-object v13, v11, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    .line 362
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    move-result-object v12

    .line 369
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    new-instance v12, Ljava/lang/StringBuilder;

    .line 374
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v13, "  mDisplayState="

    .line 382
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object v11, v11, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    .line 387
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    move-result-object v11

    .line 394
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    iget-object v11, v8, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 399
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 402
    move-result v11

    .line 403
    if-eqz v11, :cond_1

    .line 405
    const/4 v12, 0x0

    .line 406
    :goto_2
    if-ge v12, v11, :cond_2

    .line 408
    iget-object v13, v8, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->mRoutes:Ljava/util/ArrayList;

    .line 410
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 413
    move-result-object v13

    .line 414
    check-cast v13, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 416
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    new-instance v14, Ljava/lang/StringBuilder;

    .line 421
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    move-result-object v14

    .line 434
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    new-instance v14, Ljava/lang/StringBuilder;

    .line 439
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    move-result-object v14

    .line 452
    const-string/jumbo v15, "mMutableInfo="

    .line 455
    invoke-static {v14, v15}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    move-result-object v15

    .line 459
    iget-object v3, v13, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 461
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    move-result-object v3

    .line 468
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    .line 473
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const-string/jumbo v15, "mDescriptorId="

    .line 482
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    iget-object v15, v13, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    .line 487
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    move-result-object v3

    .line 494
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    .line 499
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string/jumbo v14, "mDescriptor="

    .line 508
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v13, v13, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    .line 513
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    move-result-object v3

    .line 520
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    add-int/lit8 v12, v12, 0x1

    .line 525
    goto :goto_2

    .line 526
    :cond_1
    const-string v3, "<no routes>"

    .line 528
    invoke-static {v2, v10, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 533
    goto/16 :goto_1

    .line 535
    :cond_3
    const-string v0, "<no providers>"

    .line 537
    invoke-static {v2, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_4
    return-void
.end method
