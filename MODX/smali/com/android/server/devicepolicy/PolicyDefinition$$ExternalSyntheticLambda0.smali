.class public final synthetic Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/QuadFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 9
    check-cast p2, Landroid/content/Context;

    .line 11
    check-cast p3, Ljava/lang/Integer;

    .line 13
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 16
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 18
    sget-object p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 20
    const-string p0, "PolicyEnforcerCallbacks"

    .line 22
    const-string p1, "Trying to enforce setPermissionGrantState while flag is off."

    .line 24
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    return-object p0

    .line 30
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .line 32
    check-cast p2, Landroid/content/Context;

    .line 34
    check-cast p3, Ljava/lang/Integer;

    .line 36
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 38
    new-instance p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;

    .line 40
    invoke-direct {p0, p3, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 43
    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 46
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 48
    return-object p0

    .line 49
    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    .line 51
    check-cast p2, Landroid/content/Context;

    .line 53
    check-cast p3, Ljava/lang/Integer;

    .line 55
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 57
    new-instance p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;

    .line 59
    invoke-direct {p0, p2, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 62
    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 65
    move-result-object p0

    .line 66
    check-cast p0, Ljava/lang/Boolean;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    return-object p0

    .line 72
    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    .line 74
    check-cast p2, Landroid/content/Context;

    .line 76
    check-cast p3, Ljava/lang/Integer;

    .line 78
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 81
    move-result p0

    .line 82
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 84
    new-instance p3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;

    .line 86
    invoke-direct {p3, p0, v0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 89
    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 92
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 94
    return-object p0

    .line 95
    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    .line 97
    check-cast p2, Landroid/content/Context;

    .line 99
    check-cast p3, Ljava/lang/Integer;

    .line 101
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 104
    move-result p0

    .line 105
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 107
    new-instance p2, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda1;

    .line 109
    invoke-direct {p2, p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Boolean;)V

    .line 112
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 115
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 117
    return-object p0

    .line 118
    :pswitch_4
    check-cast p1, Ljava/util/Set;

    .line 120
    check-cast p2, Landroid/content/Context;

    .line 122
    check-cast p3, Ljava/lang/Integer;

    .line 124
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 126
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 128
    return-object p0

    .line 129
    :pswitch_5
    check-cast p1, Ljava/lang/Boolean;

    .line 131
    check-cast p2, Landroid/content/Context;

    .line 133
    check-cast p3, Ljava/lang/Integer;

    .line 135
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 137
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 139
    return-object p0

    .line 140
    :pswitch_6
    check-cast p1, Ljava/lang/Boolean;

    .line 142
    check-cast p2, Landroid/content/Context;

    .line 144
    check-cast p3, Ljava/lang/Integer;

    .line 146
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 149
    move-result p0

    .line 150
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 152
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 154
    new-instance p3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;

    .line 156
    invoke-direct {p3, p4, p1, p0, v0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;-><init>(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;II)V

    .line 159
    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {p2, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result p0

    .line 167
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    .line 174
    check-cast p2, Landroid/content/Context;

    .line 176
    check-cast p3, Ljava/lang/Integer;

    .line 178
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 180
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 182
    return-object p0

    .line 183
    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    .line 185
    check-cast p2, Landroid/content/Context;

    .line 187
    check-cast p3, Ljava/lang/Integer;

    .line 189
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 192
    move-result p0

    .line 193
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 195
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 197
    new-instance p3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;

    .line 199
    invoke-direct {p3, p4, p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;-><init>(Landroid/app/admin/PolicyKey;ILjava/lang/Boolean;)V

    .line 202
    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {p2, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 209
    move-result p0

    .line 210
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 213
    move-result-object p0

    .line 214
    return-object p0

    .line 215
    :pswitch_9
    check-cast p1, Ljava/lang/Long;

    .line 217
    check-cast p2, Landroid/content/Context;

    .line 219
    check-cast p3, Ljava/lang/Integer;

    .line 221
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 223
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 225
    return-object p0

    .line 226
    :pswitch_a
    check-cast p1, Landroid/os/Bundle;

    .line 228
    check-cast p2, Landroid/content/Context;

    .line 230
    check-cast p3, Ljava/lang/Integer;

    .line 232
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 234
    new-instance p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;

    .line 236
    invoke-direct {p0, p4, p2, p3}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda4;-><init>(Landroid/app/admin/PolicyKey;Landroid/content/Context;Ljava/lang/Integer;)V

    .line 239
    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 242
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 244
    return-object p0

    .line 245
    :pswitch_b
    check-cast p1, Ljava/lang/Boolean;

    .line 247
    check-cast p2, Landroid/content/Context;

    .line 249
    check-cast p3, Ljava/lang/Integer;

    .line 251
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 254
    move-result p0

    .line 255
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 257
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 259
    new-instance p3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;

    .line 261
    const/4 v0, 0x1

    .line 262
    invoke-direct {p3, p4, p1, p0, v0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda3;-><init>(Landroid/app/admin/PolicyKey;Ljava/lang/Boolean;II)V

    .line 265
    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 268
    move-result-object p0

    .line 269
    invoke-virtual {p2, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 272
    move-result p0

    .line 273
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 276
    move-result-object p0

    .line 277
    return-object p0

    .line 278
    :pswitch_c
    check-cast p1, Landroid/content/ComponentName;

    .line 280
    check-cast p2, Landroid/content/Context;

    .line 282
    check-cast p3, Ljava/lang/Integer;

    .line 284
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 287
    move-result p0

    .line 288
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 290
    new-instance p2, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;

    .line 292
    const/4 p3, 0x2

    .line 293
    invoke-direct {p2, p0, p3, p4, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 296
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 299
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 301
    return-object p0

    .line 302
    :pswitch_d
    check-cast p1, Ljava/util/Set;

    .line 304
    check-cast p2, Landroid/content/Context;

    .line 306
    check-cast p3, Ljava/lang/Integer;

    .line 308
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 311
    move-result p0

    .line 312
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 314
    sget-object p3, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter$ProtectedPackagesFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;

    .line 316
    if-nez p1, :cond_0

    .line 318
    const/4 p4, 0x0

    .line 319
    goto :goto_0

    .line 320
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 323
    move-result-object p4

    .line 324
    invoke-interface {p4}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    .line 327
    move-result-object p4

    .line 328
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    const-string v1, "ProtectedPackagesFilter"

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    .line 335
    const-string/jumbo v3, "updateProtectedPackages is called. userId "

    .line 338
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    const-string v3, " package names : "

    .line 346
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    move-result-object v2

    .line 356
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v1, p3, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;->mProtectedPackages:Landroid/util/SparseArray;

    .line 361
    monitor-enter v1

    .line 362
    if-nez p4, :cond_1

    .line 364
    :try_start_0
    iget-object p3, p3, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;->mProtectedPackages:Landroid/util/SparseArray;

    .line 366
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 369
    goto :goto_1

    .line 370
    :catchall_0
    move-exception p0

    .line 371
    goto :goto_3

    .line 372
    :cond_1
    iget-object p3, p3, Lcom/android/server/am/mars/filter/filter/ProtectedPackagesFilter;->mProtectedPackages:Landroid/util/SparseArray;

    .line 374
    new-instance v2, Landroid/util/ArraySet;

    .line 376
    invoke-direct {v2, p4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 379
    invoke-virtual {p3, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    if-eqz p4, :cond_3

    .line 385
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 388
    move-result-object p3

    .line 389
    :cond_2
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 392
    move-result p4

    .line 393
    if-eqz p4, :cond_3

    .line 395
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 398
    move-result-object p4

    .line 399
    check-cast p4, Ljava/lang/String;

    .line 401
    sget-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 403
    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 405
    invoke-virtual {v1, p4, p0, v0}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 408
    move-result v1

    .line 409
    if-nez v1, :cond_2

    .line 411
    const-string v1, "MARsPolicyManager"

    .line 413
    const-string/jumbo v2, "cancelDisablePolicy failed. package : "

    .line 416
    invoke-static {v2, p4, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    goto :goto_2

    .line 420
    :cond_3
    new-instance p3, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;

    .line 422
    invoke-direct {p3, p2, p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;ILjava/util/Set;)V

    .line 425
    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 428
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 430
    return-object p0

    .line 431
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    throw p0

    .line 433
    :pswitch_e
    check-cast p1, Landroid/app/admin/LockTaskPolicy;

    .line 435
    check-cast p2, Landroid/content/Context;

    .line 437
    check-cast p3, Ljava/lang/Integer;

    .line 439
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 441
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 444
    move-result p0

    .line 445
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 448
    move-result-object p3

    .line 449
    if-eqz p1, :cond_4

    .line 451
    invoke-virtual {p1}, Landroid/app/admin/LockTaskPolicy;->getPackages()Ljava/util/Set;

    .line 454
    move-result-object p3

    .line 455
    invoke-static {p3}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    .line 458
    move-result-object p3

    .line 459
    invoke-virtual {p1}, Landroid/app/admin/LockTaskPolicy;->getFlags()I

    .line 462
    move-result p1

    .line 463
    goto :goto_4

    .line 464
    :cond_4
    const/16 p1, 0x10

    .line 466
    :goto_4
    sget-object p4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 468
    new-instance p4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda101;

    .line 470
    invoke-direct {p4, p0, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda101;-><init>(ILandroid/content/Context;Ljava/util/List;)V

    .line 473
    invoke-static {p4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 476
    new-instance p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda204;

    .line 478
    invoke-direct {p2, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda204;-><init>(II)V

    .line 481
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 484
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 486
    return-object p0

    .line 487
    :pswitch_f
    check-cast p1, Ljava/lang/Boolean;

    .line 489
    check-cast p2, Landroid/content/Context;

    .line 491
    check-cast p3, Ljava/lang/Integer;

    .line 493
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 496
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 498
    const-class p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 500
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 503
    move-result-object p0

    .line 504
    check-cast p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 506
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 508
    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 511
    move-result p1

    .line 512
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->enforceAuditLoggingPolicy(Z)V

    .line 515
    return-object p2

    .line 516
    :pswitch_10
    check-cast p1, Ljava/lang/Boolean;

    .line 518
    check-cast p2, Landroid/content/Context;

    .line 520
    check-cast p3, Ljava/lang/Integer;

    .line 522
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 525
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 527
    const-class p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 529
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 532
    move-result-object p0

    .line 533
    check-cast p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 535
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 537
    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 540
    move-result p1

    .line 541
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->enforceSecurityLoggingPolicy(Z)V

    .line 544
    return-object p2

    .line 545
    :pswitch_11
    check-cast p1, Ljava/lang/Boolean;

    .line 547
    check-cast p2, Landroid/content/Context;

    .line 549
    check-cast p3, Ljava/lang/Integer;

    .line 551
    check-cast p4, Landroid/app/admin/PolicyKey;

    .line 553
    sget-object p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 555
    const-string p0, "PolicyEnforcerCallbacks"

    .line 557
    const-string p1, "Trying to enforce setAutoTimezoneEnabled while flag is off."

    .line 559
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 564
    return-object p0

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
