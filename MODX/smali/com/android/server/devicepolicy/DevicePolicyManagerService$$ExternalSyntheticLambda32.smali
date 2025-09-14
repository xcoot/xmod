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

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$1:Z

    .line 8
    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$3:Ljava/lang/String;

    .line 12
    iput p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$4:I

    .line 14
    iput-object p6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$5:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$1:Z

    .line 5
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$2:I

    .line 7
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$3:Ljava/lang/String;

    .line 9
    iget v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$4:I

    .line 11
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda32;->f$5:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const/4 v5, 0x1

    .line 17
    const v6, 0x33467

    .line 20
    const/4 v7, 0x0

    .line 21
    if-eqz v1, :cond_6

    .line 23
    and-int/lit8 p0, v2, 0x1

    .line 25
    if-eqz p0, :cond_0

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

    .line 32
    if-eqz v1, :cond_1

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

    .line 39
    if-eqz v2, :cond_2

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

    .line 47
    :try_start_0
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 49
    invoke-virtual {v4, v3, v1, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->recoverySystemRebootWipeUserData(Ljava/lang/String;ZZZ)Z

    .line 52
    move-result v4

    .line 53
    xor-int/2addr v4, v5

    .line 54
    if-eqz v4, :cond_b

    .line 56
    const-string v4, "DevicePolicyManager"

    .line 58
    const-string v8, "Persisting factory reset request as it could be delayed by %s"

    .line 60
    iget-object v9, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 62
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 65
    move-result-object v9

    .line 66
    invoke-static {v4, v8, v9}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

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

    .line 77
    move-result-object v8

    .line 78
    iput-object v3, v8, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    .line 80
    iput v5, v8, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 82
    if-eqz p0, :cond_3

    .line 84
    const/4 p0, 0x3

    .line 85
    iput p0, v8, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 87
    :cond_3
    if-eqz v1, :cond_4

    .line 89
    iget p0, v8, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 91
    or-int/lit8 p0, p0, 0x4

    .line 93
    iput p0, v8, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 95
    :cond_4
    if-eqz v2, :cond_5

    .line 97
    iget p0, v8, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 99
    or-int/lit8 p0, p0, 0x8

    .line 101
    iput p0, v8, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    .line 103
    :cond_5
    invoke-virtual {v0, v7, v7, v7, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 106
    monitor-exit v4

    .line 107
    goto/16 :goto_8

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

    .line 117
    const-string v1, "Failed requesting data wipe"

    .line 119
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    new-array p0, v7, [Ljava/lang/Object;

    .line 124
    invoke-static {v6, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 127
    goto/16 :goto_8

    .line 129
    :goto_3
    new-array v0, v7, [Ljava/lang/Object;

    .line 131
    invoke-static {v6, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 134
    throw p0

    .line 135
    :cond_6
    and-int/lit8 v1, v2, 0x8

    .line 137
    if-eqz v1, :cond_7

    .line 139
    goto :goto_4

    .line 140
    :cond_7
    move v5, v7

    .line 141
    :goto_4
    const-string v1, "DevicePolicyManager"

    .line 143
    const-string v2, "Couldn\'t remove user "

    .line 145
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCurrentForegroundUserId()I

    .line 148
    move-result v3

    .line 149
    if-ne v3, v4, :cond_8

    .line 151
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 153
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 159
    move-result-object v3

    .line 160
    invoke-interface {v3, v7}, Landroid/app/IActivityManager;->switchUser(I)Z

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

    .line 172
    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerInternal;->removeUserEvenWhenDisallowed(I)Z

    .line 175
    move-result v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 176
    if-nez v3, :cond_9

    .line 178
    :try_start_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object p0

    .line 190
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 201
    move-result v2

    .line 202
    if-eqz v2, :cond_a

    .line 204
    if-nez v5, :cond_a

    .line 206
    invoke-virtual {v0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    .line 209
    move-result v2

    .line 210
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 213
    move-result-object v2

    .line 214
    invoke-virtual {v0, p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendWipeProfileNotification(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 217
    :cond_a
    :goto_6
    if-nez v3, :cond_b

    .line 219
    new-array p0, v7, [Ljava/lang/Object;

    .line 221
    invoke-static {v6, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 224
    goto :goto_8

    .line 225
    :goto_7
    :try_start_6
    const-string v0, "Error forcing wipe user"

    .line 227
    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 230
    if-nez v3, :cond_b

    .line 232
    new-array p0, v7, [Ljava/lang/Object;

    .line 234
    invoke-static {v6, p0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 237
    :cond_b
    :goto_8
    return-void

    .line 238
    :goto_9
    if-nez v3, :cond_c

    .line 240
    new-array v0, v7, [Ljava/lang/Object;

    .line 242
    invoke-static {v6, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 245
    :cond_c
    throw p0
.end method
