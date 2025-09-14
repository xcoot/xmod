.class public final Lcom/android/server/pm/SuspendPackageHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/ProtectedPackages;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 11
    .line 12
    return-void
.end method

.method public static getSuspendedPackageAppExtras(IILcom/android/server/pm/Computer;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-interface {p2, p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object p2

    .line 9
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance p1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-ge p3, v0, :cond_2

    .line 36
    .line 37
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/server/pm/pkg/SuspendParams;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/pm/pkg/SuspendParams;->mAppExtras:Landroid/os/PersistableBundle;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-lez p0, :cond_3

    .line 66
    .line 67
    move-object p2, p1

    .line 68
    :cond_3
    return-object p2
.end method

.method public static getSuspendingPackage(IILcom/android/server/pm/Computer;Ljava/lang/String;)Landroid/content/pm/UserPackage;
    .locals 4

    .line 1
    invoke-interface {p2, p1, p3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object p2

    .line 9
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    return-object p2

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    move-object p3, p2

    .line 22
    move-object v0, p3

    .line 23
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v1, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ge p1, v1, :cond_4

    .line 34
    .line 35
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/content/pm/UserPackage;

    .line 46
    .line 47
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v1, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lcom/android/server/pm/pkg/SuspendParams;

    .line 58
    .line 59
    iget-object v2, v0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 60
    .line 61
    const-string v3, "android"

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    move-object p3, v0

    .line 70
    :cond_2
    iget-boolean v1, v1, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    if-nez p2, :cond_3

    .line 75
    .line 76
    move-object p2, v0

    .line 77
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    if-eqz p2, :cond_5

    .line 81
    .line 82
    return-object p2

    .line 83
    :cond_5
    if-eqz p3, :cond_6

    .line 84
    .line 85
    return-object p3

    .line 86
    :cond_6
    return-object v0
.end method


# virtual methods
.method public final canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    move/from16 v10, p4

    .line 10
    .line 11
    iget-object v11, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 12
    .line 13
    iget-object v12, v0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 14
    .line 15
    array-length v1, v8

    .line 16
    new-array v13, v1, [Z

    .line 17
    .line 18
    const/16 v1, 0x3e8

    .line 19
    .line 20
    iget-object v15, v0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 21
    .line 22
    const/16 v16, 0x1

    .line 23
    .line 24
    if-ne v10, v1, :cond_0

    .line 25
    .line 26
    :goto_0
    move/from16 v1, v16

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {v15, v9}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    const-wide/16 v4, 0x0

    .line 36
    .line 37
    move-object/from16 v1, p1

    .line 38
    .line 39
    move/from16 v2, p3

    .line 40
    .line 41
    move/from16 v3, p4

    .line 42
    .line 43
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->getPackageUidInternal(IIJLjava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-ne v10, v1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v1, 0x0

    .line 51
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    :try_start_0
    iget-object v4, v12, Lcom/android/server/pm/PackageManagerServiceInjector;->mDefaultAppProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 56
    .line 57
    iget-object v5, v12, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 58
    .line 59
    invoke-virtual {v4, v5, v12}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Lcom/android/server/pm/DefaultAppProvider;

    .line 64
    .line 65
    invoke-virtual {v4, v9}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    const-string v6, "android.app.role.DIALER"

    .line 70
    .line 71
    invoke-virtual {v4, v9, v6}, Lcom/android/server/pm/DefaultAppProvider;->getRoleHolder(ILjava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const/4 v6, 0x2

    .line 76
    invoke-virtual {v0, v7, v6, v9}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const/4 v10, 0x3

    .line 81
    invoke-virtual {v0, v7, v10, v9}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    const/4 v14, 0x4

    .line 86
    invoke-virtual {v0, v7, v14, v9}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    move-wide/from16 v17, v2

    .line 91
    .line 92
    const/4 v2, 0x7

    .line 93
    :try_start_1
    invoke-virtual {v0, v7, v2, v9}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const/4 v2, 0x0

    .line 98
    :goto_2
    array-length v3, v8

    .line 99
    if-ge v2, v3, :cond_12

    .line 100
    .line 101
    const/4 v3, 0x0

    .line 102
    aput-boolean v3, v13, v2

    .line 103
    .line 104
    aget-object v3, v8, v2

    .line 105
    .line 106
    invoke-virtual {v11, v9, v3}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(ILjava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    const-string v8, "Cannot suspend package \""

    .line 111
    .line 112
    move/from16 p0, v2

    .line 113
    .line 114
    const-string v2, "PackageManager"

    .line 115
    .line 116
    if-eqz v19, :cond_2

    .line 117
    .line 118
    move-object/from16 v19, v13

    .line 119
    .line 120
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v3, "\": has an active device admin"

    .line 132
    .line 133
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    :goto_3
    move-object/from16 p4, v0

    .line 144
    .line 145
    move/from16 v21, v1

    .line 146
    .line 147
    goto/16 :goto_5

    .line 148
    .line 149
    :catchall_0
    move-exception v0

    .line 150
    goto/16 :goto_6

    .line 151
    .line 152
    :cond_2
    move-object/from16 v19, v13

    .line 153
    .line 154
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    if-eqz v13, :cond_3

    .line 159
    .line 160
    new-instance v13, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v3, "\": contains the active launcher"

    .line 172
    .line 173
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    if-eqz v13, :cond_4

    .line 189
    .line 190
    new-instance v13, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v3, "\": required for package installation"

    .line 202
    .line 203
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_4
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v13

    .line 218
    if-eqz v13, :cond_5

    .line 219
    .line 220
    new-instance v13, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v3, "\": required for package uninstallation"

    .line 232
    .line 233
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_5
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v13

    .line 248
    if-eqz v13, :cond_6

    .line 249
    .line 250
    new-instance v13, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v3, "\": required for package verification"

    .line 262
    .line 263
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    goto/16 :goto_3

    .line 274
    .line 275
    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v13

    .line 279
    if-eqz v13, :cond_7

    .line 280
    .line 281
    new-instance v13, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v3, "\": is the default dialer"

    .line 293
    .line 294
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    goto/16 :goto_3

    .line 305
    .line 306
    :cond_7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    if-eqz v13, :cond_8

    .line 311
    .line 312
    new-instance v13, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v3, "\": required for permissions management"

    .line 324
    .line 325
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    goto/16 :goto_3

    .line 336
    .line 337
    :cond_8
    invoke-virtual {v15, v9, v3}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    .line 338
    .line 339
    .line 340
    move-result v13

    .line 341
    if-eqz v13, :cond_9

    .line 342
    .line 343
    new-instance v13, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    const-string v3, "\": protected package"

    .line 355
    .line 356
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    goto/16 :goto_3

    .line 367
    .line 368
    :cond_9
    if-nez v1, :cond_a

    .line 369
    .line 370
    invoke-interface {v7, v9, v3}, Lcom/android/server/pm/Computer;->getBlockUninstall(ILjava/lang/String;)Z

    .line 371
    .line 372
    .line 373
    move-result v13

    .line 374
    if-eqz v13, :cond_a

    .line 375
    .line 376
    new-instance v13, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string v3, "\": blocked by admin"

    .line 388
    .line 389
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    goto/16 :goto_3

    .line 400
    .line 401
    :cond_a
    invoke-virtual {v11, v7, v3, v9}, Lcom/android/server/pm/PackageManagerService;->isRequiredSystemPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z

    .line 402
    .line 403
    .line 404
    move-result v13

    .line 405
    if-eqz v13, :cond_b

    .line 406
    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    const-string v3, "\": required system package"

    .line 419
    .line 420
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-static {v2}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    goto/16 :goto_3

    .line 431
    .line 432
    :cond_b
    invoke-interface {v7, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 433
    .line 434
    .line 435
    move-result-object v13

    .line 436
    if-nez v13, :cond_c

    .line 437
    .line 438
    const/16 v20, 0x0

    .line 439
    .line 440
    move-object/from16 p4, v0

    .line 441
    .line 442
    goto :goto_4

    .line 443
    :cond_c
    move-object/from16 p4, v0

    .line 444
    .line 445
    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 446
    .line 447
    move-object/from16 v20, v0

    .line 448
    .line 449
    :goto_4
    if-eqz v20, :cond_f

    .line 450
    .line 451
    iget v0, v13, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 452
    .line 453
    invoke-static {v9, v0}, Landroid/os/UserHandle;->getUid(II)I

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackage;->isSdkLibrary()Z

    .line 458
    .line 459
    .line 460
    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    move/from16 v21, v1

    .line 462
    .line 463
    const-string v1, "Cannot suspend package: "

    .line 464
    .line 465
    if-eqz v13, :cond_d

    .line 466
    .line 467
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const-string v1, " providing SDK library: "

    .line 479
    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .line 496
    .line 497
    goto :goto_5

    .line 498
    :cond_d
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    .line 499
    .line 500
    .line 501
    move-result v13

    .line 502
    if-eqz v13, :cond_e

    .line 503
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    const-string v1, " providing static shared library: "

    .line 516
    .line 517
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-interface/range {v20 .. v20}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .line 533
    .line 534
    goto :goto_5

    .line 535
    :cond_e
    const-class v1, Landroid/app/AppOpsManager;

    .line 536
    .line 537
    iget-object v13, v12, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 538
    .line 539
    invoke-interface {v13, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    check-cast v1, Landroid/app/AppOpsManager;

    .line 544
    .line 545
    const/16 v13, 0x7c

    .line 546
    .line 547
    invoke-virtual {v1, v13, v0, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    if-nez v0, :cond_10

    .line 552
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    const-string v1, "\": has OP_SYSTEM_EXEMPT_FROM_SUSPENSION set"

    .line 565
    .line 566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v0

    .line 573
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    .line 575
    .line 576
    goto :goto_5

    .line 577
    :cond_f
    move/from16 v21, v1

    .line 578
    .line 579
    :cond_10
    const-string v0, "android"

    .line 580
    .line 581
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    if-eqz v0, :cond_11

    .line 586
    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .line 591
    .line 592
    const-string v1, "Cannot suspend the platform package: "

    .line 593
    .line 594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    .line 606
    .line 607
    goto :goto_5

    .line 608
    :cond_11
    aput-boolean v16, v19, p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 609
    .line 610
    :goto_5
    add-int/lit8 v2, p0, 0x1

    .line 611
    .line 612
    move-object/from16 v8, p2

    .line 613
    .line 614
    move-object/from16 v0, p4

    .line 615
    .line 616
    move-object/from16 v13, v19

    .line 617
    .line 618
    move/from16 v1, v21

    .line 619
    .line 620
    goto/16 :goto_2

    .line 621
    .line 622
    :cond_12
    move-object/from16 v19, v13

    .line 623
    .line 624
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 625
    .line 626
    .line 627
    return-object v19

    .line 628
    :catchall_1
    move-exception v0

    .line 629
    move-wide/from16 v17, v2

    .line 630
    .line 631
    :goto_6
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    .line 633
    .line 634
    throw v0
.end method

.method public final getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->getKnownPackageNamesInternal(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    array-length p1, p0

    .line 8
    if-lez p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    aget-object p0, p0, p1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return-object p0
.end method

.method public final isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x3e8

    .line 8
    .line 9
    if-ne p3, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    if-eqz v6, :cond_1

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    move-object v1, p1

    .line 23
    move v2, p2

    .line 24
    move v3, p3

    .line 25
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->getPackageUidInternal(IIJLjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-ne p3, p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string/jumbo p0, "no_control_apps"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p0, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_2

    .line 40
    .line 41
    const-string/jumbo p0, "no_uninstall_apps"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_2

    .line 49
    .line 50
    :goto_0
    const/4 p0, 0x1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 p0, 0x0

    .line 53
    :goto_1
    return p0
.end method

.method public final removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v8, p4

    .line 6
    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v9, Landroid/util/IntArray;

    .line 13
    .line 14
    invoke-direct {v9}, Landroid/util/IntArray;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v3, Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 20
    .line 21
    .line 22
    array-length v4, v1

    .line 23
    const/4 v6, 0x0

    .line 24
    :goto_0
    if-ge v6, v4, :cond_7

    .line 25
    .line 26
    aget-object v7, v1, v6

    .line 27
    .line 28
    move-object/from16 v10, p1

    .line 29
    .line 30
    invoke-interface {v10, v7}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 31
    .line 32
    .line 33
    move-result-object v11

    .line 34
    if-nez v11, :cond_0

    .line 35
    .line 36
    const/4 v12, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-interface {v11, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 39
    .line 40
    .line 41
    move-result-object v12

    .line 42
    :goto_1
    if-eqz v12, :cond_1

    .line 43
    .line 44
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    .line 45
    .line 46
    .line 47
    move-result v13

    .line 48
    if-nez v13, :cond_2

    .line 49
    .line 50
    :cond_1
    move-object/from16 v5, p3

    .line 51
    .line 52
    goto :goto_4

    .line 53
    :cond_2
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    const/4 v13, 0x0

    .line 58
    const/4 v14, 0x0

    .line 59
    :goto_2
    iget-object v15, v12, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 60
    .line 61
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    .line 62
    .line 63
    .line 64
    move-result v15

    .line 65
    if-ge v13, v15, :cond_5

    .line 66
    .line 67
    iget-object v15, v12, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {v15, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v15

    .line 73
    check-cast v15, Landroid/content/pm/UserPackage;

    .line 74
    .line 75
    move-object/from16 v5, p3

    .line 76
    .line 77
    invoke-interface {v5, v15}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v16

    .line 81
    if-eqz v16, :cond_4

    .line 82
    .line 83
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v16

    .line 87
    check-cast v16, Landroid/util/ArraySet;

    .line 88
    .line 89
    if-nez v16, :cond_3

    .line 90
    .line 91
    new-instance v1, Landroid/util/ArraySet;

    .line 92
    .line 93
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_3
    move-object/from16 v1, v16

    .line 101
    .line 102
    :goto_3
    invoke-virtual {v1, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    add-int/lit8 v14, v14, 0x1

    .line 106
    .line 107
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 108
    .line 109
    move-object/from16 v1, p2

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    move-object/from16 v5, p3

    .line 113
    .line 114
    iget-object v1, v12, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-ne v14, v1, :cond_6

    .line 121
    .line 122
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    iget v1, v11, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 128
    .line 129
    invoke-static {v8, v1}, Landroid/os/UserHandle;->getUid(II)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-virtual {v9, v1}, Landroid/util/IntArray;->add(I)V

    .line 134
    .line 135
    .line 136
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 137
    .line 138
    move-object/from16 v1, p2

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_7
    new-instance v1, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;

    .line 142
    .line 143
    invoke-direct {v1, v3, v8}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;-><init>(Landroid/util/ArrayMap;I)V

    .line 144
    .line 145
    .line 146
    iget-object v10, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 147
    .line 148
    invoke-virtual {v10, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v10, v8}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_8

    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    new-array v1, v1, [Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    move-object v11, v1

    .line 171
    check-cast v11, [Ljava/lang/String;

    .line 172
    .line 173
    new-instance v5, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    .line 174
    .line 175
    invoke-direct {v5, v10}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 176
    .line 177
    .line 178
    iget-object v12, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 179
    .line 180
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    new-instance v13, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;

    .line 184
    .line 185
    const-string v7, "android.intent.action.MY_PACKAGE_UNSUSPENDED"

    .line 186
    .line 187
    move-object v1, v13

    .line 188
    move-object v2, v12

    .line 189
    const/4 v3, 0x0

    .line 190
    move/from16 v4, p4

    .line 191
    .line 192
    move-object v6, v11

    .line 193
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/BroadcastHelper;ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v12, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 197
    .line 198
    invoke-virtual {v1, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    .line 200
    .line 201
    new-instance v1, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    .line 202
    .line 203
    invoke-direct {v1, v10}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v9}, Landroid/util/IntArray;->toArray()[I

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    iget-object v0, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 211
    .line 212
    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 213
    .line 214
    const/4 v5, 0x0

    .line 215
    move-object v3, v11

    .line 216
    move/from16 v6, p4

    .line 217
    .line 218
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper;->sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    .line 219
    .line 220
    .line 221
    :cond_8
    return-void
.end method

.method public final setPackagesSuspended(Lcom/android/server/pm/Computer;[Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Landroid/content/pm/UserPackage;IIZ)[Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v5, p7

    .line 8
    .line 9
    move/from16 v8, p8

    .line 10
    .line 11
    move/from16 v3, p9

    .line 12
    .line 13
    move/from16 v9, p10

    .line 14
    .line 15
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    return-object v2

    .line 22
    :cond_0
    const-string v4, "PackageManager"

    .line 23
    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    if-nez v9, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/server/pm/SuspendPackageHelper;->isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-nez v6, :cond_1

    .line 33
    .line 34
    const-string v0, "Cannot suspend due to restrictions on user "

    .line 35
    .line 36
    invoke-static {v8, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :cond_1
    if-eqz p3, :cond_2

    .line 41
    .line 42
    new-instance v7, Lcom/android/server/pm/pkg/SuspendParams;

    .line 43
    .line 44
    move-object/from16 v10, p4

    .line 45
    .line 46
    move-object/from16 v11, p5

    .line 47
    .line 48
    move-object/from16 v12, p6

    .line 49
    .line 50
    invoke-direct {v7, v12, v10, v11, v9}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v7, 0x0

    .line 55
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    .line 56
    .line 57
    array-length v11, v2

    .line 58
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .line 60
    .line 61
    new-instance v11, Ljava/util/ArrayList;

    .line 62
    .line 63
    array-length v12, v2

    .line 64
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .line 66
    .line 67
    new-instance v12, Landroid/util/IntArray;

    .line 68
    .line 69
    array-length v13, v2

    .line 70
    invoke-direct {v12, v13}, Landroid/util/IntArray;-><init>(I)V

    .line 71
    .line 72
    .line 73
    new-instance v13, Landroid/util/ArraySet;

    .line 74
    .line 75
    array-length v14, v2

    .line 76
    invoke-direct {v13, v14}, Landroid/util/ArraySet;-><init>(I)V

    .line 77
    .line 78
    .line 79
    new-instance v14, Landroid/util/IntArray;

    .line 80
    .line 81
    array-length v15, v2

    .line 82
    invoke-direct {v14, v15}, Landroid/util/IntArray;-><init>(I)V

    .line 83
    .line 84
    .line 85
    if-eqz p3, :cond_3

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    .line 88
    .line 89
    .line 90
    move-result-object v15

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    const/4 v15, 0x0

    .line 93
    :goto_1
    const/4 v6, 0x0

    .line 94
    :goto_2
    array-length v9, v2

    .line 95
    if-ge v6, v9, :cond_f

    .line 96
    .line 97
    aget-object v9, v2, v6

    .line 98
    .line 99
    iget-object v2, v5, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_5

    .line 106
    .line 107
    iget v2, v5, Landroid/content/pm/UserPackage;->userId:I

    .line 108
    .line 109
    if-ne v2, v8, :cond_5

    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v0, "Suspending package: "

    .line 114
    .line 115
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v0, " trying to "

    .line 122
    .line 123
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    if-eqz p3, :cond_4

    .line 127
    .line 128
    const-string v0, ""

    .line 129
    .line 130
    :goto_3
    move-object/from16 p4, v14

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_4
    const-string/jumbo v0, "un"

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :goto_4
    const-string/jumbo v14, "suspend itself. Ignoring"

    .line 138
    .line 139
    .line 140
    invoke-static {v2, v0, v14, v4}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    :goto_5
    move-object/from16 v14, p4

    .line 147
    .line 148
    move-object/from16 p5, v15

    .line 149
    .line 150
    goto/16 :goto_9

    .line 151
    .line 152
    :cond_5
    move-object/from16 p4, v14

    .line 153
    .line 154
    invoke-interface {v1, v9}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const-string v2, ". Skipping suspending/un-suspending."

    .line 159
    .line 160
    if-eqz v0, :cond_6

    .line 161
    .line 162
    invoke-interface {v0, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 167
    .line 168
    .line 169
    move-result v14

    .line 170
    if-eqz v14, :cond_6

    .line 171
    .line 172
    invoke-interface {v1, v0, v3, v8}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    .line 173
    .line 174
    .line 175
    move-result v14

    .line 176
    if-eqz v14, :cond_7

    .line 177
    .line 178
    :cond_6
    move-object/from16 v14, p4

    .line 179
    .line 180
    move-object/from16 p5, v15

    .line 181
    .line 182
    goto/16 :goto_8

    .line 183
    .line 184
    :cond_7
    if-eqz v15, :cond_8

    .line 185
    .line 186
    aget-boolean v14, v15, v6

    .line 187
    .line 188
    if-nez v14, :cond_8

    .line 189
    .line 190
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_8
    invoke-interface {v0, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 195
    .line 196
    .line 197
    move-result-object v14

    .line 198
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    .line 199
    .line 200
    .line 201
    move-result-object v14

    .line 202
    if-nez v14, :cond_9

    .line 203
    .line 204
    const/4 v1, 0x0

    .line 205
    goto :goto_6

    .line 206
    :cond_9
    iget-object v1, v14, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 207
    .line 208
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    check-cast v1, Lcom/android/server/pm/pkg/SuspendParams;

    .line 213
    .line 214
    :goto_6
    invoke-static {v1, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    const/4 v3, 0x1

    .line 219
    xor-int/2addr v1, v3

    .line 220
    if-eqz p3, :cond_a

    .line 221
    .line 222
    if-nez v1, :cond_a

    .line 223
    .line 224
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    iget v0, v0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 228
    .line 229
    invoke-static {v8, v0}, Landroid/os/UserHandle;->getUid(II)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    invoke-virtual {v12, v0}, Landroid/util/IntArray;->add(I)V

    .line 234
    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_a
    move-object/from16 p5, v15

    .line 238
    .line 239
    if-nez p3, :cond_b

    .line 240
    .line 241
    invoke-static {v14}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    .line 242
    .line 243
    .line 244
    move-result v15

    .line 245
    if-ne v15, v3, :cond_b

    .line 246
    .line 247
    iget-object v14, v14, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 248
    .line 249
    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v14

    .line 253
    if-eqz v14, :cond_b

    .line 254
    .line 255
    goto :goto_7

    .line 256
    :cond_b
    const/4 v3, 0x0

    .line 257
    :goto_7
    if-nez p3, :cond_c

    .line 258
    .line 259
    if-eqz v3, :cond_d

    .line 260
    .line 261
    :cond_c
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    iget v3, v0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 265
    .line 266
    invoke-static {v8, v3}, Landroid/os/UserHandle;->getUid(II)I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    invoke-virtual {v12, v3}, Landroid/util/IntArray;->add(I)V

    .line 271
    .line 272
    .line 273
    :cond_d
    if-eqz v1, :cond_e

    .line 274
    .line 275
    invoke-virtual {v13, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    iget v0, v0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 279
    .line 280
    invoke-static {v8, v0}, Landroid/os/UserHandle;->getUid(II)I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    move-object/from16 v14, p4

    .line 285
    .line 286
    invoke-virtual {v14, v0}, Landroid/util/IntArray;->add(I)V

    .line 287
    .line 288
    .line 289
    goto :goto_9

    .line 290
    :cond_e
    move-object/from16 v14, p4

    .line 291
    .line 292
    const-string v0, "No change is needed for package: "

    .line 293
    .line 294
    invoke-static {v0, v9, v2, v4}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    goto :goto_9

    .line 298
    :goto_8
    const-string v0, "Could not find package setting for package: "

    .line 299
    .line 300
    invoke-static {v0, v9, v2, v4}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    :goto_9
    add-int/lit8 v6, v6, 0x1

    .line 307
    .line 308
    move-object/from16 v0, p0

    .line 309
    .line 310
    move-object/from16 v1, p1

    .line 311
    .line 312
    move-object/from16 v2, p2

    .line 313
    .line 314
    move-object/from16 v15, p5

    .line 315
    .line 316
    move/from16 v3, p9

    .line 317
    .line 318
    goto/16 :goto_2

    .line 319
    .line 320
    :cond_f
    new-instance v0, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;

    .line 321
    .line 322
    move-object v1, v0

    .line 323
    move-object v2, v13

    .line 324
    move/from16 v3, p8

    .line 325
    .line 326
    move/from16 v4, p3

    .line 327
    .line 328
    move-object/from16 v5, p7

    .line 329
    .line 330
    move-object v6, v7

    .line 331
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArraySet;IZLandroid/content/pm/UserPackage;Lcom/android/server/pm/pkg/SuspendParams;)V

    .line 332
    .line 333
    .line 334
    move-object/from16 v9, p0

    .line 335
    .line 336
    iget-object v15, v9, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 337
    .line 338
    invoke-virtual {v15, v0}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-nez v0, :cond_12

    .line 346
    .line 347
    const/4 v0, 0x0

    .line 348
    new-array v1, v0, [Ljava/lang/String;

    .line 349
    .line 350
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    check-cast v0, [Ljava/lang/String;

    .line 355
    .line 356
    new-instance v2, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    .line 357
    .line 358
    invoke-direct {v2, v15}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 359
    .line 360
    .line 361
    if-eqz p3, :cond_10

    .line 362
    .line 363
    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    .line 364
    .line 365
    :goto_a
    move-object v3, v1

    .line 366
    goto :goto_b

    .line 367
    :cond_10
    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 368
    .line 369
    goto :goto_a

    .line 370
    :goto_b
    invoke-virtual {v12}, Landroid/util/IntArray;->toArray()[I

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    iget-object v1, v9, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 375
    .line 376
    move-object v4, v0

    .line 377
    move/from16 v6, p10

    .line 378
    .line 379
    move/from16 v7, p8

    .line 380
    .line 381
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/BroadcastHelper;->sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    .line 382
    .line 383
    .line 384
    new-instance v5, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    .line 385
    .line 386
    invoke-direct {v5, v15}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 387
    .line 388
    .line 389
    iget-object v11, v9, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 390
    .line 391
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    .line 393
    .line 394
    if-eqz p3, :cond_11

    .line 395
    .line 396
    const-string v1, "android.intent.action.MY_PACKAGE_SUSPENDED"

    .line 397
    .line 398
    :goto_c
    move-object v7, v1

    .line 399
    goto :goto_d

    .line 400
    :cond_11
    const-string v1, "android.intent.action.MY_PACKAGE_UNSUSPENDED"

    .line 401
    .line 402
    goto :goto_c

    .line 403
    :goto_d
    new-instance v12, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;

    .line 404
    .line 405
    move-object v1, v12

    .line 406
    move-object v2, v11

    .line 407
    move/from16 v3, p3

    .line 408
    .line 409
    move/from16 v4, p8

    .line 410
    .line 411
    move-object v6, v0

    .line 412
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/BroadcastHelper;ZILjava/util/function/Supplier;[Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-object v0, v11, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    .line 416
    .line 417
    invoke-virtual {v0, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 418
    .line 419
    .line 420
    invoke-virtual {v15, v8}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 421
    .line 422
    .line 423
    :cond_12
    invoke-virtual {v13}, Landroid/util/ArraySet;->isEmpty()Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-nez v0, :cond_13

    .line 428
    .line 429
    new-instance v0, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    .line 430
    .line 431
    invoke-direct {v0, v15}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 432
    .line 433
    .line 434
    const/4 v1, 0x0

    .line 435
    new-array v2, v1, [Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v13, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    check-cast v1, [Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {v14}, Landroid/util/IntArray;->toArray()[I

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    iget-object v3, v9, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 448
    .line 449
    const-string v4, "android.intent.action.PACKAGES_SUSPENSION_CHANGED"

    .line 450
    .line 451
    move-object/from16 p0, v3

    .line 452
    .line 453
    move-object/from16 p1, v0

    .line 454
    .line 455
    move-object/from16 p2, v4

    .line 456
    .line 457
    move-object/from16 p3, v1

    .line 458
    .line 459
    move-object/from16 p4, v2

    .line 460
    .line 461
    move/from16 p5, p10

    .line 462
    .line 463
    move/from16 p6, p8

    .line 464
    .line 465
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/BroadcastHelper;->sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[IZI)V

    .line 466
    .line 467
    .line 468
    :cond_13
    const/4 v0, 0x0

    .line 469
    new-array v0, v0, [Ljava/lang/String;

    .line 470
    .line 471
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    check-cast v0, [Ljava/lang/String;

    .line 476
    .line 477
    return-object v0
.end method
