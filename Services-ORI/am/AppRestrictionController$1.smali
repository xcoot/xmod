.class public final Lcom/android/server/am/AppRestrictionController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/AppRestrictionController$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 p1, -0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    iget v2, p0, Lcom/android/server/am/AppRestrictionController$1;->$r8$classId:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v1, "com.android.server.am.ACTION_FGS_MANAGER_TRAMPOLINE"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p1, "android.intent.extra.PACKAGE_NAME"

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, "android.intent.extra.UID"

    .line 36
    .line 37
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    .line 44
    .line 45
    invoke-virtual {v0, p2, p1}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->cancelRequestBgRestrictedIfNecessary(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Landroid/content/Intent;

    .line 49
    .line 50
    const-string p2, "android.intent.action.SHOW_FOREGROUND_SERVICE_MANAGER"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/high16 p2, 0x1000000

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 67
    .line 68
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void

    .line 72
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    const-string p2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_1

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    :goto_1
    if-ge v0, p1, :cond_2

    .line 102
    .line 103
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    check-cast p2, Lcom/android/server/am/BaseAppStateTracker;

    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/android/server/am/BaseAppStateTracker;->onLockedBootCompleted()V

    .line 112
    .line 113
    .line 114
    add-int/2addr v0, v1

    .line 115
    goto :goto_1

    .line 116
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/am/AppRestrictionController;->mLockedBootCompleted:Z

    .line 117
    .line 118
    :goto_2
    return-void

    .line 119
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    sparse-switch v3, :sswitch_data_0

    .line 134
    .line 135
    .line 136
    :goto_3
    move v2, p1

    .line 137
    goto/16 :goto_4

    .line 138
    .line 139
    :sswitch_0
    const-string v3, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_3

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_3
    const/4 v2, 0x7

    .line 149
    goto :goto_4

    .line 150
    :sswitch_1
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 151
    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-nez v2, :cond_4

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_4
    const/4 v2, 0x6

    .line 160
    goto :goto_4

    .line 161
    :sswitch_2
    const-string v3, "android.intent.action.USER_ADDED"

    .line 162
    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-nez v2, :cond_5

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_5
    const/4 v2, 0x5

    .line 171
    goto :goto_4

    .line 172
    :sswitch_3
    const-string v3, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    .line 173
    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-nez v2, :cond_6

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_6
    const/4 v2, 0x4

    .line 182
    goto :goto_4

    .line 183
    :sswitch_4
    const-string v3, "android.intent.action.USER_STOPPED"

    .line 184
    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-nez v2, :cond_7

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_7
    const/4 v2, 0x3

    .line 193
    goto :goto_4

    .line 194
    :sswitch_5
    const-string v3, "android.intent.action.USER_STARTED"

    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-nez v2, :cond_8

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_8
    const/4 v2, 0x2

    .line 204
    goto :goto_4

    .line 205
    :sswitch_6
    const-string v3, "android.intent.action.UID_REMOVED"

    .line 206
    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-nez v2, :cond_9

    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_9
    move v2, v1

    .line 215
    goto :goto_4

    .line 216
    :sswitch_7
    const-string v3, "android.intent.action.USER_REMOVED"

    .line 217
    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    if-nez v2, :cond_a

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_a
    move v2, v0

    .line 226
    :goto_4
    packed-switch v2, :pswitch_data_1

    .line 227
    .line 228
    .line 229
    goto/16 :goto_12

    .line 230
    .line 231
    :pswitch_2
    const-string v0, "android.intent.extra.UID"

    .line 232
    .line 233
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    if-ltz p1, :cond_14

    .line 242
    .line 243
    if-eqz p2, :cond_14

    .line 244
    .line 245
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    if-eqz p2, :cond_14

    .line 250
    .line 251
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    .line 254
    .line 255
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 256
    .line 257
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 258
    .line 259
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 260
    .line 261
    monitor-enter v0

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 263
    .line 264
    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 269
    .line 270
    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    if-ltz v1, :cond_b

    .line 274
    .line 275
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 276
    .line 277
    invoke-virtual {p2, v1}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    if-nez p2, :cond_b

    .line 282
    .line 283
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 284
    .line 285
    invoke-virtual {p2, v1}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 286
    .line 287
    .line 288
    goto :goto_5

    .line 289
    :catchall_0
    move-exception p0

    .line 290
    goto :goto_6

    .line 291
    :cond_b
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 293
    .line 294
    iget-object p2, p2, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 295
    .line 296
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 297
    .line 298
    .line 299
    move-result p2

    .line 300
    if-eqz p2, :cond_14

    .line 301
    .line 302
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_12

    .line 310
    .line 311
    :goto_6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    throw p0

    .line 313
    :pswitch_3
    const-string v2, "android.intent.extra.REPLACING"

    .line 314
    .line 315
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-nez v2, :cond_14

    .line 320
    .line 321
    const-string v2, "android.intent.extra.UID"

    .line 322
    .line 323
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    if-ltz p1, :cond_14

    .line 328
    .line 329
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    .line 332
    .line 333
    const/16 p2, 0x600

    .line 334
    .line 335
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    .line 336
    .line 337
    .line 338
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    :goto_7
    if-ge v0, p1, :cond_14

    .line 345
    .line 346
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    check-cast p2, Lcom/android/server/am/BaseAppStateTracker;

    .line 353
    .line 354
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    add-int/2addr v0, v1

    .line 358
    goto :goto_7

    .line 359
    :pswitch_4
    const-string v2, "android.intent.extra.user_handle"

    .line 360
    .line 361
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    if-ltz p1, :cond_14

    .line 366
    .line 367
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    .line 370
    .line 371
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    :goto_8
    if-ge v0, p1, :cond_14

    .line 378
    .line 379
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 380
    .line 381
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object p2

    .line 385
    check-cast p2, Lcom/android/server/am/BaseAppStateTracker;

    .line 386
    .line 387
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    add-int/2addr v0, v1

    .line 391
    goto :goto_8

    .line 392
    :pswitch_5
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast p2, Lcom/android/server/am/AppRestrictionController;

    .line 395
    .line 396
    iget-object v0, p2, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 397
    .line 398
    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 399
    .line 400
    if-nez v2, :cond_c

    .line 401
    .line 402
    iget-object v2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    .line 403
    .line 404
    const-class v3, Landroid/telephony/TelephonyManager;

    .line 405
    .line 406
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 411
    .line 412
    iput-object v2, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 413
    .line 414
    :cond_c
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$Injector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 415
    .line 416
    if-nez v0, :cond_d

    .line 417
    .line 418
    goto :goto_a

    .line 419
    :cond_d
    iget-object v2, p2, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    .line 420
    .line 421
    if-eqz v2, :cond_f

    .line 422
    .line 423
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    sub-int/2addr v3, v1

    .line 428
    :goto_9
    if-ltz v3, :cond_e

    .line 429
    .line 430
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    check-cast v1, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    .line 435
    .line 436
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 437
    .line 438
    .line 439
    add-int/2addr v3, p1

    .line 440
    goto :goto_9

    .line 441
    :cond_e
    const/4 p1, 0x0

    .line 442
    iput-object p1, p2, Lcom/android/server/am/AppRestrictionController;->mCarrierPrivilegesCallbacks:Ljava/util/ArrayList;

    .line 443
    .line 444
    :cond_f
    :goto_a
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    .line 447
    .line 448
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController;->registerCarrierPrivilegesCallbacks()V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_12

    .line 452
    .line 453
    :pswitch_6
    const-string v2, "android.intent.extra.user_handle"

    .line 454
    .line 455
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 456
    .line 457
    .line 458
    move-result p1

    .line 459
    if-ltz p1, :cond_14

    .line 460
    .line 461
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    .line 464
    .line 465
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 466
    .line 467
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 468
    .line 469
    .line 470
    move-result p2

    .line 471
    :goto_b
    if-ge v0, p2, :cond_14

    .line 472
    .line 473
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 474
    .line 475
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    .line 480
    .line 481
    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserStopped(I)V

    .line 482
    .line 483
    .line 484
    add-int/2addr v0, v1

    .line 485
    goto :goto_b

    .line 486
    :pswitch_7
    const-string v2, "android.intent.extra.user_handle"

    .line 487
    .line 488
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 489
    .line 490
    .line 491
    move-result p1

    .line 492
    if-ltz p1, :cond_14

    .line 493
    .line 494
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    .line 497
    .line 498
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUser(I)V

    .line 499
    .line 500
    .line 501
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 502
    .line 503
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 504
    .line 505
    .line 506
    move-result p2

    .line 507
    :goto_c
    if-ge v0, p2, :cond_14

    .line 508
    .line 509
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 510
    .line 511
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    .line 516
    .line 517
    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUserStarted(I)V

    .line 518
    .line 519
    .line 520
    add-int/2addr v0, v1

    .line 521
    goto :goto_c

    .line 522
    :pswitch_8
    const-string v2, "android.intent.extra.REPLACING"

    .line 523
    .line 524
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 525
    .line 526
    .line 527
    move-result v2

    .line 528
    if-nez v2, :cond_14

    .line 529
    .line 530
    const-string v2, "android.intent.extra.UID"

    .line 531
    .line 532
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 533
    .line 534
    .line 535
    move-result p1

    .line 536
    if-ltz p1, :cond_14

    .line 537
    .line 538
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    .line 539
    .line 540
    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    .line 541
    .line 542
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 543
    .line 544
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 545
    .line 546
    .line 547
    move-result p2

    .line 548
    :goto_d
    if-ge v0, p2, :cond_10

    .line 549
    .line 550
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 551
    .line 552
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    check-cast v2, Lcom/android/server/am/BaseAppStateTracker;

    .line 557
    .line 558
    invoke-virtual {v2, p1}, Lcom/android/server/am/BaseAppStateTracker;->onUidRemoved(I)V

    .line 559
    .line 560
    .line 561
    add-int/2addr v0, v1

    .line 562
    goto :goto_d

    .line 563
    :cond_10
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 564
    .line 565
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 566
    .line 567
    iget-object p2, p2, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 568
    .line 569
    monitor-enter p2

    .line 570
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 571
    .line 572
    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 573
    .line 574
    .line 575
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 576
    iget-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 577
    .line 578
    iget-object p2, p2, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 579
    .line 580
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 581
    .line 582
    .line 583
    move-result p2

    .line 584
    if-eqz p2, :cond_14

    .line 585
    .line 586
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 587
    .line 588
    .line 589
    move-result p1

    .line 590
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    .line 591
    .line 592
    .line 593
    goto :goto_12

    .line 594
    :catchall_1
    move-exception p0

    .line 595
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 596
    throw p0

    .line 597
    :pswitch_9
    const-string v2, "android.intent.extra.user_handle"

    .line 598
    .line 599
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 600
    .line 601
    .line 602
    move-result p2

    .line 603
    if-ltz p2, :cond_14

    .line 604
    .line 605
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$1;->this$0:Ljava/lang/Object;

    .line 606
    .line 607
    check-cast p0, Lcom/android/server/am/AppRestrictionController;

    .line 608
    .line 609
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 610
    .line 611
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 612
    .line 613
    .line 614
    move-result v2

    .line 615
    :goto_e
    if-ge v0, v2, :cond_11

    .line 616
    .line 617
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    .line 618
    .line 619
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v3

    .line 623
    check-cast v3, Lcom/android/server/am/BaseAppStateTracker;

    .line 624
    .line 625
    invoke-virtual {v3, p2}, Lcom/android/server/am/BaseAppStateTracker;->onUserRemoved(I)V

    .line 626
    .line 627
    .line 628
    add-int/2addr v0, v1

    .line 629
    goto :goto_e

    .line 630
    :cond_11
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 631
    .line 632
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 633
    .line 634
    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController;->mSettingsLock:Ljava/lang/Object;

    .line 635
    .line 636
    monitor-enter v0

    .line 637
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 638
    .line 639
    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    .line 640
    .line 641
    .line 642
    move-result v2

    .line 643
    sub-int/2addr v2, v1

    .line 644
    :goto_f
    if-ltz v2, :cond_13

    .line 645
    .line 646
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 647
    .line 648
    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    .line 649
    .line 650
    .line 651
    move-result v1

    .line 652
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    if-eq v1, p2, :cond_12

    .line 657
    .line 658
    goto :goto_10

    .line 659
    :cond_12
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->mRestrictionLevels:Landroid/util/SparseArrayMap;

    .line 660
    .line 661
    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    .line 662
    .line 663
    .line 664
    :goto_10
    add-int/2addr v2, p1

    .line 665
    goto :goto_f

    .line 666
    :catchall_2
    move-exception p0

    .line 667
    goto :goto_11

    .line 668
    :cond_13
    monitor-exit v0

    .line 669
    goto :goto_12

    .line 670
    :goto_11
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 671
    throw p0

    .line 672
    :cond_14
    :goto_12
    return-void

    .line 673
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_7
        -0x6849e2b4 -> :sswitch_6
        -0x2d021ace -> :sswitch_5
        -0x2c3dc982 -> :sswitch_4
        0x412a6228 -> :sswitch_3
        0x42dd01f1 -> :sswitch_2
        0x5c1076e2 -> :sswitch_1
        0x5e33a4ad -> :sswitch_0
    .end sparse-switch

    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
