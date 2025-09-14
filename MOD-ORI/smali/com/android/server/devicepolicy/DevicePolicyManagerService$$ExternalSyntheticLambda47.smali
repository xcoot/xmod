.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/UserHandle;Landroid/content/ComponentName;Lcom/android/server/devicepolicy/CallerIdentity;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$3:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$2:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Ljava/lang/String;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$3:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lcom/android/server/devicepolicy/CallerIdentity;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget v3, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 24
    .line 25
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const-string v4, "Can\'t get permission state for uninstalled package "

    .line 33
    .line 34
    const-string v5, "Can\'t get permission state for missing package "

    .line 35
    .line 36
    iget-object v6, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 37
    .line 38
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 39
    .line 40
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-virtual {v0, p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getTargetSdk(ILjava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const/16 v6, 0x1d

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    if-ge p0, v6, :cond_0

    .line 52
    .line 53
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 54
    .line 55
    invoke-interface {p0, v2, v1, v3}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    const-class p0, Lcom/android/server/pm/PackageManagerLocal;

    .line 66
    .line 67
    invoke-static {p0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lcom/android/server/pm/PackageManagerLocal;

    .line 72
    .line 73
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Lcom/android/server/pm/pkg/PackageState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    const-string v8, "DevicePolicyManager"

    .line 88
    .line 89
    if-nez v6, :cond_1

    .line 90
    .line 91
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    .line 107
    .line 108
    .line 109
    goto :goto_4

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    goto :goto_5

    .line 112
    :cond_1
    :try_start_2
    invoke-interface {v6, v3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-nez v5, :cond_2

    .line 121
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 139
    .line 140
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    invoke-static {v3, v5}, Landroid/os/UserHandle;->getUid(II)I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    const/4 v6, -0x1

    .line 149
    invoke-static {v4, v2, v6, v5, v1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    if-eqz v4, :cond_3

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    move v6, v7

    .line 157
    :goto_1
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    .line 158
    .line 159
    .line 160
    move p0, v6

    .line 161
    :goto_2
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 162
    .line 163
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    const/4 v1, 0x4

    .line 178
    and-int/2addr v0, v1

    .line 179
    if-eq v0, v1, :cond_4

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_4
    if-nez p0, :cond_5

    .line 183
    .line 184
    const/4 p0, 0x1

    .line 185
    :goto_3
    move v7, p0

    .line 186
    goto :goto_4

    .line 187
    :cond_5
    const/4 p0, 0x2

    .line 188
    goto :goto_3

    .line 189
    :goto_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :goto_5
    if-eqz p0, :cond_6

    .line 195
    .line 196
    :try_start_3
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 197
    .line 198
    .line 199
    goto :goto_6

    .line 200
    :catchall_1
    move-exception p0

    .line 201
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 202
    .line 203
    .line 204
    :cond_6
    :goto_6
    throw v0

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 206
    .line 207
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$1:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v1, Landroid/os/UserHandle;

    .line 210
    .line 211
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$2:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v2, Landroid/content/ComponentName;

    .line 214
    .line 215
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$3:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p0, Lcom/android/server/devicepolicy/CallerIdentity;

    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    invoke-virtual {v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_7

    .line 231
    .line 232
    const-string/jumbo v3, "no_remove_managed_profile"

    .line 233
    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_7
    const-string/jumbo v3, "no_remove_user"

    .line 237
    .line 238
    .line 239
    :goto_7
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 240
    .line 241
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    invoke-virtual {v0, v2, p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isAdminAffectedByRestriction(Landroid/content/ComponentName;ILjava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result p0

    .line 249
    if-eqz p0, :cond_8

    .line 250
    .line 251
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    const-string v0, "DevicePolicyManager"

    .line 256
    .line 257
    const-string v1, "The device owner cannot remove a user because %s is enabled, and was not set by the device owner"

    .line 258
    .line 259
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 263
    .line 264
    goto :goto_8

    .line 265
    :cond_8
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 266
    .line 267
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerInternal;->removeUserEvenWhenDisallowed(I)Z

    .line 272
    .line 273
    .line 274
    move-result p0

    .line 275
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 276
    .line 277
    .line 278
    move-result-object p0

    .line 279
    :goto_8
    return-object p0

    .line 280
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 281
    .line 282
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$1:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v1, Ljava/lang/String;

    .line 285
    .line 286
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$2:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v2, Ljava/lang/String;

    .line 289
    .line 290
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda47;->f$3:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast p0, Ljava/lang/String;

    .line 293
    .line 294
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceManagementResourcesProvider:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    .line 295
    .line 296
    iget-object v3, v0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    .line 297
    .line 298
    monitor-enter v3

    .line 299
    :try_start_4
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->getDrawableForSourceLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    if-eqz p0, :cond_9

    .line 304
    .line 305
    monitor-exit v3

    .line 306
    goto :goto_9

    .line 307
    :catchall_2
    move-exception p0

    .line 308
    goto :goto_a

    .line 309
    :cond_9
    iget-object p0, v0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    .line 310
    .line 311
    check-cast p0, Ljava/util/HashMap;

    .line 312
    .line 313
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result p0

    .line 317
    if-nez p0, :cond_a

    .line 318
    .line 319
    monitor-exit v3

    .line 320
    const/4 p0, 0x0

    .line 321
    goto :goto_9

    .line 322
    :cond_a
    iget-object p0, v0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    .line 323
    .line 324
    check-cast p0, Ljava/util/HashMap;

    .line 325
    .line 326
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    check-cast p0, Ljava/util/Map;

    .line 331
    .line 332
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    check-cast p0, Landroid/app/admin/ParcelableResource;

    .line 337
    .line 338
    monitor-exit v3

    .line 339
    :goto_9
    return-object p0

    .line 340
    :goto_a
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 341
    throw p0

    .line 342
    nop

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
