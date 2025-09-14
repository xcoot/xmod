.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const-string v3, "MR2ServiceImpl"

    .line 5
    .line 6
    iget p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 7
    .line 8
    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 9
    .line 10
    packed-switch p0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p2, Lcom/android/server/media/MediaRoute2Provider;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p0, p2, Lcom/android/server/media/MediaRoute2Provider;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    .line 19
    .line 20
    iget-object v4, p2, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v5, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    .line 23
    .line 24
    move v6, v2

    .line 25
    :goto_0
    move-object v7, v5

    .line 26
    check-cast v7, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v8

    .line 32
    const/4 v9, -0x1

    .line 33
    if-ge v6, v8, :cond_1

    .line 34
    .line 35
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    check-cast v7, Landroid/media/MediaRoute2ProviderInfo;

    .line 40
    .line 41
    invoke-virtual {v7}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-static {v7, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    add-int/2addr v6, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move v6, v9

    .line 55
    :goto_1
    if-ne v6, v9, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    iget-object v0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    .line 59
    .line 60
    check-cast v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/media/MediaRoute2ProviderInfo;

    .line 67
    .line 68
    :goto_2
    if-ne v0, p0, :cond_3

    .line 69
    .line 70
    goto/16 :goto_8

    .line 71
    .line 72
    :cond_3
    if-eqz p0, :cond_5

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    new-instance v7, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda14;

    .line 83
    .line 84
    const/4 v8, 0x2

    .line 85
    invoke-direct {v7, v8}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda14;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Ljava/util/Set;

    .line 101
    .line 102
    if-ltz v6, :cond_4

    .line 103
    .line 104
    iget-object v7, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    .line 105
    .line 106
    check-cast v7, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v7, v6, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    iget-object v6, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    .line 113
    .line 114
    check-cast v6, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_5
    iget-object v4, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    .line 121
    .line 122
    check-cast v4, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    :goto_3
    new-instance v6, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    move v7, v2

    .line 145
    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    if-eqz v8, :cond_9

    .line 150
    .line 151
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    check-cast v8, Landroid/media/MediaRoute2Info;

    .line 156
    .line 157
    invoke-virtual {v8}, Landroid/media/MediaRoute2Info;->isValid()Z

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    if-nez v9, :cond_7

    .line 162
    .line 163
    new-instance v9, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string/jumbo v10, "onProviderStateChangedOnHandler: Ignoring invalid route : "

    .line 166
    .line 167
    .line 168
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_7
    iget-boolean v9, p2, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    .line 183
    .line 184
    if-nez v9, :cond_8

    .line 185
    .line 186
    iget-object v9, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    .line 187
    .line 188
    invoke-virtual {v8}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    check-cast v9, Landroid/util/ArrayMap;

    .line 193
    .line 194
    invoke-virtual {v9, v10, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    :cond_8
    iget-object v9, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    .line 198
    .line 199
    invoke-virtual {v8}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    check-cast v9, Landroid/util/ArrayMap;

    .line 204
    .line 205
    invoke-virtual {v9, v10, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    check-cast v9, Landroid/media/MediaRoute2Info;

    .line 210
    .line 211
    invoke-virtual {v8, v9}, Landroid/media/MediaRoute2Info;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    xor-int/2addr v10, v1

    .line 216
    or-int/2addr v7, v10

    .line 217
    if-nez v9, :cond_6

    .line 218
    .line 219
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .line 227
    .line 228
    if-nez v0, :cond_a

    .line 229
    .line 230
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    goto :goto_5

    .line 235
    :cond_a
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    :goto_5
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    move v9, v2

    .line 244
    :cond_b
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v10

    .line 248
    if-eqz v10, :cond_c

    .line 249
    .line 250
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v10

    .line 254
    check-cast v10, Landroid/media/MediaRoute2Info;

    .line 255
    .line 256
    invoke-virtual {v10}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v11

    .line 260
    invoke-interface {v5, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    if-nez v12, :cond_b

    .line 265
    .line 266
    iget-object v9, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    .line 267
    .line 268
    check-cast v9, Landroid/util/ArrayMap;

    .line 269
    .line 270
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    iget-object v9, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    .line 274
    .line 275
    check-cast v9, Landroid/util/ArrayMap;

    .line 276
    .line 277
    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move v9, v1

    .line 284
    goto :goto_6

    .line 285
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-nez v5, :cond_d

    .line 290
    .line 291
    const-string v5, "addProviderRoutes"

    .line 292
    .line 293
    invoke-virtual {p0}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-static {v5, p0, v6}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->toLoggingMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 305
    .line 306
    .line 307
    move-result p0

    .line 308
    if-nez p0, :cond_e

    .line 309
    .line 310
    const-string/jumbo p0, "removeProviderRoutes"

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-static {p0, v0, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->toLoggingMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    :cond_e
    iget-boolean p0, p2, Lcom/android/server/media/MediaRoute2Provider;->mIsSystemRouteProvider:Z

    .line 325
    .line 326
    iget-object p2, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 327
    .line 328
    iget-object p2, p2, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 329
    .line 330
    if-nez v7, :cond_f

    .line 331
    .line 332
    if-nez v9, :cond_f

    .line 333
    .line 334
    goto/16 :goto_8

    .line 335
    .line 336
    :cond_f
    invoke-virtual {p1, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouterRecords(Z)Ljava/util/List;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {p1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getRouterRecords(Z)Ljava/util/List;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->getManagers()Ljava/util/List;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    new-instance v4, Ljava/util/ArrayList;

    .line 349
    .line 350
    iget-object v5, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    .line 351
    .line 352
    check-cast v5, Landroid/util/ArrayMap;

    .line 353
    .line 354
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 359
    .line 360
    .line 361
    check-cast v2, Ljava/util/ArrayList;

    .line 362
    .line 363
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 368
    .line 369
    .line 370
    move-result v5

    .line 371
    if-eqz v5, :cond_10

    .line 372
    .line 373
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    check-cast v5, Landroid/media/IMediaRouter2Manager;

    .line 378
    .line 379
    :try_start_0
    invoke-interface {v5, v4}, Landroid/media/IMediaRouter2Manager;->notifyRoutesUpdated(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .line 381
    .line 382
    goto :goto_7

    .line 383
    :catch_0
    move-exception v5

    .line 384
    const-string v6, "Failed to notify routes changed. Manager probably died."

    .line 385
    .line 386
    invoke-static {v3, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    .line 388
    .line 389
    goto :goto_7

    .line 390
    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    .line 391
    .line 392
    iget-object v3, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    .line 393
    .line 394
    check-cast v3, Landroid/util/ArrayMap;

    .line 395
    .line 396
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 401
    .line 402
    .line 403
    invoke-static {v0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesUpdatedToRouterRecords(Ljava/util/List;Ljava/util/List;)V

    .line 404
    .line 405
    .line 406
    if-nez p0, :cond_11

    .line 407
    .line 408
    new-instance p0, Ljava/util/ArrayList;

    .line 409
    .line 410
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    .line 411
    .line 412
    check-cast p1, Landroid/util/ArrayMap;

    .line 413
    .line 414
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 419
    .line 420
    .line 421
    invoke-static {v1, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesUpdatedToRouterRecords(Ljava/util/List;Ljava/util/List;)V

    .line 422
    .line 423
    .line 424
    goto :goto_8

    .line 425
    :cond_11
    if-eqz v7, :cond_12

    .line 426
    .line 427
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    .line 428
    .line 429
    invoke-virtual {p2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    check-cast p0, Landroid/util/ArrayMap;

    .line 434
    .line 435
    invoke-virtual {p0, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    new-instance p0, Ljava/util/ArrayList;

    .line 439
    .line 440
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToNonPrivilegedRouters:Ljava/util/Map;

    .line 441
    .line 442
    check-cast p1, Landroid/util/ArrayMap;

    .line 443
    .line 444
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 449
    .line 450
    .line 451
    invoke-static {v1, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->notifyRoutesUpdatedToRouterRecords(Ljava/util/List;Ljava/util/List;)V

    .line 452
    .line 453
    .line 454
    :cond_12
    :goto_8
    return-void

    .line 455
    :pswitch_0
    check-cast p2, Landroid/media/IMediaRouter2Manager;

    .line 456
    .line 457
    iget-object p0, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    .line 458
    .line 459
    check-cast p0, Landroid/util/ArrayMap;

    .line 460
    .line 461
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 462
    .line 463
    .line 464
    move-result p0

    .line 465
    if-eqz p0, :cond_13

    .line 466
    .line 467
    goto :goto_9

    .line 468
    :cond_13
    :try_start_1
    new-instance p0, Ljava/util/ArrayList;

    .line 469
    .line 470
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastNotifiedRoutesToPrivilegedRouters:Ljava/util/Map;

    .line 471
    .line 472
    check-cast p1, Landroid/util/ArrayMap;

    .line 473
    .line 474
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 479
    .line 480
    .line 481
    invoke-interface {p2, p0}, Landroid/media/IMediaRouter2Manager;->notifyRoutesUpdated(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 482
    .line 483
    .line 484
    goto :goto_9

    .line 485
    :catch_1
    move-exception p0

    .line 486
    const-string p1, "Failed to notify all routes. Manager probably died."

    .line 487
    .line 488
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    .line 490
    .line 491
    :goto_9
    return-void

    .line 492
    :pswitch_1
    check-cast p2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 493
    .line 494
    sget p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->$r8$clinit:I

    .line 495
    .line 496
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    .line 498
    .line 499
    new-instance p0, Ljava/util/ArrayList;

    .line 500
    .line 501
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .line 503
    .line 504
    iget-object v1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mLastProviderInfos:Ljava/util/List;

    .line 505
    .line 506
    check-cast v1, Ljava/util/ArrayList;

    .line 507
    .line 508
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 513
    .line 514
    .line 515
    move-result v4

    .line 516
    iget-object v5, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 517
    .line 518
    if-eqz v4, :cond_15

    .line 519
    .line 520
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    check-cast v4, Landroid/media/MediaRoute2ProviderInfo;

    .line 525
    .line 526
    invoke-virtual {v4}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v6

    .line 530
    iget-object v5, v5, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 531
    .line 532
    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 533
    .line 534
    .line 535
    move-result v5

    .line 536
    if-eqz v5, :cond_14

    .line 537
    .line 538
    move-object v0, v4

    .line 539
    goto :goto_a

    .line 540
    :cond_14
    invoke-virtual {v4}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    .line 541
    .line 542
    .line 543
    move-result-object v4

    .line 544
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 545
    .line 546
    .line 547
    goto :goto_a

    .line 548
    :cond_15
    invoke-virtual {p2}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->hasSystemRoutingPermission()Z

    .line 549
    .line 550
    .line 551
    move-result p1

    .line 552
    if-eqz p1, :cond_17

    .line 553
    .line 554
    if-eqz v0, :cond_16

    .line 555
    .line 556
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    .line 557
    .line 558
    .line 559
    move-result-object p1

    .line 560
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 561
    .line 562
    .line 563
    goto :goto_b

    .line 564
    :cond_16
    const-string p1, "System route provider not found."

    .line 565
    .line 566
    invoke-static {v3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .line 568
    .line 569
    :goto_b
    invoke-virtual {v5}, Lcom/android/server/media/MediaRoute2Provider;->getSessionInfos()Ljava/util/List;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    check-cast p1, Ljava/util/ArrayList;

    .line 574
    .line 575
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object p1

    .line 579
    check-cast p1, Landroid/media/RoutingSessionInfo;

    .line 580
    .line 581
    goto :goto_c

    .line 582
    :cond_17
    iget-object p1, v5, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 583
    .line 584
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    iget-object p1, v5, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 588
    .line 589
    :goto_c
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    if-nez v0, :cond_18

    .line 594
    .line 595
    :try_start_2
    iget-object v0, p2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->mRouter:Landroid/media/IMediaRouter2;

    .line 596
    .line 597
    invoke-virtual {p2, p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;->getVisibleRoutes(Ljava/util/List;)Ljava/util/List;

    .line 598
    .line 599
    .line 600
    move-result-object p0

    .line 601
    invoke-interface {v0, p0, p1}, Landroid/media/IMediaRouter2;->notifyRouterRegistered(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 602
    .line 603
    .line 604
    goto :goto_d

    .line 605
    :catch_2
    move-exception p0

    .line 606
    const-string p1, "Failed to notify router registered. Router probably died."

    .line 607
    .line 608
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    .line 610
    .line 611
    :cond_18
    :goto_d
    return-void

    .line 612
    nop

    .line 613
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
