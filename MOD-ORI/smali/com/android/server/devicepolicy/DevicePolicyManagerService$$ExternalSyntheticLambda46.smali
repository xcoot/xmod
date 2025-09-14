.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/content/Intent;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_7

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 43
    .line 44
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    const-string v5, "android.app.role.SYSTEM_SUPERVISION"

    .line 47
    .line 48
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getRoleHolderPackageNameOnUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    if-nez v4, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v3, p0, v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->broadcastExplicitIntentToPackage(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 59
    .line 60
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    const-string v5, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    .line 63
    .line 64
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getRoleHolderPackageNameOnUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    if-nez v4, :cond_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    invoke-virtual {v3, p0, v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->broadcastExplicitIntentToPackage(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_2
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-virtual {v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOrProfileOwnerAdminLocked(I)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-nez v3, :cond_3

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 88
    .line 89
    iget-object v6, v3, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 90
    .line 91
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    invoke-virtual {v4, v7, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwner(ILandroid/content/ComponentName;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_4

    .line 104
    .line 105
    invoke-virtual {v4, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwnerOfOrganizationOwnedDevice(I)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_4

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 113
    .line 114
    invoke-virtual {v4, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Lcom/android/server/devicepolicy/ActiveAdmin;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_5

    .line 119
    .line 120
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 121
    .line 122
    iget-object v6, v3, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 123
    .line 124
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    invoke-virtual {v4, v7, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwner(ILandroid/content/ComponentName;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_0

    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4}, Landroid/os/UserHandle;->isSystem()Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-nez v4, :cond_5

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_5
    :goto_3
    iget-object v4, v3, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 150
    .line 151
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 156
    .line 157
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    invoke-virtual {v6, v7, v5, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getRoleHolderPackageNameOnUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_6

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_6
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 172
    .line 173
    iget-object v4, v3, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 174
    .line 175
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v2, p0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->broadcastExplicitIntentToPackage(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_7
    return-void

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$0:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 192
    .line 193
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$1:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 196
    .line 197
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyData;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$0:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 204
    .line 205
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$1:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast p0, Ljava/util/function/BiConsumer;

    .line 208
    .line 209
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 210
    .line 211
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    if-eqz v2, :cond_9

    .line 224
    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 230
    .line 231
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 232
    .line 233
    invoke-virtual {v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerOrDeviceOwnerLocked(I)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    if-nez v3, :cond_8

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_8
    iget-object v4, v3, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 241
    .line 242
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 247
    .line 248
    invoke-static {v4, v2, v3}, Lcom/android/server/devicepolicy/EnforcingAdmin;->createEnterpriseEnforcingAdmin(Landroid/content/ComponentName;ILcom/android/server/devicepolicy/ActiveAdmin;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    invoke-interface {p0, v3, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_9
    return-void

    .line 257
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$0:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 260
    .line 261
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$1:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast p0, Ljava/lang/CharSequence;

    .line 264
    .line 265
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 266
    .line 267
    if-eqz p0, :cond_a

    .line 268
    .line 269
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    goto :goto_5

    .line 274
    :cond_a
    const/4 p0, 0x0

    .line 275
    :goto_5
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->setDeviceOwnerInfo(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$0:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 282
    .line 283
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$1:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast p0, Landroid/os/UserHandle;

    .line 286
    .line 287
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 288
    .line 289
    const-string/jumbo v2, "no_remove_managed_profile"

    .line 290
    .line 291
    .line 292
    const/4 v3, 0x0

    .line 293
    invoke-virtual {v1, v2, v3, p0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 294
    .line 295
    .line 296
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 297
    .line 298
    const-string/jumbo v1, "no_add_user"

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1, v3, p0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$0:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 308
    .line 309
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$1:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast p0, Landroid/net/ProxyInfo;

    .line 312
    .line 313
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mKnoxPolicyHelper:Lcom/android/server/devicepolicy/KnoxPolicyHelper;

    .line 314
    .line 315
    iget-object v2, v1, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 316
    .line 317
    if-nez v2, :cond_b

    .line 318
    .line 319
    const-string/jumbo v2, "misc_policy"

    .line 320
    .line 321
    .line 322
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-static {v2}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    iput-object v2, v1, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 331
    .line 332
    :cond_b
    iget-object v1, v1, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    .line 333
    .line 334
    if-eqz v1, :cond_c

    .line 335
    .line 336
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/knox/IMiscPolicy;->clearAllGlobalProxy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .line 338
    .line 339
    :catch_0
    :cond_c
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 340
    .line 341
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 342
    .line 343
    const-class v1, Landroid/net/ConnectivityManager;

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 350
    .line 351
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$0:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 358
    .line 359
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$1:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast p0, Ljava/lang/String;

    .line 362
    .line 363
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    const-class v0, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 369
    .line 370
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    check-cast v0, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 375
    .line 376
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 377
    .line 378
    const/16 v1, 0x64

    .line 379
    .line 380
    const-string v2, "DevicePolicyManager.setTimeZone()"

    .line 381
    .line 382
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/alarm/AlarmManagerService;->setTimeZoneImpl(ILjava/lang/String;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$0:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 389
    .line 390
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$1:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast p0, Landroid/content/Intent;

    .line 393
    .line 394
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    monitor-enter v1

    .line 399
    :try_start_1
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 400
    .line 401
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-eqz v2, :cond_d

    .line 406
    .line 407
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 408
    .line 409
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 418
    .line 419
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerComponent()Landroid/content/ComponentName;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-virtual {p0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 424
    .line 425
    .line 426
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 427
    .line 428
    invoke-virtual {v3, p0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 429
    .line 430
    .line 431
    goto :goto_6

    .line 432
    :catchall_0
    move-exception p0

    .line 433
    goto :goto_8

    .line 434
    :cond_d
    :goto_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    :try_start_2
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 436
    .line 437
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    .line 445
    .line 446
    .line 447
    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 448
    array-length v2, v1

    .line 449
    const/4 v3, 0x0

    .line 450
    :goto_7
    if-ge v3, v2, :cond_10

    .line 451
    .line 452
    aget v4, v1, v3

    .line 453
    .line 454
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    monitor-enter v5

    .line 459
    :try_start_3
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 460
    .line 461
    invoke-virtual {v6, v4}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    .line 462
    .line 463
    .line 464
    move-result-object v6

    .line 465
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 466
    if-eqz v6, :cond_e

    .line 467
    .line 468
    invoke-virtual {p0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 469
    .line 470
    .line 471
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 472
    .line 473
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 474
    .line 475
    .line 476
    move-result-object v6

    .line 477
    invoke-virtual {v5, p0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 478
    .line 479
    .line 480
    :cond_e
    invoke-static {}, Landroid/app/admin/flags/Flags;->permissionMigrationForZeroTrustImplEnabled()Z

    .line 481
    .line 482
    .line 483
    move-result v5

    .line 484
    if-eqz v5, :cond_f

    .line 485
    .line 486
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    const-string v6, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    .line 491
    .line 492
    invoke-virtual {v0, v4, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getRoleHolderPackageNameOnUser(ILjava/lang/String;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    if-eqz v4, :cond_f

    .line 497
    .line 498
    invoke-virtual {v0, p0, v5, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->broadcastExplicitIntentToPackage(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 502
    .line 503
    goto :goto_7

    .line 504
    :catchall_1
    move-exception p0

    .line 505
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 506
    throw p0

    .line 507
    :catch_1
    move-exception p0

    .line 508
    const-string v0, "DevicePolicyManager"

    .line 509
    .line 510
    const-string v1, "Could not retrieve the list of running users"

    .line 511
    .line 512
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    .line 514
    .line 515
    :cond_10
    return-void

    .line 516
    :goto_8
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 517
    throw p0

    .line 518
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$0:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 521
    .line 522
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;->f$1:Ljava/lang/Object;

    .line 523
    .line 524
    check-cast p0, Landroid/app/admin/WifiSsidPolicy;

    .line 525
    .line 526
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 527
    .line 528
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 529
    .line 530
    const-class v1, Landroid/net/wifi/WifiManager;

    .line 531
    .line 532
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 537
    .line 538
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->notifyWifiSsidPolicyChanged(Landroid/app/admin/WifiSsidPolicy;)V

    .line 539
    .line 540
    .line 541
    return-void

    .line 542
    nop

    .line 543
    :pswitch_data_0
    .packed-switch 0x0
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
