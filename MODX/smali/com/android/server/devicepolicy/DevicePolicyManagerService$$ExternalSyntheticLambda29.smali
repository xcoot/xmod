.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->$r8$classId:I

    .line 3
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    .line 5
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$1:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    .line 10
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$1:I

    .line 12
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 14
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 21
    invoke-virtual {v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(I)V

    .line 24
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 26
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordQualityCacheForUserGroup(I)V

    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0

    .line 34
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    .line 36
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 38
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$1:I

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    new-instance v1, Landroid/content/Intent;

    .line 45
    const-string v2, "android.app.action.RESET_PROTECTION_POLICY_CHANGED"

    .line 47
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    const/high16 v2, 0x11000000

    .line 52
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    move-result-object v1

    .line 56
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 61
    move-result-object p0

    .line 62
    const-string v2, "android.permission.MANAGE_FACTORY_RESET_PROTECTION"

    .line 64
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 67
    return-void

    .line 68
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    .line 70
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 72
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$1:I

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    :try_start_1
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 79
    invoke-virtual {v1, p0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 86
    move-result v2

    .line 87
    const/4 v3, 0x1

    .line 88
    if-gt v2, v3, :cond_0

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    move-result-object v3

    .line 97
    const v4, 0x1040375

    .line 100
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 103
    move-result-object v3

    .line 104
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 106
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 111
    move-result-object v5

    .line 112
    invoke-interface {v4, p0, v5}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    .line 115
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 117
    invoke-interface {v4, p0, v3}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    .line 120
    const/4 v4, 0x0

    .line 121
    :goto_0
    if-ge v4, v2, :cond_1

    .line 123
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object v5

    .line 127
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 129
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 131
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    .line 133
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 138
    move-result-object v8

    .line 139
    invoke-interface {v6, v7, v8}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    .line 142
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 144
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    .line 146
    invoke-interface {v6, v7, v3}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    .line 149
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 151
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 153
    invoke-virtual {v6, p0, v5}, Lcom/android/server/pm/UserManagerInternal;->setDefaultCrossProfileIntentFilters(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    add-int/lit8 v4, v4, 0x1

    .line 158
    goto :goto_0

    .line 159
    :catch_0
    move-exception p0

    .line 160
    const-string v0, "DevicePolicyManager"

    .line 162
    const-string v1, "Error resetting default cross profile intent filters"

    .line 164
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    :cond_1
    :goto_1
    return-void

    .line 168
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    .line 170
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 172
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$1:I

    .line 174
    const/4 v1, 0x0

    .line 175
    const/4 v2, 0x0

    .line 176
    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLockedMDM(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 179
    return-void

    .line 180
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    .line 182
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 184
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$1:I

    .line 186
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 188
    invoke-virtual {v1, p0}, Landroid/os/UserManager;->setUserEnabled(I)V

    .line 191
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 193
    invoke-virtual {v1, p0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 196
    move-result-object v1

    .line 197
    new-instance v2, Landroid/content/Intent;

    .line 199
    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 201
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    new-instance v3, Landroid/os/UserHandle;

    .line 206
    invoke-direct {v3, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 209
    const-string p0, "android.intent.extra.USER"

    .line 211
    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 214
    new-instance p0, Landroid/os/UserHandle;

    .line 216
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 218
    invoke-direct {p0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 221
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    .line 223
    const/4 v3, 0x1

    .line 224
    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V

    .line 227
    const/high16 v1, 0x50000000

    .line 229
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 234
    invoke-virtual {v0, v2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 237
    return-void

    .line 238
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    .line 240
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 242
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$1:I

    .line 244
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 246
    const-string/jumbo v1, "device_owner_type"

    .line 249
    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->settingsGlobalPutInt(Ljava/lang/String;I)V

    .line 252
    return-void

    .line 253
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    .line 255
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 257
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$1:I

    .line 259
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 261
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 263
    const-class v1, Landroid/net/wifi/WifiManager;

    .line 265
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 268
    move-result-object v0

    .line 269
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 271
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->notifyMinimumRequiredWifiSecurityLevelChanged(I)V

    .line 274
    return-void

    .line 275
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$0:Ljava/lang/Object;

    .line 277
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 279
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda29;->f$1:I

    .line 281
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    .line 284
    move-result p0

    .line 285
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminsForLockscreenPoliciesLocked(I)Ljava/util/List;

    .line 288
    move-result-object v1

    .line 289
    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMaximumTimeToLockPolicyFromAdmins(Ljava/util/List;)J

    .line 292
    move-result-wide v1

    .line 293
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 296
    move-result-object v3

    .line 297
    iget-wide v4, v3, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastMaximumTimeToLock:J

    .line 299
    cmp-long v4, v4, v1

    .line 301
    if-nez v4, :cond_2

    .line 303
    goto :goto_2

    .line 304
    :cond_2
    iput-wide v1, v3, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastMaximumTimeToLock:J

    .line 306
    const-wide v3, 0x7fffffffffffffffL

    .line 311
    cmp-long v3, v1, v3

    .line 313
    if-eqz v3, :cond_3

    .line 315
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 317
    const-string/jumbo v4, "stay_on_while_plugged_in"

    .line 320
    const/4 v5, 0x0

    .line 321
    invoke-virtual {v3, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->settingsGlobalPutInt(Ljava/lang/String;I)V

    .line 324
    :cond_3
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 326
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    const-class v0, Landroid/os/PowerManagerInternal;

    .line 331
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 334
    move-result-object v0

    .line 335
    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 337
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/PowerManagerInternal;->setMaximumScreenOffTimeoutFromDeviceAdmin(IJ)V

    .line 340
    :goto_2
    return-void

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
