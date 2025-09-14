.class public final Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;
.super Landroid/os/ContainerStateReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p3, "KnoxMUMContainerPolicy"

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    const-string/jumbo p0, "onContainerCreated("

    .line 18
    .line 19
    .line 20
    const-string p1, ") error, no user-info found"

    .line 21
    .line 22
    invoke-static {p2, p0, p1, p3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v0, "onContainerCreated :: user: "

    .line 31
    .line 32
    .line 33
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 37
    .line 38
    invoke-static {p2, v0, p3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 42
    .line 43
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const-string/jumbo p2, "com.sec.knox.containeragent.klms.created.b2b"

    .line 49
    .line 50
    .line 51
    invoke-static {v0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendIntentBroadcastForContainer(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 55
    .line 56
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 57
    .line 58
    invoke-virtual {p2, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    new-instance v0, Landroid/os/Bundle;

    .line 63
    .line 64
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    const-string/jumbo v2, "knox.container.proxy.EXTRA_FLAG_IS_CUSTOM_CONTAINER"

    .line 69
    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isCustomizedContainerEnabled()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_1

    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    const-string/jumbo v4, "homeScreenWallpaper = "

    .line 85
    .line 86
    .line 87
    invoke-static {v4, p2, p3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string/jumbo v4, "knox.container.proxy.EXTRA_KNOX_HOME_SCREEN_WALLPAPER"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    :goto_0
    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 104
    .line 105
    const-string v2, "android.intent.extra.user_handle"

    .line 106
    .line 107
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 111
    .line 112
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    if-eqz p2, :cond_4

    .line 117
    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string/jumbo v0, "disableUnifiedLock user "

    .line 121
    .line 122
    .line 123
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 127
    .line 128
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    new-array v0, v3, [Ljava/lang/Object;

    .line 136
    .line 137
    invoke-static {p3, p2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 141
    .line 142
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 143
    .line 144
    const-string/jumbo p2, "disableUnifiedLock user result : "

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    if-nez p0, :cond_2

    .line 156
    .line 157
    const-string/jumbo p0, "failed to get active admin. failed to disallow unified password."

    .line 158
    .line 159
    .line 160
    new-array p1, v3, [Ljava/lang/Object;

    .line 161
    .line 162
    invoke-static {p3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 167
    .line 168
    .line 169
    move-result-wide v4

    .line 170
    :try_start_0
    new-instance p0, Landroid/os/Bundle;

    .line 171
    .line 172
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    const-string/jumbo p1, "knox.container.proxy.EXTRA_KEY"

    .line 179
    .line 180
    .line 181
    const-string/jumbo v0, "no_unified_password"

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string/jumbo p1, "knox.container.proxy.POLICY_ADD_USER_RESTRICTION"

    .line 188
    .line 189
    .line 190
    invoke-static {p1, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    if-eqz p0, :cond_3

    .line 195
    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string p2, "android.intent.extra.RETURN_RESULT"

    .line 202
    .line 203
    invoke-virtual {p0, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 204
    .line 205
    .line 206
    move-result p0

    .line 207
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    new-array p1, v3, [Ljava/lang/Object;

    .line 215
    .line 216
    invoke-static {p3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    goto :goto_1

    .line 220
    :catchall_0
    move-exception p0

    .line 221
    goto :goto_3

    .line 222
    :catch_0
    move-exception p0

    .line 223
    goto :goto_2

    .line 224
    :cond_3
    const-string/jumbo p0, "disableUnifiedLock user failed!! cannot get response "

    .line 225
    .line 226
    .line 227
    new-array p1, v3, [Ljava/lang/Object;

    .line 228
    .line 229
    invoke-static {p3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .line 231
    .line 232
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 241
    .line 242
    .line 243
    throw p0

    .line 244
    :cond_4
    :goto_4
    return-void
.end method

.method public final onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string/jumbo p1, "onDeviceOwnerActivated admin relationship result - "

    .line 2
    .line 3
    .line 4
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string/jumbo p2, "onDeviceOwnerActivated is called..."

    .line 7
    .line 8
    .line 9
    const-string v0, "KnoxMUMContainerPolicy"

    .line 10
    .line 11
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 50
    .line 51
    invoke-virtual {v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addMUMContainer(II)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catch_0
    move-exception p1

    .line 72
    goto :goto_0

    .line 73
    :catch_1
    move-exception p1

    .line 74
    goto :goto_1

    .line 75
    :goto_0
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string/jumbo v1, "onDeviceOwnerActivated:Exception - "

    .line 80
    .line 81
    .line 82
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :goto_1
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string/jumbo v1, "onDeviceOwnerActivated:NameNotFoundException - "

    .line 101
    .line 102
    .line 103
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_0
    :goto_2
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 117
    .line 118
    invoke-static {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mnotifyDOPremiumActivation(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final onDeviceOwnerLicenseActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p1, "KnoxMUMContainerPolicy"

    .line 4
    .line 5
    const-string/jumbo p2, "onDeviceOwnerLicenseActivated called..."

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mnotifyDOPremiumActivation(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onDeviceOwnerLicenseExpired(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p1, "KnoxMUMContainerPolicy"

    .line 4
    .line 5
    const-string/jumbo p2, "onDeviceOwnerLicenseExpired is called..."

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    return-void
.end method
