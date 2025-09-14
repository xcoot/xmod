.class public final Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    const-string v0, "RestrictionPolicy"

    .line 4
    const/4 v1, 0x1

    .line 5
    iget v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->$r8$classId:I

    .line 7
    packed-switch v2, :pswitch_data_0

    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const-string v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v3

    .line 23
    const-string/jumbo v4, "updateUsbMode failed"

    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz v3, :cond_3

    .line 29
    :try_start_0
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 31
    invoke-static {p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mupdateUSBMode(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 40
    invoke-virtual {p2, p1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    .line 43
    move-result v1

    .line 44
    invoke-virtual {p2, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setStatusBarExpansionSystemUI(IZ)V

    .line 47
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 49
    invoke-virtual {p2, v5, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 52
    move-result v1

    .line 53
    invoke-virtual {p2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUsbStorageStatebyIntent(Z)Z

    .line 56
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 58
    iget-object p2, p2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 60
    const-string v1, "PlatformSoftwareVersion"

    .line 62
    invoke-virtual {p2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getDatabaseUpgradeValue(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p2

    .line 66
    const-string/jumbo v1, "ro.build.fingerprint"

    .line 69
    const-string/jumbo v2, "unknown"

    .line 72
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_0

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    move-object v5, v1

    .line 84
    :goto_1
    if-eqz p2, :cond_1

    .line 86
    if-eqz v5, :cond_2

    .line 88
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result p2

    .line 92
    if-nez p2, :cond_2

    .line 94
    :cond_1
    const-string/jumbo p2, "isFirmwareChanged : true"

    .line 97
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 102
    invoke-virtual {p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateNonMarketAppOnUserManager()V

    .line 105
    :cond_2
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 107
    const/4 v0, -0x1

    .line 108
    invoke-virtual {p2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->notifyChanges(I)V

    .line 111
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 113
    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_a

    .line 119
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->turnOffAirPlaneMode()V

    .line 124
    goto/16 :goto_2

    .line 126
    :cond_3
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_4

    .line 134
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 136
    invoke-static {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mupdateUSBMode(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    goto/16 :goto_2

    .line 141
    :catch_1
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    goto/16 :goto_2

    .line 146
    :cond_4
    const-string/jumbo v3, "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_6

    .line 155
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 157
    invoke-virtual {v3, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_5

    .line 163
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 165
    invoke-virtual {v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    .line 168
    move-result v3

    .line 169
    if-nez v3, :cond_6

    .line 171
    :cond_5
    :try_start_2
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 173
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 176
    goto/16 :goto_2

    .line 178
    :catch_2
    const-string p0, "Network Policy update failed"

    .line 180
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    goto/16 :goto_2

    .line 185
    :cond_6
    const-string v3, "android.intent.action.USER_SWITCHED"

    .line 187
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    move-result v3

    .line 191
    const-string v4, "android.intent.extra.user_handle"

    .line 193
    if-eqz v3, :cond_7

    .line 195
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 198
    move-result p2

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    const-string v3, "Intent.ACTION_USER_SWITCHED occurred!! action:"

    .line 203
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v2, " userId="

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v1

    .line 221
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    .line 226
    const-string v1, ""

    .line 228
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 233
    sget-object v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->excludedAdminList:[Ljava/lang/String;

    .line 235
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    .line 238
    move-result p0

    .line 239
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    move-result-object p0

    .line 246
    const-string p1, "/data/system/enterprise.conf"

    .line 248
    const-string/jumbo p2, "screenCaptureEnabled"

    .line 251
    invoke-static {p2, p0, p1}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    goto/16 :goto_2

    .line 256
    :cond_7
    const-string v0, "android.intent.action.USER_ADDED"

    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    move-result v0

    .line 262
    if-eqz v0, :cond_8

    .line 264
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 267
    move-result p1

    .line 268
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 270
    sget-object p2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->excludedAdminList:[Ljava/lang/String;

    .line 272
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 274
    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->load(I)V

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->notifyChanges(I)V

    .line 280
    goto :goto_2

    .line 281
    :cond_8
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 283
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_9

    .line 289
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 292
    move-result p1

    .line 293
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 295
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    .line 297
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 299
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 302
    move-result-object p2

    .line 303
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 306
    :try_start_3
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCache:Ljava/util/HashMap;

    .line 308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mApplyingAdmins:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;

    .line 317
    iget-object v0, p2, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->admins:Ljava/util/Map;

    .line 319
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    move-result-object v2

    .line 323
    check-cast v0, Ljava/util/HashMap;

    .line 325
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object p2, p2, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins;->adminInfoMap:Ljava/util/Map;

    .line 330
    check-cast p2, Ljava/util/HashMap;

    .line 332
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 335
    move-result-object p2

    .line 336
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins$$ExternalSyntheticLambda0;

    .line 338
    invoke-direct {v0, p1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache$ApplyingAdmins$$ExternalSyntheticLambda0;-><init>(II)V

    .line 341
    invoke-interface {p2, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 344
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mCameraDisabledAdmin:Ljava/util/HashMap;

    .line 346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    move-result-object p1

    .line 350
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 353
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 355
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 358
    move-result-object p0

    .line 359
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 362
    goto :goto_2

    .line 363
    :catchall_0
    move-exception p1

    .line 364
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 366
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 369
    move-result-object p0

    .line 370
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 373
    throw p1

    .line 374
    :cond_9
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 380
    move-result v0

    .line 381
    if-eqz v0, :cond_a

    .line 383
    const-string/jumbo v0, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 386
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 389
    move-result p1

    .line 390
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 392
    sget-object p2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->excludedAdminList:[Ljava/lang/String;

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateSystemUIMonitor$7(I)V

    .line 397
    :cond_a
    :goto_2
    return-void

    .line 398
    :pswitch_0
    const-string v2, "FOTAReceiver: onReceive"

    .line 400
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 406
    move-result-object v2

    .line 407
    const-string/jumbo v3, "sec.fota.intent.MDM_REGISTER_RESULT"

    .line 410
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    move-result v3

    .line 414
    const-string/jumbo v4, "result"

    .line 417
    if-eqz v3, :cond_c

    .line 419
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 422
    move-result p2

    .line 423
    if-eqz p2, :cond_b

    .line 425
    if-eq p2, v1, :cond_b

    .line 427
    const-string p1, "FOTAReceiver: action:sec.fota.intent.MDM_REGISTER_RESULT failure("

    .line 429
    const-string v2, ")"

    .line 431
    invoke-static {p2, p1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 436
    invoke-static {p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mclearSelectiveFota(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 439
    move p1, v1

    .line 440
    goto :goto_3

    .line 441
    :cond_b
    const-string p2, "action:sec.fota.intent.MDM_REGISTER_RESULT success"

    .line 443
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_3
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 448
    invoke-static {p1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$msendSeletiveFotaResult(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 451
    goto :goto_5

    .line 452
    :cond_c
    const-string/jumbo v3, "com.xdm.intent.UPDATE_RESULT"

    .line 455
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    move-result v3

    .line 459
    if-eqz v3, :cond_e

    .line 461
    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 464
    move-result p1

    .line 465
    const/4 p2, 0x5

    .line 466
    add-int/2addr p1, p2

    .line 467
    const-string v1, "action:com.xdm.intent.UPDATE_RESULT = "

    .line 469
    invoke-static {p1, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 472
    const/16 v0, 0x8

    .line 474
    if-gt p1, v0, :cond_f

    .line 476
    if-ge p1, p2, :cond_d

    .line 478
    goto :goto_5

    .line 479
    :cond_d
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 481
    invoke-static {p1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$msendSeletiveFotaResult(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 484
    goto :goto_5

    .line 485
    :cond_e
    const-string/jumbo p2, "sec.fota.intent.MDM_UNREGISTER"

    .line 488
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    move-result p2

    .line 492
    if-eqz p2, :cond_f

    .line 494
    const-string p2, "FOTAReceiver: action:sec.fota.intent.MDM_UNREGISTER"

    .line 496
    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 501
    invoke-static {p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->-$$Nest$mclearSelectiveFota(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    .line 504
    const-string/jumbo p2, "com.wssyncmldm"

    .line 507
    const-string/jumbo v0, "com.samsung.utagent"

    .line 510
    filled-new-array {p2, v0}, [Ljava/lang/String;

    .line 513
    move-result-object p2

    .line 514
    :goto_4
    const/4 v0, 0x2

    .line 515
    if-ge p1, v0, :cond_f

    .line 517
    new-instance v0, Landroid/content/Intent;

    .line 519
    const-string/jumbo v2, "sec.fota.intent.MDM_REGISTER"

    .line 522
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    aget-object v2, p2, p1

    .line 527
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 532
    iget-object v2, v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 534
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 537
    add-int/2addr p1, v1

    .line 538
    goto :goto_4

    .line 539
    :cond_f
    :goto_5
    return-void

    .line 540
    nop

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
