.class public final Lcom/android/server/pm/PersonaServiceProxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContainerServiceLock:Ljava/lang/Object;

.field public mContainerServices:Ljava/util/HashMap;

.field public mContext:Landroid/content/Context;

.field public mIsDoEnabled:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mPackageBroadcastReceiver:Lcom/android/server/pm/PersonaServiceProxy$2;

.field public mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public mTrustManager:Landroid/app/trust/TrustManager;

.field public mUserBroadcastReceiver:Lcom/android/server/pm/PersonaServiceProxy$2;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static -$$Nest$mfindAndConnectToContainerService(Lcom/android/server/pm/PersonaServiceProxy;I)V
    .locals 9

    .line 1
    const-string/jumbo v0, "package:com.samsung.android.knox.containercore not found user:"

    .line 2
    .line 3
    .line 4
    const-string v1, "Finding container service in user - "

    .line 5
    .line 6
    const-string v2, "PersonaManagerService::Proxy"

    .line 7
    .line 8
    invoke-static {p1, v1, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p0, "Cannot find UMS"

    .line 16
    .line 17
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const-string/jumbo p0, "scanContainerService() user<"

    .line 29
    .line 30
    .line 31
    const-string v0, "> is not running"

    .line 32
    .line 33
    invoke-static {p1, p0, v0, v2}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_1
    const-string v1, "com.samsung.android.knox.containercore"

    .line 39
    .line 40
    const-string v3, "findContainerService("

    .line 41
    .line 42
    const-string v4, " appInfo.uid:"

    .line 43
    .line 44
    const-string/jumbo v5, "package"

    .line 45
    .line 46
    .line 47
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-wide/16 v6, 0x80

    .line 56
    .line 57
    const/4 v8, 0x0

    .line 58
    :try_start_0
    invoke-interface {v5, v1, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-interface {v5, v1, p1}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_6

    .line 67
    .line 68
    if-nez v6, :cond_2

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_2
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 73
    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :cond_3
    iget-object v1, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 79
    .line 80
    const-string v5, "containerService.class"

    .line 81
    .line 82
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    const-string v7, "containerService.category"

    .line 87
    .line 88
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v5, :cond_7

    .line 93
    .line 94
    if-eqz v1, :cond_7

    .line 95
    .line 96
    if-nez v0, :cond_4

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget v4, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 105
    .line 106
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    iget v4, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 117
    .line 118
    const/16 v6, 0x1482

    .line 119
    .line 120
    if-eq v4, v6, :cond_5

    .line 121
    .line 122
    const-string p1, "core app does not have core uid"

    .line 123
    .line 124
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :catch_0
    move-exception p1

    .line 129
    goto :goto_1

    .line 130
    :cond_5
    new-instance v4, Landroid/content/ComponentName;

    .line 131
    .line 132
    invoke-direct {v4, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v3, ") found "

    .line 144
    .line 145
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v3, " category:"

    .line 156
    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    new-instance v1, Lcom/android/server/ContainerServiceInfo;

    .line 171
    .line 172
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 173
    .line 174
    .line 175
    iput p1, v1, Lcom/android/server/ContainerServiceInfo;->userid:I

    .line 176
    .line 177
    iput-object v4, v1, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    .line 178
    .line 179
    iput-object v0, v1, Lcom/android/server/ContainerServiceInfo;->category:Ljava/lang/String;

    .line 180
    .line 181
    move-object v8, v1

    .line 182
    goto :goto_2

    .line 183
    :cond_6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :goto_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 200
    .line 201
    .line 202
    :cond_7
    :goto_2
    if-eqz v8, :cond_8

    .line 203
    .line 204
    invoke-virtual {p0, v8}, Lcom/android/server/pm/PersonaServiceProxy;->maybeConnectContainerService(Lcom/android/server/ContainerServiceInfo;)V

    .line 205
    .line 206
    .line 207
    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public final isKnoxProfileExist()Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v1, "PersonaManagerService::Proxy"

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v4, "Profile id - "

    .line 31
    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    .line 36
    .line 37
    invoke-static {v3, v4, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 41
    .line 42
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    const-string p0, "Knox Profile exist on device"

    .line 49
    .line 50
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    .line 55
    :goto_0
    const-string p0, "isKnoxProfileExist status - "

    .line 56
    .line 57
    invoke-static {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    return v0
.end method

.method public final maybeConnectContainerService(Lcom/android/server/ContainerServiceInfo;)V
    .locals 5

    .line 1
    const-string v0, "Failed to bind "

    .line 2
    .line 3
    const-string v1, "Container service already bound "

    .line 4
    .line 5
    const-string v2, "PersonaManagerService::Proxy"

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "connectContainerService is called for "

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v4, ", mIsDoEnabled - "

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-boolean v4, p0, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    .line 27
    .line 28
    invoke-static {v2, v3, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 29
    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaServiceProxy;->isKnoxProfileExist()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p0, "PersonaManagerService::Proxy"

    .line 43
    .line 44
    const-string p1, "Not starting Container service..."

    .line 45
    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    :goto_0
    const-string v2, "PersonaManagerService::Proxy"

    .line 51
    .line 52
    const-string v3, "Starting Container service because either Do/Po exist on device..."

    .line 53
    .line 54
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServiceLock:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter v2

    .line 60
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lcom/android/server/ContainerServiceWrapper;

    .line 75
    .line 76
    iget-boolean v3, v3, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    .line 77
    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    const-string p0, "PersonaManagerService::Proxy"

    .line 81
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    monitor-exit v2

    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    const-string v1, "PersonaManagerService::Proxy"

    .line 112
    .line 113
    const-string v3, "Service don\'t exist on cache..."

    .line 114
    .line 115
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    :goto_1
    new-instance v1, Lcom/android/server/ContainerServiceWrapper;

    .line 119
    .line 120
    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    invoke-direct {v1, v3, p0, p1}, Lcom/android/server/ContainerServiceWrapper;-><init>(Landroid/content/Context;Lcom/android/server/pm/PersonaServiceProxy;Lcom/android/server/ContainerServiceInfo;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/android/server/ContainerServiceWrapper;->connect()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-nez v3, :cond_4

    .line 130
    .line 131
    const-string p0, "PersonaManagerService::Proxy"

    .line 132
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    monitor-exit v2

    .line 153
    return-void

    .line 154
    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    .line 155
    .line 156
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    monitor-exit v2

    .line 160
    return-void

    .line 161
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    throw p0
.end method
