.class public final Lcom/android/server/notification/PermissionHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPackageManager:Landroid/content/pm/IPackageManager;

.field public final mPermManager:Landroid/permission/IPermissionManager;

.field public final mPmi:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;


# direct methods
.method public constructor <init>(Landroid/content/pm/IPackageManager;Landroid/permission/IPermissionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    .line 7
    .line 8
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/notification/PermissionHelper;->mPmi:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getNotificationPermissionValues(I)Landroid/util/ArrayMap;
    .locals 12

    .line 1
    const-string v0, "Could not reach system server"

    .line 2
    .line 3
    const-string v1, "PermissionHelper"

    .line 4
    .line 5
    new-instance v2, Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 17
    .line 18
    const-wide/16 v6, 0x1000

    .line 19
    .line 20
    invoke-interface {v5, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    .line 21
    .line 22
    .line 23
    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v5

    .line 26
    invoke-static {v1, v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    move-object v5, v4

    .line 30
    :goto_0
    if-nez v5, :cond_0

    .line 31
    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    const-string v7, "android.permission.POST_NOTIFICATIONS"

    .line 50
    .line 51
    if-eqz v6, :cond_4

    .line 52
    .line 53
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 58
    .line 59
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 60
    .line 61
    if-nez v8, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    array-length v9, v8

    .line 65
    const/4 v10, 0x0

    .line 66
    :goto_3
    if-ge v10, v9, :cond_1

    .line 67
    .line 68
    aget-object v11, v8, v10

    .line 69
    .line 70
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    if-eqz v11, :cond_3

    .line 75
    .line 76
    new-instance v7, Landroid/util/Pair;

    .line 77
    .line 78
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 79
    .line 80
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 81
    .line 82
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 87
    .line 88
    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    new-instance v5, Ljava/util/HashSet;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 101
    .line 102
    .line 103
    :try_start_1
    iget-object v6, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 104
    .line 105
    filled-new-array {v7}, [Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    const-wide/16 v8, 0x0

    .line 110
    .line 111
    invoke-interface {v6, v7, v8, v9, p1}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 112
    .line 113
    .line 114
    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    goto :goto_4

    .line 116
    :catch_1
    move-exception v6

    .line 117
    invoke-static {v1, v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .line 119
    .line 120
    :goto_4
    if-nez v4, :cond_5

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_5
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_6

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 142
    .line 143
    new-instance v4, Landroid/util/Pair;

    .line 144
    .line 145
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 146
    .line 147
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 148
    .line 149
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 154
    .line 155
    invoke-direct {v4, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_6
    :goto_6
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_7

    .line 171
    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Landroid/util/Pair;

    .line 177
    .line 178
    new-instance v3, Landroid/util/Pair;

    .line 179
    .line 180
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v6, Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {p0, p1, v6}, Lcom/android/server/notification/PermissionHelper;->isPermissionUserSet(ILjava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-direct {v3, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    goto :goto_7

    .line 207
    :cond_7
    return-object v2
.end method

.method public final hasPermission(I)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPmi:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->checkPostNotificationsPermissionGrantedOrLegacyAccess(I)I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final hasRequestedPermission(ILjava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "android.permission.USE_FULL_SCREEN_INTENT"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 9
    .line 10
    const-wide/16 v4, 0x1000

    .line 11
    .line 12
    invoke-interface {p0, p2, v4, v5, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_3

    .line 17
    .line 18
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    array-length p1, p0

    .line 24
    move p2, v3

    .line 25
    :goto_0
    if-ge p2, p1, :cond_2

    .line 26
    .line 27
    aget-object v4, p0, p2

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_5

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_3

    .line 47
    :cond_2
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_3
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    return v3

    .line 55
    :goto_3
    :try_start_1
    const-string p1, "PermissionHelper"

    .line 56
    .line 57
    const-string p2, "Could not reach system server"

    .line 58
    .line 59
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :goto_4
    return v3

    .line 64
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final isPermissionFixed(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    .line 7
    .line 8
    const-string v3, "android.permission.POST_NOTIFICATIONS"

    .line 9
    .line 10
    const-string v4, "default:0"

    .line 11
    .line 12
    invoke-interface {p0, p1, v3, v4, p2}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    and-int/lit8 p1, p0, 0x10

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    and-int/lit8 p0, p0, 0x4

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    :cond_0
    const/4 v2, 0x1

    .line 25
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    return v2

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    :try_start_1
    const-string p1, "PermissionHelper"

    .line 33
    .line 34
    const-string p2, "Could not reach system server"

    .line 35
    .line 36
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final isPermissionGrantedByDefaultOrRole(ILjava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    .line 7
    .line 8
    const-string v3, "android.permission.POST_NOTIFICATIONS"

    .line 9
    .line 10
    const-string v4, "default:0"

    .line 11
    .line 12
    invoke-interface {p0, p2, v3, v4, p1}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const p1, 0x8020

    .line 17
    .line 18
    .line 19
    and-int/2addr p0, p1

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return v2

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    :try_start_1
    const-string p1, "PermissionHelper"

    .line 31
    .line 32
    const-string p2, "Could not reach system server"

    .line 33
    .line 34
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    return v2

    .line 41
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final isPermissionUserSet(ILjava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    .line 7
    .line 8
    const-string v3, "android.permission.POST_NOTIFICATIONS"

    .line 9
    .line 10
    const-string v4, "default:0"

    .line 11
    .line 12
    invoke-interface {p0, p2, v3, v4, p1}, Landroid/permission/IPermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    and-int/lit8 p0, p0, 0x3

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    return v2

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    :try_start_1
    const-string p1, "PermissionHelper"

    .line 29
    .line 30
    const-string p2, "Could not reach system server"

    .line 31
    .line 32
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final packageRequestsNotificationPermission(ILjava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    const-wide/16 v0, 0x1000

    .line 4
    .line 5
    invoke-interface {p0, p2, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 12
    .line 13
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    .line 14
    .line 15
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-string p1, "PermissionHelper"

    .line 22
    .line 23
    const-string p2, "Could not reach system server"

    .line 24
    .line 25
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public final setNotificationPermission(Ljava/lang/String;ZZI)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v9, p1

    .line 3
    move/from16 v7, p2

    .line 4
    .line 5
    move/from16 v1, p3

    .line 6
    .line 7
    move/from16 v10, p4

    .line 8
    .line 9
    const-string v11, "PermissionHelper"

    .line 10
    .line 11
    const-string/jumbo v2, "reviewRequired = "

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v12

    .line 18
    :try_start_0
    invoke-virtual {p0, v10, p1}, Lcom/android/server/notification/PermissionHelper;->packageRequestsNotificationPermission(ILjava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    const-string/jumbo v4, "pkg = "

    .line 23
    .line 24
    .line 25
    if-eqz v3, :cond_6

    .line 26
    .line 27
    :try_start_1
    invoke-virtual {p0, p1, v10}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_6

    .line 32
    .line 33
    invoke-virtual {p0, v10, p1}, Lcom/android/server/notification/PermissionHelper;->isPermissionGrantedByDefaultOrRole(ILjava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    iget-object v3, v0, Lcom/android/server/notification/PermissionHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 37
    .line 38
    const-wide/16 v5, 0x0

    .line 39
    .line 40
    invoke-interface {v3, p1, v5, v6, v10}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {p0, v3}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v4, ", currentlyGranted = "

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, ", grant = "

    .line 80
    .line 81
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    if-nez v1, :cond_2

    .line 95
    .line 96
    if-eqz v7, :cond_0

    .line 97
    .line 98
    if-nez v8, :cond_0

    .line 99
    .line 100
    iget-object v1, v0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    .line 101
    .line 102
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    .line 103
    .line 104
    const-string v3, "default:0"

    .line 105
    .line 106
    invoke-interface {v1, p1, v2, v3, v10}, Landroid/permission/IPermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    goto/16 :goto_4

    .line 112
    .line 113
    :catch_0
    move-exception v0

    .line 114
    goto/16 :goto_2

    .line 115
    .line 116
    :cond_0
    if-nez v7, :cond_1

    .line 117
    .line 118
    if-eqz v8, :cond_1

    .line 119
    .line 120
    iget-object v1, v0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    .line 121
    .line 122
    const-string v3, "android.permission.POST_NOTIFICATIONS"

    .line 123
    .line 124
    const-string v4, "default:0"

    .line 125
    .line 126
    const-string v6, "PermissionHelper"

    .line 127
    .line 128
    move-object v2, p1

    .line 129
    move/from16 v5, p4

    .line 130
    .line 131
    invoke-interface/range {v1 .. v6}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    .line 135
    .line 136
    const-string v3, "android.permission.POST_NOTIFICATIONS"

    .line 137
    .line 138
    const-string v7, "default:0"

    .line 139
    .line 140
    const/4 v5, 0x1

    .line 141
    const/4 v6, 0x1

    .line 142
    const/4 v4, 0x1

    .line 143
    move-object v2, p1

    .line 144
    move/from16 v8, p4

    .line 145
    .line 146
    invoke-interface/range {v1 .. v8}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, v0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    .line 150
    .line 151
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    .line 152
    .line 153
    const-string v6, "default:0"

    .line 154
    .line 155
    const/4 v4, 0x0

    .line 156
    const/4 v5, 0x1

    .line 157
    const/16 v3, 0xc0

    .line 158
    .line 159
    move-object v1, p1

    .line 160
    move/from16 v7, p4

    .line 161
    .line 162
    invoke-interface/range {v0 .. v7}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_2
    const-string v1, "com.sec.android.easyMover"

    .line 167
    .line 168
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    if-eqz v1, :cond_3

    .line 173
    .line 174
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_3
    if-nez v7, :cond_4

    .line 179
    .line 180
    if-eqz v8, :cond_4

    .line 181
    .line 182
    :try_start_2
    iget-object v1, v0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    .line 183
    .line 184
    const-string v3, "android.permission.POST_NOTIFICATIONS"

    .line 185
    .line 186
    const-string v4, "default:0"

    .line 187
    .line 188
    const-string v6, "PermissionHelper"

    .line 189
    .line 190
    move-object v2, p1

    .line 191
    move/from16 v5, p4

    .line 192
    .line 193
    invoke-interface/range {v1 .. v6}, Landroid/permission/IPermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    :cond_4
    if-eqz v7, :cond_5

    .line 197
    .line 198
    if-nez v8, :cond_5

    .line 199
    .line 200
    iget-object v1, v0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    .line 201
    .line 202
    const-string v3, "android.permission.POST_NOTIFICATIONS"

    .line 203
    .line 204
    const-string v7, "default:0"

    .line 205
    .line 206
    const/4 v5, 0x0

    .line 207
    const/4 v6, 0x1

    .line 208
    const/4 v4, 0x1

    .line 209
    move-object v2, p1

    .line 210
    move/from16 v8, p4

    .line 211
    .line 212
    invoke-interface/range {v1 .. v8}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    iget-object v0, v0, Lcom/android/server/notification/PermissionHelper;->mPermManager:Landroid/permission/IPermissionManager;

    .line 216
    .line 217
    const-string v2, "android.permission.POST_NOTIFICATIONS"

    .line 218
    .line 219
    const-string v6, "default:0"

    .line 220
    .line 221
    const/16 v4, 0x40

    .line 222
    .line 223
    const/4 v5, 0x1

    .line 224
    const/16 v3, 0x40

    .line 225
    .line 226
    move-object v1, p1

    .line 227
    move/from16 v7, p4

    .line 228
    .line 229
    invoke-interface/range {v0 .. v7}, Landroid/permission/IPermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    .line 231
    .line 232
    :cond_5
    :goto_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v1, ", setNotificationPermission return!!"

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    .line 255
    .line 256
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :goto_2
    :try_start_4
    const-string v1, "Could not reach system server"

    .line 261
    .line 262
    invoke-static {v11, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 263
    .line 264
    .line 265
    goto :goto_1

    .line 266
    :goto_3
    return-void

    .line 267
    :goto_4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    .line 269
    .line 270
    throw v0
.end method
