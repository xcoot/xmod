.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Lcom/android/server/devicepolicy/CallerIdentity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 14
    .line 15
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 31
    .line 32
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    and-int/lit16 p0, p0, 0x200

    .line 41
    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 p0, 0x0

    .line 47
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget v1, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 60
    .line 61
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdmins(I)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/content/ComponentName;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    iget-object v4, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_1

    .line 98
    .line 99
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 100
    .line 101
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    invoke-virtual {v0, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(ILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    const/4 p0, 0x0

    .line 111
    :goto_1
    return-object p0

    .line 112
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    new-instance v1, Landroid/content/Intent;

    .line 120
    .line 121
    const-string v2, "android.app.action.CHECK_POLICY_COMPLIANCE"

    .line 122
    .line 123
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v2, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 140
    .line 141
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    const/4 v2, 0x0

    .line 146
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    xor-int/lit8 p0, p0, 0x1

    .line 155
    .line 156
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    return-object p0

    .line 161
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 168
    .line 169
    const-class v1, Landroid/net/VpnManager;

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Landroid/net/VpnManager;

    .line 176
    .line 177
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 178
    .line 179
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    invoke-virtual {v0, p0}, Landroid/net/VpnManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0

    .line 188
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 189
    .line 190
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 191
    .line 192
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 193
    .line 194
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 195
    .line 196
    const-class v1, Landroid/net/VpnManager;

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Landroid/net/VpnManager;

    .line 203
    .line 204
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 205
    .line 206
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 207
    .line 208
    .line 209
    move-result p0

    .line 210
    invoke-virtual {v0, p0}, Landroid/net/VpnManager;->getVpnLockdownAllowlist(I)Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    return-object p0

    .line 215
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 216
    .line 217
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 218
    .line 219
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    if-nez v1, :cond_3

    .line 226
    .line 227
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_3
    iget v3, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 231
    .line 232
    const/4 v5, 0x0

    .line 233
    const/4 v6, 0x0

    .line 234
    const/16 v2, 0x68

    .line 235
    .line 236
    iget-object v4, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    if-nez p0, :cond_4

    .line 243
    .line 244
    const/4 p0, 0x1

    .line 245
    goto :goto_2

    .line 246
    :cond_4
    const/4 p0, 0x0

    .line 247
    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    :goto_3
    return-object p0

    .line 252
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 253
    .line 254
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 255
    .line 256
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 257
    .line 258
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 259
    .line 260
    const-class v1, Landroid/net/VpnManager;

    .line 261
    .line 262
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Landroid/net/VpnManager;

    .line 267
    .line 268
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 269
    .line 270
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 271
    .line 272
    .line 273
    move-result p0

    .line 274
    invoke-virtual {v0, p0}, Landroid/net/VpnManager;->isVpnLockdownEnabled(I)Z

    .line 275
    .line 276
    .line 277
    move-result p0

    .line 278
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    return-object p0

    .line 283
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 284
    .line 285
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 286
    .line 287
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 288
    .line 289
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 290
    .line 291
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 296
    .line 297
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 298
    .line 299
    .line 300
    move-result p0

    .line 301
    invoke-virtual {v0, p0}, Landroid/os/UserManager;->isUserEphemeral(I)Z

    .line 302
    .line 303
    .line 304
    move-result p0

    .line 305
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    return-object p0

    .line 310
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 311
    .line 312
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 313
    .line 314
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    const-string v0, "backup"

    .line 325
    .line 326
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    if-eqz v0, :cond_5

    .line 335
    .line 336
    iget p0, p0, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 337
    .line 338
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 339
    .line 340
    .line 341
    move-result p0

    .line 342
    invoke-interface {v0, p0}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    .line 343
    .line 344
    .line 345
    move-result p0

    .line 346
    if-eqz p0, :cond_5

    .line 347
    .line 348
    const/4 p0, 0x1

    .line 349
    goto :goto_4

    .line 350
    :catchall_0
    move-exception p0

    .line 351
    goto :goto_6

    .line 352
    :catch_0
    move-exception p0

    .line 353
    goto :goto_5

    .line 354
    :cond_5
    const/4 p0, 0x0

    .line 355
    :goto_4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 356
    .line 357
    .line 358
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :try_start_1
    monitor-exit v1

    .line 360
    return-object p0

    .line 361
    :goto_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 362
    .line 363
    const-string v2, "Failed requesting backup service state."

    .line 364
    .line 365
    invoke-direct {v0, v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    .line 367
    .line 368
    throw v0

    .line 369
    :goto_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    throw p0

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
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
