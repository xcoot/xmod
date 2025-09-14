.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$1:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$4:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$5:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$1:Z

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$4:I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$5:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    const v6, 0x33467

    .line 18
    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    if-eqz v1, :cond_6

    .line 22
    .line 23
    and-int/lit8 p0, v2, 0x1

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    move p0, v5

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p0, v7

    .line 30
    :goto_0
    and-int/lit8 v1, v2, 0x4

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    move v1, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v1, v7

    .line 37
    :goto_1
    and-int/lit8 v2, v2, 0x2

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    move v2, v5

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move v2, v7

    .line 44
    :goto_2
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wtfIfInLock()V

    .line 45
    .line 46
    .line 47
    :try_start_0
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 48
    .line 49
    invoke-virtual {v4, v3, v1, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->recoverySystemRebootWipeUserData(Ljava/lang/String;ZZZ)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    xor-int/2addr v4, v5

    .line 54
    if-eqz v4, :cond_b

    .line 55
    .line 56
    const-string v4, "DevicePolicyManager"

    .line 57
    .line 58
    const-string v8, "Persisting factory reset request as it could be delayed by %s"

    .line 59
    .line 60
    iget-object v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 61
    .line 62
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    invoke-static {v4, v8, v9}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :try_start_1
    invoke-virtual {v0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    iput-object v3, v8, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    .line 79
    .line 80
    iput v5, v8, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 81
    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    const/4 p0, 0x3

    .line 85
    iput p0, v8, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 86
    .line 87
    :cond_3
    if-eqz v1, :cond_4

    .line 88
    .line 89
    iget p0, v8, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 90
    .line 91
    or-int/lit8 p0, p0, 0x4

    .line 92
    .line 93
    iput p0, v8, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 94
    .line 95
    :cond_4
    if-eqz v2, :cond_5

    .line 96
    .line 97
    iget p0, v8, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 98
    .line 99
    or-int/lit8 p0, p0, 0x8

    .line 100
    .line 101
    iput p0, v8, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 102
    .line 103
    :cond_5
    invoke-virtual {v0, v7, v7, v7, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 104
    .line 105
    .line 106
    monitor-exit v4

    .line 107
    goto/16 :goto_8

    .line 108
    .line 109
    :catchall_0
    move-exception p0

    .line 110
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    goto :goto_3

    .line 114
    :catch_0
    move-exception p0

    .line 115
    :try_start_3
    const-string v0, "DevicePolicyManager"

    .line 116
    .line 117
    const-string v1, "Failed requesting data wipe"

    .line 118
    .line 119
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    .line 121
    .line 122
    new-array p0, v7, [Ljava/lang/Object;

    .line 123
    .line 124
    invoke-static {v6, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 125
    .line 126
    .line 127
    goto/16 :goto_8

    .line 128
    .line 129
    :goto_3
    new-array v0, v7, [Ljava/lang/Object;

    .line 130
    .line 131
    invoke-static {v6, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_6
    and-int/lit8 v1, v2, 0x8

    .line 136
    .line 137
    if-eqz v1, :cond_7

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_7
    move v5, v7

    .line 141
    :goto_4
    const-string v1, "DevicePolicyManager"

    .line 142
    .line 143
    const-string v2, "Couldn\'t remove user "

    .line 144
    .line 145
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCurrentForegroundUserId()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-ne v3, v4, :cond_8

    .line 150
    .line 151
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-interface {v3, v7}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 161
    .line 162
    .line 163
    goto :goto_5

    .line 164
    :catchall_2
    move-exception p0

    .line 165
    move v3, v7

    .line 166
    goto :goto_9

    .line 167
    :catch_1
    move-exception p0

    .line 168
    move v3, v7

    .line 169
    goto :goto_7

    .line 170
    :cond_8
    :goto_5
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 171
    .line 172
    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerInternal;->removeUserEvenWhenDisallowed(I)Z

    .line 173
    .line 174
    .line 175
    move-result v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 176
    if-nez v3, :cond_9

    .line 177
    .line 178
    :try_start_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    goto :goto_6

    .line 194
    :catchall_3
    move-exception p0

    .line 195
    goto :goto_9

    .line 196
    :catch_2
    move-exception p0

    .line 197
    goto :goto_7

    .line 198
    :cond_9
    invoke-virtual {v0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_a

    .line 203
    .line 204
    if-nez v5, :cond_a

    .line 205
    .line 206
    invoke-virtual {v0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v0, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendWipeProfileNotification(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 215
    .line 216
    .line 217
    :cond_a
    :goto_6
    if-nez v3, :cond_b

    .line 218
    .line 219
    new-array p0, v7, [Ljava/lang/Object;

    .line 220
    .line 221
    invoke-static {v6, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 222
    .line 223
    .line 224
    goto :goto_8

    .line 225
    :goto_7
    :try_start_6
    const-string v0, "Error forcing wipe user"

    .line 226
    .line 227
    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 228
    .line 229
    .line 230
    if-nez v3, :cond_b

    .line 231
    .line 232
    new-array p0, v7, [Ljava/lang/Object;

    .line 233
    .line 234
    invoke-static {v6, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 235
    .line 236
    .line 237
    :cond_b
    :goto_8
    return-void

    .line 238
    :goto_9
    if-nez v3, :cond_c

    .line 239
    .line 240
    new-array v0, v7, [Ljava/lang/Object;

    .line 241
    .line 242
    invoke-static {v6, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 243
    .line 244
    .line 245
    :cond_c
    throw p0
.end method
