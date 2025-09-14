.class public final Lcom/android/server/pm/PersonaManagerService$LocalService;
.super Lcom/samsung/android/knox/PersonaManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/knox/PersonaManagerInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doKeyguardTimeout()V
    .locals 3

    .line 1
    const-string v0, "PersonaManagerService"

    .line 2
    .line 3
    const-string v1, "doKeyguardTimeout"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final getAdminComponentNameFromEdm(I)Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->containerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final getECName(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->containerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 4
    .line 5
    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0
.end method

.method public final isKnoxId(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final onDeviceLockedChanged(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2
    .line 3
    const-string/jumbo v1, "onDeviceLockedChanged"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEVICE_SUPPORT_KNOX:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string p0, "PersonaManagerService"

    .line 14
    .line 15
    const-string p1, "Knox not supported - onDeviceLockedChanged"

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eq v0, v1, :cond_3

    .line 45
    .line 46
    const-string v2, "PersonaManagerService"

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v4, "container lock state changed prevLock["

    .line 51
    .line 52
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, "] lockState["

    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, "]"

    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 81
    .line 82
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    const/4 v2, 0x4

    .line 85
    invoke-static {v1, p1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    const/4 v2, 0x5

    .line 106
    invoke-static {v1, p1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    const-string v1, "PersonaManagerService"

    .line 111
    .line 112
    const-string v2, "container is unlocked when user is not running. ignore"

    .line 113
    .line 114
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 118
    .line 119
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 120
    .line 121
    monitor-enter v1

    .line 122
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 125
    .line 126
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 127
    .line 128
    .line 129
    monitor-exit v1

    .line 130
    goto :goto_1

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    throw p0

    .line 134
    :cond_3
    :goto_1
    return-void

    .line 135
    :catchall_1
    move-exception p0

    .line 136
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    throw p0
.end method

.method public final shouldConfirmCredentials(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isPwdChangeRequested(I)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 28
    .line 29
    iget-object v4, v4, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-string v5, "dedicated_biometrics"

    .line 36
    .line 37
    invoke-static {v4, v5, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/4 v5, 0x1

    .line 42
    if-lez v4, :cond_1

    .line 43
    .line 44
    move v4, v5

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v4, v2

    .line 47
    :goto_0
    const-string v6, "PersonaManagerService"

    .line 48
    .line 49
    if-nez v1, :cond_8

    .line 50
    .line 51
    if-nez v3, :cond_8

    .line 52
    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 59
    .line 60
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 71
    .line 72
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 81
    .line 82
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v1, "DeviceLocked : "

    .line 91
    .line 92
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ", DeviceSecure : "

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    if-eqz p1, :cond_3

    .line 114
    .line 115
    if-eqz p0, :cond_3

    .line 116
    .line 117
    move v2, v5

    .line 118
    :cond_3
    return v2

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 120
    .line 121
    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 122
    .line 123
    if-nez v1, :cond_5

    .line 124
    .line 125
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 126
    .line 127
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 132
    .line 133
    iput-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 134
    .line 135
    :cond_5
    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 136
    .line 137
    const/4 v1, 0x2

    .line 138
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_6

    .line 143
    .line 144
    return v5

    .line 145
    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$LocalService;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    const-string p1, "enable_one_lock_ongoing"

    .line 154
    .line 155
    invoke-static {p0, p1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    if-lez p0, :cond_7

    .line 160
    .line 161
    move v2, v5

    .line 162
    :cond_7
    return v2

    .line 163
    :cond_8
    :goto_1
    const-string/jumbo p0, "needSetupCredential : "

    .line 164
    .line 165
    .line 166
    const-string p1, ", isPwdChangeRequested : "

    .line 167
    .line 168
    const-string v0, ", isBiometricsEnabledAfterFota : "

    .line 169
    .line 170
    invoke-static {p0, v1, p1, v3, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-static {v6, p0, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 175
    .line 176
    .line 177
    return v5
.end method
