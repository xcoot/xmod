.class public final Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v7, 0x1

    .line 10
    sget v8, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->$r8$clinit:I

    .line 11
    .line 12
    new-instance v8, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v9, "handleMessage "

    .line 15
    .line 16
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v9, v0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 20
    .line 21
    iget-boolean v10, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mInProgress:Z

    .line 22
    .line 23
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v10, " msg "

    .line 27
    .line 28
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    const-string v10, "LocaleOverlayManager"

    .line 39
    .line 40
    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-boolean v8, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mInProgress:Z

    .line 44
    .line 45
    const/4 v11, 0x0

    .line 46
    if-eqz v8, :cond_0

    .line 47
    .line 48
    iget v2, v1, Landroid/os/Message;->what:I

    .line 49
    .line 50
    invoke-static {v11, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    .line 56
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 63
    .line 64
    .line 65
    const-wide/16 v3, 0x64

    .line 66
    .line 67
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    iput-boolean v7, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mInProgress:Z

    .line 72
    .line 73
    iget-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->progressHandler:Landroid/os/Handler;

    .line 74
    .line 75
    iget-object v8, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->progressResetRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->progressHandler:Landroid/os/Handler;

    .line 81
    .line 82
    iget-object v8, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->progressResetRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    const-wide/32 v12, 0x1d4c0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v8, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    .line 89
    .line 90
    iget v0, v1, Landroid/os/Message;->what:I

    .line 91
    .line 92
    const-string v8, "app_in_progress"

    .line 93
    .line 94
    const-string v12, "]"

    .line 95
    .line 96
    const-string v13, "locale_in_progress"

    .line 97
    .line 98
    const-string v14, "Package is not supported for Locale Overlays: "

    .line 99
    .line 100
    const-string v15, "config_locale_list"

    .line 101
    .line 102
    packed-switch v0, :pswitch_data_0

    .line 103
    .line 104
    .line 105
    iput-boolean v5, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mInProgress:Z

    .line 106
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v2, "handleMessage: Message not known - "

    .line 110
    .line 111
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    goto/16 :goto_16

    .line 125
    .line 126
    :pswitch_0
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    .line 128
    if-eqz v0, :cond_28

    .line 129
    .line 130
    check-cast v0, Landroid/os/Bundle;

    .line 131
    .line 132
    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const-string/jumbo v2, "perAppPackageName"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v1, :cond_3

    .line 144
    .line 145
    if-nez v0, :cond_1

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    .line 149
    .line 150
    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v9, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mhasZippedOverlaysPackage(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_2

    .line 158
    .line 159
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v9, v0, v2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->installLocalesForPackages(Ljava/util/Set;Ljava/util/Set;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_16

    .line 167
    .line 168
    :cond_2
    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    invoke-static {v9, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mcleanLocaleOverlayForDisable(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_16

    .line 179
    .line 180
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v3, "MESSAGE_PERAPP_SUPPORT: Ignored message. currentLocales = "

    .line 183
    .line 184
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v1, ", packageName = "

    .line 191
    .line 192
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/Utils;->getSystemLocales()Ljava/util/Set;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 216
    .line 217
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string v2, "handleMessage: MESSAGE_JOB_ENSUREOVERLAYS. Current locales = "

    .line 221
    .line 222
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    invoke-virtual {v9, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->ensureOverlaysEnabled(Ljava/util/ArrayList;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_28

    .line 240
    .line 241
    invoke-virtual {v9}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_16

    .line 245
    .line 246
    :pswitch_2
    invoke-virtual {v9}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_16

    .line 250
    .line 251
    :pswitch_3
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 252
    .line 253
    if-eqz v0, :cond_4

    .line 254
    .line 255
    check-cast v0, Landroid/os/Bundle;

    .line 256
    .line 257
    const-string/jumbo v1, "safeMode"

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    const-string/jumbo v2, "startCleanUpOverlay"

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    goto :goto_1

    .line 272
    :cond_4
    move v0, v5

    .line 273
    move v1, v0

    .line 274
    :goto_1
    const-string v2, "init() called"

    .line 275
    .line 276
    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    invoke-virtual {v9}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->parseTargetApks()V

    .line 280
    .line 281
    .line 282
    iput-boolean v7, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mIsCleanupInProgress:Z

    .line 283
    .line 284
    const-string v2, "/data/overlays/current_locale_apks/files/"

    .line 285
    .line 286
    const-string/jumbo v3, "user"

    .line 287
    .line 288
    .line 289
    const-string v4, "OnBootInitializer"

    .line 290
    .line 291
    if-eqz v0, :cond_a

    .line 292
    .line 293
    iget-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mContext:Landroid/content/Context;

    .line 294
    .line 295
    if-nez v0, :cond_5

    .line 296
    .line 297
    const-string v0, "cleanupOverlayDir called with null context. skip cleanup."

    .line 298
    .line 299
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    goto/16 :goto_4

    .line 303
    .line 304
    :cond_5
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    check-cast v1, Landroid/os/UserManager;

    .line 309
    .line 310
    invoke-virtual {v1}, Landroid/os/UserManager;->semGetUsers()Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    new-instance v3, Ljava/util/HashSet;

    .line 315
    .line 316
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 317
    .line 318
    .line 319
    new-instance v6, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    const-string v8, "getLocalesForAllUsers: UserInfos - "

    .line 322
    .line 323
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    if-eqz v6, :cond_7

    .line 345
    .line 346
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    check-cast v6, Landroid/content/pm/SemUserInfo;

    .line 351
    .line 352
    invoke-virtual {v6}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    invoke-virtual {v6}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    invoke-static {v6}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->getLocalesForUser(I)Ljava/util/Set;

    .line 361
    .line 362
    .line 363
    move-result-object v8

    .line 364
    new-instance v10, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    const-string v11, "getLocalesForAllUsers: UserId - "

    .line 367
    .line 368
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v11, " has locales - "

    .line 375
    .line 376
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v10

    .line 386
    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    move-object v10, v8

    .line 390
    check-cast v10, Ljava/util/HashSet;

    .line 391
    .line 392
    invoke-virtual {v10}, Ljava/util/HashSet;->isEmpty()Z

    .line 393
    .line 394
    .line 395
    move-result v10

    .line 396
    if-eqz v10, :cond_6

    .line 397
    .line 398
    const-string v0, "cleanupOverlayDir: initialization of new user is not done yet. Skip cleanup. UserId: "

    .line 399
    .line 400
    invoke-static {v6, v0, v4}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    goto :goto_4

    .line 404
    :cond_6
    invoke-interface {v3, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 405
    .line 406
    .line 407
    goto :goto_2

    .line 408
    :cond_7
    invoke-static {v3}, Lcom/samsung/android/localeoverlaymanager/Utils;->handleNewLocaleCodes(Ljava/util/Set;)V

    .line 409
    .line 410
    .line 411
    sget-object v1, Lcom/samsung/android/localeoverlaymanager/OverlayConstants;->ISO_639_2_TO_639_1_MAPPING:Ljava/util/Map;

    .line 412
    .line 413
    new-instance v6, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda0;

    .line 414
    .line 415
    invoke-direct {v6, v3}, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    .line 416
    .line 417
    .line 418
    check-cast v1, Ljava/util/HashMap;

    .line 419
    .line 420
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 421
    .line 422
    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    const-string v6, "Languages to skip cleanup "

    .line 426
    .line 427
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    const-class v1, Landroid/app/LocaleManager;

    .line 441
    .line 442
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    check-cast v1, Landroid/app/LocaleManager;

    .line 447
    .line 448
    new-instance v6, Ljava/io/File;

    .line 449
    .line 450
    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    new-instance v2, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda1;

    .line 454
    .line 455
    invoke-direct {v2, v3, v0, v1}, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;Landroid/content/Context;Landroid/app/LocaleManager;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v6, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    if-eqz v0, :cond_9

    .line 463
    .line 464
    array-length v1, v0

    .line 465
    if-nez v1, :cond_8

    .line 466
    .line 467
    goto :goto_4

    .line 468
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    const-string v2, "Cleaning up files "

    .line 471
    .line 472
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-static {v1, v2, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    array-length v1, v0

    .line 483
    move v2, v5

    .line 484
    :goto_3
    if-ge v2, v1, :cond_9

    .line 485
    .line 486
    aget-object v3, v0, v2

    .line 487
    .line 488
    new-instance v6, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    const-string v8, "Cleaning up "

    .line 491
    .line 492
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v8

    .line 499
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v6

    .line 506
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    .line 508
    .line 509
    invoke-static {v3}, Lcom/samsung/android/localeoverlaymanager/Utils;->deleteFile(Ljava/io/File;)V

    .line 510
    .line 511
    .line 512
    add-int/2addr v2, v7

    .line 513
    goto :goto_3

    .line 514
    :cond_9
    :goto_4
    move v1, v5

    .line 515
    move v7, v1

    .line 516
    goto/16 :goto_13

    .line 517
    .line 518
    :cond_a
    iget-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->progressHandler:Landroid/os/Handler;

    .line 519
    .line 520
    iget-object v14, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->progressResetRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda0;

    .line 521
    .line 522
    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 523
    .line 524
    .line 525
    iget-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->progressHandler:Landroid/os/Handler;

    .line 526
    .line 527
    iget-object v14, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->progressResetRunnable:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$$ExternalSyntheticLambda0;

    .line 528
    .line 529
    const-wide/32 v5, 0x493e0

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0, v14, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 533
    .line 534
    .line 535
    iget-object v5, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mLocaleOverlayTargetApks:Ljava/util/Set;

    .line 536
    .line 537
    iget-object v6, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mContext:Landroid/content/Context;

    .line 538
    .line 539
    invoke-static {v6}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 540
    .line 541
    .line 542
    move-result-object v14

    .line 543
    const-string v0, "isFotaUpgrade : currentPDAVersion = "

    .line 544
    .line 545
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 546
    .line 547
    .line 548
    move-result-object v15

    .line 549
    invoke-virtual {v15}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    .line 550
    .line 551
    .line 552
    move-result v15

    .line 553
    const-string/jumbo v7, "ro.omc.build.id"

    .line 554
    .line 555
    .line 556
    const-string/jumbo v11, "ro.build.PDA"

    .line 557
    .line 558
    .line 559
    move-object/from16 p0, v8

    .line 560
    .line 561
    const-string v8, ""

    .line 562
    .line 563
    move-object/from16 p1, v5

    .line 564
    .line 565
    const-string v5, ", currentQBID = "

    .line 566
    .line 567
    move-object/from16 v16, v2

    .line 568
    .line 569
    const-string v2, ", currentCSCVersion = "

    .line 570
    .line 571
    move-object/from16 v17, v3

    .line 572
    .line 573
    const-string/jumbo v3, "stored_qb_id"

    .line 574
    .line 575
    .line 576
    move-object/from16 v18, v10

    .line 577
    .line 578
    const-string/jumbo v10, "stored_csc_version"

    .line 579
    .line 580
    .line 581
    move-object/from16 v19, v13

    .line 582
    .line 583
    const-string/jumbo v13, "stored_pda_version"

    .line 584
    .line 585
    .line 586
    move-object/from16 v20, v14

    .line 587
    .line 588
    const-string v14, "LOMUtils"

    .line 589
    .line 590
    if-eqz v15, :cond_b

    .line 591
    .line 592
    move-object/from16 v23, v4

    .line 593
    .line 594
    move-object/from16 v21, v6

    .line 595
    .line 596
    move-object/from16 v24, v7

    .line 597
    .line 598
    move-object/from16 v25, v8

    .line 599
    .line 600
    move-object/from16 v22, v11

    .line 601
    .line 602
    move-object/from16 v26, v13

    .line 603
    .line 604
    goto/16 :goto_5

    .line 605
    .line 606
    :cond_b
    invoke-static {v6}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 607
    .line 608
    .line 609
    move-result-object v15

    .line 610
    move-object/from16 v21, v6

    .line 611
    .line 612
    :try_start_0
    invoke-static {v11, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 616
    move-object/from16 v22, v11

    .line 617
    .line 618
    :try_start_1
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/Utils;->readCSCVersion()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 622
    move-object/from16 v23, v4

    .line 623
    .line 624
    :try_start_2
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 628
    move-object/from16 v24, v7

    .line 629
    .line 630
    move-object/from16 v25, v8

    .line 631
    .line 632
    const/4 v7, 0x0

    .line 633
    :try_start_3
    invoke-interface {v15, v13, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 637
    move-object/from16 v26, v13

    .line 638
    .line 639
    :try_start_4
    invoke-interface {v15, v10, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v13

    .line 643
    invoke-interface {v15, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v15

    .line 647
    new-instance v7, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    const-string v0, ", storedPDAVersion = "

    .line 668
    .line 669
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    const-string v0, ", storedCSCVersion = "

    .line 676
    .line 677
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    const-string v0, ", storedQBID = "

    .line 684
    .line 685
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-static {v14, v0}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 699
    .line 700
    .line 701
    move-result v0

    .line 702
    if-eqz v0, :cond_c

    .line 703
    .line 704
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result v0

    .line 708
    if-eqz v0, :cond_c

    .line 709
    .line 710
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 714
    if-nez v0, :cond_d

    .line 715
    .line 716
    goto :goto_5

    .line 717
    :catch_0
    move-exception v0

    .line 718
    goto :goto_8

    .line 719
    :cond_c
    :goto_5
    const/4 v4, 0x1

    .line 720
    goto :goto_9

    .line 721
    :catch_1
    move-exception v0

    .line 722
    :goto_6
    move-object/from16 v26, v13

    .line 723
    .line 724
    goto :goto_8

    .line 725
    :catch_2
    move-exception v0

    .line 726
    goto :goto_7

    .line 727
    :catch_3
    move-exception v0

    .line 728
    move-object/from16 v23, v4

    .line 729
    .line 730
    :goto_7
    move-object/from16 v24, v7

    .line 731
    .line 732
    move-object/from16 v25, v8

    .line 733
    .line 734
    goto :goto_6

    .line 735
    :catch_4
    move-exception v0

    .line 736
    move-object/from16 v23, v4

    .line 737
    .line 738
    move-object/from16 v24, v7

    .line 739
    .line 740
    move-object/from16 v25, v8

    .line 741
    .line 742
    move-object/from16 v22, v11

    .line 743
    .line 744
    goto :goto_6

    .line 745
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 746
    .line 747
    const-string v6, "Error while getting fota upgrade Info "

    .line 748
    .line 749
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    invoke-static {v0, v4, v14}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    :cond_d
    if-eqz v1, :cond_16

    .line 756
    .line 757
    goto :goto_5

    .line 758
    :goto_9
    iput-boolean v4, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mIsPackageUpdateTask:Z

    .line 759
    .line 760
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/Utils;->getSystemLocales()Ljava/util/Set;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    new-instance v4, Ljava/lang/StringBuilder;

    .line 765
    .line 766
    const-string/jumbo v6, "updateOverlays: Performing FOTA/safeMode Update. systemLocales = ["

    .line 767
    .line 768
    .line 769
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    const-string v7, "], isSafeMode = ["

    .line 776
    .line 777
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    .line 779
    .line 780
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v4

    .line 790
    move-object/from16 v8, v23

    .line 791
    .line 792
    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .line 794
    .line 795
    new-instance v4, Ljava/lang/StringBuilder;

    .line 796
    .line 797
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    invoke-static {v8, v1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    move-object/from16 v6, v26

    .line 824
    .line 825
    const/4 v4, 0x0

    .line 826
    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v7

    .line 830
    if-eqz v7, :cond_e

    .line 831
    .line 832
    invoke-interface {v1, v10, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v7

    .line 836
    if-eqz v7, :cond_e

    .line 837
    .line 838
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v1

    .line 842
    if-nez v1, :cond_f

    .line 843
    .line 844
    :cond_e
    const-string/jumbo v1, "persist.sys.locale"

    .line 845
    .line 846
    .line 847
    const-string v4, "en-US"

    .line 848
    .line 849
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    const/4 v4, 0x2

    .line 854
    const/4 v7, 0x0

    .line 855
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    move-object v4, v0

    .line 860
    check-cast v4, Ljava/util/HashSet;

    .line 861
    .line 862
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 863
    .line 864
    .line 865
    new-instance v4, Ljava/lang/StringBuilder;

    .line 866
    .line 867
    const-string/jumbo v7, "updateOverlays: Adding default locale to systemLocales. default locale = "

    .line 868
    .line 869
    .line 870
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    const-string v1, ", systemLocales = "

    .line 877
    .line 878
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v1

    .line 888
    invoke-static {v8, v1}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    :cond_f
    sget v1, Lcom/samsung/android/localeoverlaymanager/Utils;->sCurrentUserId:I

    .line 892
    .line 893
    invoke-static {v1, v0}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->setLocalesForUser(ILjava/util/Set;)V

    .line 894
    .line 895
    .line 896
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 897
    .line 898
    .line 899
    move-result-object v1

    .line 900
    move-object/from16 v4, v19

    .line 901
    .line 902
    const/4 v7, 0x1

    .line 903
    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 904
    .line 905
    .line 906
    move-result-object v1

    .line 907
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 908
    .line 909
    .line 910
    new-instance v1, Ljava/util/HashSet;

    .line 911
    .line 912
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 913
    .line 914
    .line 915
    const-string v4, "disableUnRequiredLocaleOverlays() called"

    .line 916
    .line 917
    move-object/from16 v7, v18

    .line 918
    .line 919
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    .line 921
    .line 922
    iget-object v4, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 923
    .line 924
    if-nez v4, :cond_10

    .line 925
    .line 926
    invoke-virtual {v9}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->initOverlayManager()V

    .line 927
    .line 928
    .line 929
    :cond_10
    iget-object v4, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 930
    .line 931
    if-eqz v4, :cond_14

    .line 932
    .line 933
    iget-object v4, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mContext:Landroid/content/Context;

    .line 934
    .line 935
    move-object/from16 v7, v17

    .line 936
    .line 937
    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v4

    .line 941
    check-cast v4, Landroid/os/UserManager;

    .line 942
    .line 943
    invoke-virtual {v4}, Landroid/os/UserManager;->semGetUsers()Ljava/util/List;

    .line 944
    .line 945
    .line 946
    move-result-object v4

    .line 947
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 948
    .line 949
    .line 950
    move-result-object v4

    .line 951
    :cond_11
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 952
    .line 953
    .line 954
    move-result v7

    .line 955
    if-eqz v7, :cond_14

    .line 956
    .line 957
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    move-result-object v7

    .line 961
    check-cast v7, Landroid/content/pm/SemUserInfo;

    .line 962
    .line 963
    invoke-virtual {v7}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 964
    .line 965
    .line 966
    move-result-object v7

    .line 967
    invoke-virtual {v7}, Landroid/os/UserHandle;->semGetIdentifier()I

    .line 968
    .line 969
    .line 970
    move-result v7

    .line 971
    iget-object v8, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 972
    .line 973
    iget-object v8, v8, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->mService:Lcom/android/server/om/OverlayManagerService;

    .line 974
    .line 975
    invoke-virtual {v8, v7}, Lcom/android/server/om/OverlayManagerService;->getAllOverlays(I)Ljava/util/Map;

    .line 976
    .line 977
    .line 978
    move-result-object v8

    .line 979
    new-instance v11, Ljava/util/ArrayList;

    .line 980
    .line 981
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 982
    .line 983
    .line 984
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    .line 985
    .line 986
    .line 987
    move-result v13

    .line 988
    if-eqz v13, :cond_12

    .line 989
    .line 990
    goto :goto_c

    .line 991
    :cond_12
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 992
    .line 993
    .line 994
    move-result-object v8

    .line 995
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 996
    .line 997
    .line 998
    move-result-object v8

    .line 999
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1000
    .line 1001
    .line 1002
    move-result v13

    .line 1003
    if-eqz v13, :cond_13

    .line 1004
    .line 1005
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v13

    .line 1009
    check-cast v13, Ljava/util/Map$Entry;

    .line 1010
    .line 1011
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v13

    .line 1015
    check-cast v13, Ljava/util/List;

    .line 1016
    .line 1017
    new-instance v15, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda4;

    .line 1018
    .line 1019
    invoke-direct {v15, v1, v11}, Lcom/samsung/android/localeoverlaymanager/OMSHelper$$ExternalSyntheticLambda4;-><init>(Ljava/util/Set;Ljava/util/List;)V

    .line 1020
    .line 1021
    .line 1022
    invoke-interface {v13, v15}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1023
    .line 1024
    .line 1025
    goto :goto_b

    .line 1026
    :cond_13
    :goto_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1027
    .line 1028
    .line 1029
    move-result v8

    .line 1030
    if-nez v8, :cond_11

    .line 1031
    .line 1032
    iget-object v8, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 1033
    .line 1034
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1035
    .line 1036
    .line 1037
    const/4 v8, 0x0

    .line 1038
    invoke-static {v11, v8, v7, v8}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->applySamsungConfigChangeOverlays(Ljava/util/List;Ljava/util/List;ILcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$ApplyObserver;)V

    .line 1039
    .line 1040
    .line 1041
    goto :goto_a

    .line 1042
    :cond_14
    new-instance v1, Ljava/io/File;

    .line 1043
    .line 1044
    move-object/from16 v4, v16

    .line 1045
    .line 1046
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1047
    .line 1048
    .line 1049
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1050
    .line 1051
    const-string v7, "deleteFilesInDir() called with: dir = ["

    .line 1052
    .line 1053
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v4

    .line 1066
    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v4

    .line 1073
    if-eqz v4, :cond_15

    .line 1074
    .line 1075
    array-length v7, v4

    .line 1076
    const/4 v8, 0x0

    .line 1077
    :goto_d
    if-ge v8, v7, :cond_15

    .line 1078
    .line 1079
    aget-object v11, v4, v8

    .line 1080
    .line 1081
    :try_start_5
    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v11

    .line 1085
    invoke-static {v11}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1086
    .line 1087
    .line 1088
    :goto_e
    const/4 v11, 0x1

    .line 1089
    goto :goto_f

    .line 1090
    :catch_5
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1091
    .line 1092
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1093
    .line 1094
    .line 1095
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v12

    .line 1099
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    .line 1102
    const-string v12, ": Unable to delete file - "

    .line 1103
    .line 1104
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v11

    .line 1114
    invoke-static {v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    .line 1116
    .line 1117
    goto :goto_e

    .line 1118
    :goto_f
    add-int/2addr v8, v11

    .line 1119
    goto :goto_d

    .line 1120
    :cond_15
    move-object/from16 v1, p1

    .line 1121
    .line 1122
    invoke-virtual {v9, v1, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->installLocalesForPackages(Ljava/util/Set;Ljava/util/Set;)V

    .line 1123
    .line 1124
    .line 1125
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v0

    .line 1129
    move-object/from16 v1, v22

    .line 1130
    .line 1131
    move-object/from16 v4, v25

    .line 1132
    .line 1133
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v1

    .line 1137
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/Utils;->readCSCVersion()Ljava/lang/String;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v7

    .line 1141
    move-object/from16 v8, v24

    .line 1142
    .line 1143
    invoke-static {v8, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v4

    .line 1147
    const-string/jumbo v8, "updateFotaUpgradeStatus : currentPDAVersion = "

    .line 1148
    .line 1149
    .line 1150
    invoke-static {v8, v1, v2, v7, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v2

    .line 1154
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v2

    .line 1161
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    .line 1163
    .line 1164
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v2

    .line 1168
    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v1

    .line 1172
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1173
    .line 1174
    .line 1175
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v1

    .line 1179
    invoke-interface {v1, v10, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v1

    .line 1183
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1184
    .line 1185
    .line 1186
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v0

    .line 1190
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v0

    .line 1194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1195
    .line 1196
    .line 1197
    :goto_10
    const/4 v2, 0x0

    .line 1198
    :goto_11
    const/4 v7, 0x1

    .line 1199
    goto/16 :goto_12

    .line 1200
    .line 1201
    :cond_16
    move-object/from16 v1, p1

    .line 1202
    .line 1203
    move-object/from16 v4, v19

    .line 1204
    .line 1205
    move-object/from16 v2, v20

    .line 1206
    .line 1207
    move-object/from16 v8, v23

    .line 1208
    .line 1209
    const/4 v3, 0x0

    .line 1210
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 1211
    .line 1212
    .line 1213
    move-result v0

    .line 1214
    if-eqz v0, :cond_17

    .line 1215
    .line 1216
    const-string/jumbo v0, "updateOverlays: Performing incomplete locale change"

    .line 1217
    .line 1218
    .line 1219
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    .line 1221
    .line 1222
    const/4 v2, 0x1

    .line 1223
    iput-boolean v2, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mIsPackageUpdateTask:Z

    .line 1224
    .line 1225
    const/4 v2, 0x0

    .line 1226
    invoke-virtual {v9, v1, v2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->installLocalesForPackages(Ljava/util/Set;Ljava/util/Set;)V

    .line 1227
    .line 1228
    .line 1229
    goto :goto_10

    .line 1230
    :cond_17
    const-string v0, "None"

    .line 1231
    .line 1232
    move-object/from16 v3, p0

    .line 1233
    .line 1234
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v1

    .line 1238
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1239
    .line 1240
    .line 1241
    move-result v0

    .line 1242
    if-nez v0, :cond_18

    .line 1243
    .line 1244
    const-string/jumbo v0, "updateOverlays: Performing incomplete app update"

    .line 1245
    .line 1246
    .line 1247
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    .line 1249
    .line 1250
    const/4 v2, 0x1

    .line 1251
    iput-boolean v2, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mIsPackageUpdateTask:Z

    .line 1252
    .line 1253
    iput-object v1, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mUpdatedPackage:Ljava/lang/String;

    .line 1254
    .line 1255
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v0

    .line 1259
    const/4 v1, 0x0

    .line 1260
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->installLocalesForPackages(Ljava/util/Set;Ljava/util/Set;)V

    .line 1261
    .line 1262
    .line 1263
    goto :goto_10

    .line 1264
    :cond_18
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/Utils;->getSystemLocales()Ljava/util/Set;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v0

    .line 1268
    sget v1, Lcom/samsung/android/localeoverlaymanager/Utils;->sCurrentUserId:I

    .line 1269
    .line 1270
    invoke-static {v1}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->getLocalesForUser(I)Ljava/util/Set;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v1

    .line 1274
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1275
    .line 1276
    .line 1277
    move-object v3, v0

    .line 1278
    check-cast v3, Ljava/util/HashSet;

    .line 1279
    .line 1280
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 1281
    .line 1282
    .line 1283
    move-result v3

    .line 1284
    if-nez v3, :cond_19

    .line 1285
    .line 1286
    const-string/jumbo v3, "updateOverlays: Installing locales for cases like setup skipped in FDM"

    .line 1287
    .line 1288
    .line 1289
    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    .line 1291
    .line 1292
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v2

    .line 1296
    const/4 v3, 0x1

    .line 1297
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v2

    .line 1301
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1302
    .line 1303
    .line 1304
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1305
    .line 1306
    .line 1307
    sget v2, Lcom/samsung/android/localeoverlaymanager/Utils;->sCurrentUserId:I

    .line 1308
    .line 1309
    invoke-static {v2, v1}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->setLocalesForUser(ILjava/util/Set;)V

    .line 1310
    .line 1311
    .line 1312
    const/4 v2, 0x0

    .line 1313
    invoke-virtual {v9, v0, v2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->installLocales(Ljava/util/Set;Ljava/util/Set;)V

    .line 1314
    .line 1315
    .line 1316
    goto :goto_11

    .line 1317
    :cond_19
    const/4 v2, 0x0

    .line 1318
    new-instance v0, Ljava/util/ArrayList;

    .line 1319
    .line 1320
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v9, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->ensureOverlaysEnabled(Ljava/util/ArrayList;)Z

    .line 1324
    .line 1325
    .line 1326
    move-result v0

    .line 1327
    const/4 v1, 0x1

    .line 1328
    xor-int/lit8 v7, v0, 0x1

    .line 1329
    .line 1330
    :goto_12
    invoke-static {v9, v2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mcleanLocaleOverlayForDisable(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/lang/String;)V

    .line 1331
    .line 1332
    .line 1333
    const/4 v1, 0x0

    .line 1334
    :goto_13
    iput-boolean v1, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mIsCleanupInProgress:Z

    .line 1335
    .line 1336
    if-nez v7, :cond_28

    .line 1337
    .line 1338
    invoke-virtual {v9}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 1339
    .line 1340
    .line 1341
    goto/16 :goto_16

    .line 1342
    .line 1343
    :pswitch_4
    move-object v3, v8

    .line 1344
    move-object v7, v10

    .line 1345
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1346
    .line 1347
    if-eqz v0, :cond_28

    .line 1348
    .line 1349
    check-cast v0, Landroid/os/Bundle;

    .line 1350
    .line 1351
    const-string/jumbo v1, "token"

    .line 1352
    .line 1353
    .line 1354
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1355
    .line 1356
    .line 1357
    move-result v1

    .line 1358
    iput v1, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mToken:I

    .line 1359
    .line 1360
    const-string v1, "added_package"

    .line 1361
    .line 1362
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v0

    .line 1366
    iput-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mUpdatedPackage:Ljava/lang/String;

    .line 1367
    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1369
    .line 1370
    const-string v1, "handleMessage: MESSAGE_PARSE_SINGLE_PACKAGE. PackageName = ["

    .line 1371
    .line 1372
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1373
    .line 1374
    .line 1375
    iget-object v1, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mUpdatedPackage:Ljava/lang/String;

    .line 1376
    .line 1377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v0

    .line 1387
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    .line 1389
    .line 1390
    iget-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mUpdatedPackage:Ljava/lang/String;

    .line 1391
    .line 1392
    if-nez v0, :cond_1a

    .line 1393
    .line 1394
    invoke-virtual {v9}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 1395
    .line 1396
    .line 1397
    return-void

    .line 1398
    :cond_1a
    iget-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mContext:Landroid/content/Context;

    .line 1399
    .line 1400
    invoke-static {v0}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v0

    .line 1404
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1405
    .line 1406
    .line 1407
    move-result-object v0

    .line 1408
    iget-object v1, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mUpdatedPackage:Ljava/lang/String;

    .line 1409
    .line 1410
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v0

    .line 1414
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1415
    .line 1416
    .line 1417
    const/4 v1, 0x1

    .line 1418
    iput-boolean v1, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mIsPackageUpdateTask:Z

    .line 1419
    .line 1420
    iget-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mUpdatedPackage:Ljava/lang/String;

    .line 1421
    .line 1422
    invoke-static {v9, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mhasZippedOverlaysPackage(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/lang/String;)Z

    .line 1423
    .line 1424
    .line 1425
    move-result v0

    .line 1426
    if-eqz v0, :cond_1d

    .line 1427
    .line 1428
    iget-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 1429
    .line 1430
    if-nez v0, :cond_1b

    .line 1431
    .line 1432
    invoke-virtual {v9}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->initOverlayManager()V

    .line 1433
    .line 1434
    .line 1435
    :cond_1b
    iget-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mOverlayManager:Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    .line 1436
    .line 1437
    if-eqz v0, :cond_1c

    .line 1438
    .line 1439
    iget-object v1, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mUpdatedPackage:Ljava/lang/String;

    .line 1440
    .line 1441
    sget v2, Lcom/samsung/android/localeoverlaymanager/Utils;->sCurrentUserId:I

    .line 1442
    .line 1443
    iget-object v0, v0, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->mService:Lcom/android/server/om/OverlayManagerService;

    .line 1444
    .line 1445
    invoke-virtual {v0, v1, v2}, Lcom/android/server/om/OverlayManagerService;->updatePackageCache(Ljava/lang/String;I)V

    .line 1446
    .line 1447
    .line 1448
    :cond_1c
    iget-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mUpdatedPackage:Ljava/lang/String;

    .line 1449
    .line 1450
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v0

    .line 1454
    const/4 v1, 0x0

    .line 1455
    invoke-virtual {v9, v0, v1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->installLocalesForPackages(Ljava/util/Set;Ljava/util/Set;)V

    .line 1456
    .line 1457
    .line 1458
    goto/16 :goto_16

    .line 1459
    .line 1460
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1461
    .line 1462
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1463
    .line 1464
    .line 1465
    iget-object v1, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mUpdatedPackage:Ljava/lang/String;

    .line 1466
    .line 1467
    invoke-static {v0, v1, v7}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    .line 1469
    .line 1470
    iget-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mUpdatedPackage:Ljava/lang/String;

    .line 1471
    .line 1472
    invoke-static {v9, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mcleanLocaleOverlayForDisable(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/lang/String;)V

    .line 1473
    .line 1474
    .line 1475
    goto/16 :goto_16

    .line 1476
    .line 1477
    :pswitch_5
    move-object v7, v10

    .line 1478
    move-object v4, v13

    .line 1479
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v0

    .line 1483
    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v0

    .line 1487
    if-nez v0, :cond_1e

    .line 1488
    .line 1489
    const-string v0, "Locale list from config is null."

    .line 1490
    .line 1491
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    .line 1493
    .line 1494
    invoke-virtual {v9}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 1495
    .line 1496
    .line 1497
    return-void

    .line 1498
    :cond_1e
    sget v1, Lcom/samsung/android/localeoverlaymanager/Utils;->sCurrentUserId:I

    .line 1499
    .line 1500
    invoke-static {v1}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->getLocalesForUser(I)Ljava/util/Set;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v1

    .line 1504
    iput-object v1, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mProcessedLocales:Ljava/util/Set;

    .line 1505
    .line 1506
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1507
    .line 1508
    const-string v2, "Locale list from config: "

    .line 1509
    .line 1510
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1514
    .line 1515
    .line 1516
    const-string v2, " old list: "

    .line 1517
    .line 1518
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    .line 1520
    .line 1521
    iget-object v2, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mProcessedLocales:Ljava/util/Set;

    .line 1522
    .line 1523
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1524
    .line 1525
    .line 1526
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v1

    .line 1530
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    .line 1532
    .line 1533
    new-instance v1, Ljava/util/HashSet;

    .line 1534
    .line 1535
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1536
    .line 1537
    .line 1538
    iget-object v2, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mProcessedLocales:Ljava/util/Set;

    .line 1539
    .line 1540
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1541
    .line 1542
    .line 1543
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1544
    .line 1545
    const-string v3, "AddedLocales list from config - "

    .line 1546
    .line 1547
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v2

    .line 1557
    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    .line 1559
    .line 1560
    new-instance v2, Ljava/util/HashSet;

    .line 1561
    .line 1562
    iget-object v3, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mProcessedLocales:Ljava/util/Set;

    .line 1563
    .line 1564
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1565
    .line 1566
    .line 1567
    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1568
    .line 1569
    .line 1570
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1571
    .line 1572
    const-string v5, "DeletedLocales list from config - "

    .line 1573
    .line 1574
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1575
    .line 1576
    .line 1577
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1578
    .line 1579
    .line 1580
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v3

    .line 1584
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    .line 1586
    .line 1587
    iget-object v3, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mProcessedLocales:Ljava/util/Set;

    .line 1588
    .line 1589
    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1590
    .line 1591
    .line 1592
    iget-object v3, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mProcessedLocales:Ljava/util/Set;

    .line 1593
    .line 1594
    invoke-interface {v3, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1595
    .line 1596
    .line 1597
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 1598
    .line 1599
    .line 1600
    move-result v3

    .line 1601
    if-eqz v3, :cond_20

    .line 1602
    .line 1603
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 1604
    .line 1605
    .line 1606
    move-result v3

    .line 1607
    if-eqz v3, :cond_20

    .line 1608
    .line 1609
    invoke-virtual {v9, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->ensureOverlaysEnabled(Ljava/util/ArrayList;)Z

    .line 1610
    .line 1611
    .line 1612
    move-result v0

    .line 1613
    if-eqz v0, :cond_1f

    .line 1614
    .line 1615
    invoke-virtual {v9}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->handleTaskComplete()V

    .line 1616
    .line 1617
    .line 1618
    :cond_1f
    return-void

    .line 1619
    :cond_20
    iget-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mContext:Landroid/content/Context;

    .line 1620
    .line 1621
    invoke-static {v0}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v0

    .line 1625
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v0

    .line 1629
    const/4 v5, 0x1

    .line 1630
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v0

    .line 1634
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1635
    .line 1636
    .line 1637
    invoke-virtual {v9, v1, v2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->installLocales(Ljava/util/Set;Ljava/util/Set;)V

    .line 1638
    .line 1639
    .line 1640
    goto/16 :goto_16

    .line 1641
    .line 1642
    :pswitch_6
    move v6, v5

    .line 1643
    move v5, v7

    .line 1644
    move-object v7, v10

    .line 1645
    iput-boolean v6, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mInProgress:Z

    .line 1646
    .line 1647
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1648
    .line 1649
    if-eqz v0, :cond_28

    .line 1650
    .line 1651
    iput v6, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mRetryCount:I

    .line 1652
    .line 1653
    check-cast v0, Landroid/os/Bundle;

    .line 1654
    .line 1655
    const-string/jumbo v1, "pending_action"

    .line 1656
    .line 1657
    .line 1658
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v1

    .line 1662
    const-string/jumbo v8, "userId"

    .line 1663
    .line 1664
    .line 1665
    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1666
    .line 1667
    .line 1668
    move-result v8

    .line 1669
    invoke-static {v8}, Lcom/samsung/android/localeoverlaymanager/Utils;->setCurrentUserId(I)V

    .line 1670
    .line 1671
    .line 1672
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1673
    .line 1674
    const-string v10, "MESSAGE_PENDING_ACTION --"

    .line 1675
    .line 1676
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1677
    .line 1678
    .line 1679
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    .line 1681
    .line 1682
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v8

    .line 1686
    invoke-static {v7, v8}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    .line 1688
    .line 1689
    if-nez v1, :cond_21

    .line 1690
    .line 1691
    const-string v0, "handlePendingAction: Pending action is null"

    .line 1692
    .line 1693
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    .line 1695
    .line 1696
    goto/16 :goto_16

    .line 1697
    .line 1698
    :cond_21
    const/4 v7, -0x1

    .line 1699
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 1700
    .line 1701
    .line 1702
    move-result v8

    .line 1703
    sparse-switch v8, :sswitch_data_0

    .line 1704
    .line 1705
    .line 1706
    :goto_14
    move v5, v7

    .line 1707
    goto :goto_15

    .line 1708
    :sswitch_0
    const-string v5, "com.samsung.android.localeoverlaymanager.action.SETUP_COMPLETE"

    .line 1709
    .line 1710
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1711
    .line 1712
    .line 1713
    move-result v1

    .line 1714
    if-nez v1, :cond_22

    .line 1715
    .line 1716
    goto :goto_14

    .line 1717
    :cond_22
    move v5, v2

    .line 1718
    goto :goto_15

    .line 1719
    :sswitch_1
    const-string v5, "com.samsung.android.localeoverlaymanager.action.PACKAGE_ADDED"

    .line 1720
    .line 1721
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1722
    .line 1723
    .line 1724
    move-result v1

    .line 1725
    if-nez v1, :cond_23

    .line 1726
    .line 1727
    goto :goto_14

    .line 1728
    :cond_23
    move v5, v3

    .line 1729
    goto :goto_15

    .line 1730
    :sswitch_2
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    .line 1731
    .line 1732
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1733
    .line 1734
    .line 1735
    move-result v1

    .line 1736
    if-nez v1, :cond_24

    .line 1737
    .line 1738
    goto :goto_14

    .line 1739
    :cond_24
    move v5, v4

    .line 1740
    goto :goto_15

    .line 1741
    :sswitch_3
    const-string v5, "com.samsung.android.localeoverlaymanager.action.MSG_HANDLE_PER_APP_LOCALE"

    .line 1742
    .line 1743
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1744
    .line 1745
    .line 1746
    move-result v1

    .line 1747
    if-nez v1, :cond_25

    .line 1748
    .line 1749
    goto :goto_14

    .line 1750
    :cond_25
    const/4 v5, 0x2

    .line 1751
    goto :goto_15

    .line 1752
    :sswitch_4
    const-string v6, "init_on_boot"

    .line 1753
    .line 1754
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1755
    .line 1756
    .line 1757
    move-result v1

    .line 1758
    if-nez v1, :cond_27

    .line 1759
    .line 1760
    goto :goto_14

    .line 1761
    :sswitch_5
    const-string v5, "com.samsung.android.localeoverlaymanager.action.JOB_SCHEDULED"

    .line 1762
    .line 1763
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1764
    .line 1765
    .line 1766
    move-result v1

    .line 1767
    if-nez v1, :cond_26

    .line 1768
    .line 1769
    goto :goto_14

    .line 1770
    :cond_26
    move v5, v6

    .line 1771
    :cond_27
    :goto_15
    packed-switch v5, :pswitch_data_1

    .line 1772
    .line 1773
    .line 1774
    goto :goto_16

    .line 1775
    :pswitch_7
    iget-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 1776
    .line 1777
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1778
    .line 1779
    .line 1780
    goto :goto_16

    .line 1781
    :pswitch_8
    const/4 v1, 0x0

    .line 1782
    invoke-static {v1, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v0

    .line 1786
    iget-object v1, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 1787
    .line 1788
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1789
    .line 1790
    .line 1791
    goto :goto_16

    .line 1792
    :pswitch_9
    const/4 v1, 0x0

    .line 1793
    const/4 v2, 0x2

    .line 1794
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v1

    .line 1798
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1799
    .line 1800
    .line 1801
    iget-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 1802
    .line 1803
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1804
    .line 1805
    .line 1806
    goto :goto_16

    .line 1807
    :pswitch_a
    const/4 v1, 0x0

    .line 1808
    const/4 v2, 0x7

    .line 1809
    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v0

    .line 1813
    iget-object v1, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 1814
    .line 1815
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1816
    .line 1817
    .line 1818
    goto :goto_16

    .line 1819
    :pswitch_b
    const/4 v1, 0x0

    .line 1820
    invoke-static {v1, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v0

    .line 1824
    iget-object v1, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 1825
    .line 1826
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1827
    .line 1828
    .line 1829
    goto :goto_16

    .line 1830
    :pswitch_c
    iget-object v0, v9, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->mHandler:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    .line 1831
    .line 1832
    const/4 v1, 0x6

    .line 1833
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1834
    .line 1835
    .line 1836
    :cond_28
    :goto_16
    return-void

    .line 1837
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    :sswitch_data_0
    .sparse-switch
        -0x659393d6 -> :sswitch_5
        -0x3f3b4add -> :sswitch_4
        -0x2fe7d14e -> :sswitch_3
        -0x122164c -> :sswitch_2
        0x51d7946 -> :sswitch_1
        0x7faafefc -> :sswitch_0
    .end sparse-switch

    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public final hasAnyMessageOrCallbacks()Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x7

    .line 16
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x5

    .line 37
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x6

    .line 44
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    :cond_1
    :goto_0
    return v0
.end method
