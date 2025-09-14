.class public final Lcom/android/server/am/AppRestrictionController$BgHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInjector:Lcom/android/server/am/AppRestrictionController$Injector;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/am/AppRestrictionController$Injector;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$BgHandler;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$BgHandler;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$Injector;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 4
    .line 5
    iget v0, p1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const-wide/32 v2, 0xc8000

    .line 9
    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_8

    .line 16
    .line 17
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 18
    .line 19
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->persistToXml(I)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_8

    .line 25
    .line 26
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->loadFromXml(Z)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_8

    .line 32
    .line 33
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->cancelRequestBgRestrictedIfNecessary(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_8

    .line 45
    .line 46
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 47
    .line 48
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    :goto_0
    if-ge v9, v1, :cond_8

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    .line 65
    .line 66
    invoke-virtual {v2, v0, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUidProcStateChanged(II)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v9, v9, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppRestrictionController;->handleUidInactive(I)V

    .line 75
    .line 76
    .line 77
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    :goto_1
    if-ge v9, v0, :cond_8

    .line 86
    .line 87
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lcom/android/server/am/BaseAppStateTracker;

    .line 94
    .line 95
    invoke-virtual {v1, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUidGone(I)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v9, v9, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 104
    .line 105
    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 117
    .line 118
    new-instance v4, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;

    .line 119
    .line 120
    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/AppRestrictionController;ILcom/android/server/usage/AppStandbyInternal;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->forEachPackageInUidLocked(ILcom/android/internal/util/function/TriConsumer;)V

    .line 124
    .line 125
    .line 126
    monitor-exit v0

    .line 127
    goto/16 :goto_8

    .line 128
    .line 129
    :catchall_0
    move-exception p0

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    throw p0

    .line 132
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->handleUidInactive(I)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_8

    .line 138
    .line 139
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v0, Ljava/lang/String;

    .line 142
    .line 143
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 144
    .line 145
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    .line 146
    .line 147
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 148
    .line 149
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 150
    .line 151
    iget-boolean v1, v1, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptAbusiveAppsToBgRestricted:Z

    .line 152
    .line 153
    if-nez v1, :cond_0

    .line 154
    .line 155
    goto/16 :goto_8

    .line 156
    .line 157
    :cond_0
    new-instance v4, Landroid/content/Intent;

    .line 158
    .line 159
    const-string v1, "android.settings.VIEW_ADVANCED_POWER_USAGE_DETAIL"

    .line 160
    .line 161
    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string/jumbo v1, "package"

    .line 165
    .line 166
    .line 167
    const/4 v2, 0x0

    .line 168
    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    const/high16 v1, 0x14000000

    .line 176
    .line 177
    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    .line 179
    .line 180
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    .line 181
    .line 182
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    const/4 v3, 0x0

    .line 191
    const/high16 v5, 0xc000000

    .line 192
    .line 193
    const/4 v6, 0x0

    .line 194
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 195
    .line 196
    .line 197
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 198
    .line 199
    invoke-virtual {v1, p1, v0}, Lcom/android/server/am/AppRestrictionController;->hasForegroundServices(ILjava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 203
    .line 204
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 205
    .line 206
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    .line 207
    .line 208
    iget-object v4, v1, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 209
    .line 210
    monitor-enter v4

    .line 211
    :try_start_1
    invoke-virtual {v1, p1, v0}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(ILjava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    .line 216
    .line 217
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    .line 218
    .line 219
    iget-boolean p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiToBgRestricted:Z

    .line 220
    .line 221
    goto/16 :goto_8

    .line 222
    .line 223
    :catchall_1
    move-exception p0

    .line 224
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    throw p0

    .line 226
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v0, Ljava/lang/String;

    .line 229
    .line 230
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 231
    .line 232
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    :goto_2
    if-ge v9, v1, :cond_8

    .line 249
    .line 250
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    .line 257
    .line 258
    invoke-virtual {v2, v0, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserInteractionStarted(Ljava/lang/String;I)V

    .line 259
    .line 260
    .line 261
    add-int/lit8 v9, v9, 0x1

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :pswitch_9
    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 265
    .line 266
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    .line 268
    move-object v8, v0

    .line 269
    check-cast v8, Ljava/lang/String;

    .line 270
    .line 271
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 272
    .line 273
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    .line 275
    .line 276
    invoke-static {}, Landroid/app/Flags;->appRestrictionsApi()Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_1

    .line 281
    .line 282
    iget-boolean v0, p0, Lcom/android/server/am/AppRestrictionController;->mLockedBootCompleted:Z

    .line 283
    .line 284
    if-nez v0, :cond_1

    .line 285
    .line 286
    goto/16 :goto_8

    .line 287
    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v0, v8, v2, v3, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 295
    .line 296
    .line 297
    move-result v9

    .line 298
    const/4 v5, 0x0

    .line 299
    const/4 v6, 0x0

    .line 300
    move-object v0, p0

    .line 301
    move-object v1, v8

    .line 302
    move v2, p1

    .line 303
    move v3, v9

    .line 304
    move v4, v7

    .line 305
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(Ljava/lang/String;IIIZZ)Landroid/util/Pair;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v0, Ljava/lang/Integer;

    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 318
    .line 319
    move-object v4, p1

    .line 320
    check-cast v4, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 321
    .line 322
    const/16 p1, 0x100

    .line 323
    .line 324
    const/4 v10, 0x0

    .line 325
    move-object v0, p0

    .line 326
    move v2, v9

    .line 327
    move v5, v7

    .line 328
    move v7, p1

    .line 329
    move v8, v10

    .line 330
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_8

    .line 334
    .line 335
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 336
    .line 337
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast v1, Ljava/lang/String;

    .line 340
    .line 341
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 342
    .line 343
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 344
    .line 345
    new-instance v2, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;

    .line 346
    .line 347
    invoke-direct {v2, v0, v1, p1}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_8

    .line 354
    .line 355
    :pswitch_b
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 356
    .line 357
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 358
    .line 359
    move-object v11, v0

    .line 360
    check-cast v11, Ljava/lang/String;

    .line 361
    .line 362
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 363
    .line 364
    if-ne p1, v1, :cond_2

    .line 365
    .line 366
    goto :goto_3

    .line 367
    :cond_2
    move v1, v9

    .line 368
    :goto_3
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 369
    .line 370
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    move v0, v9

    .line 375
    :goto_4
    if-ge v0, p1, :cond_3

    .line 376
    .line 377
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 378
    .line 379
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    .line 384
    .line 385
    invoke-virtual {v2, v10, v1}, Lcom/android/server/am/BaseAppStateTracker;->onBackgroundRestrictionChanged(IZ)V

    .line 386
    .line 387
    .line 388
    add-int/lit8 v0, v0, 0x1

    .line 389
    .line 390
    goto :goto_4

    .line 391
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 392
    .line 393
    invoke-virtual {p1}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppStandbyInternal()Lcom/android/server/usage/AppStandbyInternal;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 402
    .line 403
    .line 404
    move-result-wide v5

    .line 405
    const/4 v7, 0x0

    .line 406
    move-object v3, v11

    .line 407
    invoke-interface/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyInternal;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    if-eqz v1, :cond_4

    .line 412
    .line 413
    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController;->mEmptyTrackerInfo:Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 414
    .line 415
    const/16 v3, 0x32

    .line 416
    .line 417
    const/4 v6, 0x1

    .line 418
    const/16 v7, 0x400

    .line 419
    .line 420
    const/4 v8, 0x2

    .line 421
    move-object v0, p0

    .line 422
    move-object v1, v11

    .line 423
    move v2, v10

    .line 424
    move v5, p1

    .line 425
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 426
    .line 427
    .line 428
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 429
    .line 430
    const/16 p1, 0x9

    .line 431
    .line 432
    invoke-virtual {p0, p1, v10, v9, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 433
    .line 434
    .line 435
    move-result-object p0

    .line 436
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 437
    .line 438
    .line 439
    goto :goto_8

    .line 440
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 441
    .line 442
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 443
    .line 444
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 445
    .line 446
    monitor-enter v1

    .line 447
    :try_start_3
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 448
    .line 449
    invoke-virtual {v0, v10, v11}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    check-cast v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 454
    .line 455
    if-nez v0, :cond_5

    .line 456
    .line 457
    goto :goto_5

    .line 458
    :cond_5
    iget v9, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    .line 459
    .line 460
    :goto_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 461
    const/4 v0, 0x5

    .line 462
    if-ne p1, v0, :cond_7

    .line 463
    .line 464
    :cond_6
    :goto_6
    move v4, v0

    .line 465
    goto :goto_7

    .line 466
    :cond_7
    const/16 v0, 0x28

    .line 467
    .line 468
    if-ne v9, v0, :cond_6

    .line 469
    .line 470
    const/16 v0, 0x2d

    .line 471
    .line 472
    goto :goto_6

    .line 473
    :goto_7
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    const/4 v5, 0x0

    .line 478
    const/4 v6, 0x1

    .line 479
    move-object v0, p0

    .line 480
    move-object v1, v11

    .line 481
    move v3, v10

    .line 482
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->calcAppRestrictionLevel(Ljava/lang/String;IIIZZ)Landroid/util/Pair;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 487
    .line 488
    check-cast v1, Ljava/lang/Integer;

    .line 489
    .line 490
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 495
    .line 496
    move-object v4, v0

    .line 497
    check-cast v4, Lcom/android/server/am/AppRestrictionController$TrackerInfo;

    .line 498
    .line 499
    const/16 v7, 0x300

    .line 500
    .line 501
    const/4 v8, 0x3

    .line 502
    move-object v0, p0

    .line 503
    move-object v1, v11

    .line 504
    move v2, v10

    .line 505
    move v5, p1

    .line 506
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/AppRestrictionController;->applyRestrictionLevel(Ljava/lang/String;IILcom/android/server/am/AppRestrictionController$TrackerInfo;IZII)V

    .line 507
    .line 508
    .line 509
    :cond_8
    :goto_8
    return-void

    .line 510
    :catchall_2
    move-exception p0

    .line 511
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 512
    throw p0

    .line 513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
