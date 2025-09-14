.class public final Lcom/android/server/pm/PersonaManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PersonaManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

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
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0xd

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    iget v5, p0, Lcom/android/server/pm/PersonaManagerService$2;->$r8$classId:I

    .line 8
    .line 9
    packed-switch v5, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const-string p1, "PersonaManagerService"

    .line 25
    .line 26
    const-string p2, "ACTION_BOOT_COMPLETED"

    .line 27
    .line 28
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 34
    .line 35
    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const-string p1, "android.intent.extra.user_handle"

    .line 55
    .line 56
    const/16 v2, -0x2710

    .line 57
    .line 58
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const-string v2, "com.samsung.android.knox.profilepolicy.intent.action.update"

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const-string/jumbo v5, "pN"

    .line 73
    .line 74
    .line 75
    const-string v6, "cTp"

    .line 76
    .line 77
    iget-object v7, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    .line 78
    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    const-string v2, "containerId"

    .line 82
    .line 83
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const-string/jumbo v8, "restrictionName"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    const-string/jumbo v9, "restrictionAllowed"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v9, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    iget-object v10, v7, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 102
    .line 103
    invoke-virtual {v10, v2}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    if-eqz v10, :cond_1

    .line 108
    .line 109
    invoke-virtual {v7, v2}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    iget-object v11, v7, Lcom/android/server/knox/BasicContainerAnalytics;->context:Landroid/content/Context;

    .line 114
    .line 115
    const-string v12, "device_policy"

    .line 116
    .line 117
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    .line 122
    .line 123
    :try_start_0
    new-instance v12, Landroid/os/UserHandle;

    .line 124
    .line 125
    invoke-direct {v12, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11, v12}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    .line 138
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    move-object v2, v1

    .line 142
    :goto_0
    const-string/jumbo v11, "rN"

    .line 143
    .line 144
    .line 145
    const-string v12, "bV"

    .line 146
    .line 147
    invoke-static {v9, v11, v8, v12}, Lcom/android/server/am/FreecessController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    invoke-virtual {v8, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v8, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v2, "PROFILE_POLICY_RESTRICTION"

    .line 158
    .line 159
    invoke-virtual {v7, v8, v2}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_1
    iget-object v2, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    invoke-static {p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isAppSeparationUserId(I)Z

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    .line 176
    .line 177
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-nez v9, :cond_9

    .line 182
    .line 183
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    .line 184
    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    if-eqz v9, :cond_2

    .line 194
    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :cond_2
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 198
    .line 199
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_3

    .line 208
    .line 209
    iget-object p0, v7, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 210
    .line 211
    invoke-virtual {p0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    if-eqz p0, :cond_15

    .line 216
    .line 217
    new-instance p0, Landroid/os/Bundle;

    .line 218
    .line 219
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    invoke-virtual {p0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    .line 228
    .line 229
    const-string p1, "WORK_MODE_ON"

    .line 230
    .line 231
    invoke-virtual {v7, p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_b

    .line 235
    .line 236
    :cond_3
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 237
    .line 238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_4

    .line 247
    .line 248
    iget-object p0, v7, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 249
    .line 250
    invoke-virtual {p0, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    if-eqz p0, :cond_15

    .line 255
    .line 256
    new-instance p0, Landroid/os/Bundle;

    .line 257
    .line 258
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    invoke-virtual {p0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    .line 267
    .line 268
    const-string p1, "WORK_MODE_OFF"

    .line 269
    .line 270
    invoke-virtual {v7, p0, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_b

    .line 274
    .line 275
    :cond_4
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 276
    .line 277
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_7

    .line 286
    .line 287
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 288
    .line 289
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_5

    .line 298
    .line 299
    goto :goto_1

    .line 300
    :cond_5
    const-string/jumbo v1, "samsung.knox.intent.action.rcp.MOVEMENT"

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_6

    .line 312
    .line 313
    const-string/jumbo p0, "move_to_knox"

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2, p0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 317
    .line 318
    .line 319
    move-result p0

    .line 320
    iget-object p2, v7, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 321
    .line 322
    invoke-virtual {p2, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 323
    .line 324
    .line 325
    move-result p2

    .line 326
    if-eqz p2, :cond_15

    .line 327
    .line 328
    new-instance p2, Landroid/os/Bundle;

    .line 329
    .line 330
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v7, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 334
    .line 335
    .line 336
    move-result p1

    .line 337
    invoke-virtual {p2, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    .line 339
    .line 340
    const-string/jumbo p1, "move"

    .line 341
    .line 342
    .line 343
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    .line 345
    .line 346
    const-string p0, "MOVE_TO_KNOX_FILE"

    .line 347
    .line 348
    invoke-virtual {v7, p2, p0}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_b

    .line 352
    .line 353
    :cond_6
    const-string/jumbo v1, "samsung.knox.intent.action.CHANGE_LOCK_TYPE"

    .line 354
    .line 355
    .line 356
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p2

    .line 360
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result p2

    .line 364
    if-eqz p2, :cond_15

    .line 365
    .line 366
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->analyticsHandler:Lcom/android/server/knox/KnoxAnalyticsContainer$AnalyticsHandler;

    .line 367
    .line 368
    invoke-virtual {p0, v0, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 373
    .line 374
    .line 375
    goto/16 :goto_b

    .line 376
    .line 377
    :cond_7
    :goto_1
    iget p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    .line 378
    .line 379
    invoke-virtual {v2, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    if-eqz p1, :cond_8

    .line 384
    .line 385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 386
    .line 387
    .line 388
    move-result-wide p1

    .line 389
    iget-wide v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveTime:J

    .line 390
    .line 391
    sub-long/2addr p1, v0

    .line 392
    iget v0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    .line 393
    .line 394
    iget-object v1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    .line 395
    .line 396
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/knox/KnoxAnalyticsContainer;->checkTimeAndSendAnalytics(ILjava/lang/String;J)V

    .line 397
    .line 398
    .line 399
    :cond_8
    iput v3, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveUserId:I

    .line 400
    .line 401
    const-string p1, ""

    .line 402
    .line 403
    iput-object p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActivePackage:Ljava/lang/String;

    .line 404
    .line 405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 406
    .line 407
    .line 408
    move-result-wide p1

    .line 409
    iput-wide p1, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->mPostActiveTime:J

    .line 410
    .line 411
    goto/16 :goto_b

    .line 412
    .line 413
    :cond_9
    :goto_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    if-nez v0, :cond_a

    .line 418
    .line 419
    goto/16 :goto_b

    .line 420
    .line 421
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 430
    .line 431
    .line 432
    move-result v9

    .line 433
    const-string v11, "add"

    .line 434
    .line 435
    if-eqz v9, :cond_b

    .line 436
    .line 437
    new-instance p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 438
    .line 439
    const-string p1, "KNOX_DUALDAR"

    .line 440
    .line 441
    const-string v1, "DUALDAR_PACKAGE_ADDED"

    .line 442
    .line 443
    invoke-direct {p0, p1, v4, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p0, v11, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    .line 458
    .line 459
    .line 460
    new-instance p2, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    const-string v1, "On Pkg Add, Data values : packageName = "

    .line 463
    .line 464
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v0, ", add = "

    .line 471
    .line 472
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    const-string p2, "PersonaManagerService:DualDARAnalytics"

    .line 483
    .line 484
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    new-instance p1, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    const-string v0, "Payload / "

    .line 490
    .line 491
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .line 507
    .line 508
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 509
    .line 510
    .line 511
    goto/16 :goto_b

    .line 512
    .line 513
    :cond_b
    invoke-virtual {v2, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    if-eqz v2, :cond_15

    .line 518
    .line 519
    if-eqz v8, :cond_10

    .line 520
    .line 521
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object p2

    .line 525
    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result p2

    .line 529
    const-string v2, "PACKAGE_INFO"

    .line 530
    .line 531
    iget-object p0, p0, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    .line 532
    .line 533
    iget-object v6, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 534
    .line 535
    :try_start_1
    invoke-virtual {v6, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getVisibleApps(I)Ljava/util/Set;

    .line 536
    .line 537
    .line 538
    move-result-object v7

    .line 539
    check-cast v7, Landroid/util/ArraySet;

    .line 540
    .line 541
    invoke-virtual {v7}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 542
    .line 543
    .line 544
    move-result-object v7

    .line 545
    move v8, v3

    .line 546
    :cond_c
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 547
    .line 548
    .line 549
    move-result v9

    .line 550
    if-eqz v9, :cond_d

    .line 551
    .line 552
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v9

    .line 556
    check-cast v9, Ljava/lang/String;

    .line 557
    .line 558
    invoke-static {p1, v9}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->getPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 559
    .line 560
    .line 561
    move-result-object v9

    .line 562
    iget-object v10, v6, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->personaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 563
    .line 564
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    invoke-static {v9}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    .line 568
    .line 569
    .line 570
    move-result v9

    .line 571
    if-nez v9, :cond_c

    .line 572
    .line 573
    add-int/2addr v8, v4

    .line 574
    goto :goto_3

    .line 575
    :catch_1
    move-exception p0

    .line 576
    goto :goto_5

    .line 577
    :cond_d
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    if-eqz p1, :cond_e

    .line 582
    .line 583
    const-string v1, "APP_SEPARATION_APP_LIST"

    .line 584
    .line 585
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    :cond_e
    new-instance p1, Landroid/os/Bundle;

    .line 590
    .line 591
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 592
    .line 593
    .line 594
    const-string v4, "e"

    .line 595
    .line 596
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {p1, v11, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 603
    .line 604
    .line 605
    const-string/jumbo p2, "noIP"

    .line 606
    .line 607
    .line 608
    invoke-virtual {p1, p2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    .line 610
    .line 611
    const-string/jumbo p2, "noWP"

    .line 612
    .line 613
    .line 614
    if-nez v1, :cond_f

    .line 615
    .line 616
    goto :goto_4

    .line 617
    :cond_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    :goto_4
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {p0, p1, v2}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 625
    .line 626
    .line 627
    goto/16 :goto_b

    .line 628
    .line 629
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 630
    .line 631
    .line 632
    goto/16 :goto_b

    .line 633
    .line 634
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object p0

    .line 638
    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result p0

    .line 642
    iget-object p2, v7, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 643
    .line 644
    invoke-virtual {p2, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 645
    .line 646
    .line 647
    move-result v2

    .line 648
    if-eqz v2, :cond_15

    .line 649
    .line 650
    iget-object v2, v7, Lcom/android/server/knox/BasicContainerAnalytics;->context:Landroid/content/Context;

    .line 651
    .line 652
    invoke-static {v2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    .line 653
    .line 654
    .line 655
    move-result v2

    .line 656
    if-eqz v2, :cond_11

    .line 657
    .line 658
    goto/16 :goto_b

    .line 659
    .line 660
    :cond_11
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 668
    goto :goto_8

    .line 669
    :catch_2
    move-exception v2

    .line 670
    goto :goto_6

    .line 671
    :catch_3
    move-exception v2

    .line 672
    goto :goto_7

    .line 673
    :goto_6
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 674
    .line 675
    .line 676
    goto :goto_8

    .line 677
    :goto_7
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 678
    .line 679
    .line 680
    :goto_8
    new-instance v2, Landroid/os/Bundle;

    .line 681
    .line 682
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 683
    .line 684
    .line 685
    if-eqz v1, :cond_12

    .line 686
    .line 687
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 688
    .line 689
    .line 690
    move-result v8

    .line 691
    if-nez v8, :cond_12

    .line 692
    .line 693
    const-string v8, "instN"

    .line 694
    .line 695
    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    :cond_12
    if-ne p0, v4, :cond_14

    .line 699
    .line 700
    iget-object p2, p2, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->mContext:Landroid/content/Context;

    .line 701
    .line 702
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 703
    .line 704
    .line 705
    move-result-object p2

    .line 706
    new-instance v1, Landroid/content/Intent;

    .line 707
    .line 708
    const-string v8, "android.view.InputMethod"

    .line 709
    .line 710
    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    const v8, 0x808280

    .line 714
    .line 715
    .line 716
    invoke-virtual {p2, v1, v8, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 717
    .line 718
    .line 719
    move-result-object p2

    .line 720
    move v1, v3

    .line 721
    :goto_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 722
    .line 723
    .line 724
    move-result v8

    .line 725
    if-ge v1, v8, :cond_14

    .line 726
    .line 727
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v8

    .line 731
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 732
    .line 733
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 734
    .line 735
    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 736
    .line 737
    const-string v10, "android.permission.BIND_INPUT_METHOD"

    .line 738
    .line 739
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 740
    .line 741
    .line 742
    move-result v9

    .line 743
    if-eqz v9, :cond_13

    .line 744
    .line 745
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 746
    .line 747
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-result v8

    .line 751
    if-eqz v8, :cond_13

    .line 752
    .line 753
    move v3, v4

    .line 754
    goto :goto_a

    .line 755
    :cond_13
    add-int/2addr v1, v4

    .line 756
    goto :goto_9

    .line 757
    :cond_14
    :goto_a
    invoke-virtual {v7, p1}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 758
    .line 759
    .line 760
    move-result p1

    .line 761
    invoke-virtual {v2, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v2, v11, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 768
    .line 769
    .line 770
    const-string p0, "ime"

    .line 771
    .line 772
    invoke-virtual {v2, p0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 773
    .line 774
    .line 775
    const-string p0, "PACKAGE_CHANGED"

    .line 776
    .line 777
    invoke-virtual {v7, v2, p0}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    :cond_15
    :goto_b
    return-void

    .line 781
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 786
    .line 787
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v0

    .line 791
    if-eqz v0, :cond_16

    .line 792
    .line 793
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 794
    .line 795
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    .line 796
    .line 797
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PersonaManagerService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 798
    .line 799
    .line 800
    :cond_16
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 801
    .line 802
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 807
    .line 808
    .line 809
    move-result v0

    .line 810
    if-eqz v0, :cond_17

    .line 811
    .line 812
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 813
    .line 814
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    .line 815
    .line 816
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PersonaManagerService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 817
    .line 818
    .line 819
    :cond_17
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    .line 820
    .line 821
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 826
    .line 827
    .line 828
    move-result p1

    .line 829
    if-eqz p1, :cond_19

    .line 830
    .line 831
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 832
    .line 833
    .line 834
    move-result-object p1

    .line 835
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object p1

    .line 839
    if-eqz p1, :cond_19

    .line 840
    .line 841
    const-string p2, "com.samsung.android.knox.containercore"

    .line 842
    .line 843
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result p2

    .line 847
    if-eqz p2, :cond_19

    .line 848
    .line 849
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 850
    .line 851
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 852
    .line 853
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 854
    .line 855
    .line 856
    move-result-object p0

    .line 857
    if-nez p0, :cond_18

    .line 858
    .line 859
    goto :goto_c

    .line 860
    :cond_18
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 861
    .line 862
    .line 863
    move-result p2

    .line 864
    const/4 v0, 0x3

    .line 865
    if-ne p2, v0, :cond_19

    .line 866
    .line 867
    const-string p2, "PersonaManagerService"

    .line 868
    .line 869
    const-string v0, "enable container critical app !"

    .line 870
    .line 871
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    .line 873
    .line 874
    invoke-virtual {p0, p1, v4, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 875
    .line 876
    .line 877
    :cond_19
    :goto_c
    return-void

    .line 878
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 879
    .line 880
    const-string v0, "FingerPrint data changed, action: "

    .line 881
    .line 882
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 883
    .line 884
    .line 885
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object p2

    .line 889
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object p1

    .line 896
    const-string p2, "PersonaManagerService"

    .line 897
    .line 898
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    .line 900
    .line 901
    new-instance p1, Landroid/os/Bundle;

    .line 902
    .line 903
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 904
    .line 905
    .line 906
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 907
    .line 908
    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    .line 909
    .line 910
    const-string p2, "android.intent.extra.user_handle"

    .line 911
    .line 912
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 913
    .line 914
    .line 915
    const-string p0, "knox.container.proxy.EVENT_FINGERPRINT_CHANGE"

    .line 916
    .line 917
    invoke-static {p0, p1}, Lcom/samsung/android/knox/ContainerProxy;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 918
    .line 919
    .line 920
    return-void

    .line 921
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 922
    .line 923
    const-string v0, "SetupWizardCompleteReceiver, action:   "

    .line 924
    .line 925
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object p2

    .line 932
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    .line 934
    .line 935
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object p1

    .line 939
    const-string p2, "PersonaManagerService"

    .line 940
    .line 941
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    .line 943
    .line 944
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 945
    .line 946
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 947
    .line 948
    .line 949
    move-result-object p1

    .line 950
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 951
    .line 952
    sget-object p2, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 953
    .line 954
    invoke-virtual {p1, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 955
    .line 956
    .line 957
    move-result-object p1

    .line 958
    if-eqz p1, :cond_23

    .line 959
    .line 960
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 961
    .line 962
    .line 963
    move-result-object p1

    .line 964
    :cond_1a
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 965
    .line 966
    .line 967
    move-result p2

    .line 968
    if-eqz p2, :cond_23

    .line 969
    .line 970
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 971
    .line 972
    .line 973
    move-result-object p2

    .line 974
    check-cast p2, Landroid/content/pm/UserInfo;

    .line 975
    .line 976
    if-eqz p2, :cond_1b

    .line 977
    .line 978
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 979
    .line 980
    .line 981
    move-result v0

    .line 982
    if-eqz v0, :cond_1b

    .line 983
    .line 984
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    .line 985
    .line 986
    .line 987
    move-result p2

    .line 988
    if-eqz p2, :cond_1c

    .line 989
    .line 990
    :cond_1b
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 991
    .line 992
    .line 993
    move-result p2

    .line 994
    if-eqz p2, :cond_1a

    .line 995
    .line 996
    :cond_1c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 997
    .line 998
    .line 999
    move-result-object p2

    .line 1000
    const-string/jumbo v0, "samsung_errorlog_agree"

    .line 1001
    .line 1002
    .line 1003
    invoke-static {p2, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1004
    .line 1005
    .line 1006
    move-result p2

    .line 1007
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v1

    .line 1011
    const-string/jumbo v2, "marketing_info_agree"

    .line 1012
    .line 1013
    .line 1014
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1015
    .line 1016
    .line 1017
    move-result v1

    .line 1018
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    const-string v5, "1. errorLogAgree = "

    .line 1021
    .line 1022
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v4

    .line 1032
    const-string v5, "ContainerDependencyWrapper"

    .line 1033
    .line 1034
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    .line 1036
    .line 1037
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    const-string v6, "1. marketingInfoAgree = "

    .line 1040
    .line 1041
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v4

    .line 1051
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    .line 1053
    .line 1054
    if-nez p2, :cond_1d

    .line 1055
    .line 1056
    if-nez v1, :cond_1d

    .line 1057
    .line 1058
    goto/16 :goto_f

    .line 1059
    .line 1060
    :cond_1d
    const v4, 0x10407be

    .line 1061
    .line 1062
    .line 1063
    const v6, 0x104047e

    .line 1064
    .line 1065
    .line 1066
    const-string v7, "\n - "

    .line 1067
    .line 1068
    if-eqz p2, :cond_1f

    .line 1069
    .line 1070
    if-eqz v1, :cond_1f

    .line 1071
    .line 1072
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1073
    .line 1074
    .line 1075
    move-result-object p2

    .line 1076
    invoke-static {p2, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1080
    .line 1081
    .line 1082
    move-result-object p2

    .line 1083
    invoke-static {p2, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1084
    .line 1085
    .line 1086
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    const-string v1, "2. errorLogAgree = "

    .line 1089
    .line 1090
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v1

    .line 1097
    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1098
    .line 1099
    .line 1100
    move-result v0

    .line 1101
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object p2

    .line 1108
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    .line 1110
    .line 1111
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1112
    .line 1113
    const-string v0, "2. marketingInfoAgree = "

    .line 1114
    .line 1115
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1123
    .line 1124
    .line 1125
    move-result v0

    .line 1126
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1130
    .line 1131
    .line 1132
    move-result-object p2

    .line 1133
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    .line 1135
    .line 1136
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->isTablet()Z

    .line 1137
    .line 1138
    .line 1139
    move-result p2

    .line 1140
    if-eqz p2, :cond_1e

    .line 1141
    .line 1142
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1143
    .line 1144
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1145
    .line 1146
    .line 1147
    const v0, 0x1040cce

    .line 1148
    .line 1149
    .line 1150
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v0

    .line 1154
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v0

    .line 1164
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v0

    .line 1174
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1178
    .line 1179
    .line 1180
    move-result-object p2

    .line 1181
    goto/16 :goto_e

    .line 1182
    .line 1183
    :cond_1e
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1186
    .line 1187
    .line 1188
    const v0, 0x1040ccd

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v0

    .line 1205
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object p2

    .line 1222
    goto/16 :goto_e

    .line 1223
    .line 1224
    :cond_1f
    const v8, 0x1040ccb

    .line 1225
    .line 1226
    .line 1227
    const v9, 0x1040ccc

    .line 1228
    .line 1229
    .line 1230
    if-eqz p2, :cond_21

    .line 1231
    .line 1232
    if-nez v1, :cond_21

    .line 1233
    .line 1234
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1235
    .line 1236
    .line 1237
    move-result-object p2

    .line 1238
    invoke-static {p2, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1239
    .line 1240
    .line 1241
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1242
    .line 1243
    const-string v1, "3. errorLogAgree = "

    .line 1244
    .line 1245
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v1

    .line 1252
    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1253
    .line 1254
    .line 1255
    move-result v0

    .line 1256
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1260
    .line 1261
    .line 1262
    move-result-object p2

    .line 1263
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    .line 1265
    .line 1266
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1267
    .line 1268
    const-string v0, "3. marketingInfoAgree = "

    .line 1269
    .line 1270
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1271
    .line 1272
    .line 1273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v0

    .line 1277
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1278
    .line 1279
    .line 1280
    move-result v0

    .line 1281
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1285
    .line 1286
    .line 1287
    move-result-object p2

    .line 1288
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    .line 1290
    .line 1291
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->isTablet()Z

    .line 1292
    .line 1293
    .line 1294
    move-result p2

    .line 1295
    if-eqz p2, :cond_20

    .line 1296
    .line 1297
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1298
    .line 1299
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v0

    .line 1306
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    .line 1311
    .line 1312
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v0

    .line 1316
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object p2

    .line 1323
    goto/16 :goto_e

    .line 1324
    .line 1325
    :cond_20
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1326
    .line 1327
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v0

    .line 1334
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v0

    .line 1344
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1348
    .line 1349
    .line 1350
    move-result-object p2

    .line 1351
    goto :goto_e

    .line 1352
    :cond_21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1353
    .line 1354
    .line 1355
    move-result-object p2

    .line 1356
    invoke-static {p2, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1357
    .line 1358
    .line 1359
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1360
    .line 1361
    const-string v1, "4. errorLogAgree = "

    .line 1362
    .line 1363
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v1

    .line 1370
    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1371
    .line 1372
    .line 1373
    move-result v0

    .line 1374
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1378
    .line 1379
    .line 1380
    move-result-object p2

    .line 1381
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    .line 1383
    .line 1384
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    const-string v0, "4. marketingInfoAgree = "

    .line 1387
    .line 1388
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1389
    .line 1390
    .line 1391
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v0

    .line 1395
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1396
    .line 1397
    .line 1398
    move-result v0

    .line 1399
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1400
    .line 1401
    .line 1402
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1403
    .line 1404
    .line 1405
    move-result-object p2

    .line 1406
    invoke-static {v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    .line 1408
    .line 1409
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->isTablet()Z

    .line 1410
    .line 1411
    .line 1412
    move-result p2

    .line 1413
    if-eqz p2, :cond_22

    .line 1414
    .line 1415
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1416
    .line 1417
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1418
    .line 1419
    .line 1420
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v0

    .line 1424
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    .line 1429
    .line 1430
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v0

    .line 1434
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1438
    .line 1439
    .line 1440
    move-result-object p2

    .line 1441
    goto :goto_e

    .line 1442
    :cond_22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 1443
    .line 1444
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v0

    .line 1451
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1455
    .line 1456
    .line 1457
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v0

    .line 1461
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    .line 1463
    .line 1464
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1465
    .line 1466
    .line 1467
    move-result-object p2

    .line 1468
    :goto_e
    invoke-static {p0, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1469
    .line 1470
    .line 1471
    move-result-object p2

    .line 1472
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 1473
    .line 1474
    .line 1475
    goto/16 :goto_d

    .line 1476
    .line 1477
    :cond_23
    :goto_f
    return-void

    .line 1478
    :pswitch_4
    const-string v5, "caller_id_to_show_"

    .line 1479
    .line 1480
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v6

    .line 1484
    const-string v7, "android.intent.extra.user_handle"

    .line 1485
    .line 1486
    const/4 v8, -0x1

    .line 1487
    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1488
    .line 1489
    .line 1490
    move-result v7

    .line 1491
    const-string v9, "PersonaManagerService"

    .line 1492
    .line 1493
    const-string v10, "UserReceiver.onReceive() {action:"

    .line 1494
    .line 1495
    const-string v11, " userHandle:"

    .line 1496
    .line 1497
    const-string/jumbo v12, "}"

    .line 1498
    .line 1499
    .line 1500
    invoke-static {v7, v10, v6, v11, v12}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v10

    .line 1504
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    .line 1506
    .line 1507
    const-string v9, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 1508
    .line 1509
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1510
    .line 1511
    .line 1512
    move-result v9

    .line 1513
    const-wide/32 v10, 0xea60

    .line 1514
    .line 1515
    .line 1516
    if-eqz v9, :cond_29

    .line 1517
    .line 1518
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1519
    .line 1520
    iput-boolean v3, v0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    .line 1521
    .line 1522
    const-string v0, "android.intent.extra.USER"

    .line 1523
    .line 1524
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v0

    .line 1528
    check-cast v0, Landroid/os/UserHandle;

    .line 1529
    .line 1530
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1531
    .line 1532
    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    .line 1533
    .line 1534
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1535
    .line 1536
    .line 1537
    move-result v6

    .line 1538
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1539
    .line 1540
    .line 1541
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 1542
    .line 1543
    .line 1544
    move-result v2

    .line 1545
    if-eqz v2, :cond_24

    .line 1546
    .line 1547
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1548
    .line 1549
    .line 1550
    move-result v2

    .line 1551
    const/16 v6, 0x12

    .line 1552
    .line 1553
    invoke-static {p1, v2, v6}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 1554
    .line 1555
    .line 1556
    :cond_24
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1557
    .line 1558
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 1559
    .line 1560
    .line 1561
    move-result-object p1

    .line 1562
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1563
    .line 1564
    .line 1565
    move-result v2

    .line 1566
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 1567
    .line 1568
    .line 1569
    move-result-object p1

    .line 1570
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1571
    .line 1572
    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 1573
    .line 1574
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v2

    .line 1578
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1579
    .line 1580
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1581
    .line 1582
    .line 1583
    iget-object v5, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1584
    .line 1585
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1586
    .line 1587
    .line 1588
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v5

    .line 1592
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v5

    .line 1596
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1597
    .line 1598
    iget-object v6, v6, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Lcom/android/server/pm/PersonaManagerService$7;

    .line 1599
    .line 1600
    invoke-virtual {v2, v5, v3, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1601
    .line 1602
    .line 1603
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1604
    .line 1605
    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService;->containerNames:Ljava/util/HashSet;

    .line 1606
    .line 1607
    iget-object v3, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1608
    .line 1609
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1610
    .line 1611
    .line 1612
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1613
    .line 1614
    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 1615
    .line 1616
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1617
    .line 1618
    .line 1619
    move-result v3

    .line 1620
    invoke-virtual {v2, v3}, Lcom/android/server/knox/KnoxAnalyticsContainer;->knoxAnalyticsContainer(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1621
    .line 1622
    .line 1623
    goto :goto_10

    .line 1624
    :catch_4
    move-exception v2

    .line 1625
    const-string v3, "PersonaManagerService"

    .line 1626
    .line 1627
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1628
    .line 1629
    const-string v6, "DUAL_DAR_USER_ADDED KA failed : "

    .line 1630
    .line 1631
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1632
    .line 1633
    .line 1634
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1635
    .line 1636
    .line 1637
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v2

    .line 1641
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    .line 1643
    .line 1644
    :goto_10
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1645
    .line 1646
    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 1647
    .line 1648
    new-instance v3, Lcom/android/server/pm/PersonaManagerService$2$1;

    .line 1649
    .line 1650
    invoke-direct {v3, p0, v0, p2}, Lcom/android/server/pm/PersonaManagerService$2$1;-><init>(Lcom/android/server/pm/PersonaManagerService$2;Landroid/os/UserHandle;Landroid/content/Intent;)V

    .line 1651
    .line 1652
    .line 1653
    invoke-virtual {v2, v3, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1654
    .line 1655
    .line 1656
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1657
    .line 1658
    .line 1659
    move-result p2

    .line 1660
    const/16 v2, 0x5f

    .line 1661
    .line 1662
    if-ge p2, v2, :cond_25

    .line 1663
    .line 1664
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1665
    .line 1666
    invoke-virtual {p2}, Lcom/android/server/pm/PersonaManagerService;->registerPackageReceiver()V

    .line 1667
    .line 1668
    .line 1669
    :cond_25
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1670
    .line 1671
    invoke-virtual {p2}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 1672
    .line 1673
    .line 1674
    move-result p2

    .line 1675
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1676
    .line 1677
    if-ne p2, v2, :cond_26

    .line 1678
    .line 1679
    const-string p2, "PersonaManagerService"

    .line 1680
    .line 1681
    const-string v2, "App Separation user added. Notify to KSP"

    .line 1682
    .line 1683
    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    .line 1685
    .line 1686
    new-instance p2, Landroid/content/Intent;

    .line 1687
    .line 1688
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 1689
    .line 1690
    .line 1691
    const-string v2, "com.samsung.android.knox.intent.action.SEPARATION_ACTION_RETURN"

    .line 1692
    .line 1693
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1694
    .line 1695
    .line 1696
    const-string/jumbo v2, "type"

    .line 1697
    .line 1698
    .line 1699
    const-string v3, "activate"

    .line 1700
    .line 1701
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1702
    .line 1703
    .line 1704
    const-string/jumbo v2, "status"

    .line 1705
    .line 1706
    .line 1707
    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1708
    .line 1709
    .line 1710
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1711
    .line 1712
    invoke-virtual {v2, p2}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    .line 1713
    .line 1714
    .line 1715
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1716
    .line 1717
    invoke-virtual {p2}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    .line 1718
    .line 1719
    .line 1720
    :cond_26
    :try_start_5
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1721
    .line 1722
    iget-object p2, p2, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 1723
    .line 1724
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1725
    .line 1726
    .line 1727
    move-result v2

    .line 1728
    sget-object v3, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1729
    .line 1730
    if-nez v3, :cond_27

    .line 1731
    .line 1732
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1733
    .line 1734
    invoke-direct {v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 1735
    .line 1736
    .line 1737
    sput-object v3, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1738
    .line 1739
    :cond_27
    sget-object p2, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1740
    .line 1741
    invoke-virtual {p2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 1742
    .line 1743
    .line 1744
    move-result p2

    .line 1745
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v2

    .line 1749
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1750
    .line 1751
    iget-object v3, v3, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 1752
    .line 1753
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1754
    .line 1755
    .line 1756
    move-result v5

    .line 1757
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    .line 1758
    .line 1759
    invoke-direct {v6, p2, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 1760
    .line 1761
    .line 1762
    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    .line 1763
    .line 1764
    .line 1765
    move-result-object p2

    .line 1766
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    .line 1767
    .line 1768
    .line 1769
    move-result-object p2

    .line 1770
    invoke-virtual {p2, v4, v1}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->enableNFC(ZLandroid/os/Bundle;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 1771
    .line 1772
    .line 1773
    goto :goto_11

    .line 1774
    :catch_5
    move-exception p2

    .line 1775
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1776
    .line 1777
    .line 1778
    :goto_11
    :try_start_6
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1779
    .line 1780
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1781
    .line 1782
    .line 1783
    move-result p2

    .line 1784
    invoke-static {p0, p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$menableMyFilesLauncherActivity(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1785
    .line 1786
    .line 1787
    goto :goto_12

    .line 1788
    :catch_6
    move-exception p0

    .line 1789
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1790
    .line 1791
    .line 1792
    :goto_12
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1793
    .line 1794
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 1795
    .line 1796
    .line 1797
    move-result p0

    .line 1798
    if-eqz p0, :cond_28

    .line 1799
    .line 1800
    const-string p0, "PersonaManagerService"

    .line 1801
    .line 1802
    const-string/jumbo p1, "set secure folder available state true"

    .line 1803
    .line 1804
    .line 1805
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    .line 1807
    .line 1808
    const-string/jumbo p0, "persist.sys.knox.secure_folder_state_available"

    .line 1809
    .line 1810
    .line 1811
    const-string/jumbo p1, "true"

    .line 1812
    .line 1813
    .line 1814
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    .line 1816
    .line 1817
    :cond_28
    const-string p0, "PersonaManagerService"

    .line 1818
    .line 1819
    const-string p1, "ACTION_MANAGED_PROFILE_ADDED :: SystemProperties.set persist.sys.knox.provisioning_in_progress 0"

    .line 1820
    .line 1821
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    .line 1823
    .line 1824
    const-string/jumbo p0, "persist.sys.knox.provisioning_in_progress"

    .line 1825
    .line 1826
    .line 1827
    const-string p1, "0"

    .line 1828
    .line 1829
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    .line 1831
    .line 1832
    goto/16 :goto_18

    .line 1833
    .line 1834
    :cond_29
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 1835
    .line 1836
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1837
    .line 1838
    .line 1839
    move-result v1

    .line 1840
    if-eqz v1, :cond_2c

    .line 1841
    .line 1842
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1843
    .line 1844
    invoke-virtual {p2}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 1845
    .line 1846
    .line 1847
    move-result-object p2

    .line 1848
    invoke-virtual {p2, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 1849
    .line 1850
    .line 1851
    move-result-object p2

    .line 1852
    new-instance v0, Landroid/os/Bundle;

    .line 1853
    .line 1854
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1855
    .line 1856
    .line 1857
    sget-object v1, Landroid/os/ContainerStateReceiver;->EXTRA_USER_INFO:Ljava/lang/String;

    .line 1858
    .line 1859
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1860
    .line 1861
    .line 1862
    const/16 p2, 0xa

    .line 1863
    .line 1864
    invoke-static {p1, v7, p2, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;IILandroid/os/Bundle;)V

    .line 1865
    .line 1866
    .line 1867
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1868
    .line 1869
    iget-object v1, p1, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 1870
    .line 1871
    monitor-enter v1

    .line 1872
    :try_start_7
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1873
    .line 1874
    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 1875
    .line 1876
    invoke-virtual {p1, v7}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1877
    .line 1878
    .line 1879
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1880
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1881
    .line 1882
    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    .line 1883
    .line 1884
    monitor-enter p1

    .line 1885
    :try_start_8
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1886
    .line 1887
    iget-object p2, p2, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    .line 1888
    .line 1889
    invoke-virtual {p2, v7}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1890
    .line 1891
    .line 1892
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1893
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1894
    .line 1895
    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1896
    .line 1897
    invoke-virtual {p1, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 1898
    .line 1899
    .line 1900
    move-result-object p1

    .line 1901
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1902
    .line 1903
    iget-object p2, p2, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    .line 1904
    .line 1905
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1906
    .line 1907
    iget-object v1, p2, Lcom/android/server/knox/KnoxAnalyticsContainer;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 1908
    .line 1909
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1910
    .line 1911
    .line 1912
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 1913
    .line 1914
    .line 1915
    move-result v1

    .line 1916
    if-eqz v1, :cond_2a

    .line 1917
    .line 1918
    goto :goto_13

    .line 1919
    :cond_2a
    iget-object p2, p2, Lcom/android/server/knox/KnoxAnalyticsContainer;->basicContainerAnalytics:Lcom/android/server/knox/BasicContainerAnalytics;

    .line 1920
    .line 1921
    iget-object v1, p2, Lcom/android/server/knox/BasicContainerAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    .line 1922
    .line 1923
    invoke-virtual {v1, v0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;->isLoggingAllowedForUser(I)Z

    .line 1924
    .line 1925
    .line 1926
    move-result v1

    .line 1927
    if-eqz v1, :cond_2b

    .line 1928
    .line 1929
    new-instance v1, Landroid/os/Bundle;

    .line 1930
    .line 1931
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1932
    .line 1933
    .line 1934
    const-string v2, "cTp"

    .line 1935
    .line 1936
    invoke-virtual {p2, v0}, Lcom/android/server/knox/BasicContainerAnalytics;->getContainerType(I)I

    .line 1937
    .line 1938
    .line 1939
    move-result v0

    .line 1940
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1941
    .line 1942
    .line 1943
    const-string v0, "WORK_PROFILE_REMOVED"

    .line 1944
    .line 1945
    invoke-virtual {p2, v1, v0}, Lcom/android/server/knox/BasicContainerAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1946
    .line 1947
    .line 1948
    :cond_2b
    :goto_13
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1949
    .line 1950
    iput-boolean v3, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    .line 1951
    .line 1952
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1953
    .line 1954
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 1955
    .line 1956
    .line 1957
    move-result p0

    .line 1958
    if-eqz p0, :cond_3a

    .line 1959
    .line 1960
    const-string p0, "PersonaManagerService"

    .line 1961
    .line 1962
    const-string/jumbo p1, "set secure folder available state false"

    .line 1963
    .line 1964
    .line 1965
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    .line 1967
    .line 1968
    const-string/jumbo p0, "persist.sys.knox.secure_folder_state_available"

    .line 1969
    .line 1970
    .line 1971
    const-string p1, "false"

    .line 1972
    .line 1973
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    .line 1975
    .line 1976
    goto/16 :goto_18

    .line 1977
    .line 1978
    :catchall_0
    move-exception p0

    .line 1979
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1980
    throw p0

    .line 1981
    :catchall_1
    move-exception p0

    .line 1982
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1983
    throw p0

    .line 1984
    :cond_2c
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 1985
    .line 1986
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1987
    .line 1988
    .line 1989
    move-result v1

    .line 1990
    const/4 v5, 0x5

    .line 1991
    if-eqz v1, :cond_31

    .line 1992
    .line 1993
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1994
    .line 1995
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 1996
    .line 1997
    .line 1998
    move-result-object p1

    .line 1999
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    .line 2000
    .line 2001
    .line 2002
    move-result-object p1

    .line 2003
    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2004
    .line 2005
    .line 2006
    move-result p2

    .line 2007
    if-ge v3, p2, :cond_2e

    .line 2008
    .line 2009
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2010
    .line 2011
    .line 2012
    move-result-object p2

    .line 2013
    check-cast p2, Ljava/lang/Integer;

    .line 2014
    .line 2015
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 2016
    .line 2017
    .line 2018
    move-result p2

    .line 2019
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2020
    .line 2021
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    .line 2022
    .line 2023
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2024
    .line 2025
    .line 2026
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 2027
    .line 2028
    .line 2029
    move-result v0

    .line 2030
    if-eqz v0, :cond_2d

    .line 2031
    .line 2032
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 2033
    .line 2034
    .line 2035
    move-result v0

    .line 2036
    if-nez v0, :cond_2d

    .line 2037
    .line 2038
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2039
    .line 2040
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2041
    .line 2042
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 2043
    .line 2044
    .line 2045
    move-result v0

    .line 2046
    if-nez v0, :cond_2d

    .line 2047
    .line 2048
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2049
    .line 2050
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2051
    .line 2052
    invoke-static {v0, p2, v5}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2053
    .line 2054
    .line 2055
    :cond_2d
    add-int/2addr v3, v4

    .line 2056
    goto :goto_14

    .line 2057
    :cond_2e
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2058
    .line 2059
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2060
    .line 2061
    .line 2062
    const-string/jumbo p1, "persist.sys.knox.foresight.version"

    .line 2063
    .line 2064
    .line 2065
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 2066
    .line 2067
    .line 2068
    move-result-object p1

    .line 2069
    if-eqz p1, :cond_3a

    .line 2070
    .line 2071
    const-string p2, ""

    .line 2072
    .line 2073
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2074
    .line 2075
    .line 2076
    move-result p1

    .line 2077
    if-nez p1, :cond_3a

    .line 2078
    .line 2079
    :try_start_b
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 2080
    .line 2081
    const-string/jumbo v0, "yyyy.MM.dd"

    .line 2082
    .line 2083
    .line 2084
    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2085
    .line 2086
    .line 2087
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2088
    .line 2089
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2090
    .line 2091
    .line 2092
    move-result-object v0

    .line 2093
    const-string v1, "knox_foresight_regulary_check"

    .line 2094
    .line 2095
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2096
    .line 2097
    .line 2098
    move-result-object v2

    .line 2099
    new-instance v3, Ljava/util/Date;

    .line 2100
    .line 2101
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 2102
    .line 2103
    .line 2104
    invoke-virtual {p1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 2105
    .line 2106
    .line 2107
    move-result-object p1

    .line 2108
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2109
    .line 2110
    .line 2111
    move-result p2

    .line 2112
    if-nez p2, :cond_30

    .line 2113
    .line 2114
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2115
    .line 2116
    .line 2117
    move-result p2

    .line 2118
    if-nez p2, :cond_2f

    .line 2119
    .line 2120
    goto :goto_15

    .line 2121
    :cond_2f
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    .line 2122
    .line 2123
    const-string p2, "!isVersionCheckNeeded"

    .line 2124
    .line 2125
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    .line 2127
    .line 2128
    goto/16 :goto_18

    .line 2129
    .line 2130
    :catch_7
    move-exception p1

    .line 2131
    goto :goto_16

    .line 2132
    :cond_30
    :goto_15
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    .line 2133
    .line 2134
    const-string v2, "isVersionCheckNeeded"

    .line 2135
    .line 2136
    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    .line 2138
    .line 2139
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 2140
    .line 2141
    .line 2142
    move-result-object p2

    .line 2143
    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2144
    .line 2145
    .line 2146
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 2147
    .line 2148
    .line 2149
    new-instance p1, Landroid/content/Intent;

    .line 2150
    .line 2151
    const-string p2, "com.samsung.android.knox.containercore.action.FORESIGHT_COMMAND"

    .line 2152
    .line 2153
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2154
    .line 2155
    .line 2156
    const-string p2, "com.samsung.android.knox.containercore"

    .line 2157
    .line 2158
    const-string v0, "com.samsung.android.knox.containercore.KnoxForesightCommandReceiver"

    .line 2159
    .line 2160
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2161
    .line 2162
    .line 2163
    const-string p2, "check"

    .line 2164
    .line 2165
    invoke-virtual {p1, p2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2166
    .line 2167
    .line 2168
    const/high16 p2, 0x10000000

    .line 2169
    .line 2170
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2171
    .line 2172
    .line 2173
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2174
    .line 2175
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2176
    .line 2177
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2178
    .line 2179
    .line 2180
    goto/16 :goto_18

    .line 2181
    .line 2182
    :goto_16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2183
    .line 2184
    .line 2185
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    .line 2186
    .line 2187
    const-string p1, "!isVersionCheckNeeded exception."

    .line 2188
    .line 2189
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    .line 2191
    .line 2192
    goto/16 :goto_18

    .line 2193
    .line 2194
    :cond_31
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 2195
    .line 2196
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2197
    .line 2198
    .line 2199
    move-result v1

    .line 2200
    if-eqz v1, :cond_33

    .line 2201
    .line 2202
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2203
    .line 2204
    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    .line 2205
    .line 2206
    .line 2207
    move-result-object p1

    .line 2208
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    .line 2209
    .line 2210
    .line 2211
    move-result-object p1

    .line 2212
    :goto_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2213
    .line 2214
    .line 2215
    move-result p2

    .line 2216
    if-ge v3, p2, :cond_3a

    .line 2217
    .line 2218
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2219
    .line 2220
    .line 2221
    move-result-object p2

    .line 2222
    check-cast p2, Ljava/lang/Integer;

    .line 2223
    .line 2224
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 2225
    .line 2226
    .line 2227
    move-result p2

    .line 2228
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2229
    .line 2230
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    .line 2231
    .line 2232
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2233
    .line 2234
    .line 2235
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 2236
    .line 2237
    .line 2238
    move-result v0

    .line 2239
    if-eqz v0, :cond_32

    .line 2240
    .line 2241
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 2242
    .line 2243
    .line 2244
    move-result v0

    .line 2245
    if-nez v0, :cond_32

    .line 2246
    .line 2247
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2248
    .line 2249
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2250
    .line 2251
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 2252
    .line 2253
    .line 2254
    move-result v0

    .line 2255
    if-nez v0, :cond_32

    .line 2256
    .line 2257
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2258
    .line 2259
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2260
    .line 2261
    const/16 v1, 0x13

    .line 2262
    .line 2263
    invoke-static {v0, p2, v1}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2264
    .line 2265
    .line 2266
    :cond_32
    add-int/2addr v3, v4

    .line 2267
    goto :goto_17

    .line 2268
    :cond_33
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 2269
    .line 2270
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2271
    .line 2272
    .line 2273
    move-result v1

    .line 2274
    if-eqz v1, :cond_34

    .line 2275
    .line 2276
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2277
    .line 2278
    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 2279
    .line 2280
    invoke-static {p1, v7, v5}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2281
    .line 2282
    .line 2283
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2284
    .line 2285
    iget-object v1, p1, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 2286
    .line 2287
    monitor-enter v1

    .line 2288
    :try_start_c
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2289
    .line 2290
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 2291
    .line 2292
    invoke-virtual {p0, v7, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2293
    .line 2294
    .line 2295
    monitor-exit v1

    .line 2296
    goto/16 :goto_18

    .line 2297
    .line 2298
    :catchall_2
    move-exception p0

    .line 2299
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2300
    throw p0

    .line 2301
    :cond_34
    const-string v1, "android.intent.action.USER_STOPPED"

    .line 2302
    .line 2303
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2304
    .line 2305
    .line 2306
    move-result v1

    .line 2307
    if-eqz v1, :cond_35

    .line 2308
    .line 2309
    invoke-static {p1, v7, v0}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2310
    .line 2311
    .line 2312
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2313
    .line 2314
    iget-object v0, p1, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    .line 2315
    .line 2316
    monitor-enter v0

    .line 2317
    :try_start_d
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2318
    .line 2319
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    .line 2320
    .line 2321
    invoke-virtual {p0, v7, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2322
    .line 2323
    .line 2324
    monitor-exit v0

    .line 2325
    goto/16 :goto_18

    .line 2326
    .line 2327
    :catchall_3
    move-exception p0

    .line 2328
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 2329
    throw p0

    .line 2330
    :cond_35
    const-string v0, "android.app.action.DEVICE_OWNER_CHANGED"

    .line 2331
    .line 2332
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2333
    .line 2334
    .line 2335
    move-result v0

    .line 2336
    if-eqz v0, :cond_37

    .line 2337
    .line 2338
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 2339
    .line 2340
    .line 2341
    move-result v0

    .line 2342
    if-eqz v0, :cond_36

    .line 2343
    .line 2344
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2345
    .line 2346
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->registerPackageReceiver()V

    .line 2347
    .line 2348
    .line 2349
    invoke-static {p1, v3, v2}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 2350
    .line 2351
    .line 2352
    :cond_36
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$2;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2353
    .line 2354
    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 2355
    .line 2356
    new-instance v0, Lcom/android/server/pm/PersonaManagerService$2$2;

    .line 2357
    .line 2358
    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/PersonaManagerService$2$2;-><init>(Lcom/android/server/pm/PersonaManagerService$2;Landroid/content/Intent;)V

    .line 2359
    .line 2360
    .line 2361
    invoke-virtual {p1, v0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2362
    .line 2363
    .line 2364
    const-string p0, "PersonaManagerService"

    .line 2365
    .line 2366
    const-string p1, "ACTION_DEVICE_OWNER_CHANGED :: SystemProperties.set persist.sys.knox.provisioning_in_progress 0"

    .line 2367
    .line 2368
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    .line 2370
    .line 2371
    const-string/jumbo p0, "persist.sys.knox.provisioning_in_progress"

    .line 2372
    .line 2373
    .line 2374
    const-string p1, "0"

    .line 2375
    .line 2376
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    .line 2378
    .line 2379
    goto :goto_18

    .line 2380
    :cond_37
    const-string p0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 2381
    .line 2382
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2383
    .line 2384
    .line 2385
    move-result p0

    .line 2386
    if-eqz p0, :cond_38

    .line 2387
    .line 2388
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 2389
    .line 2390
    .line 2391
    move-result p0

    .line 2392
    if-eqz p0, :cond_3a

    .line 2393
    .line 2394
    const-string p0, "PersonaManagerService"

    .line 2395
    .line 2396
    const-string/jumbo p1, "set secure folder available state true"

    .line 2397
    .line 2398
    .line 2399
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    .line 2401
    .line 2402
    const-string/jumbo p0, "persist.sys.knox.secure_folder_state_available"

    .line 2403
    .line 2404
    .line 2405
    const-string/jumbo p1, "true"

    .line 2406
    .line 2407
    .line 2408
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    .line 2410
    .line 2411
    goto :goto_18

    .line 2412
    :cond_38
    const-string p0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 2413
    .line 2414
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2415
    .line 2416
    .line 2417
    move-result p0

    .line 2418
    if-eqz p0, :cond_3a

    .line 2419
    .line 2420
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 2421
    .line 2422
    .line 2423
    move-result p0

    .line 2424
    if-eqz p0, :cond_39

    .line 2425
    .line 2426
    const-string p0, "PersonaManagerService"

    .line 2427
    .line 2428
    const-string/jumbo p1, "set secure folder available state false"

    .line 2429
    .line 2430
    .line 2431
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    .line 2433
    .line 2434
    const-string/jumbo p0, "persist.sys.knox.secure_folder_state_available"

    .line 2435
    .line 2436
    .line 2437
    const-string p1, "false"

    .line 2438
    .line 2439
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    .line 2441
    .line 2442
    goto :goto_18

    .line 2443
    :cond_39
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 2444
    .line 2445
    .line 2446
    move-result p0

    .line 2447
    if-eqz p0, :cond_3a

    .line 2448
    .line 2449
    const-string p0, "PersonaManagerService"

    .line 2450
    .line 2451
    const-string/jumbo p1, "managed profile unavailable state"

    .line 2452
    .line 2453
    .line 2454
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    .line 2456
    .line 2457
    const-string p0, "activity_task"

    .line 2458
    .line 2459
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 2460
    .line 2461
    .line 2462
    move-result-object p0

    .line 2463
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2464
    .line 2465
    if-eqz p0, :cond_3a

    .line 2466
    .line 2467
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    .line 2468
    .line 2469
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->removeTaskByCmpName()V

    .line 2470
    .line 2471
    .line 2472
    :cond_3a
    :goto_18
    return-void

    .line 2473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
