.class public final Lcom/android/server/pm/RemovePackageHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mIncrementalManager:Landroid/os/incremental/IncrementalManager;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/AppDataHelper;Lcom/android/server/pm/BroadcastHelper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 11
    .line 12
    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/os/incremental/IncrementalManager;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 25
    .line 26
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 27
    .line 28
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/server/pm/RemovePackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 43
    .line 44
    iput-object p2, p0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 45
    .line 46
    iput-object p3, p0, Lcom/android/server/pm/RemovePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final cleanPackageDataStructuresLILPw(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)V
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 4
    .line 5
    iget-object v0, p3, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 6
    .line 7
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-virtual {p3, p1}, Lcom/android/server/pm/resolution/ComponentResolver;->removeAllComponentsLocked(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, p3}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object p3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 18
    .line 19
    iget-object p3, p3, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 20
    .line 21
    iget-object p3, p3, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 22
    .line 23
    invoke-interface {p3, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 24
    .line 25
    .line 26
    iget-object p3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 27
    .line 28
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p3, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->removeProperties(Ljava/util/Map;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p3, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p3, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->removeComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p3, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p3, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    .line 62
    .line 63
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->removeComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p3, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p3, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    .line 74
    .line 75
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->removeComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p3, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v1, p3, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageProperty;->removeComponentProperties(Ljava/util/List;Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p3, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    .line 92
    .line 93
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    const/4 v0, 0x0

    .line 102
    move v1, v0

    .line 103
    :goto_0
    if-ge v1, p3, :cond_0

    .line 104
    .line 105
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 116
    .line 117
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 118
    .line 119
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getComponentName()Landroid/content/ComponentName;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    add-int/lit8 v1, v1, 0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    if-eqz p2, :cond_1

    .line 130
    .line 131
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    :goto_1
    if-ge v0, p2, :cond_1

    .line 140
    .line 141
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p3

    .line 149
    check-cast p3, Ljava/lang/String;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/server/pm/RemovePackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 152
    .line 153
    const-wide/16 v2, 0x0

    .line 154
    .line 155
    invoke-virtual {v1, v2, v3, p3}, Lcom/android/server/pm/SharedLibrariesImpl;->removeSharedLibrary(JLjava/lang/String;)V

    .line 156
    .line 157
    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    if-eqz p2, :cond_2

    .line 166
    .line 167
    iget-object p2, p0, Lcom/android/server/pm/RemovePackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 168
    .line 169
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    int-to-long v0, v0

    .line 178
    invoke-virtual {p2, v0, v1, p3}, Lcom/android/server/pm/SharedLibrariesImpl;->removeSharedLibrary(JLjava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    if-eqz p2, :cond_3

    .line 186
    .line 187
    iget-object p0, p0, Lcom/android/server/pm/RemovePackageHelper;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesImpl;

    .line 188
    .line 189
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    .line 194
    .line 195
    .line 196
    move-result-wide v0

    .line 197
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/pm/SharedLibrariesImpl;->removeSharedLibrary(JLjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_3
    return-void

    .line 201
    :catchall_0
    move-exception p0

    .line 202
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 204
    .line 205
    throw p0
.end method

.method public final cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Ljava/io/File;

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Ljava/io/File;

    .line 15
    .line 16
    invoke-static/range {p1 .. p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "Cleaning up "

    .line 24
    .line 25
    const-string v3, " on "

    .line 26
    .line 27
    const-string v4, "PackageManager"

    .line 28
    .line 29
    move-object/from16 v12, p1

    .line 30
    .line 31
    move-object/from16 v13, p2

    .line 32
    .line 33
    invoke-static {v0, v13, v3, v12, v4}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, v1, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 37
    .line 38
    iget-object v0, v3, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 41
    .line 42
    .line 43
    move-result-object v14

    .line 44
    iget-object v15, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 45
    .line 46
    iget-object v0, v15, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 49
    .line 50
    .line 51
    :try_start_0
    array-length v10, v14

    .line 52
    const/4 v0, 0x0

    .line 53
    move v11, v0

    .line 54
    :goto_0
    if-ge v11, v10, :cond_0

    .line 55
    .line 56
    aget v8, v14, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    :try_start_1
    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    const v9, 0x20003

    .line 61
    .line 62
    .line 63
    const-wide/16 v16, 0x0

    .line 64
    .line 65
    move-object/from16 v6, p1

    .line 66
    .line 67
    move-object/from16 v7, p2

    .line 68
    .line 69
    move/from16 v18, v10

    .line 70
    .line 71
    move/from16 v19, v11

    .line 72
    .line 73
    move-wide/from16 v10, v16

    .line 74
    .line 75
    :try_start_2
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    move-object v1, v0

    .line 81
    goto :goto_3

    .line 82
    :catch_0
    move-exception v0

    .line 83
    goto :goto_1

    .line 84
    :catch_1
    move-exception v0

    .line 85
    move/from16 v18, v10

    .line 86
    .line 87
    move/from16 v19, v11

    .line 88
    .line 89
    :goto_1
    :try_start_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    :goto_2
    add-int/lit8 v11, v19, 0x1

    .line 97
    .line 98
    move/from16 v10, v18

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    .line 103
    .line 104
    invoke-virtual {v15}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :goto_3
    :try_start_4
    invoke-virtual {v15}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    .line 110
    .line 111
    goto :goto_4

    .line 112
    :catchall_1
    move-exception v0

    .line 113
    move-object v2, v0

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :goto_4
    throw v1
.end method

.method public final cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/android/server/pm/AsecInstallHelper;->ASEC_INTERNAL_PATH:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "/mnt/asec"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, p2, p3}, Lcom/android/server/pm/AsecInstallHelper;->cleanUpAsecResources(Ljava/io/File;[Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_3

    .line 40
    :cond_0
    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-eqz p3, :cond_1

    .line 49
    .line 50
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    invoke-virtual {p3}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-static {p3, p2, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->isSuccess()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-interface {p3}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    check-cast p3, Landroid/content/pm/parsing/PackageLite;

    .line 74
    .line 75
    invoke-virtual {p3}, Landroid/content/pm/parsing/PackageLite;->getAllApkPaths()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 82
    .line 83
    .line 84
    if-nez p1, :cond_2

    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    iget-object p3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 88
    .line 89
    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 90
    .line 91
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 92
    .line 93
    monitor-enter p3

    .line 94
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    if-eqz p0, :cond_3

    .line 103
    .line 104
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->removeOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catchall_1
    move-exception p0

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    :goto_1
    monitor-exit p3

    .line 111
    return-void

    .line 112
    :goto_2
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 114
    .line 115
    throw p0

    .line 116
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :catchall_2
    move-exception p1

    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    :goto_4
    throw p0
.end method

.method public final clearPackageStateForUserLIF(Lcom/android/server/pm/PackageSetting;II)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    iget-object v2, v8, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Lcom/android/server/pm/AppDataHelper;->destroyAppProfilesLIF(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 20
    .line 21
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v3, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    move-object v5, v3

    .line 35
    check-cast v5, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 36
    .line 37
    iget-object v3, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 38
    .line 39
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 40
    .line 41
    invoke-virtual {v3, v8}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    move-object v1, v5

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, v8, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v2, v1}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->buildFakeForDeletion(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_0
    and-int/lit8 v4, p3, 0x1

    .line 57
    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    and-int/lit8 v2, p3, 0x10

    .line 61
    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    iget-object v2, v0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 65
    .line 66
    const/16 v3, 0x17

    .line 67
    .line 68
    invoke-virtual {v2, v1, v9, v3}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    .line 69
    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 72
    .line 73
    const/16 v2, 0x27

    .line 74
    .line 75
    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/pm/AppDataHelper;->clearAppDataLIF(Lcom/android/server/pm/pkg/AndroidPackage;II)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void

    .line 79
    :cond_2
    iget-object v4, v0, Lcom/android/server/pm/RemovePackageHelper;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    if-nez v1, :cond_3

    .line 85
    .line 86
    new-instance v1, Ljava/lang/Throwable;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v4, "PackageManager"

    .line 92
    .line 93
    const-string v6, "Package was null!"

    .line 94
    .line 95
    invoke-static {v4, v6, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const/4 v7, 0x7

    .line 108
    invoke-virtual {v4, v9, v7, v6, v1}, Lcom/android/server/pm/AppDataHelper;->destroyAppDataLeafLIF(IILjava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    const/4 v1, -0x1

    .line 112
    if-eq v9, v1, :cond_4

    .line 113
    .line 114
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    const-wide/16 v6, -0x1

    .line 119
    .line 120
    iput-wide v6, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    .line 121
    .line 122
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 123
    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/pm/PackageSetting;->modifyUserState(I)Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    iput-wide v6, v4, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    .line 133
    .line 134
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 135
    .line 136
    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 138
    .line 139
    .line 140
    :cond_4
    new-instance v4, Lcom/android/server/pm/PreferredActivityHelper;

    .line 141
    .line 142
    iget-object v6, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 143
    .line 144
    iget-object v7, v0, Lcom/android/server/pm/RemovePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 145
    .line 146
    invoke-direct {v4, v6, v7}, Lcom/android/server/pm/PreferredActivityHelper;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/BroadcastHelper;)V

    .line 147
    .line 148
    .line 149
    if-ne v9, v1, :cond_7

    .line 150
    .line 151
    iget-object v3, v6, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 152
    .line 153
    check-cast v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 154
    .line 155
    iget-object v7, v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 156
    .line 157
    monitor-enter v7

    .line 158
    :try_start_1
    iget-object v5, v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 159
    .line 160
    iget-object v6, v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 161
    .line 162
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    if-eqz v6, :cond_5

    .line 167
    .line 168
    iget-object v10, v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mDomainSetIdMap:Landroid/util/ArrayMap;

    .line 169
    .line 170
    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-ltz v6, :cond_5

    .line 175
    .line 176
    iget-object v5, v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mDomainSetIdMap:Landroid/util/ArrayMap;

    .line 177
    .line 178
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    :cond_5
    iget-object v5, v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    .line 182
    .line 183
    iget-object v6, v5, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mLock:Ljava/lang/Object;

    .line 184
    .line 185
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    :try_start_2
    iget-object v10, v5, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mPendingPkgStates:Landroid/util/ArrayMap;

    .line 187
    .line 188
    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    iget-object v5, v5, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->mRestoredPkgStates:Landroid/util/ArrayMap;

    .line 192
    .line 193
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 197
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    iget-object v3, v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 199
    .line 200
    invoke-virtual {v3}, Lcom/android/server/pm/DomainVerificationConnection;->scheduleWriteSettings()V

    .line 201
    .line 202
    .line 203
    iget-object v3, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 204
    .line 205
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 206
    .line 207
    monitor-enter v3

    .line 208
    :try_start_4
    iget-object v5, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 209
    .line 210
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 211
    .line 212
    iget-object v5, v5, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 213
    .line 214
    invoke-virtual {v5, v2}, Lcom/android/server/pm/KeySetManagerService;->removeAppKeySetDataLPw(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v5, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 218
    .line 219
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 220
    .line 221
    iget-object v6, v5, Lcom/android/server/pm/PackageManagerServiceInjector;->mUpdateOwnershipHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 222
    .line 223
    iget-object v7, v5, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 224
    .line 225
    invoke-virtual {v6, v7, v5}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    check-cast v5, Lcom/android/server/pm/UpdateOwnershipHelper;

    .line 230
    .line 231
    invoke-virtual {v5, v2}, Lcom/android/server/pm/UpdateOwnershipHelper;->removeUpdateOwnerDenyList(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object v5, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 235
    .line 236
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    iget-object v6, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 241
    .line 242
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 243
    .line 244
    invoke-interface {v5, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 252
    .line 253
    .line 254
    move-result-wide v10

    .line 255
    const/4 v12, 0x0

    .line 256
    invoke-virtual {v6, v5, v7, v12, v12}, Lcom/android/server/pm/AppsFilterImpl;->removePackageInternal(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V

    .line 257
    .line 258
    .line 259
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    .line 260
    .line 261
    .line 262
    move-result-wide v12

    .line 263
    sub-long v17, v12, v10

    .line 264
    .line 265
    invoke-interface {v5}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    array-length v10, v10

    .line 270
    invoke-interface {v5}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 275
    .line 276
    .line 277
    move-result v20

    .line 278
    iget v5, v7, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 279
    .line 280
    iget-boolean v7, v6, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 281
    .line 282
    if-nez v7, :cond_6

    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_6
    iget-object v6, v6, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 286
    .line 287
    iget v6, v6, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->mSize:I

    .line 288
    .line 289
    const/16 v14, 0x222

    .line 290
    .line 291
    const/4 v15, 0x2

    .line 292
    move/from16 v16, v5

    .line 293
    .line 294
    move/from16 v19, v10

    .line 295
    .line 296
    move/from16 v21, v6

    .line 297
    .line 298
    invoke-static/range {v14 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIII)V

    .line 299
    .line 300
    .line 301
    :goto_2
    new-instance v5, Landroid/util/SparseBooleanArray;

    .line 302
    .line 303
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 304
    .line 305
    .line 306
    iget-object v6, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 307
    .line 308
    invoke-virtual {v6, v2, v5, v1}, Lcom/android/server/pm/PackageManagerService;->clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    .line 309
    .line 310
    .line 311
    iget-object v1, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 312
    .line 313
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 314
    .line 315
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundHandler:Landroid/os/Handler;

    .line 316
    .line 317
    new-instance v2, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;

    .line 318
    .line 319
    invoke-direct {v2, v0, v5, v4}, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/RemovePackageHelper;Landroid/util/SparseBooleanArray;Lcom/android/server/pm/PreferredActivityHelper;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    .line 324
    .line 325
    monitor-exit v3

    .line 326
    goto :goto_6

    .line 327
    :catchall_0
    move-exception v0

    .line 328
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 329
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 330
    .line 331
    throw v0

    .line 332
    :catchall_1
    move-exception v0

    .line 333
    goto :goto_3

    .line 334
    :catchall_2
    move-exception v0

    .line 335
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 336
    :try_start_6
    throw v0

    .line 337
    :goto_3
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 338
    throw v0

    .line 339
    :cond_7
    iget-object v1, v6, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 340
    .line 341
    check-cast v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 342
    .line 343
    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->clearPackageForUser(ILjava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4, v9, v2}, Lcom/android/server/pm/PreferredActivityHelper;->clearPackagePreferredActivities(ILjava/lang/String;)V

    .line 347
    .line 348
    .line 349
    if-eqz v3, :cond_8

    .line 350
    .line 351
    invoke-virtual {v3}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    :goto_4
    move-object v6, v1

    .line 356
    goto :goto_5

    .line 357
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    goto :goto_4

    .line 362
    :goto_5
    iget-object v1, v0, Lcom/android/server/pm/RemovePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 363
    .line 364
    iget v3, v8, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 365
    .line 366
    move-object/from16 v4, p1

    .line 367
    .line 368
    move/from16 v7, p2

    .line 369
    .line 370
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V

    .line 371
    .line 372
    .line 373
    :goto_6
    iget-object v1, v0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 374
    .line 375
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 376
    .line 377
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundHandler:Landroid/os/Handler;

    .line 378
    .line 379
    new-instance v2, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;

    .line 380
    .line 381
    invoke-direct {v2, v0, v8, v9}, Lcom/android/server/pm/RemovePackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/PackageSetting;I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 385
    .line 386
    .line 387
    return-void

    .line 388
    :catchall_3
    move-exception v0

    .line 389
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 390
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 391
    .line 392
    throw v0
.end method

.method public final removeCodePath(Ljava/io/File;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_1
    move-exception p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    throw p0
.end method

.method public final removeCodePathLI(Ljava/io/File;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mInstaller:Lcom/android/server/pm/Installer;

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string/jumbo v3, "~~"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/RemovePackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/server/pm/RemovePackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 50
    .line 51
    invoke-virtual {v3, v1}, Landroid/os/incremental/IncrementalManager;->rmPackageDir(Ljava/io/File;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/RemovePackageHelper;->mIncrementalManager:Landroid/os/incremental/IncrementalManager;

    .line 58
    .line 59
    invoke-virtual {v3, p1}, Landroid/os/incremental/IncrementalManager;->rmPackageDir(Ljava/io/File;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0, v3, p1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    if-eqz v2, :cond_5

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v0, v3, p1}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    .line 85
    .line 86
    if-nez p1, :cond_3

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    new-instance p1, Lcom/android/server/pm/parsing/PackageCacher;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mCacheDir:Ljava/io/File;

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/parsing/PackageCacher;-><init>(Ljava/io/File;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1}, Lcom/android/server/pm/parsing/PackageCacher;->cleanCachedResult(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :goto_1
    const-string p1, "PackageManager"

    .line 102
    .line 103
    const-string v0, "Failed to remove code path"

    .line 104
    .line 105
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_2
    return-void
.end method

.method public final removePackage(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/RemovePackageHelper;->removePackageLI(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_1
    move-exception p1

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    throw p0
.end method

.method public final removePackageData(Lcom/android/server/pm/PackageSetting;[I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance v6, Lcom/android/server/pm/PackageRemovedInfo;

    .line 11
    .line 12
    invoke-direct {v6}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v4, -0x1

    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v2, p0

    .line 19
    move-object v3, p1

    .line 20
    move-object v5, p2

    .line 21
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/RemovePackageHelper;->removePackageDataLIF(Lcom/android/server/pm/PackageSetting;I[ILcom/android/server/pm/PackageRemovedInfo;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_1
    move-exception p1

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    throw p0
.end method

.method public final removePackageDataLIF(Lcom/android/server/pm/PackageSetting;I[ILcom/android/server/pm/PackageRemovedInfo;IZ)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 3
    .line 4
    and-int/lit8 v1, p5, 0x1

    .line 5
    .line 6
    const/4 v8, 0x0

    .line 7
    const/4 v3, -0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    :goto_0
    move v1, v8

    .line 11
    goto :goto_3

    .line 12
    :cond_0
    if-ne p2, v3, :cond_2

    .line 13
    .line 14
    :cond_1
    move v1, v0

    .line 15
    goto :goto_3

    .line 16
    :cond_2
    array-length v1, p3

    .line 17
    move v4, v8

    .line 18
    :goto_1
    if-ge v4, v1, :cond_1

    .line 19
    .line 20
    aget v5, p3, v4

    .line 21
    .line 22
    if-ne v5, p2, :cond_3

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {p1, v5}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    :goto_2
    add-int/2addr v4, v0

    .line 37
    goto :goto_1

    .line 38
    :goto_3
    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 39
    .line 40
    if-eqz v1, :cond_5

    .line 41
    .line 42
    move p2, v3

    .line 43
    :cond_5
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/pm/RemovePackageHelper;->clearPackageStateForUserLIF(Lcom/android/server/pm/PackageSetting;II)V

    .line 44
    .line 45
    .line 46
    const/high16 p2, -0x80000000

    .line 47
    .line 48
    and-int/2addr p2, p5

    .line 49
    if-eqz p2, :cond_6

    .line 50
    .line 51
    move p2, v0

    .line 52
    goto :goto_4

    .line 53
    :cond_6
    move p2, v8

    .line 54
    :goto_4
    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/RemovePackageHelper;->removePackageLI(Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_7

    .line 62
    .line 63
    const/4 p2, 0x0

    .line 64
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 67
    .line 68
    .line 69
    :cond_7
    if-eqz v1, :cond_f

    .line 70
    .line 71
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 72
    .line 73
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 77
    .line 78
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 79
    .line 80
    sget-boolean p5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 81
    .line 82
    monitor-enter p2

    .line 83
    :try_start_0
    iget-object p5, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 84
    .line 85
    iget-object p5, p5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 86
    .line 87
    invoke-virtual {p5, v2}, Lcom/android/server/pm/Settings;->removePackageAndAppIdLPw(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p5

    .line 91
    iput-boolean p5, p4, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    .line 92
    .line 93
    iget-object p5, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 94
    .line 95
    iget-object p5, p5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 96
    .line 97
    iget-object p5, p5, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 98
    .line 99
    iget-object p5, p5, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 100
    .line 101
    invoke-virtual {p5, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p5

    .line 105
    if-nez p5, :cond_e

    .line 106
    .line 107
    iget-object p5, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 108
    .line 109
    iget-object p5, p5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 110
    .line 111
    invoke-virtual {p5, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 112
    .line 113
    .line 114
    move-result-object p5

    .line 115
    if-eqz p5, :cond_8

    .line 116
    .line 117
    invoke-virtual {p5}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    :goto_5
    move-object v6, v1

    .line 122
    goto :goto_6

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto :goto_b

    .line 125
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    goto :goto_5

    .line 130
    :goto_6
    iget-object v1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 131
    .line 132
    iget v3, p1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 133
    .line 134
    const/4 v7, -0x1

    .line 135
    move-object v4, p1

    .line 136
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V

    .line 137
    .line 138
    .line 139
    if-eqz p5, :cond_e

    .line 140
    .line 141
    iget-object v1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 142
    .line 143
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p5}, Lcom/android/server/pm/SharedUserSetting;->isSingleUser()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-nez v2, :cond_9

    .line 153
    .line 154
    goto :goto_a

    .line 155
    :cond_9
    iget-object v2, p5, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 156
    .line 157
    iget-object v2, v2, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 158
    .line 159
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 164
    .line 165
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 166
    .line 167
    if-eqz v2, :cond_e

    .line 168
    .line 169
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_e

    .line 174
    .line 175
    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 176
    .line 177
    const/4 v3, 0x2

    .line 178
    if-nez v2, :cond_b

    .line 179
    .line 180
    :cond_a
    :goto_7
    move v2, v0

    .line 181
    goto :goto_8

    .line 182
    :cond_b
    const-string/jumbo v2, "persist.debug.pm.shared_uid_migration_strategy"

    .line 183
    .line 184
    .line 185
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-gt v2, v3, :cond_a

    .line 190
    .line 191
    if-ge v2, v0, :cond_c

    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_c
    :goto_8
    if-lt v2, v3, :cond_d

    .line 195
    .line 196
    move v2, v0

    .line 197
    goto :goto_9

    .line 198
    :cond_d
    move v2, v8

    .line 199
    :goto_9
    if-eqz v2, :cond_e

    .line 200
    .line 201
    invoke-virtual {v1, p5}, Lcom/android/server/pm/Settings;->convertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V

    .line 202
    .line 203
    .line 204
    :cond_e
    :goto_a
    iget-object p5, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 205
    .line 206
    iget-object p5, p5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 207
    .line 208
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->mRealName:Ljava/lang/String;

    .line 209
    .line 210
    iget-object p5, p5, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 211
    .line 212
    invoke-virtual {p5, v1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    monitor-exit p2

    .line 216
    goto :goto_d

    .line 217
    :goto_b
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 219
    .line 220
    throw p0

    .line 221
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 222
    .line 223
    .line 224
    move-result p2

    .line 225
    if-nez p2, :cond_11

    .line 226
    .line 227
    iget-boolean p2, p4, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    .line 228
    .line 229
    if-nez p2, :cond_11

    .line 230
    .line 231
    iget-object p2, p4, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 232
    .line 233
    if-eqz p2, :cond_11

    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    if-nez p2, :cond_11

    .line 240
    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 242
    .line 243
    .line 244
    iget-object p2, p4, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 245
    .line 246
    array-length p5, p2

    .line 247
    move v1, v8

    .line 248
    :goto_c
    if-ge v1, p5, :cond_10

    .line 249
    .line 250
    aget v2, p2, v1

    .line 251
    .line 252
    invoke-virtual {p1, v2, v8}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 253
    .line 254
    .line 255
    add-int/2addr v1, v0

    .line 256
    goto :goto_c

    .line 257
    :cond_10
    if-eqz v5, :cond_11

    .line 258
    .line 259
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    if-eqz p2, :cond_11

    .line 264
    .line 265
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->mSplitNames:[Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 272
    .line 273
    .line 274
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->mSplitRevisionCodes:[I

    .line 279
    .line 280
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 281
    .line 282
    .line 283
    :cond_11
    :goto_d
    iget-object p2, p4, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 284
    .line 285
    if-eqz p2, :cond_14

    .line 286
    .line 287
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 288
    .line 289
    .line 290
    move-result p2

    .line 291
    if-eqz p2, :cond_14

    .line 292
    .line 293
    array-length p2, p3

    .line 294
    move p5, v8

    .line 295
    move v1, p5

    .line 296
    :goto_e
    if-ge p5, p2, :cond_15

    .line 297
    .line 298
    aget v2, p3, p5

    .line 299
    .line 300
    iget-object v3, p4, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 301
    .line 302
    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    invoke-virtual {p1, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    if-eq v3, v4, :cond_12

    .line 311
    .line 312
    move v1, v0

    .line 313
    :cond_12
    invoke-virtual {p1, v2, v3}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    .line 314
    .line 315
    .line 316
    if-eqz v3, :cond_13

    .line 317
    .line 318
    invoke-virtual {p1, v8, v2}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    .line 319
    .line 320
    .line 321
    :cond_13
    add-int/2addr p5, v0

    .line 322
    goto :goto_e

    .line 323
    :cond_14
    move v1, v8

    .line 324
    :cond_15
    iget-object p2, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 325
    .line 326
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 327
    .line 328
    sget-boolean p3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 329
    .line 330
    monitor-enter p2

    .line 331
    if-eqz p6, :cond_16

    .line 332
    .line 333
    :try_start_1
    iget-object p3, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 334
    .line 335
    invoke-virtual {p3, v8}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    .line 336
    .line 337
    .line 338
    goto :goto_f

    .line 339
    :catchall_1
    move-exception p0

    .line 340
    goto :goto_10

    .line 341
    :cond_16
    :goto_f
    if-eqz v1, :cond_17

    .line 342
    .line 343
    iget-object p0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 344
    .line 345
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 346
    .line 347
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 348
    .line 349
    .line 350
    :cond_17
    monitor-exit p2

    .line 351
    return-void

    .line 352
    :goto_10
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 353
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 354
    .line 355
    throw p0
.end method

.method public final removePackageLI(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 4
    .line 5
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/RemovePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/pm/RemovePackageHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 23
    .line 24
    invoke-interface {v2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->removePackageGrantedPermissionsForMDM(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-static {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageLegacyUtils;->isSystem(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/pm/RemovePackageHelper;->cleanPackageDataStructuresLILPw(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 43
    .line 44
    throw p0
.end method
