.class public final Lcom/android/server/pm/PackageInstallerSession$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const-string v3, "android.content.pm.extra.PRE_APPROVAL"

    .line 8
    .line 9
    const-string v4, "android.content.pm.extra.STATUS"

    .line 10
    .line 11
    const-string v5, "android.content.pm.extra.SESSION_ID"

    .line 12
    .line 13
    const-string v6, "PackageInstallerSession"

    .line 14
    .line 15
    const/4 v7, 0x3

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x1

    .line 19
    packed-switch v2, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    :catch_0
    :goto_0
    move v1, v10

    .line 23
    goto/16 :goto_8

    .line 24
    .line 25
    :pswitch_0
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 26
    .line 27
    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntentIfNeeded(Z)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v11, v0, Lcom/android/server/pm/PackageInstallerSession;->mPreapprovalRemoteStatusReceiver:Landroid/content/IntentSender;

    .line 38
    .line 39
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-nez v11, :cond_1

    .line 41
    .line 42
    const-string v0, "Skip preapproval intent sending because IntentSender is null."

    .line 43
    .line 44
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    new-instance v14, Landroid/content/Intent;

    .line 49
    .line 50
    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 51
    .line 52
    .line 53
    iget v1, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 54
    .line 55
    invoke-virtual {v14, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v14, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v14, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    :try_start_1
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, v9}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 69
    .line 70
    .line 71
    iget-object v12, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    move-result-object v18

    .line 77
    const/4 v13, 0x0

    .line 78
    const/4 v15, 0x0

    .line 79
    const/16 v16, 0x0

    .line 80
    .line 81
    const/16 v17, 0x0

    .line 82
    .line 83
    invoke-virtual/range {v11 .. v18}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw v0

    .line 90
    :pswitch_1
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 91
    .line 92
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Ljava/lang/String;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 97
    .line 98
    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 105
    .line 106
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v2, Ljava/lang/String;

    .line 109
    .line 110
    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v7, Ljava/lang/String;

    .line 113
    .line 114
    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v8, Landroid/os/Bundle;

    .line 117
    .line 118
    iget-object v11, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 119
    .line 120
    move-object v12, v11

    .line 121
    check-cast v12, Landroid/content/IntentSender;

    .line 122
    .line 123
    iget v11, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 124
    .line 125
    iget v13, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 126
    .line 127
    if-ne v13, v10, :cond_2

    .line 128
    .line 129
    move v13, v10

    .line 130
    goto :goto_1

    .line 131
    :cond_2
    move v13, v9

    .line 132
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 136
    .line 137
    iget-object v14, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    iget v15, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 146
    .line 147
    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 148
    .line 149
    if-ne v10, v11, :cond_5

    .line 150
    .line 151
    if-eqz v1, :cond_5

    .line 152
    .line 153
    if-eqz v8, :cond_3

    .line 154
    .line 155
    const-string v1, "android.intent.extra.REPLACING"

    .line 156
    .line 157
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_3

    .line 162
    .line 163
    move v1, v10

    .line 164
    goto :goto_2

    .line 165
    :cond_3
    move v1, v9

    .line 166
    :goto_2
    const-class v10, Landroid/app/admin/DevicePolicyManager;

    .line 167
    .line 168
    invoke-virtual {v14, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 173
    .line 174
    if-eqz v1, :cond_4

    .line 175
    .line 176
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    new-instance v10, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;

    .line 181
    .line 182
    invoke-direct {v10, v14, v9}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;I)V

    .line 183
    .line 184
    .line 185
    const-string v9, "Core.PACKAGE_UPDATED_BY_DO"

    .line 186
    .line 187
    invoke-virtual {v1, v9, v10}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    goto :goto_3

    .line 192
    :cond_4
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    new-instance v9, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;

    .line 197
    .line 198
    const/4 v10, 0x1

    .line 199
    invoke-direct {v9, v14, v10}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;I)V

    .line 200
    .line 201
    .line 202
    const-string v10, "Core.PACKAGE_INSTALLED_BY_DO"

    .line 203
    .line 204
    invoke-virtual {v1, v10, v9}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    :goto_3
    invoke-static {v0, v14, v1, v2}, Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    if-eqz v1, :cond_5

    .line 213
    .line 214
    const-string/jumbo v9, "notification"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v14, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    check-cast v9, Landroid/app/NotificationManager;

    .line 222
    .line 223
    const/16 v10, 0x15

    .line 224
    .line 225
    invoke-virtual {v9, v2, v10, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 226
    .line 227
    .line 228
    :cond_5
    new-instance v1, Landroid/content/Intent;

    .line 229
    .line 230
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string v9, "android.content.pm.extra.PACKAGE_NAME"

    .line 234
    .line 235
    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    invoke-static {v11}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    .line 247
    .line 248
    const-string v4, "android.content.pm.extra.STATUS_MESSAGE"

    .line 249
    .line 250
    invoke-static {v11, v7}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    .line 256
    .line 257
    const-string v4, "android.content.pm.extra.LEGACY_STATUS"

    .line 258
    .line 259
    invoke-virtual {v1, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    .line 264
    .line 265
    if-eqz v8, :cond_7

    .line 266
    .line 267
    const-string v3, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    .line 268
    .line 269
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    if-nez v4, :cond_6

    .line 278
    .line 279
    const-string v4, "android.content.pm.extra.OTHER_PACKAGE_NAME"

    .line 280
    .line 281
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    .line 283
    .line 284
    :cond_6
    const-string v3, "android.content.pm.extra.WARNINGS"

    .line 285
    .line 286
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    if-nez v5, :cond_7

    .line 295
    .line 296
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 297
    .line 298
    .line 299
    :cond_7
    const-string/jumbo v3, "result of session: "

    .line 300
    .line 301
    .line 302
    const-string/jumbo v4, "{"

    .line 303
    .line 304
    .line 305
    const-string/jumbo v5, "}, "

    .line 306
    .line 307
    .line 308
    invoke-static {v11, v15, v3, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-static {v3, v7, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :try_start_3
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    const/4 v4, 0x0

    .line 320
    invoke-virtual {v3, v4}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 324
    .line 325
    .line 326
    move-result-object v19

    .line 327
    const/16 v17, 0x0

    .line 328
    .line 329
    const/16 v18, 0x0

    .line 330
    .line 331
    const/4 v3, 0x0

    .line 332
    const/16 v16, 0x0

    .line 333
    .line 334
    move-object v13, v14

    .line 335
    move v14, v3

    .line 336
    move-object v15, v1

    .line 337
    invoke-virtual/range {v12 .. v19}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 338
    .line 339
    .line 340
    :catch_1
    invoke-static {v11, v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->notifyKnoxSignatureVerificationFailure(IILjava/lang/String;)V

    .line 341
    .line 342
    .line 343
    :cond_8
    :goto_4
    const/4 v1, 0x1

    .line 344
    goto/16 :goto_8

    .line 345
    .line 346
    :pswitch_3
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 347
    .line 348
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 353
    .line 354
    sget-object v2, Lcom/android/server/om/SemSamsungThemeUtils;->disableOverlayList:Ljava/util/List;

    .line 355
    .line 356
    const-string v2, "com.samsung.android.themecenter"

    .line 357
    .line 358
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_9

    .line 363
    .line 364
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    const/16 v2, 0x3e8

    .line 369
    .line 370
    if-eq v1, v2, :cond_9

    .line 371
    .line 372
    const-string v1, "Install failed with internal error"

    .line 373
    .line 374
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    const/16 v2, -0x6e

    .line 378
    .line 379
    invoke-virtual {v0, v2, v1, v8}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 380
    .line 381
    .line 382
    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-eqz v1, :cond_a

    .line 390
    .line 391
    const/16 v1, 0x70

    .line 392
    .line 393
    invoke-static {v1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 402
    .line 403
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 408
    .line 409
    .line 410
    :cond_a
    const/4 v1, 0x0

    .line 411
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntentIfNeeded(Z)Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequired:Ljava/lang/Boolean;

    .line 416
    .line 417
    if-nez v2, :cond_b

    .line 418
    .line 419
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    iput-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequired:Ljava/lang/Boolean;

    .line 424
    .line 425
    :cond_b
    if-eqz v1, :cond_c

    .line 426
    .line 427
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->deactivate()V

    .line 428
    .line 429
    .line 430
    goto :goto_4

    .line 431
    :cond_c
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mUserActionRequired:Ljava/lang/Boolean;

    .line 432
    .line 433
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-eqz v1, :cond_d

    .line 438
    .line 439
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 440
    .line 441
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    if-nez v1, :cond_d

    .line 446
    .line 447
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 448
    .line 449
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 450
    .line 451
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 452
    .line 453
    iget v2, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 454
    .line 455
    iget v3, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 456
    .line 457
    sget v4, Lcom/android/server/pm/PackageInstallerService$Callbacks;->$r8$clinit:I

    .line 458
    .line 459
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 460
    .line 461
    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 466
    .line 467
    .line 468
    :cond_d
    iget-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mVerificationInProgress:Z

    .line 469
    .line 470
    if-eqz v1, :cond_e

    .line 471
    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    const-string v2, "Verification is already in progress for session "

    .line 475
    .line 476
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 480
    .line 481
    invoke-static {v1, v0, v6}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 482
    .line 483
    .line 484
    goto/16 :goto_4

    .line 485
    .line 486
    :cond_e
    const/4 v1, 0x1

    .line 487
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mVerificationInProgress:Z

    .line 488
    .line 489
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 490
    .line 491
    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 492
    .line 493
    if-eqz v1, :cond_f

    .line 494
    .line 495
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 496
    .line 497
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->verifySession()V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_4

    .line 501
    .line 502
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->verify()V

    .line 503
    .line 504
    .line 505
    goto/16 :goto_4

    .line 506
    .line 507
    :pswitch_4
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 508
    .line 509
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    .line 511
    .line 512
    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    const/4 v10, 0x1

    .line 521
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    if-eqz v2, :cond_10

    .line 526
    .line 527
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 532
    .line 533
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->streamValidateAndCommit()Z

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    and-int/2addr v10, v2

    .line 538
    goto :goto_5

    .line 539
    :catch_2
    move-exception v0

    .line 540
    goto :goto_6

    .line 541
    :cond_10
    if-eqz v10, :cond_8

    .line 542
    .line 543
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->streamValidateAndCommit()Z

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    if-eqz v0, :cond_8

    .line 548
    .line 549
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 550
    .line 551
    invoke-virtual {v0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_2

    .line 556
    .line 557
    .line 558
    goto/16 :goto_4

    .line 559
    .line 560
    :goto_6
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->destroy(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 568
    .line 569
    invoke-virtual {v1, v3, v2, v8}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 570
    .line 571
    .line 572
    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 573
    .line 574
    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    .line 575
    .line 576
    .line 577
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 578
    .line 579
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 580
    .line 581
    .line 582
    move-result v2

    .line 583
    if-eqz v2, :cond_11

    .line 584
    .line 585
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerException;->packageName:Ljava/lang/String;

    .line 586
    .line 587
    goto :goto_7

    .line 588
    :cond_11
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 589
    .line 590
    :goto_7
    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 591
    .line 592
    iget v1, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 593
    .line 594
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->notifyKnoxSignatureVerificationFailure(IILjava/lang/String;)V

    .line 595
    .line 596
    .line 597
    goto/16 :goto_4

    .line 598
    .line 599
    :pswitch_5
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession$4;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 600
    .line 601
    const-string v1, "dispatchSessionSealed"

    .line 602
    .line 603
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    if-eqz v2, :cond_12

    .line 608
    .line 609
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 610
    .line 611
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 612
    .line 613
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    .line 614
    .line 615
    iget-object v2, v1, Lcom/android/server/pm/utils/RequestThrottle;->mLastRequest:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 616
    .line 617
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 618
    .line 619
    .line 620
    invoke-virtual {v1}, Lcom/android/server/pm/utils/RequestThrottle;->runInternal()Z

    .line 621
    .line 622
    .line 623
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    .line 624
    .line 625
    const/4 v1, 0x2

    .line 626
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 631
    .line 632
    .line 633
    goto/16 :goto_4

    .line 634
    .line 635
    :goto_8
    return v1

    .line 636
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 637
    .line 638
    const-string v2, " before sealing"

    .line 639
    .line 640
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    throw v0

    .line 648
    nop

    .line 649
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
