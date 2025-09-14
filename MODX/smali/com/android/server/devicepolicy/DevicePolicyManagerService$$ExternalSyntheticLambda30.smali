.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILandroid/content/ComponentName;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$1:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$2:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;II)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$2:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$2:Landroid/content/ComponentName;

    .line 10
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$1:I

    .line 12
    const-string v2, "Attempt to remove non-test admin "

    .line 14
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    monitor-enter v3

    .line 19
    :try_start_0
    invoke-virtual {v0, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isAdminTestOnlyLocked(ILandroid/content/ComponentName;)Z

    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_3

    .line 25
    invoke-virtual {v0, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(ILandroid/content/ComponentName;)Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdminLocked()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearDeviceOwnerLocked(ILcom/android/server/devicepolicy/ActiveAdmin;)V

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwner(ILandroid/content/ComponentName;)Z

    .line 44
    move-result v2

    .line 45
    const/4 v4, 0x0

    .line 46
    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwnerOfOrganizationOwnedDevice(I)Z

    .line 51
    move-result v2

    .line 52
    invoke-virtual {v0, p0, v1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(ILandroid/content/ComponentName;Z)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v0, p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearProfileOwnerLocked(ILcom/android/server/devicepolicy/ActiveAdmin;)V

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v2, v4

    .line 61
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {v0, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeAdminArtifacts(ILandroid/content/ComponentName;)V

    .line 65
    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    .line 70
    move-result v2

    .line 71
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 74
    move-result-object v2

    .line 75
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 77
    const-string/jumbo v5, "no_remove_managed_profile"

    .line 80
    invoke-virtual {v3, v5, v4, v2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 83
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 85
    const-string/jumbo v5, "no_add_user"

    .line 88
    invoke-virtual {v3, v5, v4, v2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 91
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 94
    move-result v2

    .line 95
    invoke-virtual {v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearOrgOwnedProfileOwnerDeviceWidePolicies(I)V

    .line 98
    :cond_2
    const-string v0, "DevicePolicyManager"

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    const-string v3, "Admin "

    .line 104
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, " removed from user "

    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p0

    .line 122
    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 126
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    .line 130
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, " "

    .line 138
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object p0

    .line 148
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 151
    throw v0

    .line 152
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    throw p0

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 156
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$2:Landroid/content/ComponentName;

    .line 158
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$1:I

    .line 160
    invoke-virtual {v0, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(ILandroid/content/ComponentName;)V

    .line 163
    return-void

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 166
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$1:I

    .line 168
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$2:Landroid/content/ComponentName;

    .line 170
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 172
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 175
    move-result-object v2

    .line 176
    array-length v3, v2

    .line 177
    const/4 v4, 0x0

    .line 178
    :goto_3
    const/4 v5, 0x1

    .line 179
    if-ge v4, v3, :cond_4

    .line 181
    aget v6, v2, v4

    .line 183
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 185
    const-string/jumbo v8, "no_add_managed_profile"

    .line 188
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 191
    move-result-object v9

    .line 192
    invoke-virtual {v7, v8, v5, v9}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 195
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 197
    const-string/jumbo v8, "no_add_clone_profile"

    .line 200
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 203
    move-result-object v9

    .line 204
    invoke-virtual {v7, v8, v5, v9}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 207
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 209
    const-string/jumbo v8, "no_add_private_profile"

    .line 212
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {v7, v8, v5, v6}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 219
    add-int/lit8 v4, v4, 0x1

    .line 221
    goto :goto_3

    .line 222
    :cond_4
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 224
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mKnoxAnalyticsHelper:Lcom/android/server/devicepolicy/KnoxAnalyticsHelper;

    .line 229
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 232
    move-result-object p0

    .line 233
    invoke-virtual {v0, v1, p0, v5}, Lcom/android/server/devicepolicy/KnoxAnalyticsHelper;->sendOwnerChangedBroadcastWithExtra(ILjava/lang/String;Z)V

    .line 236
    return-void

    .line 237
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 239
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$1:I

    .line 241
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$2:Landroid/content/ComponentName;

    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    const/4 v2, 0x0

    .line 247
    const/4 v3, 0x1

    .line 248
    if-nez v1, :cond_5

    .line 250
    move v4, v3

    .line 251
    goto :goto_4

    .line 252
    :cond_5
    move v4, v2

    .line 253
    :goto_4
    invoke-static {}, Landroid/app/admin/flags/Flags;->headlessSingleUserFixes()Z

    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_7

    .line 259
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getHeadlessDeviceOwnerModeForDeviceOwner()I

    .line 262
    move-result v5

    .line 263
    const/4 v6, 0x2

    .line 264
    if-ne v5, v6, :cond_7

    .line 266
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMainUserId()I

    .line 269
    move-result v4

    .line 270
    if-ne v1, v4, :cond_6

    .line 272
    move v4, v3

    .line 273
    goto :goto_5

    .line 274
    :cond_6
    move v4, v2

    .line 275
    :cond_7
    :goto_5
    if-eqz v4, :cond_8

    .line 277
    const-string/jumbo v4, "no_factory_reset"

    .line 280
    goto :goto_6

    .line 281
    :cond_8
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    .line 284
    move-result v4

    .line 285
    if-eqz v4, :cond_9

    .line 287
    const-string/jumbo v4, "no_remove_managed_profile"

    .line 290
    goto :goto_6

    .line 291
    :cond_9
    const-string/jumbo v4, "no_remove_user"

    .line 294
    :goto_6
    invoke-virtual {v0, p0, v1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isAdminAffectedByRestriction(Landroid/content/ComponentName;ILjava/lang/String;)Z

    .line 297
    move-result p0

    .line 298
    if-nez p0, :cond_d

    .line 300
    if-nez v1, :cond_c

    .line 302
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mKnoxPolicyHelper:Lcom/android/server/devicepolicy/KnoxPolicyHelper;

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    const-string v4, "KnoxPolicyHelper"

    .line 314
    const-string/jumbo v5, "isFactoryResetAllowed = "

    .line 317
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 320
    move-result-object v6

    .line 321
    if-eqz v6, :cond_a

    .line 323
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    .line 325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 328
    move-result v7

    .line 329
    invoke-direct {v6, v7, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 332
    iget-object p0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 334
    invoke-interface {p0, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 337
    move-result p0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    .line 340
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    move-result-object v1

    .line 350
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 353
    move v3, p0

    .line 354
    goto :goto_7

    .line 355
    :catch_0
    move-exception p0

    .line 356
    const-string v1, "Failed talking with Restriction Policy"

    .line 358
    invoke-static {v4, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    :cond_a
    :goto_7
    if-eqz v3, :cond_b

    .line 363
    goto :goto_8

    .line 364
    :cond_b
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mAuditLogHelper:Lcom/android/server/devicepolicy/AuditLogHelper;

    .line 366
    new-array v0, v2, [Ljava/lang/Object;

    .line 368
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 374
    move-result-wide v1

    .line 375
    :try_start_3
    const-string p0, "DevicePolicyManager"

    .line 377
    const/16 v3, 0x2b

    .line 379
    invoke-static {p0, v3, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventForComponent(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 382
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 385
    new-instance p0, Ljava/lang/SecurityException;

    .line 387
    const-string v0, "Cannot wipe data. Factory reset is not allowed from Restriction Policy."

    .line 389
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 392
    throw p0

    .line 393
    :catchall_1
    move-exception p0

    .line 394
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 397
    throw p0

    .line 398
    :cond_c
    :goto_8
    return-void

    .line 399
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    .line 401
    const-string v0, "Cannot wipe data. "

    .line 403
    const-string v2, " restriction is set for user "

    .line 405
    invoke-static {v1, v0, v4, v2}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    move-result-object v0

    .line 409
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 412
    throw p0

    .line 413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
