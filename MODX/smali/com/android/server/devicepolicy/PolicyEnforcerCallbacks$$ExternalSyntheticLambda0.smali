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

    .line 5
    packed-switch v2, :pswitch_data_0

    .line 8
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    check-cast v0, Landroid/app/admin/PolicyKey;

    .line 12
    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 14
    check-cast v1, Landroid/content/ComponentName;

    .line 16
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$2:I

    .line 18
    const-string/jumbo v2, "policyKey is not of type IntentFilterPolicyKey, passed in policyKey is: "

    .line 21
    :try_start_0
    instance-of v3, v0, Landroid/app/admin/IntentFilterPolicyKey;

    .line 23
    if-eqz v3, :cond_1

    .line 25
    check-cast v0, Landroid/app/admin/IntentFilterPolicyKey;

    .line 27
    invoke-virtual {v0}, Landroid/app/admin/IntentFilterPolicyKey;->getIntentFilter()Landroid/content/IntentFilter;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 37
    move-result-object v2

    .line 38
    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v2, v0, v1, p0}, Landroid/content/pm/IPackageManager;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

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

    .line 49
    :goto_0
    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->flushPackageRestrictionsAsUser(I)V

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_1
    const-string v0, "PolicyEnforcerCallbacks"

    .line 73
    const-string v1, "Error adding/removing persistent preferred activity"

    .line 75
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :goto_2
    return-void

    .line 79
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 81
    check-cast v2, Landroid/content/Context;

    .line 83
    iget v3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$2:I

    .line 85
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 87
    check-cast p0, Ljava/util/Set;

    .line 89
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 91
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 97
    const-class v5, Landroid/app/AppOpsManager;

    .line 99
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Landroid/app/AppOpsManager;

    .line 105
    const/4 v5, 0x0

    .line 106
    if-nez p0, :cond_2

    .line 108
    move-object v6, v5

    .line 109
    goto :goto_3

    .line 110
    :cond_2
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 113
    move-result-object v6

    .line 114
    invoke-interface {v6}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 117
    move-result-object v6

    .line 118
    :goto_3
    move-object v11, v4

    .line 119
    check-cast v11, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 121
    iget-object v7, v11, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 123
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 125
    monitor-enter v7

    .line 126
    if-nez v6, :cond_3

    .line 128
    :try_start_1
    iget-object v6, v7, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    .line 130
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 133
    goto :goto_4

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    goto/16 :goto_a

    .line 137
    :cond_3
    iget-object v8, v7, Lcom/android/server/pm/ProtectedPackages;->mOwnerProtectedPackages:Landroid/util/SparseArray;

    .line 139
    new-instance v9, Landroid/util/ArraySet;

    .line 141
    invoke-direct {v9, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 144
    invoke-virtual {v8, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :goto_4
    monitor-exit v7

    .line 148
    const-class v6, Landroid/app/usage/UsageStatsManagerInternal;

    .line 150
    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 153
    move-result-object v6

    .line 154
    check-cast v6, Landroid/app/usage/UsageStatsManagerInternal;

    .line 156
    if-nez p0, :cond_4

    .line 158
    goto :goto_5

    .line 159
    :cond_4
    new-instance v5, Landroid/util/ArraySet;

    .line 161
    invoke-direct {v5, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 164
    :goto_5
    check-cast v6, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 166
    iget-object v6, v6, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 168
    iget-object v6, v6, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 170
    invoke-interface {v6, v5, v3}, Lcom/android/server/usage/AppStandbyInternal;->setAdminProtectedPackages(Ljava/util/Set;I)V

    .line 173
    if-eqz p0, :cond_a

    .line 175
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 178
    move-result v5

    .line 179
    if-eqz v5, :cond_5

    .line 181
    goto/16 :goto_9

    .line 183
    :cond_5
    const/4 v5, -0x1

    .line 184
    if-ne v3, v5, :cond_6

    .line 186
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    .line 188
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 191
    move-result-object v3

    .line 192
    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    .line 194
    invoke-virtual {v3, v1}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    .line 197
    move-result-object v1

    .line 198
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 201
    move-result-object v1

    .line 202
    new-instance v3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda11;

    .line 204
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 210
    move-result-object v1

    .line 211
    invoke-interface {v1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 214
    move-result-object v1

    .line 215
    goto :goto_6

    .line 216
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    move-result-object v1

    .line 220
    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 223
    move-result-object v1

    .line 224
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 227
    move-result-object v1

    .line 228
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    move-result v3

    .line 232
    if-eqz v3, :cond_a

    .line 234
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    move-result-object v3

    .line 238
    check-cast v3, Ljava/lang/Integer;

    .line 240
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 243
    move-result v3

    .line 244
    invoke-static {}, Landroid/app/admin/flags/Flags;->disallowUserControlBgUsageFix()Z

    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_9

    .line 250
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 253
    move-result-object v12

    .line 254
    :cond_8
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    move-result v5

    .line 258
    if-eqz v5, :cond_9

    .line 260
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    move-result-object v5

    .line 264
    move-object v10, v5

    .line 265
    check-cast v10, Ljava/lang/String;

    .line 267
    const/high16 v5, 0xc0000

    .line 269
    int-to-long v8, v5

    .line 270
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 273
    move-result v6

    .line 274
    move-object v5, v4

    .line 275
    move v7, v3

    .line 276
    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 279
    move-result-object v5

    .line 280
    if-eqz v5, :cond_8

    .line 282
    sget-object v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 284
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 286
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 288
    const/16 v8, 0x46

    .line 290
    invoke-virtual {v2, v8, v6, v7, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 293
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 295
    const/16 v7, 0x1a

    .line 297
    if-ge v6, v7, :cond_8

    .line 299
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 301
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 303
    const/16 v7, 0x3f

    .line 305
    invoke-virtual {v2, v7, v6, v5, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 308
    goto :goto_7

    .line 309
    :cond_9
    invoke-static {}, Landroid/app/admin/flags/Flags;->disallowUserControlStoppedStateFix()Z

    .line 312
    move-result v5

    .line 313
    if-eqz v5, :cond_7

    .line 315
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 318
    move-result-object v5

    .line 319
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 322
    move-result v6

    .line 323
    if-eqz v6, :cond_7

    .line 325
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 328
    move-result-object v6

    .line 329
    check-cast v6, Ljava/lang/String;

    .line 331
    iget-object v7, v11, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 333
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 336
    move-result-object v8

    .line 337
    invoke-virtual {v7, v3, v8, v6, v0}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V

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

    .line 346
    check-cast v2, Ljava/lang/Boolean;

    .line 348
    iget-object v3, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 350
    check-cast v3, Landroid/content/Context;

    .line 352
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;->f$2:I

    .line 354
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    .line 356
    if-eqz v2, :cond_b

    .line 358
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 361
    move-result v2

    .line 362
    if-eqz v2, :cond_b

    .line 364
    new-instance v2, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;

    .line 366
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 369
    move-result-object v5

    .line 370
    invoke-virtual {v3, v5, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 373
    move-result-object v0

    .line 374
    invoke-direct {v2, v0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;-><init>(Landroid/content/Context;)V

    .line 377
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getPersonalAppsForSuspension()[Ljava/lang/String;

    .line 380
    move-result-object v0

    .line 381
    const-string v2, ","

    .line 383
    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 386
    move-result-object v3

    .line 387
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 390
    move-result-object v3

    .line 391
    const-string v5, "PolicyEnforcerCallbacks"

    .line 393
    const-string v6, "Suspending personal apps: %s"

    .line 395
    invoke-static {v5, v6, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 401
    move-result-object v3

    .line 402
    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 404
    invoke-virtual {v3, p0, v1, v0}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(IZ[Ljava/lang/String;)[Ljava/lang/String;

    .line 407
    move-result-object p0

    .line 408
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 411
    move-result v0

    .line 412
    if-nez v0, :cond_d

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    .line 416
    const-string v1, "Failed to suspend apps: "

    .line 418
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-static {v2, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 424
    move-result-object p0

    .line 425
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    move-result-object p0

    .line 432
    invoke-static {v5, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    goto :goto_b

    .line 436
    :cond_b
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 439
    move-result-object v1

    .line 440
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 442
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 444
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    invoke-static {}, Landroid/app/admin/flags/Flags;->crossUserSuspensionEnabledRo()Z

    .line 450
    move-result v2

    .line 451
    if-eqz v2, :cond_c

    .line 453
    move p0, v0

    .line 454
    :cond_c
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 456
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 459
    move-result-object v2

    .line 460
    const-string v3, "android"

    .line 462
    invoke-virtual {v1, p0, v2, v3, v0}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V

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
