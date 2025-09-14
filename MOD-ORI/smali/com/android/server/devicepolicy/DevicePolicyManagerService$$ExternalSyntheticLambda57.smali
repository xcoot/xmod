.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda57;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyConstantsObserver;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    const-string v1, "android.app.action.DEVICE_POLICY_CONSTANTS_CHANGED"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/high16 v1, 0x40000000    # 2.0f

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyConstantsObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ge v2, v3, :cond_0

    .line 39
    .line 40
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyConstantsObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 41
    .line 42
    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 49
    .line 50
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 51
    .line 52
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    return-void

    .line 63
    :pswitch_0
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateDialerAndSmsManagedShortcutsOverrideCache()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_1
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerOrProfileOwnerOfOrganizationOwnedDeviceLocked()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/4 v1, 0x1

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Lcom/android/server/devicepolicy/ActiveAdmin;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    iget-boolean v2, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    .line 85
    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-boolean v2, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    .line 99
    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    :cond_2
    iget-object v2, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-static {v2, v3, v0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->createEnterpriseEnforcingAdmin(Landroid/content/ComponentName;ILcom/android/server/devicepolicy/ActiveAdmin;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 121
    .line 122
    sget-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 123
    .line 124
    new-instance v4, Landroid/app/admin/BooleanPolicyValue;

    .line 125
    .line 126
    invoke-direct {v4, v1}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-eqz v2, :cond_5

    .line 147
    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 153
    .line 154
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 155
    .line 156
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerLocked(I)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    if-eqz v2, :cond_4

    .line 161
    .line 162
    iget-boolean v3, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->disableScreenCapture:Z

    .line 163
    .line 164
    if-eqz v3, :cond_4

    .line 165
    .line 166
    iget-object v3, v2, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 167
    .line 168
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    invoke-static {v3, v4, v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->createEnterpriseEnforcingAdmin(Landroid/content/ComponentName;ILcom/android/server/devicepolicy/ActiveAdmin;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 185
    .line 186
    sget-object v6, Lcom/android/server/devicepolicy/PolicyDefinition;->SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 187
    .line 188
    new-instance v8, Landroid/app/admin/BooleanPolicyValue;

    .line 189
    .line 190
    invoke-direct {v8, v1}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    const/4 v10, 0x0

    .line 202
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_5
    return-void

    .line 207
    :pswitch_2
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 208
    .line 209
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 210
    .line 211
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    add-int/lit8 v1, v1, -0x1

    .line 220
    .line 221
    :goto_2
    if-ltz v1, :cond_9

    .line 222
    .line 223
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 228
    .line 229
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 230
    .line 231
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->canDPCManagedUserUseLockTaskLocked(I)Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-eqz v3, :cond_6

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_6
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 239
    .line 240
    sget-object v4, Lcom/android/server/devicepolicy/PolicyDefinition;->LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 241
    .line 242
    invoke-virtual {v3, v4, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/LinkedHashMap;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    new-instance v4, Ljava/util/HashSet;

    .line 247
    .line 248
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-eqz v4, :cond_8

    .line 264
    .line 265
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    check-cast v4, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 270
    .line 271
    const-string/jumbo v5, "enterprise"

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4, v5}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    if-eqz v5, :cond_7

    .line 279
    .line 280
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 281
    .line 282
    sget-object v6, Lcom/android/server/devicepolicy/PolicyDefinition;->LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 283
    .line 284
    invoke-virtual {v5, v6, v4, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    .line 285
    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_8
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_9
    return-void

    .line 292
    :pswitch_3
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 293
    .line 294
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateDialerAndSmsManagedShortcutsOverrideCache()V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :pswitch_4
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 299
    .line 300
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 301
    .line 302
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    if-eqz v1, :cond_c

    .line 315
    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 321
    .line 322
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 323
    .line 324
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerOrDeviceOwnerLocked(I)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    if-eqz v1, :cond_a

    .line 329
    .line 330
    iget-object v2, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 331
    .line 332
    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->createEnterpriseEnforcingAdmin(Landroid/content/ComponentName;ILcom/android/server/devicepolicy/ActiveAdmin;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    iget-object v3, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .line 349
    .line 350
    if-eqz v3, :cond_b

    .line 351
    .line 352
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 353
    .line 354
    sget-object v5, Lcom/android/server/devicepolicy/PolicyDefinition;->PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 355
    .line 356
    new-instance v7, Landroid/app/admin/PackageSetPolicyValue;

    .line 357
    .line 358
    new-instance v3, Ljava/util/HashSet;

    .line 359
    .line 360
    iget-object v6, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .line 361
    .line 362
    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 363
    .line 364
    .line 365
    invoke-direct {v7, v3}, Landroid/app/admin/PackageSetPolicyValue;-><init>(Ljava/util/Set;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 373
    .line 374
    .line 375
    move-result v8

    .line 376
    const/4 v9, 0x0

    .line 377
    move-object v6, v2

    .line 378
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 379
    .line 380
    .line 381
    :cond_b
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    if-eqz v3, :cond_a

    .line 386
    .line 387
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    iget-object v3, v3, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .line 392
    .line 393
    if-eqz v3, :cond_a

    .line 394
    .line 395
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 396
    .line 397
    sget-object v5, Lcom/android/server/devicepolicy/PolicyDefinition;->PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 398
    .line 399
    new-instance v7, Landroid/app/admin/PackageSetPolicyValue;

    .line 400
    .line 401
    new-instance v3, Ljava/util/HashSet;

    .line 402
    .line 403
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 404
    .line 405
    .line 406
    move-result-object v6

    .line 407
    iget-object v6, v6, Lcom/android/server/devicepolicy/ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .line 408
    .line 409
    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 410
    .line 411
    .line 412
    invoke-direct {v7, v3}, Landroid/app/admin/PackageSetPolicyValue;-><init>(Ljava/util/Set;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    .line 424
    .line 425
    .line 426
    move-result v8

    .line 427
    const/4 v9, 0x0

    .line 428
    move-object v6, v2

    .line 429
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 430
    .line 431
    .line 432
    goto :goto_5

    .line 433
    :cond_c
    return-void

    .line 434
    :pswitch_5
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 435
    .line 436
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 437
    .line 438
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    if-eqz v1, :cond_f

    .line 451
    .line 452
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 457
    .line 458
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 459
    .line 460
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerOrDeviceOwnerLocked(I)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    if-eqz v1, :cond_d

    .line 465
    .line 466
    iget-object v2, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 467
    .line 468
    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->createEnterpriseEnforcingAdmin(Landroid/content/ComponentName;ILcom/android/server/devicepolicy/ActiveAdmin;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    iget-object v3, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    .line 485
    .line 486
    check-cast v3, Landroid/util/ArraySet;

    .line 487
    .line 488
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 493
    .line 494
    .line 495
    move-result v4

    .line 496
    const/4 v10, 0x1

    .line 497
    if-eqz v4, :cond_e

    .line 498
    .line 499
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    check-cast v4, Ljava/lang/String;

    .line 504
    .line 505
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 506
    .line 507
    invoke-static {v4}, Lcom/android/server/devicepolicy/PolicyDefinition;->ACCOUNT_MANAGEMENT_DISABLED(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 508
    .line 509
    .line 510
    move-result-object v6

    .line 511
    new-instance v7, Landroid/app/admin/BooleanPolicyValue;

    .line 512
    .line 513
    invoke-direct {v7, v10}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 521
    .line 522
    .line 523
    move-result v8

    .line 524
    const/4 v9, 0x0

    .line 525
    move-object v4, v5

    .line 526
    move-object v5, v6

    .line 527
    move-object v6, v2

    .line 528
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 529
    .line 530
    .line 531
    goto :goto_6

    .line 532
    :cond_e
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    if-eqz v3, :cond_d

    .line 537
    .line 538
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    iget-object v3, v3, Lcom/android/server/devicepolicy/ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    .line 543
    .line 544
    check-cast v3, Landroid/util/ArraySet;

    .line 545
    .line 546
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    if-eqz v4, :cond_d

    .line 555
    .line 556
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    check-cast v4, Ljava/lang/String;

    .line 561
    .line 562
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 563
    .line 564
    invoke-static {v4}, Lcom/android/server/devicepolicy/PolicyDefinition;->ACCOUNT_MANAGEMENT_DISABLED(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 565
    .line 566
    .line 567
    move-result-object v6

    .line 568
    new-instance v7, Landroid/app/admin/BooleanPolicyValue;

    .line 569
    .line 570
    invoke-direct {v7, v10}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 574
    .line 575
    .line 576
    move-result-object v4

    .line 577
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 578
    .line 579
    .line 580
    move-result v4

    .line 581
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    .line 582
    .line 583
    .line 584
    move-result v8

    .line 585
    const/4 v9, 0x0

    .line 586
    move-object v4, v5

    .line 587
    move-object v5, v6

    .line 588
    move-object v6, v2

    .line 589
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 590
    .line 591
    .line 592
    goto :goto_7

    .line 593
    :cond_f
    return-void

    .line 594
    :pswitch_6
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 595
    .line 596
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 597
    .line 598
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    :cond_10
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 607
    .line 608
    .line 609
    move-result v1

    .line 610
    if-eqz v1, :cond_12

    .line 611
    .line 612
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 617
    .line 618
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 619
    .line 620
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerOrDeviceOwnerLocked(I)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    if-eqz v1, :cond_10

    .line 625
    .line 626
    iget-object v2, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    .line 627
    .line 628
    if-eqz v2, :cond_10

    .line 629
    .line 630
    iget-object v2, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 631
    .line 632
    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 633
    .line 634
    .line 635
    move-result-object v2

    .line 636
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 641
    .line 642
    .line 643
    move-result v3

    .line 644
    invoke-static {v2, v3, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->createEnterpriseEnforcingAdmin(Landroid/content/ComponentName;ILcom/android/server/devicepolicy/ActiveAdmin;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 645
    .line 646
    .line 647
    move-result-object v6

    .line 648
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Lcom/android/server/devicepolicy/ActiveAdmin;)Z

    .line 649
    .line 650
    .line 651
    move-result v2

    .line 652
    if-eqz v2, :cond_11

    .line 653
    .line 654
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 655
    .line 656
    sget-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 657
    .line 658
    new-instance v4, Landroid/app/admin/PackageSetPolicyValue;

    .line 659
    .line 660
    new-instance v5, Ljava/util/HashSet;

    .line 661
    .line 662
    iget-object v1, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    .line 663
    .line 664
    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 665
    .line 666
    .line 667
    invoke-direct {v4, v5}, Landroid/app/admin/PackageSetPolicyValue;-><init>(Ljava/util/Set;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v2, v3, v6, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)V

    .line 671
    .line 672
    .line 673
    goto :goto_8

    .line 674
    :cond_11
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 675
    .line 676
    sget-object v5, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 677
    .line 678
    new-instance v7, Landroid/app/admin/PackageSetPolicyValue;

    .line 679
    .line 680
    new-instance v2, Ljava/util/HashSet;

    .line 681
    .line 682
    iget-object v3, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    .line 683
    .line 684
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 685
    .line 686
    .line 687
    invoke-direct {v7, v2}, Landroid/app/admin/PackageSetPolicyValue;-><init>(Ljava/util/Set;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 695
    .line 696
    .line 697
    move-result v8

    .line 698
    const/4 v9, 0x0

    .line 699
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 700
    .line 701
    .line 702
    goto :goto_8

    .line 703
    :cond_12
    return-void

    .line 704
    :pswitch_7
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 705
    .line 706
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 707
    .line 708
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    if-eqz v1, :cond_13

    .line 721
    .line 722
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 727
    .line 728
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mStateCache:Lcom/android/server/devicepolicy/DeviceStateCacheImpl;

    .line 729
    .line 730
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 731
    .line 732
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isUserAffiliatedWithDeviceLocked(I)Z

    .line 733
    .line 734
    .line 735
    move-result v3

    .line 736
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 737
    .line 738
    .line 739
    move-result-object v3

    .line 740
    invoke-virtual {v2, v1, v3}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl;->setHasAffiliationWithDevice(ILjava/lang/Boolean;)V

    .line 741
    .line 742
    .line 743
    goto :goto_9

    .line 744
    :cond_13
    return-void

    .line 745
    :pswitch_8
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 746
    .line 747
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 748
    .line 749
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 754
    .line 755
    .line 756
    move-result-object v7

    .line 757
    :cond_14
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 758
    .line 759
    .line 760
    move-result v0

    .line 761
    if-eqz v0, :cond_1a

    .line 762
    .line 763
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 768
    .line 769
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 770
    .line 771
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerOrDeviceOwnerLocked(I)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 772
    .line 773
    .line 774
    move-result-object v8

    .line 775
    if-nez v8, :cond_15

    .line 776
    .line 777
    goto :goto_a

    .line 778
    :cond_15
    iget-object v1, v8, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 779
    .line 780
    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    iget v9, v0, Landroid/content/pm/UserInfo;->id:I

    .line 785
    .line 786
    invoke-static {v1, v9, v8}, Lcom/android/server/devicepolicy/EnforcingAdmin;->createEnterpriseEnforcingAdmin(Landroid/content/ComponentName;ILcom/android/server/devicepolicy/ActiveAdmin;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 787
    .line 788
    .line 789
    move-result-object v10

    .line 790
    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Lcom/android/server/devicepolicy/ActiveAdmin;)Z

    .line 791
    .line 792
    .line 793
    move-result v0

    .line 794
    if-eqz v0, :cond_16

    .line 795
    .line 796
    const/4 v0, 0x0

    .line 797
    :goto_b
    move v11, v0

    .line 798
    goto :goto_c

    .line 799
    :cond_16
    invoke-virtual {p0, v9, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwner(ILandroid/content/ComponentName;)Z

    .line 800
    .line 801
    .line 802
    move-result v0

    .line 803
    if-eqz v0, :cond_17

    .line 804
    .line 805
    invoke-virtual {p0, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwnerOfOrganizationOwnedDevice(I)Z

    .line 806
    .line 807
    .line 808
    move-result v0

    .line 809
    if-eqz v0, :cond_17

    .line 810
    .line 811
    const/4 v0, 0x2

    .line 812
    goto :goto_b

    .line 813
    :cond_17
    invoke-virtual {p0, v9, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isProfileOwner(ILandroid/content/ComponentName;)Z

    .line 814
    .line 815
    .line 816
    move-result v0

    .line 817
    if-eqz v0, :cond_19

    .line 818
    .line 819
    const/4 v0, 0x1

    .line 820
    goto :goto_b

    .line 821
    :goto_c
    invoke-virtual {v8}, Lcom/android/server/devicepolicy/ActiveAdmin;->ensureUserRestrictions()Landroid/os/Bundle;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 830
    .line 831
    .line 832
    move-result-object v12

    .line 833
    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 834
    .line 835
    .line 836
    move-result v0

    .line 837
    if-eqz v0, :cond_18

    .line 838
    .line 839
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    move-object v4, v0

    .line 844
    check-cast v4, Ljava/lang/String;

    .line 845
    .line 846
    const/4 v5, 0x1

    .line 847
    const/4 v6, 0x0

    .line 848
    move-object v0, p0

    .line 849
    move v1, v11

    .line 850
    move-object v2, v10

    .line 851
    move v3, v9

    .line 852
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setBackwardCompatibleUserRestrictionLocked(ILcom/android/server/devicepolicy/EnforcingAdmin;ILjava/lang/String;ZZ)V

    .line 853
    .line 854
    .line 855
    goto :goto_d

    .line 856
    :cond_18
    invoke-virtual {v8}, Lcom/android/server/devicepolicy/ActiveAdmin;->getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->ensureUserRestrictions()Landroid/os/Bundle;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 869
    .line 870
    .line 871
    move-result-object v8

    .line 872
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 873
    .line 874
    .line 875
    move-result v0

    .line 876
    if-eqz v0, :cond_14

    .line 877
    .line 878
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    move-object v4, v0

    .line 883
    check-cast v4, Ljava/lang/String;

    .line 884
    .line 885
    const/4 v5, 0x1

    .line 886
    const/4 v6, 0x1

    .line 887
    move-object v0, p0

    .line 888
    move v1, v11

    .line 889
    move-object v2, v10

    .line 890
    move v3, v9

    .line 891
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setBackwardCompatibleUserRestrictionLocked(ILcom/android/server/devicepolicy/EnforcingAdmin;ILjava/lang/String;ZZ)V

    .line 892
    .line 893
    .line 894
    goto :goto_e

    .line 895
    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 896
    .line 897
    const-string v0, "Invalid DO/PO state"

    .line 898
    .line 899
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    throw p0

    .line 903
    :cond_1a
    return-void

    .line 904
    :pswitch_9
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 905
    .line 906
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 907
    .line 908
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 909
    .line 910
    .line 911
    move-result v0

    .line 912
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 913
    .line 914
    .line 915
    move-result-object p0

    .line 916
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isMain()Z

    .line 917
    .line 918
    .line 919
    move-result p0

    .line 920
    if-nez p0, :cond_1b

    .line 921
    .line 922
    const-string p0, "DevicePolicyManager"

    .line 923
    .line 924
    const-string v0, "Only the system update service in the main user can broadcast update information."

    .line 925
    .line 926
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .line 928
    .line 929
    :cond_1b
    return-void

    .line 930
    :pswitch_a
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 931
    .line 932
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 933
    .line 934
    new-instance v0, Landroid/content/Intent;

    .line 935
    .line 936
    const-string v1, "android.app.action.SYSTEM_UPDATE_POLICY_CHANGED"

    .line 937
    .line 938
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .line 940
    .line 941
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 942
    .line 943
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 944
    .line 945
    .line 946
    return-void

    .line 947
    :pswitch_b
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 948
    .line 949
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdminLocked()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 950
    .line 951
    .line 952
    move-result-object v0

    .line 953
    if-eqz v0, :cond_1c

    .line 954
    .line 955
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    .line 956
    .line 957
    .line 958
    move-result-object v1

    .line 959
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 960
    .line 961
    .line 962
    move-result v6

    .line 963
    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 964
    .line 965
    .line 966
    move-result-object v1

    .line 967
    iget-object v2, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    .line 968
    .line 969
    iget v1, v1, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    .line 970
    .line 971
    check-cast v2, Ljava/util/ArrayList;

    .line 972
    .line 973
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 974
    .line 975
    .line 976
    move-result v3

    .line 977
    if-nez v3, :cond_1c

    .line 978
    .line 979
    iget-object v3, v0, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 980
    .line 981
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 982
    .line 983
    .line 984
    move-result-object v3

    .line 985
    invoke-static {v3, v6, v0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->createEnterpriseEnforcingAdmin(Landroid/content/ComponentName;ILcom/android/server/devicepolicy/ActiveAdmin;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 986
    .line 987
    .line 988
    move-result-object v4

    .line 989
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 990
    .line 991
    sget-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 992
    .line 993
    new-instance v5, Landroid/app/admin/LockTaskPolicy;

    .line 994
    .line 995
    new-instance v7, Ljava/util/HashSet;

    .line 996
    .line 997
    invoke-direct {v7, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 998
    .line 999
    .line 1000
    invoke-direct {v5, v7, v1}, Landroid/app/admin/LockTaskPolicy;-><init>(Ljava/util/Set;I)V

    .line 1001
    .line 1002
    .line 1003
    const/4 v7, 0x0

    .line 1004
    move-object v2, v0

    .line 1005
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 1006
    .line 1007
    .line 1008
    :cond_1c
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 1009
    .line 1010
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 1011
    .line 1012
    .line 1013
    move-result-object v0

    .line 1014
    array-length v1, v0

    .line 1015
    const/4 v2, 0x0

    .line 1016
    :goto_f
    if-ge v2, v1, :cond_1e

    .line 1017
    .line 1018
    aget v7, v0, v2

    .line 1019
    .line 1020
    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerLocked(I)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v3

    .line 1024
    if-eqz v3, :cond_1d

    .line 1025
    .line 1026
    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->canDPCManagedUserUseLockTaskLocked(I)Z

    .line 1027
    .line 1028
    .line 1029
    move-result v4

    .line 1030
    if-eqz v4, :cond_1d

    .line 1031
    .line 1032
    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v4

    .line 1036
    iget-object v5, v4, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    .line 1037
    .line 1038
    iget v4, v4, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    .line 1039
    .line 1040
    check-cast v5, Ljava/util/ArrayList;

    .line 1041
    .line 1042
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1043
    .line 1044
    .line 1045
    move-result v6

    .line 1046
    if-nez v6, :cond_1d

    .line 1047
    .line 1048
    iget-object v6, v3, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 1049
    .line 1050
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v6

    .line 1054
    invoke-static {v6, v7, v3}, Lcom/android/server/devicepolicy/EnforcingAdmin;->createEnterpriseEnforcingAdmin(Landroid/content/ComponentName;ILcom/android/server/devicepolicy/ActiveAdmin;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v6

    .line 1058
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 1059
    .line 1060
    sget-object v8, Lcom/android/server/devicepolicy/PolicyDefinition;->LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 1061
    .line 1062
    new-instance v9, Landroid/app/admin/LockTaskPolicy;

    .line 1063
    .line 1064
    new-instance v10, Ljava/util/HashSet;

    .line 1065
    .line 1066
    invoke-direct {v10, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1067
    .line 1068
    .line 1069
    invoke-direct {v9, v10, v4}, Landroid/app/admin/LockTaskPolicy;-><init>(Ljava/util/Set;I)V

    .line 1070
    .line 1071
    .line 1072
    const/4 v10, 0x0

    .line 1073
    move-object v4, v8

    .line 1074
    move-object v5, v6

    .line 1075
    move-object v6, v9

    .line 1076
    move v8, v10

    .line 1077
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 1078
    .line 1079
    .line 1080
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    .line 1081
    .line 1082
    goto :goto_f

    .line 1083
    :cond_1e
    return-void

    .line 1084
    :pswitch_c
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 1085
    .line 1086
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 1087
    .line 1088
    const-string v0, "auto_time"

    .line 1089
    .line 1090
    const/4 v1, 0x1

    .line 1091
    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->settingsGlobalPutInt(Ljava/lang/String;I)V

    .line 1092
    .line 1093
    .line 1094
    return-void

    .line 1095
    :pswitch_d
    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 1096
    .line 1097
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 1098
    .line 1099
    new-instance v1, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;

    .line 1100
    .line 1101
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 1102
    .line 1103
    invoke-direct {v1, v0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;-><init>(Landroid/content/Context;)V

    .line 1104
    .line 1105
    .line 1106
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mEsidCalculator:Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;

    .line 1107
    .line 1108
    return-void

    .line 1109
    :pswitch_data_0
    .packed-switch 0x0
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
