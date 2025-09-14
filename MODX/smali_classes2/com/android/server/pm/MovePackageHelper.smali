.class public final Lcom/android/server/pm/MovePackageHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sMoveIdMapForSd:Ljava/util/Map;

.field public static final sPendingMoves:Ljava/util/ArrayList;


# instance fields
.field public final mPm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/pm/MovePackageHelper;->sMoveIdMapForSd:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/pm/MovePackageHelper;->sPendingMoves:Ljava/util/ArrayList;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getPackageSizeInfoLI(Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    move-object/from16 v9, p3

    .line 3
    .line 4
    const/4 v10, 0x1

    .line 5
    move-object v1, p0

    .line 6
    iget-object v1, v1, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 13
    .line 14
    .line 15
    move-result-object v11

    .line 16
    const/4 v12, 0x0

    .line 17
    const-string v13, "PackageManager"

    .line 18
    .line 19
    if-nez v11, :cond_0

    .line 20
    .line 21
    const-string v1, "Failed to find settings for "

    .line 22
    .line 23
    invoke-static {v1, p1, v13}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return v12

    .line 27
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move/from16 v3, p2

    .line 32
    .line 33
    invoke-interface {v11, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    new-array v6, v10, [J

    .line 42
    .line 43
    aput-wide v4, v6, v12

    .line 44
    .line 45
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 46
    .line 47
    filled-new-array {v0}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 52
    .line 53
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 54
    .line 55
    iget v5, v11, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    move/from16 v3, p2

    .line 59
    .line 60
    move-object/from16 v8, p3

    .line 61
    .line 62
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 63
    .line 64
    .line 65
    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 66
    .line 67
    invoke-virtual {v11}, Lcom/android/server/pm/SettingBase;->getFlags()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    and-int/2addr v0, v10

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {v11}, Lcom/android/server/pm/SettingBase;->getFlags()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    and-int/lit16 v0, v0, 0x80

    .line 79
    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const-wide/16 v0, 0x0

    .line 84
    .line 85
    iput-wide v0, v9, Landroid/content/pm/PackageStats;->codeSize:J

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    :goto_0
    iget-wide v0, v9, Landroid/content/pm/PackageStats;->dataSize:J

    .line 91
    .line 92
    iget-wide v2, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 93
    .line 94
    sub-long/2addr v0, v2

    .line 95
    iput-wide v0, v9, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    return v10

    .line 98
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    return v12
.end method

.method public final movePackageInternal(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v9, p1

    .line 4
    .line 5
    move/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v11, p4

    .line 8
    .line 9
    move-object/from16 v12, p5

    .line 10
    .line 11
    const/4 v13, 0x0

    .line 12
    const/4 v14, 0x1

    .line 13
    iget-object v2, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 16
    .line 17
    const-class v3, Landroid/os/storage/StorageManager;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 20
    .line 21
    invoke-interface {v2, v3}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    move-object v7, v2

    .line 26
    check-cast v7, Landroid/os/storage/StorageManager;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-interface {v3, v1, v4, v11}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const/4 v5, -0x2

    .line 51
    if-eqz v4, :cond_1f

    .line 52
    .line 53
    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 54
    .line 55
    if-eqz v6, :cond_1f

    .line 56
    .line 57
    iget-object v6, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 58
    .line 59
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-static {v4, v6}, Lcom/android/server/pm/pkg/PackageStateUtils;->queryInstalledUsers(Lcom/android/server/pm/pkg/PackageStateInternal;[I)[I

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    array-length v6, v8

    .line 70
    if-lez v6, :cond_1e

    .line 71
    .line 72
    aget v6, v8, v13

    .line 73
    .line 74
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 75
    .line 76
    .line 77
    move-result-object v15

    .line 78
    array-length v6, v8

    .line 79
    move v10, v13

    .line 80
    :goto_0
    if-ge v10, v6, :cond_1

    .line 81
    .line 82
    aget v13, v8, v10

    .line 83
    .line 84
    invoke-interface {v3, v4, v1, v13}, Lcom/android/server/pm/Computer;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    .line 85
    .line 86
    .line 87
    move-result v13

    .line 88
    if-nez v13, :cond_0

    .line 89
    .line 90
    add-int/2addr v10, v14

    .line 91
    const/4 v13, 0x0

    .line 92
    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 94
    .line 95
    const-string v1, "Missing package"

    .line 96
    .line 97
    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_1
    iget-object v1, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-nez v5, :cond_1d

    .line 108
    .line 109
    const-string/jumbo v5, "private"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    iget-object v6, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 117
    .line 118
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 119
    .line 120
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    const v10, 0x111001a

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-eqz v5, :cond_3

    .line 132
    .line 133
    if-eqz v6, :cond_2

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 137
    .line 138
    const/16 v1, -0x9

    .line 139
    .line 140
    const-string v2, "3rd party apps are not allowed on internal storage"

    .line 141
    .line 142
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    const/4 v13, -0x6

    .line 151
    if-nez v10, :cond_5

    .line 152
    .line 153
    new-instance v5, Ljava/io/File;

    .line 154
    .line 155
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    new-instance v6, Ljava/io/File;

    .line 163
    .line 164
    const-string/jumbo v14, "oat"

    .line 165
    .line 166
    .line 167
    invoke-direct {v6, v5, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v12}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 171
    .line 172
    .line 173
    move-result-object v14

    .line 174
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_4

    .line 179
    .line 180
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-nez v5, :cond_5

    .line 185
    .line 186
    if-eqz v14, :cond_5

    .line 187
    .line 188
    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-nez v5, :cond_4

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_4
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 196
    .line 197
    const-string v1, "Move only supported for modern cluster style installs"

    .line 198
    .line 199
    invoke-direct {v0, v13, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v0

    .line 203
    :cond_5
    :goto_2
    invoke-static {v1}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_7

    .line 208
    .line 209
    if-eqz v12, :cond_7

    .line 210
    .line 211
    const-string/jumbo v5, "primary_physical"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-eqz v5, :cond_6

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_6
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 222
    .line 223
    const-string v1, "Package already moved to "

    .line 224
    .line 225
    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-direct {v0, v13, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v0

    .line 233
    :cond_7
    :goto_3
    iget-object v14, v4, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 234
    .line 235
    invoke-static {v14, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-eqz v5, :cond_9

    .line 240
    .line 241
    invoke-static {v1}, Lcom/android/server/pm/AsecInstallHelper;->isExternalAsec(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-eqz v5, :cond_8

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_8
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 249
    .line 250
    const-string v1, "Package already moved to "

    .line 251
    .line 252
    invoke-static {v1, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-direct {v0, v13, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw v0

    .line 260
    :cond_9
    :goto_4
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    if-nez v5, :cond_b

    .line 265
    .line 266
    iget-object v5, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 267
    .line 268
    invoke-virtual {v5, v3, v11}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdminOnAnyUser(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    if-nez v5, :cond_a

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_a
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 276
    .line 277
    const/4 v1, -0x8

    .line 278
    const-string v2, "Device admin cannot be moved"

    .line 279
    .line 280
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 281
    .line 282
    .line 283
    throw v0

    .line 284
    :cond_b
    :goto_5
    invoke-interface {v3}, Lcom/android/server/pm/Computer;->getFrozenPackages()Lcom/android/server/utils/WatchedArrayMap;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    iget-object v3, v3, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 289
    .line 290
    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    if-nez v3, :cond_1c

    .line 295
    .line 296
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    .line 297
    .line 298
    .line 299
    move-result v16

    .line 300
    new-instance v6, Ljava/io/File;

    .line 301
    .line 302
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 310
    .line 311
    iget-object v3, v4, Lcom/android/server/pm/PackageSetting;->mCpuAbiOverride:Ljava/lang/String;

    .line 312
    .line 313
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 314
    .line 315
    .line 316
    move-result v17

    .line 317
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getAppId(I)I

    .line 318
    .line 319
    .line 320
    move-result v17

    .line 321
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v18

    .line 325
    move-object v4, v1

    .line 326
    check-cast v4, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;

    .line 327
    .line 328
    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    .line 341
    .line 342
    .line 343
    move-result v19

    .line 344
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    const-string/jumbo v2, "~~"

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    if-eqz v1, :cond_c

    .line 360
    .line 361
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    :goto_6
    move-object/from16 v20, v1

    .line 370
    .line 371
    goto :goto_7

    .line 372
    :cond_c
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    goto :goto_6

    .line 377
    :goto_7
    iget-object v1, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 378
    .line 379
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 380
    .line 381
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 382
    .line 383
    monitor-enter v2

    .line 384
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 385
    .line 386
    const-string/jumbo v21, "movePackageInternal"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 387
    .line 388
    .line 389
    const/16 v22, 0x0

    .line 390
    .line 391
    const/16 v23, -0x1

    .line 392
    .line 393
    const/16 v24, 0xa

    .line 394
    .line 395
    move-object/from16 v25, v2

    .line 396
    .line 397
    move-object/from16 v2, p4

    .line 398
    .line 399
    move-object/from16 v26, v3

    .line 400
    .line 401
    move/from16 v3, v23

    .line 402
    .line 403
    move-object v13, v4

    .line 404
    move-object/from16 v4, v21

    .line 405
    .line 406
    move-object/from16 v21, v5

    .line 407
    .line 408
    move/from16 v5, v24

    .line 409
    .line 410
    move-object/from16 p3, v15

    .line 411
    .line 412
    move-object v15, v6

    .line 413
    move-object/from16 v6, v22

    .line 414
    .line 415
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 420
    new-instance v1, Landroid/os/Bundle;

    .line 421
    .line 422
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 423
    .line 424
    .line 425
    const-string v2, "android.intent.extra.PACKAGE_NAME"

    .line 426
    .line 427
    invoke-virtual {v1, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    const-string v2, "android.intent.extra.TITLE"

    .line 431
    .line 432
    invoke-virtual {v1, v2, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    .line 436
    .line 437
    if-eqz v2, :cond_e

    .line 438
    .line 439
    sget-object v2, Lcom/android/server/pm/MovePackageHelper;->sMoveIdMapForSd:Ljava/util/Map;

    .line 440
    .line 441
    monitor-enter v2

    .line 442
    :try_start_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    move-object v5, v2

    .line 447
    check-cast v5, Ljava/util/HashMap;

    .line 448
    .line 449
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    move-result v4

    .line 453
    if-eqz v4, :cond_d

    .line 454
    .line 455
    const-string/jumbo v4, "moveCaller"

    .line 456
    .line 457
    .line 458
    const-string/jumbo v5, "smartmanager"

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    goto :goto_8

    .line 465
    :catchall_0
    move-exception v0

    .line 466
    goto :goto_9

    .line 467
    :cond_d
    :goto_8
    monitor-exit v2

    .line 468
    goto :goto_a

    .line 469
    :goto_9
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    throw v0

    .line 471
    :cond_e
    :goto_a
    iget-object v2, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 472
    .line 473
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 474
    .line 475
    invoke-virtual {v2, v9, v1}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyCreated(ILandroid/os/Bundle;)V

    .line 476
    .line 477
    .line 478
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 479
    .line 480
    invoke-static {v1, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    const/16 v2, 0x10

    .line 485
    .line 486
    if-eqz v1, :cond_f

    .line 487
    .line 488
    const/4 v1, 0x1

    .line 489
    xor-int/lit8 v4, v10, 0x1

    .line 490
    .line 491
    invoke-static/range {p5 .. p5}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    move-object v10, v1

    .line 496
    move v13, v2

    .line 497
    move/from16 v22, v4

    .line 498
    .line 499
    goto :goto_c

    .line 500
    :cond_f
    const-string/jumbo v1, "primary_physical"

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    if-eqz v1, :cond_10

    .line 508
    .line 509
    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    :goto_b
    move-object v10, v1

    .line 518
    move v13, v2

    .line 519
    const/16 v22, 0x0

    .line 520
    .line 521
    goto :goto_c

    .line 522
    :cond_10
    invoke-virtual {v7, v12}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    if-eqz v1, :cond_11

    .line 527
    .line 528
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 529
    .line 530
    .line 531
    move-result v4

    .line 532
    if-nez v4, :cond_11

    .line 533
    .line 534
    invoke-virtual {v7, v12}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    const-string v2, "PackageManager"

    .line 543
    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    const-string/jumbo v5, "measurePath: "

    .line 547
    .line 548
    .line 549
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v5

    .line 556
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    const/16 v2, 0x8

    .line 567
    .line 568
    goto :goto_b

    .line 569
    :cond_11
    if-eqz v1, :cond_1b

    .line 570
    .line 571
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 572
    .line 573
    .line 574
    move-result v4

    .line 575
    const/4 v5, 0x1

    .line 576
    if-ne v4, v5, :cond_1b

    .line 577
    .line 578
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    .line 579
    .line 580
    .line 581
    move-result v1

    .line 582
    if-eqz v1, :cond_1b

    .line 583
    .line 584
    invoke-static/range {p5 .. p5}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    move-object v10, v1

    .line 589
    move v13, v2

    .line 590
    const/16 v22, 0x1

    .line 591
    .line 592
    :goto_c
    if-eqz v22, :cond_14

    .line 593
    .line 594
    array-length v1, v8

    .line 595
    const/4 v2, 0x0

    .line 596
    :goto_d
    if-ge v2, v1, :cond_14

    .line 597
    .line 598
    aget v4, v8, v2

    .line 599
    .line 600
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 601
    .line 602
    .line 603
    move-result v5

    .line 604
    if-eqz v5, :cond_12

    .line 605
    .line 606
    invoke-static {v4}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    .line 607
    .line 608
    .line 609
    move-result v5

    .line 610
    if-eqz v5, :cond_13

    .line 611
    .line 612
    :cond_12
    const/4 v4, 0x1

    .line 613
    goto :goto_e

    .line 614
    :cond_13
    invoke-virtual {v3}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 615
    .line 616
    .line 617
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 618
    .line 619
    const-string v1, "User "

    .line 620
    .line 621
    const-string v2, " must be unlocked"

    .line 622
    .line 623
    invoke-static {v4, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    const/16 v2, -0xa

    .line 628
    .line 629
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 630
    .line 631
    .line 632
    throw v0

    .line 633
    :goto_e
    add-int/2addr v2, v4

    .line 634
    goto :goto_d

    .line 635
    :cond_14
    new-instance v1, Landroid/content/pm/PackageStats;

    .line 636
    .line 637
    const/4 v6, 0x0

    .line 638
    const/4 v2, -0x1

    .line 639
    invoke-direct {v1, v6, v2}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 640
    .line 641
    .line 642
    iget-object v2, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 643
    .line 644
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 645
    .line 646
    iget-object v4, v2, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 647
    .line 648
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 649
    .line 650
    .line 651
    :try_start_3
    array-length v4, v8

    .line 652
    const/4 v5, 0x0

    .line 653
    :goto_f
    if-ge v5, v4, :cond_16

    .line 654
    .line 655
    aget v6, v8, v5

    .line 656
    .line 657
    invoke-virtual {v0, v11, v6, v1}, Lcom/android/server/pm/MovePackageHelper;->getPackageSizeInfoLI(Ljava/lang/String;ILandroid/content/pm/PackageStats;)Z

    .line 658
    .line 659
    .line 660
    move-result v6

    .line 661
    if-eqz v6, :cond_15

    .line 662
    .line 663
    const/4 v6, 0x1

    .line 664
    add-int/2addr v5, v6

    .line 665
    const/4 v6, 0x0

    .line 666
    goto :goto_f

    .line 667
    :cond_15
    invoke-virtual {v3}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 668
    .line 669
    .line 670
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 671
    .line 672
    const-string v1, "Failed to measure package size"

    .line 673
    .line 674
    const/4 v3, -0x6

    .line 675
    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 676
    .line 677
    .line 678
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 679
    :catchall_1
    move-exception v0

    .line 680
    move-object v1, v0

    .line 681
    goto/16 :goto_12

    .line 682
    .line 683
    :cond_16
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v10}, Ljava/io/File;->getUsableSpace()J

    .line 687
    .line 688
    .line 689
    move-result-wide v24

    .line 690
    if-eqz v22, :cond_17

    .line 691
    .line 692
    iget-wide v4, v1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 693
    .line 694
    iget-wide v1, v1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 695
    .line 696
    add-long/2addr v4, v1

    .line 697
    move-wide/from16 v27, v4

    .line 698
    .line 699
    goto :goto_10

    .line 700
    :cond_17
    iget-wide v1, v1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 701
    .line 702
    move-wide/from16 v27, v1

    .line 703
    .line 704
    :goto_10
    invoke-virtual {v7, v10}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    .line 705
    .line 706
    .line 707
    move-result-wide v1

    .line 708
    cmp-long v1, v27, v1

    .line 709
    .line 710
    if-gtz v1, :cond_1a

    .line 711
    .line 712
    iget-object v1, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 713
    .line 714
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 715
    .line 716
    const/16 v2, 0xa

    .line 717
    .line 718
    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyStatusChanged(II)V

    .line 719
    .line 720
    .line 721
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    .line 722
    .line 723
    const/4 v1, 0x1

    .line 724
    invoke-direct {v8, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 725
    .line 726
    .line 727
    new-instance v29, Lcom/android/server/pm/MovePackageHelper$1;

    .line 728
    .line 729
    move-object/from16 v1, v29

    .line 730
    .line 731
    move-object/from16 v2, p0

    .line 732
    .line 733
    move-object v4, v8

    .line 734
    move/from16 v5, p1

    .line 735
    .line 736
    const/4 v7, 0x0

    .line 737
    move-object/from16 v6, p4

    .line 738
    .line 739
    move-object v11, v7

    .line 740
    move/from16 v7, v16

    .line 741
    .line 742
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/MovePackageHelper$1;-><init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/PackageFreezer;Ljava/util/concurrent/CountDownLatch;ILjava/lang/String;Z)V

    .line 743
    .line 744
    .line 745
    if-eqz v22, :cond_18

    .line 746
    .line 747
    new-instance v7, Ljava/lang/Thread;

    .line 748
    .line 749
    new-instance v6, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;

    .line 750
    .line 751
    const/16 v16, 0x0

    .line 752
    .line 753
    move-object v1, v6

    .line 754
    move-object/from16 v2, p0

    .line 755
    .line 756
    move-object v3, v8

    .line 757
    move-wide/from16 v4, v24

    .line 758
    .line 759
    move-object v8, v6

    .line 760
    move-object v6, v10

    .line 761
    move-object v10, v7

    .line 762
    move-object v11, v8

    .line 763
    move-wide/from16 v7, v27

    .line 764
    .line 765
    move/from16 v9, p1

    .line 766
    .line 767
    move-object v12, v10

    .line 768
    move/from16 v10, v16

    .line 769
    .line 770
    invoke-direct/range {v1 .. v10}, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/MovePackageHelper;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JII)V

    .line 771
    .line 772
    .line 773
    invoke-direct {v12, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 777
    .line 778
    .line 779
    new-instance v9, Lcom/android/server/pm/MoveInfo;

    .line 780
    .line 781
    move-object v1, v9

    .line 782
    move-object v2, v14

    .line 783
    move-object/from16 v3, p5

    .line 784
    .line 785
    move-object/from16 v4, p4

    .line 786
    .line 787
    move/from16 v5, v17

    .line 788
    .line 789
    move-object/from16 v6, v18

    .line 790
    .line 791
    move/from16 v7, v19

    .line 792
    .line 793
    move-object/from16 v8, v20

    .line 794
    .line 795
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/MoveInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 796
    .line 797
    .line 798
    move-object v2, v9

    .line 799
    goto :goto_11

    .line 800
    :cond_18
    new-instance v11, Ljava/lang/Thread;

    .line 801
    .line 802
    new-instance v12, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;

    .line 803
    .line 804
    const/4 v14, 0x1

    .line 805
    move-object v1, v12

    .line 806
    move-object/from16 v2, p0

    .line 807
    .line 808
    move-object v3, v8

    .line 809
    move-wide/from16 v4, v24

    .line 810
    .line 811
    move-object v6, v10

    .line 812
    move-wide/from16 v7, v27

    .line 813
    .line 814
    move/from16 v9, p1

    .line 815
    .line 816
    move v10, v14

    .line 817
    invoke-direct/range {v1 .. v10}, Lcom/android/server/pm/MovePackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/MovePackageHelper;Ljava/util/concurrent/CountDownLatch;JLjava/io/File;JII)V

    .line 818
    .line 819
    .line 820
    invoke-direct {v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 821
    .line 822
    .line 823
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 824
    .line 825
    .line 826
    const/4 v2, 0x0

    .line 827
    :goto_11
    or-int/lit8 v4, v13, 0x2

    .line 828
    .line 829
    new-instance v1, Lcom/android/server/pm/OriginInfo;

    .line 830
    .line 831
    const/4 v3, 0x0

    .line 832
    const/4 v5, 0x1

    .line 833
    const/4 v6, 0x0

    .line 834
    invoke-direct {v1, v15, v6, v5, v3}, Lcom/android/server/pm/OriginInfo;-><init>(Ljava/io/File;ZZLjava/lang/String;)V

    .line 835
    .line 836
    .line 837
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 838
    .line 839
    .line 840
    move-result-object v5

    .line 841
    new-instance v7, Ljava/io/File;

    .line 842
    .line 843
    iget-object v8, v1, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    .line 844
    .line 845
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    invoke-static {v5, v7, v6}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    .line 849
    .line 850
    .line 851
    move-result-object v5

    .line 852
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    .line 853
    .line 854
    .line 855
    move-result v6

    .line 856
    if-eqz v6, :cond_19

    .line 857
    .line 858
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v3

    .line 862
    check-cast v3, Landroid/content/pm/parsing/PackageLite;

    .line 863
    .line 864
    :cond_19
    move-object v9, v3

    .line 865
    new-instance v11, Lcom/android/server/pm/InstallingSession;

    .line 866
    .line 867
    iget-object v12, v0, Lcom/android/server/pm/MovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 868
    .line 869
    move-object v0, v11

    .line 870
    move-object/from16 v3, v29

    .line 871
    .line 872
    move-object/from16 v5, v21

    .line 873
    .line 874
    move-object/from16 v6, p5

    .line 875
    .line 876
    move-object/from16 v7, p3

    .line 877
    .line 878
    move-object/from16 v8, v26

    .line 879
    .line 880
    move-object v10, v12

    .line 881
    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/InstallingSession;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Lcom/android/server/pm/MovePackageHelper$1;ILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V

    .line 882
    .line 883
    .line 884
    const/4 v0, 0x1

    .line 885
    iput-boolean v0, v11, Lcom/android/server/pm/InstallingSession;->mIsMoveRequest:Z

    .line 886
    .line 887
    const-string/jumbo v0, "movePackage"

    .line 888
    .line 889
    .line 890
    iput-object v0, v11, Lcom/android/server/pm/InstallingSession;->mTraceMethod:Ljava/lang/String;

    .line 891
    .line 892
    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 893
    .line 894
    .line 895
    move-result v1

    .line 896
    iput v1, v11, Lcom/android/server/pm/InstallingSession;->mTraceCookie:I

    .line 897
    .line 898
    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 899
    .line 900
    .line 901
    move-result v1

    .line 902
    const-wide/32 v2, 0x40000

    .line 903
    .line 904
    .line 905
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 906
    .line 907
    .line 908
    const-string/jumbo v0, "queueInstall"

    .line 909
    .line 910
    .line 911
    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 912
    .line 913
    .line 914
    move-result v1

    .line 915
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 916
    .line 917
    .line 918
    iget-object v0, v12, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 919
    .line 920
    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;

    .line 921
    .line 922
    const/4 v2, 0x0

    .line 923
    invoke-direct {v1, v11, v2}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession;I)V

    .line 924
    .line 925
    .line 926
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 927
    .line 928
    .line 929
    return-void

    .line 930
    :cond_1a
    invoke-virtual {v3}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 931
    .line 932
    .line 933
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 934
    .line 935
    const-string v1, "Not enough free space to move"

    .line 936
    .line 937
    const/4 v2, -0x6

    .line 938
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 939
    .line 940
    .line 941
    throw v0

    .line 942
    :goto_12
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 943
    .line 944
    .line 945
    goto :goto_13

    .line 946
    :catchall_2
    move-exception v0

    .line 947
    move-object v2, v0

    .line 948
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 949
    .line 950
    .line 951
    :goto_13
    throw v1

    .line 952
    :cond_1b
    invoke-virtual {v3}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 953
    .line 954
    .line 955
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 956
    .line 957
    const-string v1, "Move location not mounted private volume"

    .line 958
    .line 959
    const/4 v2, -0x6

    .line 960
    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 961
    .line 962
    .line 963
    throw v0

    .line 964
    :catchall_3
    move-exception v0

    .line 965
    goto :goto_14

    .line 966
    :catchall_4
    move-exception v0

    .line 967
    move-object/from16 v25, v2

    .line 968
    .line 969
    :goto_14
    :try_start_5
    monitor-exit v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 970
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 971
    .line 972
    throw v0

    .line 973
    :cond_1c
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 974
    .line 975
    const/4 v1, -0x7

    .line 976
    const-string v2, "Failed to move already frozen package"

    .line 977
    .line 978
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 979
    .line 980
    .line 981
    throw v0

    .line 982
    :cond_1d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 983
    .line 984
    const/4 v1, -0x3

    .line 985
    const-string v2, "Cannot move system application"

    .line 986
    .line 987
    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 988
    .line 989
    .line 990
    throw v0

    .line 991
    :cond_1e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 992
    .line 993
    const-string v1, "Package is not installed for any user"

    .line 994
    .line 995
    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 996
    .line 997
    .line 998
    throw v0

    .line 999
    :cond_1f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 1000
    .line 1001
    const-string v1, "Missing package"

    .line 1002
    .line 1003
    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    throw v0
.end method
