.class public final Lcom/android/server/pm/UserManagerService$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic val$newRestrictionsFinal:Landroid/os/Bundle;

.field public final synthetic val$prevRestrictionsFinal:Landroid/os/Bundle;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/UserManagerService$4;->val$userId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService$4;->val$newRestrictionsFinal:Landroid/os/Bundle;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/UserManagerService$4;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget v3, v0, Lcom/android/server/pm/UserManagerService$4;->val$userId:I

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/pm/UserManagerService$4;->val$newRestrictionsFinal:Landroid/os/Bundle;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService$4;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    .line 12
    .line 13
    sget-object v6, Lcom/android/server/pm/UserRestrictionsUtils;->USER_RESTRICTIONS:Ljava/util/Set;

    .line 14
    .line 15
    check-cast v6, Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    const/4 v8, 0x0

    .line 26
    if-eqz v7, :cond_8

    .line 27
    .line 28
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    check-cast v7, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v10

    .line 38
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v11

    .line 42
    if-eq v10, v11, :cond_0

    .line 43
    .line 44
    const-string v11, "airplane_mode_on"

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 51
    .line 52
    .line 53
    move-result-wide v13

    .line 54
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    const-string/jumbo v9, "no_install_unknown_sources_globally"

    .line 59
    .line 60
    .line 61
    const-string/jumbo v1, "no_install_unknown_sources"

    .line 62
    .line 63
    .line 64
    sparse-switch v15, :sswitch_data_0

    .line 65
    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :sswitch_0
    :try_start_1
    const-string/jumbo v15, "no_debugging_features"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_1

    .line 77
    .line 78
    const/4 v7, 0x2

    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto/16 :goto_7

    .line 83
    .line 84
    :sswitch_1
    const-string/jumbo v15, "no_safe_boot"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_1

    .line 92
    .line 93
    const/4 v7, 0x7

    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :sswitch_2
    const-string/jumbo v15, "no_share_location"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_1

    .line 104
    .line 105
    const/4 v7, 0x1

    .line 106
    goto :goto_2

    .line 107
    :sswitch_3
    const-string/jumbo v15, "no_data_roaming"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-eqz v7, :cond_1

    .line 115
    .line 116
    move v7, v8

    .line 117
    goto :goto_2

    .line 118
    :sswitch_4
    const-string/jumbo v15, "no_run_in_background"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_1

    .line 126
    .line 127
    const/4 v7, 0x6

    .line 128
    goto :goto_2

    .line 129
    :sswitch_5
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-eqz v7, :cond_1

    .line 134
    .line 135
    const/4 v7, 0x5

    .line 136
    goto :goto_2

    .line 137
    :sswitch_6
    const-string/jumbo v15, "no_uninstall_apps"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_1

    .line 145
    .line 146
    const/16 v7, 0xb

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :sswitch_7
    const-string/jumbo v15, "no_airplane_mode"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_1

    .line 157
    .line 158
    const/16 v7, 0x8

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :sswitch_8
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_1

    .line 166
    .line 167
    const/4 v7, 0x4

    .line 168
    goto :goto_2

    .line 169
    :sswitch_9
    const-string v15, "ensure_verify_apps"

    .line 170
    .line 171
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-eqz v7, :cond_1

    .line 176
    .line 177
    const/4 v7, 0x3

    .line 178
    goto :goto_2

    .line 179
    :sswitch_a
    const-string/jumbo v15, "no_control_apps"

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    if-eqz v7, :cond_1

    .line 187
    .line 188
    const/16 v7, 0xa

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :sswitch_b
    const-string/jumbo v15, "no_ambient_display"

    .line 192
    .line 193
    .line 194
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    if-eqz v7, :cond_1

    .line 199
    .line 200
    const/16 v7, 0x9

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_1
    :goto_1
    const/4 v7, -0x1

    .line 204
    :goto_2
    const-string v15, "0"

    .line 205
    .line 206
    packed-switch v7, :pswitch_data_0

    .line 207
    .line 208
    .line 209
    goto/16 :goto_6

    .line 210
    .line 211
    :pswitch_0
    :try_start_2
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 212
    .line 213
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 218
    .line 219
    move-object v7, v1

    .line 220
    check-cast v7, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 221
    .line 222
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 223
    .line 224
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-interface {v8}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 233
    .line 234
    new-instance v10, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl$$ExternalSyntheticLambda0;

    .line 235
    .line 236
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7, v8, v9, v10, v3}, Lcom/android/server/pm/SuspendPackageHelper;->removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V

    .line 240
    .line 241
    .line 242
    move-object v7, v1

    .line 243
    check-cast v7, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 244
    .line 245
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 246
    .line 247
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    invoke-interface {v8}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v9

    .line 255
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 256
    .line 257
    invoke-virtual {v7, v8, v9, v3}, Lcom/android/server/pm/DistractingPackageHelper;->removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V

    .line 258
    .line 259
    .line 260
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 261
    .line 262
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 263
    .line 264
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 265
    .line 266
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 267
    .line 268
    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    :try_start_3
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 270
    .line 271
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V

    .line 272
    .line 273
    .line 274
    monitor-exit v7

    .line 275
    goto/16 :goto_6

    .line 276
    .line 277
    :catchall_1
    move-exception v0

    .line 278
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 279
    :try_start_4
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 280
    .line 281
    throw v0

    .line 282
    :pswitch_1
    if-eqz v10, :cond_7

    .line 283
    .line 284
    new-instance v1, Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 285
    .line 286
    invoke-direct {v1, v2}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v3}, Landroid/hardware/display/AmbientDisplayConfiguration;->disableDozeSettings(I)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_6

    .line 293
    .line 294
    :pswitch_2
    if-eqz v10, :cond_7

    .line 295
    .line 296
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-static {v1, v11, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    const/4 v7, 0x1

    .line 305
    if-ne v1, v7, :cond_7

    .line 306
    .line 307
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-static {v1, v11, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    .line 313
    .line 314
    new-instance v1, Landroid/content/Intent;

    .line 315
    .line 316
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    .line 317
    .line 318
    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const-string/jumbo v7, "state"

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    .line 326
    .line 327
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 328
    .line 329
    invoke-virtual {v2, v1, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_6

    .line 333
    .line 334
    :pswitch_3
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    const-string/jumbo v7, "safe_boot_disallowed"

    .line 339
    .line 340
    .line 341
    invoke-static {v1, v7, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 342
    .line 343
    .line 344
    goto/16 :goto_6

    .line 345
    .line 346
    :pswitch_4
    if-eqz v10, :cond_7

    .line 347
    .line 348
    const-class v1, Landroid/app/ActivityManager;

    .line 349
    .line 350
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    check-cast v1, Landroid/app/ActivityManager;

    .line 355
    .line 356
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->isProfileForeground(Landroid/os/UserHandle;)Z

    .line 361
    .line 362
    .line 363
    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 364
    if-nez v1, :cond_7

    .line 365
    .line 366
    if-eqz v3, :cond_7

    .line 367
    .line 368
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    const/4 v7, 0x0

    .line 373
    invoke-interface {v1, v3, v8, v7}, Landroid/app/IActivityManager;->stopUserExceptCertainProfiles(IZLandroid/app/IStopUserCallback;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 374
    .line 375
    .line 376
    goto/16 :goto_6

    .line 377
    .line 378
    :catch_0
    move-exception v0

    .line 379
    :try_start_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    throw v0

    .line 384
    :pswitch_5
    if-nez v10, :cond_3

    .line 385
    .line 386
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    invoke-virtual {v1, v9, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-eqz v1, :cond_2

    .line 399
    .line 400
    goto :goto_3

    .line 401
    :cond_2
    const/4 v8, 0x1

    .line 402
    :cond_3
    :goto_3
    const-string v1, "install_non_market_apps"

    .line 403
    .line 404
    invoke-static {v12, v1, v8, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 405
    .line 406
    .line 407
    goto/16 :goto_6

    .line 408
    .line 409
    :pswitch_6
    if-nez v10, :cond_5

    .line 410
    .line 411
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 412
    .line 413
    .line 414
    move-result-object v7

    .line 415
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 416
    .line 417
    .line 418
    move-result-object v9

    .line 419
    invoke-virtual {v7, v1, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    if-eqz v1, :cond_4

    .line 424
    .line 425
    goto :goto_4

    .line 426
    :cond_4
    const/4 v8, 0x1

    .line 427
    :cond_5
    :goto_4
    const-string v1, "install_non_market_apps"

    .line 428
    .line 429
    invoke-static {v12, v1, v8, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 430
    .line 431
    .line 432
    goto :goto_6

    .line 433
    :pswitch_7
    if-eqz v10, :cond_7

    .line 434
    .line 435
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    const-string/jumbo v7, "verifier_verify_adb_installs"

    .line 440
    .line 441
    .line 442
    const-string v8, "1"

    .line 443
    .line 444
    invoke-static {v1, v7, v8, v3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 445
    .line 446
    .line 447
    goto :goto_6

    .line 448
    :pswitch_8
    if-eqz v10, :cond_7

    .line 449
    .line 450
    if-nez v3, :cond_7

    .line 451
    .line 452
    const-string v1, "adb_enabled"

    .line 453
    .line 454
    invoke-static {v12, v1, v15, v3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 455
    .line 456
    .line 457
    const-string v1, "adb_wifi_enabled"

    .line 458
    .line 459
    invoke-static {v12, v1, v15, v3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 460
    .line 461
    .line 462
    goto :goto_6

    .line 463
    :pswitch_9
    if-eqz v10, :cond_7

    .line 464
    .line 465
    const-string v1, "location_mode"

    .line 466
    .line 467
    invoke-static {v12, v1, v8, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 468
    .line 469
    .line 470
    goto :goto_6

    .line 471
    :pswitch_a
    if-eqz v10, :cond_7

    .line 472
    .line 473
    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 474
    .line 475
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 480
    .line 481
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    .line 482
    .line 483
    .line 484
    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 485
    const-string v7, "data_roaming"

    .line 486
    .line 487
    if-eqz v1, :cond_6

    .line 488
    .line 489
    :try_start_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 494
    .line 495
    .line 496
    move-result v8

    .line 497
    if-eqz v8, :cond_6

    .line 498
    .line 499
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v8

    .line 503
    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 504
    .line 505
    new-instance v9, Ljava/lang/StringBuilder;

    .line 506
    .line 507
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 514
    .line 515
    .line 516
    move-result v8

    .line 517
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v8

    .line 524
    invoke-static {v12, v8, v15, v3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 525
    .line 526
    .line 527
    goto :goto_5

    .line 528
    :cond_6
    invoke-static {v12, v7, v15, v3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 529
    .line 530
    .line 531
    :cond_7
    :goto_6
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_0

    .line 535
    .line 536
    :goto_7
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    .line 538
    .line 539
    throw v0

    .line 540
    :cond_8
    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 541
    .line 542
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 543
    .line 544
    monitor-enter v1

    .line 545
    :try_start_8
    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 546
    .line 547
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 548
    .line 549
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    new-array v3, v2, [Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;

    .line 554
    .line 555
    iget-object v4, v0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 556
    .line 557
    iget-object v4, v4, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 558
    .line 559
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 563
    :goto_8
    if-ge v8, v2, :cond_9

    .line 564
    .line 565
    aget-object v1, v3, v8

    .line 566
    .line 567
    iget v4, v0, Lcom/android/server/pm/UserManagerService$4;->val$userId:I

    .line 568
    .line 569
    iget-object v5, v0, Lcom/android/server/pm/UserManagerService$4;->val$newRestrictionsFinal:Landroid/os/Bundle;

    .line 570
    .line 571
    iget-object v6, v0, Lcom/android/server/pm/UserManagerService$4;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    .line 572
    .line 573
    invoke-interface {v1, v4, v5, v6}, Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;->onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 574
    .line 575
    .line 576
    const/4 v1, 0x1

    .line 577
    add-int/2addr v8, v1

    .line 578
    goto :goto_8

    .line 579
    :cond_9
    const/4 v1, 0x1

    .line 580
    new-instance v2, Landroid/content/Intent;

    .line 581
    .line 582
    const-string v3, "android.os.action.USER_RESTRICTIONS_CHANGED"

    .line 583
    .line 584
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    const/high16 v3, 0x40000000    # 2.0f

    .line 588
    .line 589
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    invoke-virtual {v3, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 606
    .line 607
    iget-object v3, v3, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 608
    .line 609
    iget v0, v0, Lcom/android/server/pm/UserManagerService$4;->val$userId:I

    .line 610
    .line 611
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    const/4 v4, 0x0

    .line 616
    invoke-virtual {v3, v2, v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 617
    .line 618
    .line 619
    return-void

    .line 620
    :catchall_2
    move-exception v0

    .line 621
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 622
    throw v0

    .line 623
    :sswitch_data_0
    .sparse-switch
        -0x57f0a463 -> :sswitch_b
        -0x52b3922e -> :sswitch_a
        -0x4e6d1409 -> :sswitch_9
        -0x444ddeb2 -> :sswitch_8
        -0x4080af8e -> :sswitch_7
        -0x646213 -> :sswitch_6
        0x171409a1 -> :sswitch_5
        0x2afb8ad6 -> :sswitch_4
        0x375d2642 -> :sswitch_3
        0x3b5af253 -> :sswitch_2
        0x414d6f66 -> :sswitch_1
        0x68f319ac -> :sswitch_0
    .end sparse-switch

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method
