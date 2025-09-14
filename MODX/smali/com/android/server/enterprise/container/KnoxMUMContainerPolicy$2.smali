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

    .line 3
    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getUserManagerService()Landroid/os/UserManager;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 10
    move-result-object p1

    .line 11
    const-string p3, "KnoxMUMContainerPolicy"

    .line 13
    if-nez p1, :cond_0

    .line 15
    sget-object p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 17
    const-string/jumbo p0, "onContainerCreated("

    .line 20
    const-string p1, ") error, no user-info found"

    .line 22
    invoke-static {p2, p0, p1, p3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void

    .line 26
    :cond_0
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo v0, "onContainerCreated :: user: "

    .line 33
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 38
    invoke-static {p2, v0, p3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 43
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    const-string/jumbo p2, "com.sec.knox.containeragent.klms.created.b2b"

    .line 51
    invoke-static {v0, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendIntentBroadcastForContainer(ILjava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 56
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 58
    invoke-virtual {p2, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->filterTypeByContainerId(I)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 61
    move-result-object p2

    .line 62
    new-instance v0, Landroid/os/Bundle;

    .line 64
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    const/4 v1, 0x1

    .line 68
    const-string/jumbo v2, "knox.container.proxy.EXTRA_FLAG_IS_CUSTOM_CONTAINER"

    .line 71
    const/4 v3, 0x0

    .line 72
    if-eqz p2, :cond_1

    .line 74
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isCustomizedContainerEnabled()Z

    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_1

    .line 80
    invoke-virtual {p2}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    .line 83
    move-result-object p2

    .line 84
    const-string/jumbo v4, "homeScreenWallpaper = "

    .line 87
    invoke-static {v4, p2, p3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v4, "knox.container.proxy.EXTRA_KNOX_HOME_SCREEN_WALLPAPER"

    .line 93
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    :goto_0
    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 105
    const-string v2, "android.intent.extra.user_handle"

    .line 107
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    iget p2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 112
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    .line 115
    move-result p2

    .line 116
    if-eqz p2, :cond_4

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo v0, "disableUnifiedLock user "

    .line 123
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    .line 128
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p2

    .line 135
    new-array v0, v3, [Ljava/lang/Object;

    .line 137
    invoke-static {p3, p2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 142
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 144
    const-string/jumbo p2, "disableUnifiedLock user result : "

    .line 147
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 154
    move-result-object p0

    .line 155
    if-nez p0, :cond_2

    .line 157
    const-string/jumbo p0, "failed to get active admin. failed to disallow unified password."

    .line 160
    new-array p1, v3, [Ljava/lang/Object;

    .line 162
    invoke-static {p3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    goto :goto_4

    .line 166
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 169
    move-result-wide v4

    .line 170
    :try_start_0
    new-instance p0, Landroid/os/Bundle;

    .line 172
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 175
    invoke-virtual {p0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    const-string/jumbo p1, "knox.container.proxy.EXTRA_KEY"

    .line 181
    const-string/jumbo v0, "no_unified_password"

    .line 184
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo p1, "knox.container.proxy.POLICY_ADD_USER_RESTRICTION"

    .line 190
    invoke-static {p1, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 193
    move-result-object p0

    .line 194
    if-eqz p0, :cond_3

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    .line 198
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    const-string p2, "android.intent.extra.RETURN_RESULT"

    .line 203
    invoke-virtual {p0, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 206
    move-result p0

    .line 207
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object p0

    .line 214
    new-array p1, v3, [Ljava/lang/Object;

    .line 216
    invoke-static {p3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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

    .line 227
    new-array p1, v3, [Ljava/lang/Object;

    .line 229
    invoke-static {p3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    goto :goto_4

    .line 236
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    goto :goto_1

    .line 240
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 4
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 6
    const-string/jumbo p2, "onDeviceOwnerActivated is called..."

    .line 9
    const-string v0, "KnoxMUMContainerPolicy"

    .line 11
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :try_start_0
    iget-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 16
    invoke-virtual {p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getDevicePolicyService()Landroid/app/admin/DevicePolicyManager;

    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 32
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 46
    move-result p2

    .line 47
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 49
    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 51
    invoke-virtual {v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->addMUMContainer(II)Z

    .line 54
    move-result p2

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    const-string/jumbo v1, "onDeviceOwnerActivated:Exception - "

    .line 82
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    goto :goto_2

    .line 96
    :goto_1
    sget-object p2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    const-string/jumbo v1, "onDeviceOwnerActivated:NameNotFoundException - "

    .line 103
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    :goto_2
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 118
    invoke-static {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mnotifyDOPremiumActivation(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    .line 121
    return-void
.end method

.method public final onDeviceOwnerLicenseActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 3
    const-string p1, "KnoxMUMContainerPolicy"

    .line 5
    const-string/jumbo p2, "onDeviceOwnerLicenseActivated called..."

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 13
    invoke-static {p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$mnotifyDOPremiumActivation(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    .line 16
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    return-void
.end method

.method public final onDeviceOwnerLicenseExpired(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    .line 3
    const-string p1, "KnoxMUMContainerPolicy"

    .line 5
    const-string/jumbo p2, "onDeviceOwnerLicenseExpired is called..."

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    return-void
.end method
