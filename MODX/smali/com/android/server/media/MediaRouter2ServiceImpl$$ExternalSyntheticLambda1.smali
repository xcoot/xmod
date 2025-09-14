.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    const-string v2, "MR2ServiceImpl"

    .line 5
    const/16 v3, 0x20

    .line 7
    const/4 v4, 0x0

    .line 8
    iget p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 10
    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 12
    packed-switch p0, :pswitch_data_0

    .line 15
    check-cast p2, Lcom/android/server/media/MediaRoute2Provider;

    .line 17
    check-cast p3, Ljava/lang/Long;

    .line 19
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 22
    move-result-wide v5

    .line 23
    check-cast p4, Ljava/lang/Integer;

    .line 25
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result p0

    .line 29
    iget-object v7, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v7

    .line 35
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v8

    .line 39
    if-eqz v8, :cond_1

    .line 41
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v8

    .line 45
    check-cast v8, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 47
    iget-wide v9, v8, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mUniqueRequestId:J

    .line 49
    cmp-long v9, v9, v5

    .line 51
    if-nez v9, :cond_0

    .line 53
    iget-object v9, v8, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 55
    invoke-virtual {v9}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    .line 58
    move-result-object v9

    .line 59
    iget-object v10, p2, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 61
    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_0

    .line 67
    move-object v4, v8

    .line 68
    :cond_1
    if-nez v4, :cond_2

    .line 70
    iget-object p2, p2, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 72
    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    .line 75
    move-result-object p2

    .line 76
    const-string/jumbo p3, "handleSessionCreationRequestFailed | No matching request found for provider: %s, uniqueRequestId: %d, reason: %d"

    .line 79
    invoke-static {p3, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    move-result-object p2

    .line 83
    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-boolean p2, Lcom/android/server/media/MediaRouter2ServiceImpl;->DEBUG:Z

    .line 88
    shr-long p2, v5, v3

    .line 90
    long-to-int p2, p2

    .line 91
    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_5

    .line 97
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 99
    long-to-int p2, v5

    .line 100
    invoke-static {p1, p2, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    iget-object v7, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 106
    invoke-virtual {v7, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    iget-wide v7, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    .line 111
    cmp-long v0, v7, v0

    .line 113
    if-nez v0, :cond_3

    .line 115
    sget-boolean p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->DEBUG:Z

    .line 117
    long-to-int p0, v5

    .line 118
    iget-object p1, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 120
    invoke-static {p1, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifySessionCreationFailedToRouter(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;I)V

    .line 123
    goto :goto_0

    .line 124
    :cond_3
    sget-boolean v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->DEBUG:Z

    .line 126
    shr-long v0, v7, v3

    .line 128
    long-to-int v0, v0

    .line 129
    invoke-virtual {p1, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findManagerWithId(I)Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_4

    .line 135
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 137
    long-to-int v0, v7

    .line 138
    invoke-static {p1, v0, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRequestFailedToManager(Landroid/media/IMediaRouter2Manager;II)V

    .line 141
    :cond_4
    :goto_0
    iget-object p0, p2, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 143
    filled-new-array {p0, p3, p4}, [Ljava/lang/Object;

    .line 146
    move-result-object p0

    .line 147
    const-string/jumbo p1, "onRequestFailedOnHandler | Finished handling session creation request failed for provider: %s, uniqueRequestId: %d, reason: %d"

    .line 150
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 154
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_5
    :goto_1
    return-void

    .line 158
    :pswitch_0
    check-cast p2, Lcom/android/server/media/MediaRoute2Provider;

    .line 160
    check-cast p3, Ljava/lang/Long;

    .line 162
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 165
    move-result-wide v5

    .line 166
    check-cast p4, Landroid/media/RoutingSessionInfo;

    .line 168
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 170
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    move-result-object p0

    .line 174
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    move-result p3

    .line 178
    if-eqz p3, :cond_7

    .line 180
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    move-result-object p3

    .line 184
    check-cast p3, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;

    .line 186
    iget-wide v7, p3, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mUniqueRequestId:J

    .line 188
    cmp-long v7, v7, v5

    .line 190
    if-nez v7, :cond_6

    .line 192
    iget-object v7, p3, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 194
    invoke-virtual {v7}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    .line 197
    move-result-object v7

    .line 198
    iget-object v8, p2, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 200
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 203
    move-result v7

    .line 204
    if-eqz v7, :cond_6

    .line 206
    move-object v4, p3

    .line 207
    :cond_7
    if-nez v4, :cond_8

    .line 209
    goto :goto_2

    .line 210
    :cond_8
    iget-wide v0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mManagerRequestId:J

    .line 212
    :goto_2
    sget-boolean p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->DEBUG:Z

    .line 214
    shr-long p2, v0, v3

    .line 216
    long-to-int p0, p2

    .line 217
    long-to-int p2, v0

    .line 218
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagerRecords()Ljava/util/List;

    .line 221
    move-result-object p3

    .line 222
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 225
    move-result-object p3

    .line 226
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_a

    .line 232
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 238
    :try_start_0
    iget-object v1, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManager:Landroid/media/IMediaRouter2Manager;

    .line 240
    iget v0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mManagerId:I

    .line 242
    if-ne v0, p0, :cond_9

    .line 244
    move v0, p2

    .line 245
    goto :goto_4

    .line 246
    :cond_9
    const/4 v0, 0x0

    .line 247
    :goto_4
    invoke-interface {v1, v0, p4}, Landroid/media/IMediaRouter2Manager;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_3

    .line 251
    :catch_0
    move-exception v0

    .line 252
    const-string/jumbo v1, "notifySessionCreatedToManagers: Failed to notify. Manager probably died."

    .line 255
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    goto :goto_3

    .line 259
    :cond_a
    if-nez v4, :cond_b

    .line 261
    new-instance p0, Ljava/lang/StringBuilder;

    .line 263
    const-string p1, "Ignoring session creation result for unknown request. uniqueRequestId="

    .line 265
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 271
    const-string p1, ", sessionInfo="

    .line 273
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    move-result-object p0

    .line 283
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    goto :goto_6

    .line 287
    :cond_b
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 289
    invoke-virtual {p0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 292
    iget-object p0, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    .line 294
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    .line 297
    move-result-object p0

    .line 298
    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->findProvider(Ljava/lang/String;)Lcom/android/server/media/MediaRoute2Provider;

    .line 301
    move-result-object p0

    .line 302
    if-eqz p0, :cond_c

    .line 304
    iget-object p2, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    .line 306
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 309
    move-result-object p2

    .line 310
    invoke-virtual {p0, p2}, Lcom/android/server/media/MediaRoute2Provider;->prepareReleaseSession(Ljava/lang/String;)V

    .line 313
    goto :goto_5

    .line 314
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    .line 316
    const-string/jumbo p2, "onSessionCreatedOnHandler: Can\'t find provider for an old session. session="

    .line 319
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    iget-object p2, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mOldSession:Landroid/media/RoutingSessionInfo;

    .line 324
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    move-result-object p0

    .line 331
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_5
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSessionToRouterMap:Ljava/util/Map;

    .line 336
    invoke-virtual {p4}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    .line 339
    move-result-object p2

    .line 340
    check-cast p0, Landroid/util/ArrayMap;

    .line 342
    iget-object p3, v4, Lcom/android/server/media/MediaRouter2ServiceImpl$SessionCreationRequest;->mRouterRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 344
    invoke-virtual {p0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-virtual {p4}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    .line 350
    move-result p0

    .line 351
    if-eqz p0, :cond_d

    .line 353
    invoke-virtual {p3}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->hasSystemRoutingPermission()Z

    .line 356
    move-result p0

    .line 357
    if-nez p0, :cond_d

    .line 359
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 361
    iget-object p4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 363
    :cond_d
    long-to-int p0, v5

    .line 364
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    :try_start_1
    iget-object p1, p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    .line 369
    invoke-virtual {p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->maybeClearTransferInitiatorIdentity(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    .line 372
    move-result-object p2

    .line 373
    invoke-interface {p1, p0, p2}, Landroid/media/IMediaRouter2;->notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    goto :goto_6

    .line 377
    :catch_1
    move-exception p0

    .line 378
    const-string p1, "Failed to notify router of the session creation. Router probably died."

    .line 380
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    :goto_6
    return-void

    .line 384
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    .line 386
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 389
    move-result-wide v0

    .line 390
    check-cast p3, Ljava/lang/String;

    .line 392
    check-cast p4, Ljava/lang/Integer;

    .line 394
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 397
    move-result p0

    .line 398
    invoke-static {p1, v0, v1, p3, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->$r8$lambda$gfBNjj_qEN5gYbuwjbOFgMrSMpU(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLjava/lang/String;I)V

    .line 401
    return-void

    .line 402
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    .line 404
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 407
    move-result-wide v0

    .line 408
    check-cast p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 410
    check-cast p4, Ljava/lang/String;

    .line 412
    invoke-static {p1, v0, v1, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->$r8$lambda$fFTtstVLACy5dqiCA6mMwECkaiQ(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;)V

    .line 415
    return-void

    .line 416
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    .line 418
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 421
    move-result-wide v0

    .line 422
    check-cast p3, Landroid/media/MediaRoute2Info;

    .line 424
    check-cast p4, Ljava/lang/Integer;

    .line 426
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 429
    move-result p0

    .line 430
    invoke-static {p1, v0, v1, p3, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->$r8$lambda$e9Sk6TFecCbShGZjiI_FsGfvE-s(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLandroid/media/MediaRoute2Info;I)V

    .line 433
    return-void

    .line 434
    nop

    .line 435
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
