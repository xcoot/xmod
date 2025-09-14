.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDpms:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 8
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mDpms:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10
    return-void
.end method


# virtual methods
.method public final onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "no_sharing_into_profile"

    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {p3, p2, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->restrictionsChanged(Landroid/os/Bundle;Landroid/os/Bundle;[Ljava/lang/String;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 16
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 19
    move-result v0

    .line 20
    if-ne v0, p1, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v1, "DevicePolicyManager"

    .line 25
    const-string v2, "Resetting cross-profile intent filters on restriction change"

    .line 27
    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mDpms:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 32
    invoke-virtual {v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetDefaultCrossProfileIntentFilters(I)V

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mContext:Landroid/content/Context;

    .line 37
    new-instance v1, Landroid/content/Intent;

    .line 39
    const-string v2, "android.app.action.DATA_SHARING_RESTRICTION_APPLIED"

    .line 41
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    :cond_1
    :goto_0
    const-string/jumbo v0, "no_config_vpn"

    .line 59
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 62
    move-result v0

    .line 63
    const/4 v1, 0x0

    .line 64
    if-nez v0, :cond_8

    .line 66
    const-string/jumbo v0, "no_config_vpn"

    .line 69
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_8

    .line 75
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mDpms:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 77
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 80
    move-result-object v2

    .line 81
    monitor-enter v2

    .line 82
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOrProfileOwnerAdminLocked(I)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 85
    move-result-object v3

    .line 86
    if-nez v3, :cond_2

    .line 88
    const-string v0, "DevicePolicyManager"

    .line 90
    const-string v3, "Admin not found"

    .line 92
    invoke-static {v0, v3}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    monitor-exit v2

    .line 96
    goto/16 :goto_3

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto/16 :goto_2

    .line 101
    :cond_2
    iget-object v3, v3, Lcom/android/server/devicepolicy/ActiveAdmin;->mAlwaysOnVpnPackage:Ljava/lang/String;

    .line 103
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    if-nez v3, :cond_3

    .line 106
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 108
    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 110
    const-class v4, Landroid/net/VpnManager;

    .line 112
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Landroid/net/VpnManager;

    .line 118
    const/4 v4, 0x0

    .line 119
    invoke-virtual {v2, p1, v4, v1, v4}, Landroid/net/VpnManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    .line 122
    :cond_3
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 124
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    .line 127
    move-result-object v2

    .line 128
    const/16 v4, 0x2f

    .line 130
    filled-new-array {v4}, [I

    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v2, v5}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    .line 137
    move-result-object v2

    .line 138
    if-nez v2, :cond_4

    .line 140
    goto/16 :goto_3

    .line 142
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 145
    move-result-object v2

    .line 146
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_8

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    move-result-object v5

    .line 156
    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 158
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    .line 161
    move-result v6

    .line 162
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 165
    move-result v6

    .line 166
    if-ne v6, p1, :cond_5

    .line 168
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    .line 171
    move-result-object v6

    .line 172
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    move-result v6

    .line 176
    if-eqz v6, :cond_6

    .line 178
    goto :goto_1

    .line 179
    :cond_6
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    .line 182
    move-result-object v6

    .line 183
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 186
    move-result v6

    .line 187
    const/4 v7, 0x1

    .line 188
    if-eq v6, v7, :cond_7

    .line 190
    const-string v5, "DevicePolicyManager"

    .line 192
    const-string v6, "Unexpected number of ops returned"

    .line 194
    invoke-static {v5, v6}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    goto :goto_1

    .line 198
    :cond_7
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    .line 201
    move-result-object v6

    .line 202
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    move-result-object v6

    .line 206
    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 208
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    .line 211
    move-result v6

    .line 212
    if-nez v6, :cond_5

    .line 214
    const-string v6, "DevicePolicyManager"

    .line 216
    const-string v7, "Revoking VPN authorization for package %s uid %d"

    .line 218
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    .line 221
    move-result-object v8

    .line 222
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    .line 225
    move-result v9

    .line 226
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    move-result-object v9

    .line 230
    filled-new-array {v8, v9}, [Ljava/lang/Object;

    .line 233
    move-result-object v8

    .line 234
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 237
    move-result-object v7

    .line 238
    invoke-static {v6, v7}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 243
    invoke-virtual {v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    .line 246
    move-result-object v6

    .line 247
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    .line 250
    move-result v7

    .line 251
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    .line 254
    move-result-object v5

    .line 255
    const/4 v8, 0x3

    .line 256
    invoke-virtual {v6, v4, v7, v5, v8}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 259
    goto :goto_1

    .line 260
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    throw p0

    .line 262
    :cond_8
    :goto_3
    invoke-static {}, Landroid/app/admin/flags/Flags;->deletePrivateSpaceUnderRestriction()Z

    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_d

    .line 268
    const-string/jumbo v0, "no_add_private_profile"

    .line 271
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 274
    move-result p3

    .line 275
    if-nez p3, :cond_d

    .line 277
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 280
    move-result p2

    .line 281
    if-eqz p2, :cond_d

    .line 283
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$RestrictionsListener;->mDpms:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 285
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 287
    invoke-virtual {p2, p1}, Landroid/os/UserManager;->isProfile(I)Z

    .line 290
    move-result p2

    .line 291
    if-eqz p2, :cond_9

    .line 293
    goto :goto_6

    .line 294
    :cond_9
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 296
    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    .line 299
    move-result-object p2

    .line 300
    array-length p3, p2

    .line 301
    move v0, v1

    .line 302
    :goto_4
    if-ge v1, p3, :cond_c

    .line 304
    aget v2, p2, v1

    .line 306
    if-ne v2, p1, :cond_a

    .line 308
    goto :goto_5

    .line 309
    :cond_a
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 311
    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 314
    move-result-object v3

    .line 315
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    .line 318
    move-result v3

    .line 319
    if-eqz v3, :cond_b

    .line 321
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    move-result-object v3

    .line 325
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 328
    move-result-object v3

    .line 329
    const-string v4, "DevicePolicyManager"

    .line 331
    const-string v5, "Removing private space %d due to DISALLOW_ADD_PRIVATE_PROFILE"

    .line 333
    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 338
    invoke-virtual {v3, v2}, Landroid/os/UserManager;->removeUserEvenWhenDisallowed(I)Z

    .line 341
    move-result v2

    .line 342
    or-int/2addr v0, v2

    .line 343
    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 345
    goto :goto_4

    .line 346
    :cond_c
    if-eqz v0, :cond_d

    .line 348
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 350
    new-instance p3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda0;

    .line 352
    const/4 v0, 0x1

    .line 353
    invoke-direct {p3, p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;II)V

    .line 356
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    :cond_d
    :goto_6
    return-void
.end method
