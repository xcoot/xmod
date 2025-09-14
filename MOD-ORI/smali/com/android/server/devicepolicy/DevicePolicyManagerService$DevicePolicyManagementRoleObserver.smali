.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mRm:Landroid/app/role/RoleManager;

.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    const-class p1, Landroid/app/role/RoleManager;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/app/role/RoleManager;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mRm:Landroid/app/role/RoleManager;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final getDefaultRoleHolderPackageNameAndSignature()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v0, 0x104003d

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string v0, ":"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    filled-new-array {p0}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v2, "android.app.role.SYSTEM_FINANCED_DEVICE_CONTROLLER"

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    const-string/jumbo v2, "role:"

    .line 22
    .line 23
    .line 24
    invoke-static {v2, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    iget-boolean v4, v3, Lcom/android/server/devicepolicy/EnforcingAdmin;->mIsRoleAuthority:Z

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    iget-object v4, v3, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 59
    .line 60
    iget v5, v3, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 61
    .line 62
    invoke-static {v5, v4}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthoritiesOrDefault(ILjava/lang/String;)Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    iput-object v4, v3, Lcom/android/server/devicepolicy/EnforcingAdmin;->mAuthorities:Ljava/util/Set;

    .line 67
    .line 68
    :cond_2
    invoke-virtual {v3, v2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_1

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    :goto_1
    const-string v0, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const-string v2, "DevicePolicyManager"

    .line 85
    .line 86
    if-eqz v1, :cond_10

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-virtual {p1, v1, v0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getRoleHolderPackageNameOnUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getDefaultRoleHolderPackageNameAndSignature()[Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const/4 v0, 0x0

    .line 101
    const/4 v1, 0x0

    .line 102
    if-nez p1, :cond_4

    .line 103
    .line 104
    move-object p1, v1

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    aget-object p1, p1, v0

    .line 107
    .line 108
    :goto_2
    const/4 v3, 0x1

    .line 109
    if-eqz v5, :cond_6

    .line 110
    .line 111
    if-nez p1, :cond_5

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_7

    .line 119
    .line 120
    :cond_6
    :goto_3
    move p1, v0

    .line 121
    goto :goto_6

    .line 122
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getDefaultRoleHolderPackageNameAndSignature()[Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_9

    .line 127
    .line 128
    array-length v4, p1

    .line 129
    const/4 v6, 0x2

    .line 130
    if-ge v4, v6, :cond_8

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_8
    aget-object p1, p1, v3

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_9
    :goto_4
    move-object p1, v1

    .line 137
    :goto_5
    if-nez p1, :cond_a

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_a
    :try_start_0
    new-instance v4, Landroid/content/pm/Signature;

    .line 141
    .line 142
    invoke-direct {v4, p1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 146
    .line 147
    .line 148
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 150
    .line 151
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 152
    .line 153
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 154
    .line 155
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v4, v5, p1, v3}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    goto :goto_6

    .line 164
    :catch_0
    move-exception v4

    .line 165
    const-string v6, "Cannot parse signing certificate: "

    .line 166
    .line 167
    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-static {v2, p1, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :goto_6
    if-eqz p1, :cond_b

    .line 176
    .line 177
    const-string/jumbo p0, "onRoleHoldersChanged: Default role holder is set, returning early"

    .line 178
    .line 179
    .line 180
    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    goto :goto_8

    .line 184
    :cond_b
    if-nez v5, :cond_c

    .line 185
    .line 186
    const-string/jumbo p0, "onRoleHoldersChanged: New role holder is null, returning early"

    .line 187
    .line 188
    .line 189
    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    goto :goto_8

    .line 193
    :cond_c
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->nonTestNonPrecreatedUsersExist()Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_d

    .line 200
    .line 201
    move p1, v0

    .line 202
    goto :goto_7

    .line 203
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasIncompatibleAccountsOnAnyUser()Z

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    xor-int/2addr p1, v3

    .line 208
    :goto_7
    if-eqz p1, :cond_e

    .line 209
    .line 210
    const-string/jumbo p1, "onRoleHoldersChanged: Updating current role holder to "

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {v2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 221
    .line 222
    invoke-virtual {p0, v5, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setBypassDevicePolicyManagementRoleQualificationStateInternal(Ljava/lang/String;Z)V

    .line 223
    .line 224
    .line 225
    goto :goto_8

    .line 226
    :cond_e
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    if-nez p1, :cond_f

    .line 239
    .line 240
    const-string/jumbo p1, "onRoleHoldersChanged: You can\'t set a different role holder, role is getting revoked from "

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-static {v2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 251
    .line 252
    invoke-virtual {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setBypassDevicePolicyManagementRoleQualificationStateInternal(Ljava/lang/String;Z)V

    .line 253
    .line 254
    .line 255
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mRm:Landroid/app/role/RoleManager;

    .line 256
    .line 257
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 258
    .line 259
    new-instance v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver$$ExternalSyntheticLambda1;

    .line 260
    .line 261
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v4, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    .line 265
    .line 266
    const/4 v6, 0x0

    .line 267
    move-object v7, p2

    .line 268
    invoke-virtual/range {v3 .. v9}, Landroid/app/role/RoleManager;->removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 269
    .line 270
    .line 271
    :cond_f
    :goto_8
    return-void

    .line 272
    :cond_10
    const-string p2, "android.app.role.FINANCED_DEVICE_KIOSK"

    .line 273
    .line 274
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-eqz p1, :cond_11

    .line 279
    .line 280
    const-string p1, "Handling action android.app.admin.action.DEVICE_FINANCING_STATE_CHANGED"

    .line 281
    .line 282
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    new-instance p1, Landroid/content/Intent;

    .line 286
    .line 287
    const-string p2, "android.app.admin.action.DEVICE_FINANCING_STATE_CHANGED"

    .line 288
    .line 289
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 293
    .line 294
    iget-object p2, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 295
    .line 296
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;

    .line 297
    .line 298
    const/16 v1, 0x8

    .line 299
    .line 300
    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda46;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 307
    .line 308
    .line 309
    :cond_11
    return-void
.end method
