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

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$2:Landroid/content/ComponentName;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$1:I

    .line 11
    .line 12
    const-string v2, "Attempt to remove non-test admin "

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    monitor-enter v3

    .line 19
    :try_start_0
    invoke-virtual {v0, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isAdminTestOnlyLocked(ILandroid/content/ComponentName;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(ILandroid/content/ComponentName;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdminLocked()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearDeviceOwnerLocked(ILcom/android/server/devicepolicy/ActiveAdmin;)V

    .line 36
    .line 37
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

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v4, 0x0

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwnerOfOrganizationOwnedDevice(I)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v0, p0, v1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(ILandroid/content/ComponentName;Z)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v0, p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearProfileOwnerLocked(ILcom/android/server/devicepolicy/ActiveAdmin;)V

    .line 57
    .line 58
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

    .line 63
    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 76
    .line 77
    const-string/jumbo v5, "no_remove_managed_profile"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v5, v4, v2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 81
    .line 82
    .line 83
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 84
    .line 85
    const-string/jumbo v5, "no_add_user"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v5, v4, v2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearOrgOwnedProfileOwnerDeviceWidePolicies(I)V

    .line 96
    .line 97
    .line 98
    :cond_2
    const-string v0, "DevicePolicyManager"

    .line 99
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v3, "Admin "

    .line 103
    .line 104
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, " removed from user "

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 127
    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, " "

    .line 137
    .line 138
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
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

    .line 155
    .line 156
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$2:Landroid/content/ComponentName;

    .line 157
    .line 158
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$1:I

    .line 159
    .line 160
    invoke-virtual {v0, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(ILandroid/content/ComponentName;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 165
    .line 166
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$1:I

    .line 167
    .line 168
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$2:Landroid/content/ComponentName;

    .line 169
    .line 170
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 171
    .line 172
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 173
    .line 174
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

    .line 180
    .line 181
    aget v6, v2, v4

    .line 182
    .line 183
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 184
    .line 185
    const-string/jumbo v8, "no_add_managed_profile"

    .line 186
    .line 187
    .line 188
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    invoke-virtual {v7, v8, v5, v9}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 193
    .line 194
    .line 195
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 196
    .line 197
    const-string/jumbo v8, "no_add_clone_profile"

    .line 198
    .line 199
    .line 200
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    invoke-virtual {v7, v8, v5, v9}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 205
    .line 206
    .line 207
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 208
    .line 209
    const-string/jumbo v8, "no_add_private_profile"

    .line 210
    .line 211
    .line 212
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {v7, v8, v5, v6}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 217
    .line 218
    .line 219
    add-int/lit8 v4, v4, 0x1

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_4
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mKnoxAnalyticsHelper:Lcom/android/server/devicepolicy/KnoxAnalyticsHelper;

    .line 228
    .line 229
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-virtual {v0, v1, p0, v5}, Lcom/android/server/devicepolicy/KnoxAnalyticsHelper;->sendOwnerChangedBroadcastWithExtra(ILjava/lang/String;Z)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 238
    .line 239
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$1:I

    .line 240
    .line 241
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda30;->f$2:Landroid/content/ComponentName;

    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    const/4 v2, 0x0

    .line 247
    const/4 v3, 0x1

    .line 248
    if-nez v1, :cond_5

    .line 249
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

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_7

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getHeadlessDeviceOwnerModeForDeviceOwner()I

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    const/4 v6, 0x2

    .line 264
    if-ne v5, v6, :cond_7

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMainUserId()I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-ne v1, v4, :cond_6

    .line 271
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

    .line 276
    .line 277
    const-string/jumbo v4, "no_factory_reset"

    .line 278
    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_8
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    if-eqz v4, :cond_9

    .line 286
    .line 287
    const-string/jumbo v4, "no_remove_managed_profile"

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_9
    const-string/jumbo v4, "no_remove_user"

    .line 292
    .line 293
    .line 294
    :goto_6
    invoke-virtual {v0, p0, v1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isAdminAffectedByRestriction(Landroid/content/ComponentName;ILjava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result p0

    .line 298
    if-nez p0, :cond_d

    .line 299
    .line 300
    if-nez v1, :cond_c

    .line 301
    .line 302
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 303
    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mKnoxPolicyHelper:Lcom/android/server/devicepolicy/KnoxPolicyHelper;

    .line 308
    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    const-string v4, "KnoxPolicyHelper"

    .line 313
    .line 314
    const-string/jumbo v5, "isFactoryResetAllowed = "

    .line 315
    .line 316
    .line 317
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->getService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    if-eqz v6, :cond_a

    .line 322
    .line 323
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    .line 324
    .line 325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 326
    .line 327
    .line 328
    move-result v7

    .line 329
    invoke-direct {v6, v7, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 330
    .line 331
    .line 332
    iget-object p0, p0, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 333
    .line 334
    invoke-interface {p0, v6}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 335
    .line 336
    .line 337
    move-result p0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 351
    .line 352
    .line 353
    move v3, p0

    .line 354
    goto :goto_7

    .line 355
    :catch_0
    move-exception p0

    .line 356
    const-string v1, "Failed talking with Restriction Policy"

    .line 357
    .line 358
    invoke-static {v4, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    .line 360
    .line 361
    :cond_a
    :goto_7
    if-eqz v3, :cond_b

    .line 362
    .line 363
    goto :goto_8

    .line 364
    :cond_b
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mAuditLogHelper:Lcom/android/server/devicepolicy/AuditLogHelper;

    .line 365
    .line 366
    new-array v0, v2, [Ljava/lang/Object;

    .line 367
    .line 368
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    .line 370
    .line 371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 372
    .line 373
    .line 374
    move-result-wide v1

    .line 375
    :try_start_3
    const-string p0, "DevicePolicyManager"

    .line 376
    .line 377
    const/16 v3, 0x2b

    .line 378
    .line 379
    invoke-static {p0, v3, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventForComponent(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 380
    .line 381
    .line 382
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 383
    .line 384
    .line 385
    new-instance p0, Ljava/lang/SecurityException;

    .line 386
    .line 387
    const-string v0, "Cannot wipe data. Factory reset is not allowed from Restriction Policy."

    .line 388
    .line 389
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw p0

    .line 393
    :catchall_1
    move-exception p0

    .line 394
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 395
    .line 396
    .line 397
    throw p0

    .line 398
    :cond_c
    :goto_8
    return-void

    .line 399
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    .line 400
    .line 401
    const-string v0, "Cannot wipe data. "

    .line 402
    .line 403
    const-string v2, " restriction is set for user "

    .line 404
    .line 405
    invoke-static {v1, v0, v4, v2}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 410
    .line 411
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
