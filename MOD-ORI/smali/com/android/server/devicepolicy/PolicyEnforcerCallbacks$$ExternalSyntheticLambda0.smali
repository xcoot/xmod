.class public final synthetic Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILjava/util/Set;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$2:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroid/app/admin/PolicyKey;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Landroid/content/ComponentName;

    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$2:I

    .line 17
    .line 18
    const-string/jumbo v2, "policyKey is not of type IntentFilterPolicyKey, passed in policyKey is: "

    .line 19
    .line 20
    .line 21
    :try_start_0
    instance-of v3, v0, Landroid/app/admin/IntentFilterPolicyKey;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    check-cast v0, Landroid/app/admin/IntentFilterPolicyKey;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/admin/IntentFilterPolicyKey;->getIntentFilter()Landroid/content/IntentFilter;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v2, v0, v1, p0}, Landroid/content/pm/IPackageManager;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-interface {v2, v0, p0}, Landroid/content/pm/IPackageManager;->clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->flushPackageRestrictionsAsUser(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_1
    const-string v0, "PolicyEnforcerCallbacks"

    .line 72
    .line 73
    const-string v1, "Error adding/removing persistent preferred activity"

    .line 74
    .line 75
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :goto_2
    return-void

    .line 79
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v2, Landroid/content/Context;

    .line 82
    .line 83
    iget v3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$2:I

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p0, Ljava/util/Set;

    .line 88
    .line 89
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 90
    .line 91
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 96
    .line 97
    const-class v5, Landroid/app/AppOpsManager;

    .line 98
    .line 99
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Landroid/app/AppOpsManager;

    .line 104
    .line 105
    const/4 v5, 0x0

    .line 106
    if-nez p0, :cond_2

    .line 107
    .line 108
    move-object v6, v5

    .line 109
    goto :goto_3

    .line 110
    :cond_2
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-interface {v6}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    :goto_3
    move-object v11, v4

    .line 119
    check-cast v11, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 120
    .line 121
    iget-object v7, v11, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 122
    .line 123
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 124
    .line 125
    monitor-enter v7

    .line 126
    if-nez v6, :cond_3

    .line 127
    .line 128
    :try_start_1
    iget-object v6, v7, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    .line 129
    .line 130
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_4

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    goto/16 :goto_a

    .line 136
    .line 137
    :cond_3
    iget-object v8, v7, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    .line 138
    .line 139
    new-instance v9, Landroid/util/ArraySet;

    .line 140
    .line 141
    invoke-direct {v9, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .line 146
    .line 147
    :goto_4
    monitor-exit v7

    .line 148
    const-class v6, Landroid/app/usage/UsageStatsManagerInternal;

    .line 149
    .line 150
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    check-cast v6, Landroid/app/usage/UsageStatsManagerInternal;

    .line 155
    .line 156
    if-nez p0, :cond_4

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_4
    new-instance v5, Landroid/util/ArraySet;

    .line 160
    .line 161
    invoke-direct {v5, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 162
    .line 163
    .line 164
    :goto_5
    check-cast v6, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 165
    .line 166
    iget-object v6, v6, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 167
    .line 168
    iget-object v6, v6, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 169
    .line 170
    invoke-interface {v6, v5, v3}, Lcom/android/server/usage/AppStandbyInternal;->setAdminProtectedPackages(Ljava/util/Set;I)V

    .line 171
    .line 172
    .line 173
    if-eqz p0, :cond_a

    .line 174
    .line 175
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-eqz v5, :cond_5

    .line 180
    .line 181
    goto/16 :goto_9

    .line 182
    .line 183
    :cond_5
    const/4 v5, -0x1

    .line 184
    if-ne v3, v5, :cond_6

    .line 185
    .line 186
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    .line 187
    .line 188
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    .line 193
    .line 194
    invoke-virtual {v3, v1}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    new-instance v3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda11;

    .line 203
    .line 204
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    goto :goto_6

    .line 216
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    if-eqz v3, :cond_a

    .line 233
    .line 234
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    check-cast v3, Ljava/lang/Integer;

    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    invoke-static {}, Landroid/app/admin/flags/Flags;->disallowUserControlBgUsageFix()Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_9

    .line 249
    .line 250
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 251
    .line 252
    .line 253
    move-result-object v12

    .line 254
    :cond_8
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-eqz v5, :cond_9

    .line 259
    .line 260
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    move-object v10, v5

    .line 265
    check-cast v10, Ljava/lang/String;

    .line 266
    .line 267
    const/high16 v5, 0xc0000

    .line 268
    .line 269
    int-to-long v8, v5

    .line 270
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    move-object v5, v4

    .line 275
    move v7, v3

    .line 276
    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    if-eqz v5, :cond_8

    .line 281
    .line 282
    sget-object v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 283
    .line 284
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 285
    .line 286
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 287
    .line 288
    const/16 v8, 0x46

    .line 289
    .line 290
    invoke-virtual {v2, v8, v6, v7, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 291
    .line 292
    .line 293
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 294
    .line 295
    const/16 v7, 0x1a

    .line 296
    .line 297
    if-ge v6, v7, :cond_8

    .line 298
    .line 299
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 300
    .line 301
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 302
    .line 303
    const/16 v7, 0x3f

    .line 304
    .line 305
    invoke-virtual {v2, v7, v6, v5, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 306
    .line 307
    .line 308
    goto :goto_7

    .line 309
    :cond_9
    invoke-static {}, Landroid/app/admin/flags/Flags;->disallowUserControlStoppedStateFix()Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    if-eqz v5, :cond_7

    .line 314
    .line 315
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    if-eqz v6, :cond_7

    .line 324
    .line 325
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    check-cast v6, Ljava/lang/String;

    .line 330
    .line 331
    iget-object v7, v11, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 332
    .line 333
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    invoke-virtual {v7, v3, v8, v6, v0}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V

    .line 338
    .line 339
    .line 340
    goto :goto_8

    .line 341
    :cond_a
    :goto_9
    return-void

    .line 342
    :goto_a
    monitor-exit v7

    .line 343
    throw p0

    .line 344
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast v2, Ljava/lang/Boolean;

    .line 347
    .line 348
    iget-object v3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v3, Landroid/content/Context;

    .line 351
    .line 352
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$2:I

    .line 353
    .line 354
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 355
    .line 356
    if-eqz v2, :cond_b

    .line 357
    .line 358
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    if-eqz v2, :cond_b

    .line 363
    .line 364
    new-instance v2, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;

    .line 365
    .line 366
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    invoke-virtual {v3, v5, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-direct {v2, v0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;-><init>(Landroid/content/Context;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getPersonalAppsForSuspension()[Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    const-string v2, ","

    .line 382
    .line 383
    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    const-string v5, "PolicyEnforcerCallbacks"

    .line 392
    .line 393
    const-string v6, "Suspending personal apps: %s"

    .line 394
    .line 395
    invoke-static {v5, v6, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 403
    .line 404
    invoke-virtual {v3, p0, v1, v0}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(IZ[Ljava/lang/String;)[Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object p0

    .line 408
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-nez v0, :cond_d

    .line 413
    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    const-string v1, "Failed to suspend apps: "

    .line 417
    .line 418
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-static {v2, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    invoke-static {v5, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    goto :goto_b

    .line 436
    :cond_b
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 441
    .line 442
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 443
    .line 444
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    .line 446
    .line 447
    invoke-static {}, Landroid/app/admin/flags/Flags;->crossUserSuspensionEnabledRo()Z

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    if-eqz v2, :cond_c

    .line 452
    .line 453
    move p0, v0

    .line 454
    :cond_c
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 455
    .line 456
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    const-string v3, "android"

    .line 461
    .line 462
    invoke-virtual {v1, p0, v2, v3, v0}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V

    .line 463
    .line 464
    .line 465
    :cond_d
    :goto_b
    return-void

    .line 466
    nop

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
