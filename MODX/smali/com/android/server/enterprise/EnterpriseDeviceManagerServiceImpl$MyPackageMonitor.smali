.class public final Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 5

    .line 1
    const-string v0, "EnterpriseDeviceManagerService"

    .line 3
    const-string/jumbo v1, "onPackageUpdateFinished - packageName: "

    .line 6
    const-string v2, ", uid: "

    .line 8
    invoke-static {p2, v1, p1, v2, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 13
    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 20
    iget-object v1, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 22
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v1

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 49
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->isPseudo()Z

    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 62
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_0

    .line 76
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 82
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 85
    move-result-object v4

    .line 86
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 88
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 90
    if-ne p2, v4, :cond_0

    .line 92
    const-string p1, "EnterpriseDeviceManagerService"

    .line 94
    const-string v1, "Admin found on map with same package name!"

    .line 96
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    goto/16 :goto_3

    .line 109
    :cond_2
    move-object p1, v3

    .line 110
    :goto_1
    if-eqz p1, :cond_4

    .line 112
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 114
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 117
    move-result-object v2

    .line 118
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 121
    move-result p2

    .line 122
    invoke-virtual {v1, v2, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->findAdmin(Landroid/content/ComponentName;I)Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 125
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    goto :goto_2

    .line 127
    :catch_0
    move-object p2, v3

    .line 128
    :goto_2
    if-nez p2, :cond_3

    .line 130
    :try_start_2
    const-string p2, "EnterpriseDeviceManagerService"

    .line 132
    const-string v1, "Removing Admin as component name changed"

    .line 134
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 139
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 141
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 144
    move-result-object v2

    .line 145
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 147
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 149
    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 152
    const/4 v2, 0x1

    .line 153
    invoke-virtual {p2, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 156
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 158
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 165
    move-result-object p1

    .line 166
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 168
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 170
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 173
    move-result p1

    .line 174
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 178
    monitor-exit v0

    .line 179
    return-void

    .line 180
    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 182
    iget-object v1, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 184
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 187
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 189
    iget-object v1, v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 191
    invoke-virtual {p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 194
    move-result-object p1

    .line 195
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 197
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 208
    iget-object p1, p1, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 215
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminMap:Ljava/util/HashMap;

    .line 217
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 220
    move-result-object p1

    .line 221
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 223
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_4
    monitor-exit v0

    .line 233
    return-void

    .line 234
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    throw p0
.end method

.method public final onSomePackagesChanged()V
    .locals 12

    .line 1
    const-string v0, "Package has changed for user "

    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 5
    invoke-virtual {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getLockObject()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 13
    move-result v2

    .line 14
    const-string v3, "EnterpriseDeviceManagerService"

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 33
    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result v0

    .line 39
    const/4 v3, 0x1

    .line 40
    sub-int/2addr v0, v3

    .line 41
    :goto_0
    if-ltz v0, :cond_7

    .line 43
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 45
    iget-object v4, v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mAdminList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;

    .line 53
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->isPseudo()Z

    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_6

    .line 59
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 62
    move-result-object v5

    .line 63
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 65
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 67
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 70
    move-result v5

    .line 71
    if-eq v5, v2, :cond_0

    .line 73
    goto/16 :goto_5

    .line 75
    :cond_0
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    const-string v6, "EnterpriseDeviceManagerService"

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    const-string v8, "Admin package name: "

    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v7

    .line 98
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0, v5}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    .line 104
    move-result v6

    .line 105
    const/4 v7, 0x3

    .line 106
    const/4 v8, 0x0

    .line 107
    const/4 v9, 0x0

    .line 108
    if-eq v6, v7, :cond_5

    .line 110
    const/4 v7, 0x2

    .line 111
    if-ne v6, v7, :cond_1

    .line 113
    goto/16 :goto_4

    .line 115
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    .line 118
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-eqz v6, :cond_6

    .line 121
    :try_start_1
    const-string/jumbo v6, "com.sec.knox.containeragent2"

    .line 124
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v6

    .line 128
    if-nez v6, :cond_3

    .line 130
    const-string/jumbo v6, "com.samsung.knox.securefolder"

    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_2

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 142
    iget-object v5, v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPMS:Landroid/content/pm/IPackageManager;

    .line 144
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 147
    move-result-object v6

    .line 148
    const-wide/32 v10, 0xc0000

    .line 151
    invoke-interface {v5, v6, v10, v11, v2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 154
    move-result-object v5

    .line 155
    goto :goto_3

    .line 156
    :catchall_0
    move-exception p0

    .line 157
    goto/16 :goto_6

    .line 159
    :catch_0
    move-exception v5

    .line 160
    goto :goto_2

    .line 161
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 163
    iget-object v5, v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->mPMS:Landroid/content/pm/IPackageManager;

    .line 165
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 168
    move-result-object v6

    .line 169
    const-wide/32 v10, 0xc8080

    .line 172
    invoke-interface {v5, v6, v10, v11, v2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 175
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    goto :goto_3

    .line 177
    :goto_2
    :try_start_2
    const-string v6, "EnterpriseDeviceManagerService"

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    const-string/jumbo v10, "onSomePackagesChanged EX:"

    .line 187
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object v5

    .line 201
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object v5, v9

    .line 205
    :goto_3
    if-nez v5, :cond_4

    .line 207
    const-string v5, "EnterpriseDeviceManagerService"

    .line 209
    new-instance v6, Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    const-string v7, "Admin package change removed component: "

    .line 216
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 222
    move-result-object v7

    .line 223
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v6

    .line 230
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 235
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    .line 237
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 240
    move-result-object v7

    .line 241
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 243
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 245
    invoke-direct {v6, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 248
    invoke-virtual {v5, v6, v3, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 251
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 253
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {v5, v2, v4, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 260
    goto :goto_5

    .line 261
    :cond_4
    const-string v6, "EnterpriseDeviceManagerService"

    .line 263
    new-instance v7, Ljava/lang/StringBuilder;

    .line 265
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    const-string v8, "Admin package component found: "

    .line 270
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 276
    move-result-object v4

    .line 277
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    const-string v4, " info:"

    .line 282
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    .line 288
    move-result-object v4

    .line 289
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    move-result-object v4

    .line 296
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    goto :goto_5

    .line 300
    :cond_5
    :goto_4
    const-string v5, "EnterpriseDeviceManagerService"

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    .line 304
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    const-string v7, "Admin unexpectedly uninstalled: "

    .line 309
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 315
    move-result-object v7

    .line 316
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    move-result-object v6

    .line 323
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 328
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    .line 330
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    .line 333
    move-result-object v7

    .line 334
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 336
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 338
    invoke-direct {v6, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 341
    invoke-virtual {v5, v6, v3, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 344
    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    .line 346
    invoke-virtual {v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 349
    move-result-object v4

    .line 350
    invoke-virtual {v5, v2, v4, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->removeActiveAdminDelayed(ILandroid/content/ComponentName;Z)V

    .line 353
    :cond_6
    :goto_5
    add-int/lit8 v0, v0, -0x1

    .line 355
    goto/16 :goto_0

    .line 357
    :cond_7
    monitor-exit v1

    .line 358
    return-void

    .line 359
    :goto_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 360
    throw p0
.end method
