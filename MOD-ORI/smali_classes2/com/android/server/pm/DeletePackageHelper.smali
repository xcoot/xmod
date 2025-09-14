.class public final Lcom/android/server/pm/DeletePackageHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public mDpms:Landroid/app/admin/IDevicePolicyManager;

.field public mNextOverlayInstallToken:I

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

.field public final mRunningOverlayInstalls:Landroid/util/SparseArray;

.field public final mSilentUninstallerList:Lcom/samsung/android/server/pm/install/SilentUninstallerList;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/RemovePackageHelper;Lcom/android/server/pm/BroadcastHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/pm/install/SilentUninstallerList;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/samsung/android/server/pm/install/SilentUninstallerList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mSilentUninstallerList:Lcom/samsung/android/server/pm/install/SilentUninstallerList;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mRunningOverlayInstalls:Landroid/util/SparseArray;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mNextOverlayInstallToken:I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mDpms:Landroid/app/admin/IDevicePolicyManager;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/android/server/pm/DeletePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 39
    .line 40
    return-void
.end method

.method public static mayDeletePackageLocked(ILandroid/os/UserHandle;Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/DeletePackageAction;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-boolean v1, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/android/server/pm/SettingBase;->getFlags()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    and-int/2addr v1, v2

    .line 13
    if-eqz v1, :cond_5

    .line 14
    .line 15
    and-int/lit8 v1, p0, 0x4

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    move v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v1, v3

    .line 23
    :goto_0
    if-eqz p1, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, -0x1

    .line 30
    if-ne v4, v5, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move v2, v3

    .line 34
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 35
    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    :cond_4
    if-nez p4, :cond_5

    .line 39
    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string p1, "Attempt to delete unknown system package "

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string p1, "PackageManager"

    .line 61
    .line 62
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_5
    new-instance v0, Lcom/android/server/pm/DeletePackageAction;

    .line 67
    .line 68
    move-object v1, v0

    .line 69
    move v2, p0

    .line 70
    move-object v3, p1

    .line 71
    move-object v4, p2

    .line 72
    move-object v5, p3

    .line 73
    move-object v6, p4

    .line 74
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/DeletePackageAction;-><init>(ILandroid/os/UserHandle;Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V

    .line 75
    .line 76
    .line 77
    return-object v0
.end method


# virtual methods
.method public final deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;IZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move-object v7, p1

    .line 3
    move-object v8, p6

    .line 4
    iget-object v1, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 7
    .line 8
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget v2, v7, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 12
    .line 13
    iput v2, v8, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 14
    .line 15
    iget-object v2, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 16
    .line 17
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v4, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 24
    .line 25
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 26
    .line 27
    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 28
    .line 29
    move-object v5, p5

    .line 30
    invoke-virtual {v3, v2, p1, p5, v4}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, v8, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    .line 35
    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object v0, v0, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 38
    .line 39
    move-object v1, p1

    .line 40
    move v2, p2

    .line 41
    move-object v3, p5

    .line 42
    move-object v4, p6

    .line 43
    move v5, p4

    .line 44
    move/from16 v6, p7

    .line 45
    .line 46
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/RemovePackageHelper;->removePackageDataLIF(Lcom/android/server/pm/PackageSetting;I[ILcom/android/server/pm/PackageRemovedInfo;IZ)V

    .line 47
    .line 48
    .line 49
    if-eqz p3, :cond_0

    .line 50
    .line 51
    new-instance v0, Lcom/android/server/pm/CleanUpArgs;

    .line 52
    .line 53
    iget-object v1, v7, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v2, v7, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v3, v7, Lcom/android/server/pm/PackageSetting;->mPrimaryCpuAbi:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v4, v7, Lcom/android/server/pm/PackageSetting;->mSecondaryCpuAbi:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v3, v4}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/pm/CleanUpArgs;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, v8, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    .line 69
    .line 70
    :cond_0
    return-void

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 74
    .line 75
    throw v0
.end method

.method public final deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z
    .locals 9

    .line 1
    move-object v1, p0

    .line 2
    move-object v3, p1

    .line 3
    const-string v0, "dummy"

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    const/4 v7, 0x0

    .line 15
    :try_start_0
    const-string/jumbo v6, "persist.sys.knox.non_required_apps_task"

    .line 16
    .line 17
    .line 18
    const-string v8, "false"

    .line 19
    .line 20
    invoke-static {v6, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const-string/jumbo v8, "true"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-nez v6, :cond_0

    .line 32
    .line 33
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    goto :goto_3

    .line 37
    :cond_0
    :try_start_1
    iget-object v6, v1, Lcom/android/server/pm/DeletePackageHelper;->mDpms:Landroid/app/admin/IDevicePolicyManager;

    .line 38
    .line 39
    if-nez v6, :cond_1

    .line 40
    .line 41
    const-string v6, "device_policy"

    .line 42
    .line 43
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-static {v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    iput-object v6, v1, Lcom/android/server/pm/DeletePackageHelper;->mDpms:Landroid/app/admin/IDevicePolicyManager;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :catch_0
    move-exception v0

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    :goto_1
    iget-object v6, v1, Lcom/android/server/pm/DeletePackageHelper;->mDpms:Landroid/app/admin/IDevicePolicyManager;

    .line 60
    .line 61
    new-instance v8, Landroid/content/ComponentName;

    .line 62
    .line 63
    invoke-direct {v8, v0, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    .line 67
    .line 68
    invoke-interface {v6, v8, v7, v0}, Landroid/app/admin/IDevicePolicyManager;->getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :goto_3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 84
    .line 85
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 86
    .line 87
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 88
    .line 89
    monitor-enter v2

    .line 90
    :try_start_3
    iget-object v0, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    monitor-exit v2

    .line 101
    return v7

    .line 102
    :catchall_1
    move-exception v0

    .line 103
    goto :goto_4

    .line 104
    :cond_2
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->SYSUI_GRADLE_BUILD:Z

    .line 105
    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    iget-object v4, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 109
    .line 110
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 111
    .line 112
    const-class v5, Landroid/content/pm/PackageManagerInternal;

    .line 113
    .line 114
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 115
    .line 116
    invoke-interface {v4, v5}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 121
    .line 122
    invoke-virtual {v4}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    :cond_3
    iget-object v4, v1, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 135
    .line 136
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    iget-object v5, v0, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v4, v5}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    move-object v5, p2

    .line 148
    move v6, p5

    .line 149
    move-object v8, p6

    .line 150
    invoke-static {p5, p2, p6, v0, v4}, Lcom/android/server/pm/DeletePackageHelper;->mayDeletePackageLocked(ILandroid/os/UserHandle;Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/DeletePackageAction;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    if-nez v0, :cond_4

    .line 156
    .line 157
    return v7

    .line 158
    :cond_4
    move-object v1, p0

    .line 159
    move-object v2, v0

    .line 160
    move-object v3, p1

    .line 161
    move v4, p3

    .line 162
    move-object v5, p4

    .line 163
    move/from16 v6, p7

    .line 164
    .line 165
    :try_start_4
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZ)V
    :try_end_4
    .catch Lcom/android/server/pm/SystemDeleteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 166
    .line 167
    .line 168
    const/4 v0, 0x1

    .line 169
    return v0

    .line 170
    :catch_1
    return v7

    .line 171
    :goto_4
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 172
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 173
    .line 174
    throw v0

    .line 175
    :goto_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    .line 177
    .line 178
    throw v0
.end method

.method public final deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V
    .locals 25

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v13, p2

    .line 4
    .line 5
    move/from16 v9, p3

    .line 6
    .line 7
    move/from16 v10, p4

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    iget-object v7, v2, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    iget-object v0, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v8, "android.permission.DELETE_PACKAGES"

    .line 21
    .line 22
    const/4 v11, 0x0

    .line 23
    invoke-virtual {v0, v8, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    invoke-interface {v8, v6, v9}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    .line 31
    .line 32
    .line 33
    move-result v12

    .line 34
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    .line 41
    .line 42
    .line 43
    move-result-wide v14

    .line 44
    const-string/jumbo v20, "versionCode must be >= -1"

    .line 45
    .line 46
    .line 47
    const-wide/16 v16, -0x1

    .line 48
    .line 49
    const-wide v18, 0x7fffffffffffffffL

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    invoke-static/range {v14 .. v20}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v14

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    sget-object v0, Lcom/android/server/om/SemSamsungThemeUtils;->disableOverlayList:Ljava/util/List;

    .line 66
    .line 67
    const-string v0, "com.samsung.android.themecenter"

    .line 68
    .line 69
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iget-object v15, v7, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 74
    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    if-nez v9, :cond_0

    .line 78
    .line 79
    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;

    .line 80
    .line 81
    invoke-direct {v0, v14, v6, v13, v4}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver2;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_0
    invoke-virtual {v7, v8, v14, v9}, Lcom/android/server/pm/PackageManagerService;->isRequiredSystemPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    iget-object v0, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 95
    .line 96
    invoke-virtual {v0, v14}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    .line 102
    and-int/lit8 v0, v10, 0x4

    .line 103
    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    :cond_1
    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    invoke-direct {v0, v14, v6, v13, v5}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver2;I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_2
    :try_start_0
    iget-object v0, v7, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 116
    .line 117
    const-class v3, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 120
    .line 121
    invoke-interface {v0, v3}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 126
    .line 127
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isBaseOfLockedTask(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    const/4 v0, -0x7

    .line 134
    invoke-interface {v13, v14, v0, v11}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v0, "127605586"

    .line 138
    .line 139
    const/4 v3, -0x1

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    const-string v11, ""

    .line 145
    .line 146
    filled-new-array {v0, v3, v11}, [Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const v3, 0x534e4554

    .line 151
    .line 152
    .line 153
    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 159
    .line 160
    .line 161
    :cond_3
    invoke-interface {v8, v1, v2, v14}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(JLjava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-interface {v8, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    if-eqz v11, :cond_4

    .line 174
    .line 175
    iget-object v11, v11, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 176
    .line 177
    iget-boolean v11, v11, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    .line 178
    .line 179
    if-eqz v11, :cond_4

    .line 180
    .line 181
    move-wide/from16 v22, v1

    .line 182
    .line 183
    move/from16 v19, v6

    .line 184
    .line 185
    move/from16 v24, v12

    .line 186
    .line 187
    const/4 v1, 0x2

    .line 188
    move-object/from16 v2, p0

    .line 189
    .line 190
    goto/16 :goto_6

    .line 191
    .line 192
    :cond_4
    if-nez p5, :cond_f

    .line 193
    .line 194
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    if-nez v11, :cond_5

    .line 199
    .line 200
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 201
    .line 202
    .line 203
    move-result v11

    .line 204
    const/16 v4, 0x3e8

    .line 205
    .line 206
    if-ne v11, v4, :cond_6

    .line 207
    .line 208
    :cond_5
    move-wide/from16 v22, v1

    .line 209
    .line 210
    move/from16 v19, v6

    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_6
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    invoke-interface {v8, v9, v3}, Lcom/android/server/pm/Computer;->getInstallerPackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    move/from16 v19, v6

    .line 222
    .line 223
    const-wide/16 v5, 0x0

    .line 224
    .line 225
    invoke-interface {v8, v11, v5, v6, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    if-ne v0, v11, :cond_7

    .line 230
    .line 231
    move-wide/from16 v22, v1

    .line 232
    .line 233
    :goto_0
    move/from16 v24, v12

    .line 234
    .line 235
    goto/16 :goto_5

    .line 236
    .line 237
    :cond_7
    iget-object v11, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 238
    .line 239
    array-length v5, v11

    .line 240
    const/4 v6, 0x0

    .line 241
    :goto_1
    if-ge v6, v5, :cond_9

    .line 242
    .line 243
    move-wide/from16 v22, v1

    .line 244
    .line 245
    aget-object v1, v11, v6

    .line 246
    .line 247
    move-object v2, v11

    .line 248
    move/from16 v24, v12

    .line 249
    .line 250
    const-wide/16 v11, 0x0

    .line 251
    .line 252
    invoke-interface {v8, v1, v11, v12, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-ne v0, v1, :cond_8

    .line 257
    .line 258
    :goto_2
    goto/16 :goto_5

    .line 259
    .line 260
    :cond_8
    const/4 v1, 0x1

    .line 261
    add-int/2addr v6, v1

    .line 262
    move-object v11, v2

    .line 263
    move-wide/from16 v1, v22

    .line 264
    .line 265
    move/from16 v12, v24

    .line 266
    .line 267
    goto :goto_1

    .line 268
    :cond_9
    move-wide/from16 v22, v1

    .line 269
    .line 270
    move/from16 v24, v12

    .line 271
    .line 272
    const-wide/16 v11, 0x0

    .line 273
    .line 274
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 275
    .line 276
    if-eqz v1, :cond_a

    .line 277
    .line 278
    invoke-interface {v8, v1, v11, v12, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-ne v0, v1, :cond_a

    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_a
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mStorageManagerPackage:Ljava/lang/String;

    .line 286
    .line 287
    if-eqz v1, :cond_b

    .line 288
    .line 289
    invoke-interface {v8, v1, v11, v12, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    if-ne v0, v1, :cond_b

    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_b
    move-object/from16 v2, p0

    .line 297
    .line 298
    move-wide/from16 v11, v22

    .line 299
    .line 300
    iget-object v1, v2, Lcom/android/server/pm/DeletePackageHelper;->mSilentUninstallerList:Lcom/samsung/android/server/pm/install/SilentUninstallerList;

    .line 301
    .line 302
    iget-object v1, v1, Lcom/samsung/android/server/pm/install/SilentUninstallerList;->allowedSilentUninstallers:Ljava/util/List;

    .line 303
    .line 304
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    if-eqz v5, :cond_d

    .line 313
    .line 314
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    check-cast v5, Ljava/lang/String;

    .line 319
    .line 320
    move-wide/from16 v22, v11

    .line 321
    .line 322
    const-wide/16 v11, 0x0

    .line 323
    .line 324
    invoke-interface {v8, v5, v11, v12, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    if-ne v0, v5, :cond_c

    .line 329
    .line 330
    goto :goto_4

    .line 331
    :cond_c
    move-wide/from16 v11, v22

    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_d
    move-wide/from16 v22, v11

    .line 335
    .line 336
    const-string v1, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    .line 337
    .line 338
    invoke-interface {v8, v1, v0}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-nez v1, :cond_e

    .line 343
    .line 344
    goto :goto_4

    .line 345
    :cond_e
    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;

    .line 346
    .line 347
    const/4 v1, 0x0

    .line 348
    invoke-direct {v0, v14, v13, v1}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :goto_4
    const/4 v1, 0x2

    .line 356
    goto :goto_6

    .line 357
    :cond_f
    move-wide/from16 v22, v1

    .line 358
    .line 359
    move/from16 v19, v6

    .line 360
    .line 361
    move/from16 v24, v12

    .line 362
    .line 363
    :goto_5
    move-object/from16 v2, p0

    .line 364
    .line 365
    goto :goto_4

    .line 366
    :goto_6
    and-int/lit8 v4, v10, 0x2

    .line 367
    .line 368
    if-eqz v4, :cond_10

    .line 369
    .line 370
    const/4 v6, 0x1

    .line 371
    goto :goto_7

    .line 372
    :cond_10
    const/4 v6, 0x0

    .line 373
    :goto_7
    if-eqz v6, :cond_11

    .line 374
    .line 375
    iget-object v4, v2, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 376
    .line 377
    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 378
    .line 379
    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    move-object v12, v4

    .line 384
    const/4 v4, 0x1

    .line 385
    const/4 v11, 0x0

    .line 386
    goto :goto_8

    .line 387
    :cond_11
    const/4 v4, 0x1

    .line 388
    new-array v5, v4, [I

    .line 389
    .line 390
    const/4 v11, 0x0

    .line 391
    aput v9, v5, v11

    .line 392
    .line 393
    move-object v12, v5

    .line 394
    :goto_8
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    if-ne v5, v9, :cond_12

    .line 399
    .line 400
    if-eqz v6, :cond_13

    .line 401
    .line 402
    array-length v5, v12

    .line 403
    if-le v5, v4, :cond_13

    .line 404
    .line 405
    :cond_12
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 406
    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    const-string v1, "deletePackage for user "

    .line 410
    .line 411
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 422
    .line 423
    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 427
    .line 428
    .line 429
    move-result-wide v4

    .line 430
    :try_start_1
    array-length v1, v12

    .line 431
    :goto_9
    if-ge v11, v1, :cond_17

    .line 432
    .line 433
    move/from16 v18, v1

    .line 434
    .line 435
    aget v1, v12, v11

    .line 436
    .line 437
    invoke-virtual {v7, v1, v14}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(ILjava/lang/String;)Z

    .line 438
    .line 439
    .line 440
    move-result v21

    .line 441
    if-eqz v21, :cond_14

    .line 442
    .line 443
    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;

    .line 444
    .line 445
    const/4 v1, 0x1

    .line 446
    invoke-direct {v0, v14, v13, v1}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;I)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    .line 451
    .line 452
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 453
    .line 454
    .line 455
    return-void

    .line 456
    :catchall_0
    move-exception v0

    .line 457
    goto/16 :goto_c

    .line 458
    .line 459
    :cond_14
    :try_start_2
    iget-object v2, v7, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 460
    .line 461
    invoke-virtual {v2, v1, v14}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    .line 462
    .line 463
    .line 464
    move-result v21

    .line 465
    if-nez v21, :cond_16

    .line 466
    .line 467
    invoke-virtual {v2, v1, v14}, Lcom/android/server/pm/ProtectedPackages;->isProtectedPackage(ILjava/lang/String;)Z

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    if-eqz v1, :cond_15

    .line 472
    .line 473
    goto :goto_a

    .line 474
    :cond_15
    const/4 v1, 0x1

    .line 475
    add-int/2addr v11, v1

    .line 476
    move-object/from16 v2, p0

    .line 477
    .line 478
    move/from16 v1, v18

    .line 479
    .line 480
    goto :goto_9

    .line 481
    :cond_16
    :goto_a
    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;

    .line 482
    .line 483
    const/4 v1, 0x2

    .line 484
    invoke-direct {v0, v14, v13, v1}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;I)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 488
    .line 489
    .line 490
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 491
    .line 492
    .line 493
    return-void

    .line 494
    :cond_17
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 495
    .line 496
    .line 497
    const-string/jumbo v1, "no_uninstall_apps"

    .line 498
    .line 499
    .line 500
    invoke-virtual {v7, v9, v1}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    if-eqz v1, :cond_18

    .line 505
    .line 506
    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;

    .line 507
    .line 508
    const/4 v1, 0x3

    .line 509
    invoke-direct {v0, v13, v14, v1}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    .line 514
    .line 515
    return-void

    .line 516
    :cond_18
    if-nez v6, :cond_19

    .line 517
    .line 518
    invoke-interface {v8, v3, v9}, Lcom/android/server/pm/Computer;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    if-eqz v1, :cond_19

    .line 523
    .line 524
    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;

    .line 525
    .line 526
    const/4 v1, 0x4

    .line 527
    invoke-direct {v0, v13, v14, v1}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;I)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 531
    .line 532
    .line 533
    return-void

    .line 534
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    const-string v2, "START DELETE PACKAGE: observer{"

    .line 537
    .line 538
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    if-eqz v13, :cond_1a

    .line 542
    .line 543
    invoke-interface/range {p2 .. p2}, Landroid/content/pm/IPackageDeleteObserver2;->hashCode()I

    .line 544
    .line 545
    .line 546
    move-result v2

    .line 547
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    goto :goto_b

    .line 552
    :cond_1a
    const-string/jumbo v2, "null"

    .line 553
    .line 554
    .line 555
    :goto_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    const-string/jumbo v2, "}\npkg{"

    .line 559
    .line 560
    .line 561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    const-string/jumbo v2, "}, user{"

    .line 568
    .line 569
    .line 570
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    const-string/jumbo v2, "}, caller{"

    .line 574
    .line 575
    .line 576
    const-string/jumbo v4, "} flags{"

    .line 577
    .line 578
    .line 579
    invoke-static {v9, v0, v2, v4, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    const-string/jumbo v0, "}"

    .line 586
    .line 587
    .line 588
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    new-instance v0, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;

    .line 599
    .line 600
    move-object v1, v0

    .line 601
    move-object/from16 v2, p0

    .line 602
    .line 603
    move/from16 v4, v19

    .line 604
    .line 605
    move/from16 v5, v24

    .line 606
    .line 607
    move-wide/from16 v7, v22

    .line 608
    .line 609
    move/from16 v9, p3

    .line 610
    .line 611
    move/from16 v10, p4

    .line 612
    .line 613
    move-object v11, v12

    .line 614
    move-object v12, v14

    .line 615
    move-object/from16 v13, p2

    .line 616
    .line 617
    invoke-direct/range {v1 .. v13}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;IZZJII[ILjava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 621
    .line 622
    .line 623
    return-void

    .line 624
    :goto_c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 625
    .line 626
    .line 627
    throw v0
.end method

.method public final deletePackageX(IIJLjava/lang/String;Z)I
    .locals 38

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move/from16 v10, p1

    .line 4
    .line 5
    move/from16 v15, p2

    .line 6
    .line 7
    move-wide/from16 v13, p3

    .line 8
    .line 9
    move-object/from16 v12, p5

    .line 10
    .line 11
    const-string v0, "Not removing package "

    .line 12
    .line 13
    const-string v1, "Not removing package "

    .line 14
    .line 15
    const-string v2, "Not removing non-existent package "

    .line 16
    .line 17
    new-instance v11, Lcom/android/server/pm/PackageRemovedInfo;

    .line 18
    .line 19
    invoke-direct {v11}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    .line 20
    .line 21
    .line 22
    const/high16 v21, 0x10000000

    .line 23
    .line 24
    and-int v3, v15, v21

    .line 25
    .line 26
    const/4 v7, 0x1

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    move/from16 v22, v7

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 v22, 0x0

    .line 33
    .line 34
    :goto_0
    and-int/lit8 v23, v15, 0x2

    .line 35
    .line 36
    const/4 v6, -0x1

    .line 37
    if-eqz v23, :cond_1

    .line 38
    .line 39
    move v5, v6

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v5, v10

    .line 42
    :goto_1
    iget-object v3, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 45
    .line 46
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 47
    .line 48
    monitor-enter v3

    .line 49
    :try_start_0
    iget-object v4, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    iget-object v8, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 56
    .line 57
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 58
    .line 59
    invoke-virtual {v8, v12}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    if-nez v8, :cond_3

    .line 64
    .line 65
    const-string v0, "PackageManager"

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    if-eqz v22, :cond_2

    .line 83
    .line 84
    monitor-exit v3

    .line 85
    return v7

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    goto/16 :goto_29

    .line 88
    .line 89
    :cond_2
    monitor-exit v3

    .line 90
    return v6

    .line 91
    :cond_3
    const-wide/16 v17, -0x1

    .line 92
    .line 93
    cmp-long v2, v13, v17

    .line 94
    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    iget-wide v6, v8, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 98
    .line 99
    cmp-long v2, v6, v13

    .line 100
    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    const-string v0, "PackageManager"

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, " with versionCode "

    .line 114
    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-wide v4, v8, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 119
    .line 120
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, " != "

    .line 124
    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    monitor-exit v3

    .line 139
    const/4 v1, -0x1

    .line 140
    return v1

    .line 141
    :cond_4
    sget-boolean v1, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 142
    .line 143
    invoke-virtual {v8}, Lcom/android/server/pm/SettingBase;->getFlags()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    and-int/lit16 v1, v1, 0x80

    .line 148
    .line 149
    if-eqz v1, :cond_6

    .line 150
    .line 151
    and-int/lit8 v1, v15, 0x4

    .line 152
    .line 153
    if-nez v1, :cond_6

    .line 154
    .line 155
    iget-object v1, v9, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 156
    .line 157
    invoke-virtual {v1, v10}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    if-eqz v1, :cond_5

    .line 162
    .line 163
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_6

    .line 168
    .line 169
    iget-object v1, v9, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 170
    .line 171
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 172
    .line 173
    invoke-virtual {v2, v10}, Lcom/android/server/pm/UserManagerService;->getProfileParentIdUnchecked(I)I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-nez v1, :cond_6

    .line 186
    .line 187
    :cond_5
    const-string v1, "PackageManager"

    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v0, " as only admin user (or their profile) may downgrade system apps"

    .line 198
    .line 199
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    const-string v0, "170646036"

    .line 210
    .line 211
    const/4 v1, -0x1

    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    filled-new-array {v0, v1, v12}, [Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const v1, 0x534e4554

    .line 221
    .line 222
    .line 223
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 224
    .line 225
    .line 226
    monitor-exit v3

    .line 227
    const/4 v0, -0x3

    .line 228
    return v0

    .line 229
    :cond_6
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 230
    .line 231
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 232
    .line 233
    invoke-virtual {v0, v12}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iget-object v1, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 238
    .line 239
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 240
    .line 241
    iget-object v1, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 242
    .line 243
    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    move-object v7, v1

    .line 248
    check-cast v7, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 249
    .line 250
    iget-object v1, v9, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 251
    .line 252
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 253
    .line 254
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    const/16 v30, 0x0

    .line 259
    .line 260
    if-eqz v7, :cond_f

    .line 261
    .line 262
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    if-eqz v1, :cond_7

    .line 267
    .line 268
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    .line 273
    .line 274
    .line 275
    move-result-wide v13

    .line 276
    invoke-interface {v4, v13, v14, v1}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(JLjava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    goto :goto_2

    .line 281
    :cond_7
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    if-eqz v1, :cond_8

    .line 286
    .line 287
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    int-to-long v13, v2

    .line 296
    invoke-interface {v4, v13, v14, v1}, Lcom/android/server/pm/Computer;->getSharedLibraryInfo(JLjava/lang/String;)Landroid/content/pm/SharedLibraryInfo;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    goto :goto_2

    .line 301
    :cond_8
    move-object/from16 v1, v30

    .line 302
    .line 303
    :goto_2
    if-eqz v1, :cond_f

    .line 304
    .line 305
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->sdkLibIndependence()Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    array-length v13, v6

    .line 310
    const/4 v14, 0x0

    .line 311
    :goto_3
    if-ge v14, v13, :cond_f

    .line 312
    .line 313
    move/from16 v19, v13

    .line 314
    .line 315
    aget v13, v6, v14

    .line 316
    .line 317
    const/4 v10, -0x1

    .line 318
    if-eq v5, v10, :cond_a

    .line 319
    .line 320
    if-eq v5, v13, :cond_a

    .line 321
    .line 322
    move-object/from16 v24, v0

    .line 323
    .line 324
    move-object/from16 v20, v4

    .line 325
    .line 326
    move/from16 v25, v5

    .line 327
    .line 328
    :cond_9
    const/4 v4, 0x1

    .line 329
    goto/16 :goto_7

    .line 330
    .line 331
    :cond_a
    const-wide/32 v26, 0x402000

    .line 332
    .line 333
    .line 334
    const/16 v28, 0x3e8

    .line 335
    .line 336
    move-object/from16 v24, v4

    .line 337
    .line 338
    move-object/from16 v25, v1

    .line 339
    .line 340
    move/from16 v29, v13

    .line 341
    .line 342
    invoke-interface/range {v24 .. v29}, Lcom/android/server/pm/Computer;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;

    .line 343
    .line 344
    .line 345
    move-result-object v10

    .line 346
    move-object/from16 v20, v4

    .line 347
    .line 348
    iget-object v4, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v4, Ljava/util/List;

    .line 351
    .line 352
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v10, Ljava/util/List;

    .line 355
    .line 356
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v24

    .line 360
    if-eqz v24, :cond_e

    .line 361
    .line 362
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 363
    .line 364
    .line 365
    move-result v24

    .line 366
    if-nez v24, :cond_e

    .line 367
    .line 368
    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 369
    .line 370
    .line 371
    move-result v24

    .line 372
    if-nez v24, :cond_e

    .line 373
    .line 374
    move-object/from16 v24, v0

    .line 375
    .line 376
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    move/from16 v25, v5

    .line 381
    .line 382
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    if-ne v0, v5, :cond_b

    .line 387
    .line 388
    if-eqz v2, :cond_b

    .line 389
    .line 390
    const/4 v0, 0x0

    .line 391
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    if-ge v0, v5, :cond_d

    .line 396
    .line 397
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    check-cast v5, Ljava/lang/Boolean;

    .line 402
    .line 403
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    if-nez v5, :cond_c

    .line 408
    .line 409
    :cond_b
    :goto_5
    const/4 v0, 0x0

    .line 410
    goto :goto_6

    .line 411
    :cond_c
    const/4 v5, 0x1

    .line 412
    add-int/2addr v0, v5

    .line 413
    goto :goto_4

    .line 414
    :cond_d
    const/4 v0, 0x1

    .line 415
    goto :goto_6

    .line 416
    :cond_e
    move-object/from16 v24, v0

    .line 417
    .line 418
    move/from16 v25, v5

    .line 419
    .line 420
    goto :goto_5

    .line 421
    :goto_6
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    if-nez v5, :cond_9

    .line 426
    .line 427
    if-nez v0, :cond_9

    .line 428
    .line 429
    const-string v0, "PackageManager"

    .line 430
    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    const-string v5, "Not removing package "

    .line 437
    .line 438
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const-string v5, " hosting lib "

    .line 449
    .line 450
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v5

    .line 457
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v5, " version "

    .line 461
    .line 462
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    .line 466
    .line 467
    .line 468
    move-result-wide v5

    .line 469
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    const-string v1, " used by "

    .line 473
    .line 474
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    const-string v1, " for user "

    .line 481
    .line 482
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .line 494
    .line 495
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 497
    .line 498
    const/4 v0, -0x6

    .line 499
    return v0

    .line 500
    :goto_7
    add-int/2addr v14, v4

    .line 501
    move/from16 v10, p1

    .line 502
    .line 503
    move/from16 v13, v19

    .line 504
    .line 505
    move-object/from16 v4, v20

    .line 506
    .line 507
    move-object/from16 v0, v24

    .line 508
    .line 509
    move/from16 v5, v25

    .line 510
    .line 511
    goto/16 :goto_3

    .line 512
    .line 513
    :cond_f
    move-object/from16 v24, v0

    .line 514
    .line 515
    move/from16 v25, v5

    .line 516
    .line 517
    const/4 v1, 0x1

    .line 518
    :try_start_1
    invoke-virtual {v8, v6, v1}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    iput-object v0, v11, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 523
    .line 524
    invoke-virtual {v8}, Lcom/android/server/pm/SettingBase;->getFlags()I

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    and-int/lit16 v0, v0, 0x80

    .line 529
    .line 530
    if-eqz v0, :cond_11

    .line 531
    .line 532
    and-int/lit8 v0, v15, 0x4

    .line 533
    .line 534
    if-nez v0, :cond_11

    .line 535
    .line 536
    new-instance v0, Landroid/util/SparseArray;

    .line 537
    .line 538
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 539
    .line 540
    .line 541
    const/4 v1, 0x0

    .line 542
    :goto_8
    array-length v2, v6

    .line 543
    if-ge v1, v2, :cond_10

    .line 544
    .line 545
    aget v2, v6, v1

    .line 546
    .line 547
    invoke-virtual {v8, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    aget v4, v6, v1

    .line 552
    .line 553
    new-instance v5, Lcom/android/server/pm/DeletePackageHelper$TempUserState;

    .line 554
    .line 555
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 556
    .line 557
    .line 558
    move-result v10

    .line 559
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v13

    .line 563
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    invoke-direct {v5, v10, v13, v2}, Lcom/android/server/pm/DeletePackageHelper$TempUserState;-><init>(ILjava/lang/String;Z)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    const/4 v10, 0x1

    .line 574
    add-int/2addr v1, v10

    .line 575
    goto :goto_8

    .line 576
    :cond_10
    const/4 v10, 0x1

    .line 577
    const/4 v1, -0x1

    .line 578
    goto :goto_9

    .line 579
    :cond_11
    const/4 v10, 0x1

    .line 580
    move/from16 v1, v25

    .line 581
    .line 582
    move-object/from16 v0, v30

    .line 583
    .line 584
    :goto_9
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 585
    .line 586
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 587
    .line 588
    iget-object v2, v2, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 589
    .line 590
    iget-object v2, v2, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 591
    .line 592
    invoke-virtual {v2, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v26

    .line 596
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 598
    .line 599
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 600
    .line 601
    iget-object v13, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 602
    .line 603
    iget-object v2, v13, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 604
    .line 605
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 606
    .line 607
    .line 608
    :try_start_2
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 609
    .line 610
    const-string v3, "deletePackageX"

    .line 611
    .line 612
    invoke-virtual {v2, v1, v15, v12, v3}, Lcom/android/server/pm/PackageManagerService;->freezePackageForDelete(IILjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageFreezer;

    .line 613
    .line 614
    .line 615
    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 616
    :try_start_3
    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    const/high16 v1, -0x80000000

    .line 621
    .line 622
    or-int v17, v15, v1

    .line 623
    .line 624
    const/16 v19, 0x1

    .line 625
    .line 626
    const/4 v4, 0x1

    .line 627
    move-object/from16 v1, p0

    .line 628
    .line 629
    move-object/from16 v2, p5

    .line 630
    .line 631
    move/from16 v10, v25

    .line 632
    .line 633
    move-object v5, v6

    .line 634
    move-object/from16 v31, v6

    .line 635
    .line 636
    move/from16 v6, v17

    .line 637
    .line 638
    move-object/from16 v32, v7

    .line 639
    .line 640
    move-object v7, v11

    .line 641
    move-object/from16 v25, v0

    .line 642
    .line 643
    move-object v0, v8

    .line 644
    move/from16 v8, v19

    .line 645
    .line 646
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageLIF(Ljava/lang/String;Landroid/os/UserHandle;Z[IILcom/android/server/pm/PackageRemovedInfo;Z)Z

    .line 647
    .line 648
    .line 649
    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 650
    :try_start_4
    invoke-virtual {v14}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 651
    .line 652
    .line 653
    move-object/from16 v2, v32

    .line 654
    .line 655
    if-eqz v1, :cond_13

    .line 656
    .line 657
    if-eqz v2, :cond_13

    .line 658
    .line 659
    iget-object v3, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 660
    .line 661
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 662
    .line 663
    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 664
    :try_start_5
    iget-object v4, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 665
    .line 666
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 667
    .line 668
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v5

    .line 672
    iget-object v4, v4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 673
    .line 674
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v4

    .line 678
    if-eqz v4, :cond_12

    .line 679
    .line 680
    const/4 v8, 0x1

    .line 681
    goto :goto_a

    .line 682
    :cond_12
    const/4 v8, 0x0

    .line 683
    :goto_a
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 684
    :try_start_6
    iget-object v3, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 685
    .line 686
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 687
    .line 688
    iget-object v4, v11, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 689
    .line 690
    invoke-virtual {v3, v2, v0, v4, v8}, Lcom/android/server/pm/InstantAppRegistry;->onPackageUninstalled(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[IZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 691
    .line 692
    .line 693
    goto :goto_b

    .line 694
    :catchall_1
    move-exception v0

    .line 695
    move-object v1, v0

    .line 696
    goto/16 :goto_27

    .line 697
    .line 698
    :catchall_2
    move-exception v0

    .line 699
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 700
    :try_start_8
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 701
    .line 702
    throw v0

    .line 703
    :cond_13
    :goto_b
    iget-object v3, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 704
    .line 705
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 706
    .line 707
    monitor-enter v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 708
    if-eqz v1, :cond_14

    .line 709
    .line 710
    :try_start_9
    iget-object v4, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 711
    .line 712
    iget-object v5, v11, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 713
    .line 714
    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/PackageManagerService;->updateSequenceNumberLP(Lcom/android/server/pm/PackageSetting;[I)V

    .line 715
    .line 716
    .line 717
    iget-object v4, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 718
    .line 719
    invoke-virtual {v4, v12}, Lcom/android/server/pm/PackageManagerService;->updateInstantAppInstallerLocked(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    goto :goto_c

    .line 723
    :catchall_3
    move-exception v0

    .line 724
    goto/16 :goto_25

    .line 725
    .line 726
    :cond_14
    :goto_c
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 727
    :try_start_a
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateGetPackagesForUidCache()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 728
    .line 729
    .line 730
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 731
    .line 732
    .line 733
    if-eqz v1, :cond_1f

    .line 734
    .line 735
    and-int/lit8 v3, v15, 0x8

    .line 736
    .line 737
    if-nez v3, :cond_15

    .line 738
    .line 739
    const/4 v6, 0x1

    .line 740
    goto :goto_d

    .line 741
    :cond_15
    const/4 v6, 0x0

    .line 742
    :goto_d
    and-int/lit8 v3, v15, 0x10

    .line 743
    .line 744
    if-eqz v3, :cond_16

    .line 745
    .line 746
    const/4 v8, 0x1

    .line 747
    goto :goto_e

    .line 748
    :cond_16
    const/4 v8, 0x0

    .line 749
    :goto_e
    iget-boolean v3, v11, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    .line 750
    .line 751
    if-eqz v3, :cond_17

    .line 752
    .line 753
    if-eqz v2, :cond_17

    .line 754
    .line 755
    new-instance v3, Ljava/util/ArrayList;

    .line 756
    .line 757
    const/4 v14, 0x1

    .line 758
    new-array v4, v14, [Lcom/android/server/pm/pkg/AndroidPackage;

    .line 759
    .line 760
    const/4 v5, 0x0

    .line 761
    aput-object v2, v4, v5

    .line 762
    .line 763
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 764
    .line 765
    .line 766
    move-result-object v2

    .line 767
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 768
    .line 769
    .line 770
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 771
    .line 772
    iget-object v4, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 773
    .line 774
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    new-instance v5, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    .line 778
    .line 779
    invoke-direct {v5, v4}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 780
    .line 781
    .line 782
    const/16 v34, 0x0

    .line 783
    .line 784
    const/16 v35, 0x0

    .line 785
    .line 786
    const/16 v37, 0x0

    .line 787
    .line 788
    move-object/from16 v32, v2

    .line 789
    .line 790
    move-object/from16 v33, v5

    .line 791
    .line 792
    move-object/from16 v36, v3

    .line 793
    .line 794
    invoke-virtual/range {v32 .. v37}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;Lcom/android/server/pm/AsecInstallHelper$3;)V

    .line 795
    .line 796
    .line 797
    goto :goto_f

    .line 798
    :cond_17
    const/4 v14, 0x1

    .line 799
    :goto_f
    iget-object v3, v9, Lcom/android/server/pm/DeletePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 800
    .line 801
    iget-object v5, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 802
    .line 803
    move-object v4, v11

    .line 804
    move/from16 v7, p6

    .line 805
    .line 806
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    .line 807
    .line 808
    .line 809
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 810
    .line 811
    iget-object v3, v11, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 812
    .line 813
    const/4 v4, 0x0

    .line 814
    invoke-virtual {v2, v4, v3}, Lcom/android/server/pm/PackageManagerService;->isLocaleOptimizedPackage(ILjava/lang/String;)Z

    .line 815
    .line 816
    .line 817
    move-result v2

    .line 818
    if-eqz v2, :cond_1a

    .line 819
    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    .line 821
    .line 822
    const-string v3, "CheckAndInstallLocaleOverlays() called with: packageName = ["

    .line 823
    .line 824
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    iget-object v3, v11, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 828
    .line 829
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    const-string v3, "], isRemovedUpdate = ["

    .line 833
    .line 834
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    iget-boolean v3, v11, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    .line 838
    .line 839
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    const-string v3, "]"

    .line 843
    .line 844
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v2

    .line 851
    const-string v3, "PackageManager"

    .line 852
    .line 853
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    .line 855
    .line 856
    iget-boolean v2, v11, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    .line 857
    .line 858
    if-nez v2, :cond_18

    .line 859
    .line 860
    goto :goto_10

    .line 861
    :cond_18
    iget v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mNextOverlayInstallToken:I

    .line 862
    .line 863
    if-gez v2, :cond_19

    .line 864
    .line 865
    iput v14, v9, Lcom/android/server/pm/DeletePackageHelper;->mNextOverlayInstallToken:I

    .line 866
    .line 867
    :cond_19
    iget v4, v9, Lcom/android/server/pm/DeletePackageHelper;->mNextOverlayInstallToken:I

    .line 868
    .line 869
    add-int/lit8 v7, v4, 0x1

    .line 870
    .line 871
    iput v7, v9, Lcom/android/server/pm/DeletePackageHelper;->mNextOverlayInstallToken:I

    .line 872
    .line 873
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mRunningOverlayInstalls:Landroid/util/SparseArray;

    .line 874
    .line 875
    invoke-virtual {v2, v4, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 876
    .line 877
    .line 878
    iget-object v8, v11, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 879
    .line 880
    sget-object v6, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->PACKAGE_UNINSTALL_UPDATES:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    .line 881
    .line 882
    iget-object v3, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 883
    .line 884
    const/4 v7, -0x1

    .line 885
    const/4 v5, 0x0

    .line 886
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerService;->updateLocaleOverlaysForPackage(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;)V

    .line 887
    .line 888
    .line 889
    goto :goto_10

    .line 890
    :cond_1a
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 891
    .line 892
    invoke-virtual {v2, v11}, Lcom/android/server/pm/BroadcastHelper;->sendSystemPackageUpdatedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;)V

    .line 893
    .line 894
    .line 895
    :goto_10
    iget-boolean v2, v11, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    .line 896
    .line 897
    if-eqz v2, :cond_1b

    .line 898
    .line 899
    :goto_11
    move-object v8, v11

    .line 900
    move-object v7, v12

    .line 901
    move v2, v14

    .line 902
    goto/16 :goto_13

    .line 903
    .line 904
    :cond_1b
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    .line 905
    .line 906
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    move-result-object v2

    .line 910
    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    .line 911
    .line 912
    if-nez v2, :cond_1c

    .line 913
    .line 914
    goto :goto_11

    .line 915
    :cond_1c
    iget-object v13, v11, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 916
    .line 917
    invoke-virtual {v2, v13}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    .line 918
    .line 919
    .line 920
    move-result-object v3

    .line 921
    iget-object v4, v11, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 922
    .line 923
    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerInternal;->getUserTypesForStatsd([I)[I

    .line 924
    .line 925
    .line 926
    move-result-object v16

    .line 927
    iget v2, v11, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 928
    .line 929
    const/4 v5, -0x1

    .line 930
    if-ne v10, v5, :cond_1d

    .line 931
    .line 932
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 933
    .line 934
    .line 935
    move-result v6

    .line 936
    goto :goto_12

    .line 937
    :cond_1d
    move v6, v10

    .line 938
    :goto_12
    invoke-static {v6, v2}, Landroid/os/UserHandle;->getUid(II)I

    .line 939
    .line 940
    .line 941
    move-result v2

    .line 942
    iget-boolean v6, v11, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    .line 943
    .line 944
    iget-boolean v7, v11, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    .line 945
    .line 946
    xor-int/lit8 v20, v7, 0x1

    .line 947
    .line 948
    const/16 v7, 0x22a

    .line 949
    .line 950
    const/16 v18, 0x1

    .line 951
    .line 952
    move-object v8, v11

    .line 953
    move v11, v7

    .line 954
    move-object v7, v12

    .line 955
    move v12, v2

    .line 956
    move v2, v14

    .line 957
    move-object v14, v3

    .line 958
    move-object v15, v4

    .line 959
    move/from16 v17, p2

    .line 960
    .line 961
    move/from16 v19, v6

    .line 962
    .line 963
    invoke-static/range {v11 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(II[I[I[I[IIIZZ)V

    .line 964
    .line 965
    .line 966
    iget-object v3, v8, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 967
    .line 968
    iget-wide v11, v8, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    .line 969
    .line 970
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    .line 971
    .line 972
    .line 973
    move-result v4

    .line 974
    if-nez v4, :cond_1e

    .line 975
    .line 976
    goto :goto_14

    .line 977
    :cond_1e
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 978
    .line 979
    .line 980
    move-result-object v4

    .line 981
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 982
    .line 983
    .line 984
    move-result-object v6

    .line 985
    filled-new-array {v3, v4, v6}, [Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    move-result-object v3

    .line 989
    const v4, 0x3347b

    .line 990
    .line 991
    .line 992
    invoke-static {v4, v3}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 993
    .line 994
    .line 995
    goto :goto_14

    .line 996
    :cond_1f
    move-object v8, v11

    .line 997
    move-object v7, v12

    .line 998
    const/4 v2, 0x1

    .line 999
    :goto_13
    const/4 v5, -0x1

    .line 1000
    :goto_14
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v3

    .line 1004
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    .line 1005
    .line 1006
    .line 1007
    iget-object v3, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1008
    .line 1009
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1010
    .line 1011
    iget-object v4, v3, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 1012
    .line 1013
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1014
    .line 1015
    .line 1016
    :try_start_b
    iget-object v4, v8, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    .line 1017
    .line 1018
    if-eqz v4, :cond_20

    .line 1019
    .line 1020
    iget-object v6, v9, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 1021
    .line 1022
    iget-object v11, v4, Lcom/android/server/pm/CleanUpArgs;->mPackageName:Ljava/lang/String;

    .line 1023
    .line 1024
    iget-object v12, v4, Lcom/android/server/pm/CleanUpArgs;->mCodeFile:Ljava/io/File;

    .line 1025
    .line 1026
    iget-object v4, v4, Lcom/android/server/pm/CleanUpArgs;->mInstructionSets:[Ljava/lang/String;

    .line 1027
    .line 1028
    invoke-virtual {v6, v11, v12, v4}, Lcom/android/server/pm/RemovePackageHelper;->cleanUpResources(Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    goto :goto_15

    .line 1032
    :catchall_4
    move-exception v0

    .line 1033
    move-object v1, v0

    .line 1034
    goto/16 :goto_23

    .line 1035
    .line 1036
    :cond_20
    :goto_15
    if-eqz v25, :cond_28

    .line 1037
    .line 1038
    iget-object v4, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1039
    .line 1040
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1041
    .line 1042
    monitor-enter v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1043
    :try_start_c
    iget-object v6, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1044
    .line 1045
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1046
    .line 1047
    invoke-virtual {v6, v7}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v6

    .line 1051
    if-eqz v6, :cond_27

    .line 1052
    .line 1053
    iget-object v11, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1054
    .line 1055
    if-eqz v11, :cond_21

    .line 1056
    .line 1057
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    .line 1058
    .line 1059
    .line 1060
    move-result v11

    .line 1061
    if-eqz v11, :cond_21

    .line 1062
    .line 1063
    move v11, v2

    .line 1064
    goto :goto_16

    .line 1065
    :catchall_5
    move-exception v0

    .line 1066
    goto/16 :goto_1c

    .line 1067
    .line 1068
    :cond_21
    const/4 v11, 0x0

    .line 1069
    :goto_16
    move-object/from16 v14, v31

    .line 1070
    .line 1071
    const/4 v12, 0x0

    .line 1072
    const/4 v13, 0x0

    .line 1073
    :goto_17
    array-length v15, v14

    .line 1074
    if-ge v12, v15, :cond_26

    .line 1075
    .line 1076
    aget v15, v14, v12

    .line 1077
    .line 1078
    move-object/from16 v5, v25

    .line 1079
    .line 1080
    invoke-virtual {v5, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v15

    .line 1084
    check-cast v15, Lcom/android/server/pm/DeletePackageHelper$TempUserState;

    .line 1085
    .line 1086
    iget v2, v15, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->enabledState:I

    .line 1087
    .line 1088
    move-object/from16 v25, v5

    .line 1089
    .line 1090
    aget v5, v14, v12

    .line 1091
    .line 1092
    move-object/from16 v31, v14

    .line 1093
    .line 1094
    iget-object v14, v15, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 1095
    .line 1096
    invoke-virtual {v6, v2, v5, v14}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    if-nez v13, :cond_24

    .line 1100
    .line 1101
    iget-boolean v5, v15, Lcom/android/server/pm/DeletePackageHelper$TempUserState;->installed:Z

    .line 1102
    .line 1103
    if-eqz v5, :cond_24

    .line 1104
    .line 1105
    if-nez v2, :cond_22

    .line 1106
    .line 1107
    if-nez v11, :cond_23

    .line 1108
    .line 1109
    :cond_22
    const/4 v5, 0x1

    .line 1110
    goto :goto_18

    .line 1111
    :cond_23
    const/4 v5, 0x1

    .line 1112
    goto :goto_19

    .line 1113
    :goto_18
    if-ne v2, v5, :cond_25

    .line 1114
    .line 1115
    :goto_19
    move v13, v5

    .line 1116
    goto :goto_1a

    .line 1117
    :cond_24
    const/4 v5, 0x1

    .line 1118
    :cond_25
    :goto_1a
    add-int/2addr v12, v5

    .line 1119
    move v2, v5

    .line 1120
    move-object/from16 v14, v31

    .line 1121
    .line 1122
    const/4 v5, -0x1

    .line 1123
    goto :goto_17

    .line 1124
    :cond_26
    move v5, v2

    .line 1125
    goto :goto_1b

    .line 1126
    :cond_27
    move v5, v2

    .line 1127
    const-string v2, "PackageManager"

    .line 1128
    .line 1129
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1132
    .line 1133
    .line 1134
    const-string v11, "Missing PackageSetting after uninstalling the update for system app: "

    .line 1135
    .line 1136
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    const-string v11, ". This should not happen."

    .line 1143
    .line 1144
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v6

    .line 1151
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    .line 1153
    .line 1154
    const/4 v13, 0x0

    .line 1155
    :goto_1b
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1156
    .line 1157
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1158
    .line 1159
    const/4 v6, 0x0

    .line 1160
    invoke-virtual {v2, v6}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr(Z)V

    .line 1161
    .line 1162
    .line 1163
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1164
    :try_start_d
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1165
    .line 1166
    goto :goto_1d

    .line 1167
    :goto_1c
    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1168
    :try_start_f
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1169
    .line 1170
    throw v0

    .line 1171
    :cond_28
    move v5, v2

    .line 1172
    const/4 v6, 0x0

    .line 1173
    move v13, v6

    .line 1174
    :goto_1d
    if-nez v24, :cond_29

    .line 1175
    .line 1176
    move-object/from16 v2, v30

    .line 1177
    .line 1178
    goto :goto_1e

    .line 1179
    :cond_29
    move-object/from16 v2, v24

    .line 1180
    .line 1181
    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 1182
    .line 1183
    :goto_1e
    if-eqz v2, :cond_2c

    .line 1184
    .line 1185
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    .line 1186
    .line 1187
    .line 1188
    move-result v4

    .line 1189
    if-eqz v4, :cond_2c

    .line 1190
    .line 1191
    iget-object v4, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1192
    .line 1193
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 1194
    .line 1195
    monitor-enter v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1196
    :try_start_10
    iget-object v6, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1197
    .line 1198
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1199
    .line 1200
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v11

    .line 1204
    invoke-virtual {v6, v11}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v6

    .line 1208
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 1209
    if-eqz v6, :cond_2c

    .line 1210
    .line 1211
    if-eqz v13, :cond_2b

    .line 1212
    .line 1213
    :try_start_11
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1214
    .line 1215
    if-eqz v4, :cond_2a

    .line 1216
    .line 1217
    const-string v4, "PackageManager"

    .line 1218
    .line 1219
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1220
    .line 1221
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1222
    .line 1223
    .line 1224
    const-string v12, "Enabling system stub after removal; pkg: "

    .line 1225
    .line 1226
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    .line 1229
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v12

    .line 1233
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v11

    .line 1240
    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    .line 1242
    .line 1243
    :cond_2a
    iget-object v4, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1244
    .line 1245
    invoke-virtual {v4, v6, v2}, Lcom/android/server/pm/PackageManagerService;->enableCompressedPackage(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    .line 1246
    .line 1247
    .line 1248
    goto :goto_1f

    .line 1249
    :cond_2b
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1250
    .line 1251
    if-eqz v4, :cond_2c

    .line 1252
    .line 1253
    const-string v4, "PackageManager"

    .line 1254
    .line 1255
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1256
    .line 1257
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1258
    .line 1259
    .line 1260
    const-string v11, "System stub disabled for all users, leaving uncompressed after removal; pkg: "

    .line 1261
    .line 1262
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    .line 1264
    .line 1265
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v2

    .line 1269
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v2

    .line 1276
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 1277
    .line 1278
    .line 1279
    goto :goto_1f

    .line 1280
    :catchall_6
    move-exception v0

    .line 1281
    :try_start_12
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 1282
    :try_start_13
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1283
    .line 1284
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 1285
    :cond_2c
    :goto_1f
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 1286
    .line 1287
    .line 1288
    if-eqz v1, :cond_2d

    .line 1289
    .line 1290
    if-eqz v26, :cond_2d

    .line 1291
    .line 1292
    iget-object v2, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1293
    .line 1294
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 1295
    .line 1296
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v2

    .line 1300
    iget v0, v0, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 1301
    .line 1302
    invoke-virtual {v2, v0, v10}, Lcom/android/server/pm/PackageInstallerService;->onInstallerPackageDeleted(II)V

    .line 1303
    .line 1304
    .line 1305
    :cond_2d
    move/from16 v2, p1

    .line 1306
    .line 1307
    if-eqz v1, :cond_2e

    .line 1308
    .line 1309
    if-nez v2, :cond_2e

    .line 1310
    .line 1311
    const-string v0, "AASA_PackageManager_RESTRICTED"

    .line 1312
    .line 1313
    const-string v3, "Uninstall : userId = "

    .line 1314
    .line 1315
    const-string v4, ", info.uid = "

    .line 1316
    .line 1317
    invoke-static {v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v3

    .line 1321
    iget v4, v8, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 1322
    .line 1323
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1324
    .line 1325
    .line 1326
    const-string v4, ", packageName = "

    .line 1327
    .line 1328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    .line 1330
    .line 1331
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v3

    .line 1338
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    .line 1340
    .line 1341
    :try_start_14
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v0

    .line 1345
    invoke-interface {v0, v7}, Landroid/content/pm/IASKSManager;->clearASKSruleForRemovedPackage(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    .line 1346
    .line 1347
    .line 1348
    goto :goto_20

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    const-string v3, "PackageManager"

    .line 1351
    .line 1352
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1353
    .line 1354
    const-string v6, "Exception during clearASKSruleForRemovedPackage() : "

    .line 1355
    .line 1356
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1357
    .line 1358
    .line 1359
    invoke-static {v0, v4, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1360
    .line 1361
    .line 1362
    :cond_2e
    :goto_20
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 1363
    .line 1364
    if-eqz v1, :cond_32

    .line 1365
    .line 1366
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1367
    .line 1368
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1369
    .line 1370
    .line 1371
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1372
    .line 1373
    if-eqz v0, :cond_31

    .line 1374
    .line 1375
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1376
    .line 1377
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1378
    .line 1379
    .line 1380
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1381
    .line 1382
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v0

    .line 1386
    if-eqz v0, :cond_31

    .line 1387
    .line 1388
    if-eqz v2, :cond_2f

    .line 1389
    .line 1390
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1391
    .line 1392
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1393
    .line 1394
    .line 1395
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1396
    .line 1397
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 1398
    .line 1399
    .line 1400
    move-result v0

    .line 1401
    if-ne v2, v0, :cond_31

    .line 1402
    .line 1403
    :cond_2f
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1404
    .line 1405
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1406
    .line 1407
    .line 1408
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1409
    .line 1410
    invoke-virtual {v0, v7}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationApp(Ljava/lang/String;)Z

    .line 1411
    .line 1412
    .line 1413
    move-result v0

    .line 1414
    if-eqz v0, :cond_31

    .line 1415
    .line 1416
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1417
    .line 1418
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1419
    .line 1420
    .line 1421
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1422
    .line 1423
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 1424
    .line 1425
    .line 1426
    move-result v0

    .line 1427
    if-eqz v0, :cond_31

    .line 1428
    .line 1429
    if-nez v22, :cond_31

    .line 1430
    .line 1431
    if-nez v23, :cond_31

    .line 1432
    .line 1433
    or-int v3, p2, v21

    .line 1434
    .line 1435
    if-nez v2, :cond_30

    .line 1436
    .line 1437
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1438
    .line 1439
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1440
    .line 1441
    .line 1442
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 1443
    .line 1444
    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    .line 1445
    .line 1446
    .line 1447
    move-result v2

    .line 1448
    const/4 v0, 0x1

    .line 1449
    move-object/from16 v1, p0

    .line 1450
    .line 1451
    move-wide/from16 v4, p3

    .line 1452
    .line 1453
    move-object/from16 v6, p5

    .line 1454
    .line 1455
    move v7, v0

    .line 1456
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    .line 1457
    .line 1458
    .line 1459
    move-result v7

    .line 1460
    goto :goto_21

    .line 1461
    :cond_30
    const/4 v2, 0x0

    .line 1462
    const/4 v0, 0x1

    .line 1463
    move-object/from16 v1, p0

    .line 1464
    .line 1465
    move-wide/from16 v4, p3

    .line 1466
    .line 1467
    move-object/from16 v6, p5

    .line 1468
    .line 1469
    move v7, v0

    .line 1470
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(IIJLjava/lang/String;Z)I

    .line 1471
    .line 1472
    .line 1473
    move-result v7

    .line 1474
    goto :goto_21

    .line 1475
    :cond_31
    move v7, v5

    .line 1476
    :goto_21
    return v7

    .line 1477
    :cond_32
    if-eqz v1, :cond_33

    .line 1478
    .line 1479
    move v7, v5

    .line 1480
    goto :goto_22

    .line 1481
    :cond_33
    const/4 v7, -0x1

    .line 1482
    :goto_22
    return v7

    .line 1483
    :goto_23
    :try_start_15
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 1484
    .line 1485
    .line 1486
    goto :goto_24

    .line 1487
    :catchall_7
    move-exception v0

    .line 1488
    move-object v2, v0

    .line 1489
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1490
    .line 1491
    .line 1492
    :goto_24
    throw v1

    .line 1493
    :goto_25
    :try_start_16
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 1494
    :try_start_17
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1495
    .line 1496
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 1497
    :catchall_8
    move-exception v0

    .line 1498
    move-object v1, v0

    .line 1499
    :try_start_18
    invoke-virtual {v14}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 1500
    .line 1501
    .line 1502
    goto :goto_26

    .line 1503
    :catchall_9
    move-exception v0

    .line 1504
    move-object v2, v0

    .line 1505
    :try_start_19
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1506
    .line 1507
    .line 1508
    :goto_26
    throw v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 1509
    :goto_27
    :try_start_1a
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 1510
    .line 1511
    .line 1512
    goto :goto_28

    .line 1513
    :catchall_a
    move-exception v0

    .line 1514
    move-object v2, v0

    .line 1515
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1516
    .line 1517
    .line 1518
    :goto_28
    throw v1

    .line 1519
    :goto_29
    :try_start_1b
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 1520
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1521
    .line 1522
    throw v0
.end method

.method public final executeDeletePackageLIF(Lcom/android/server/pm/DeletePackageAction;Ljava/lang/String;Z[IZ)V
    .locals 17

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    move-object/from16 v11, p4

    .line 8
    .line 9
    const/4 v12, 0x1

    .line 10
    iget-object v13, v0, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    .line 11
    .line 12
    iget-object v14, v0, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/android/server/pm/DeletePackageAction;->mUser:Landroid/os/UserHandle;

    .line 15
    .line 16
    iget v5, v0, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    .line 17
    .line 18
    sget-boolean v3, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 19
    .line 20
    invoke-virtual {v13}, Lcom/android/server/pm/SettingBase;->getFlags()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    and-int/2addr v3, v12

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    move v3, v12

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v3, 0x0

    .line 30
    :goto_0
    new-instance v8, Landroid/util/SparseBooleanArray;

    .line 31
    .line 32
    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 33
    .line 34
    .line 35
    array-length v4, v11

    .line 36
    const/4 v6, 0x0

    .line 37
    :goto_1
    if-ge v6, v4, :cond_2

    .line 38
    .line 39
    aget v7, v11, v6

    .line 40
    .line 41
    iget-object v15, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 42
    .line 43
    const-string v1, "android.permission.SUSPEND_APPS"

    .line 44
    .line 45
    invoke-virtual {v15, v1, v10, v7}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    move v1, v12

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    const/4 v1, 0x0

    .line 54
    :goto_2
    invoke-virtual {v8, v7, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 55
    .line 56
    .line 57
    add-int/2addr v6, v12

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    if-nez v2, :cond_3

    .line 60
    .line 61
    const/4 v1, -0x1

    .line 62
    const/4 v4, -0x1

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    move v4, v1

    .line 69
    const/4 v1, -0x1

    .line 70
    :goto_3
    if-ne v4, v1, :cond_4

    .line 71
    .line 72
    invoke-virtual {v13, v11}, Lcom/android/server/pm/PackageSetting;->queryUsersInstalledOrHasData([I)[I

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/4 v15, 0x0

    .line 77
    goto :goto_4

    .line 78
    :cond_4
    new-array v1, v12, [I

    .line 79
    .line 80
    const/4 v15, 0x0

    .line 81
    aput v4, v1, v15

    .line 82
    .line 83
    :goto_4
    iput-object v1, v14, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 84
    .line 85
    sget-object v6, Lcom/android/server/pm/PackageRemovedInfo;->EMPTY_INT_ARRAY:[I

    .line 86
    .line 87
    iput-object v6, v14, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 88
    .line 89
    iput-object v6, v14, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    .line 90
    .line 91
    array-length v1, v1

    .line 92
    sub-int/2addr v1, v12

    .line 93
    :goto_5
    if-ltz v1, :cond_6

    .line 94
    .line 95
    iget-object v6, v14, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 96
    .line 97
    aget v6, v6, v1

    .line 98
    .line 99
    invoke-virtual {v13, v6}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_5

    .line 104
    .line 105
    iget-object v7, v14, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    .line 106
    .line 107
    invoke-static {v7, v6}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    iput-object v6, v14, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    .line 112
    .line 113
    :goto_6
    const/4 v6, -0x1

    .line 114
    goto :goto_7

    .line 115
    :cond_5
    iget-object v7, v14, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 116
    .line 117
    invoke-static {v7, v6}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    iput-object v6, v14, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :goto_7
    add-int/2addr v1, v6

    .line 125
    goto :goto_5

    .line 126
    :cond_6
    and-int/lit8 v1, v5, 0x1

    .line 127
    .line 128
    if-nez v1, :cond_7

    .line 129
    .line 130
    move v1, v12

    .line 131
    goto :goto_8

    .line 132
    :cond_7
    move v1, v15

    .line 133
    :goto_8
    iput-boolean v1, v14, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    .line 134
    .line 135
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 136
    .line 137
    iput-object v1, v14, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 140
    .line 141
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 142
    .line 143
    iput-object v1, v14, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v1, v13, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 146
    .line 147
    if-eqz v1, :cond_8

    .line 148
    .line 149
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-eqz v1, :cond_8

    .line 154
    .line 155
    move v1, v12

    .line 156
    goto :goto_9

    .line 157
    :cond_8
    move v1, v15

    .line 158
    :goto_9
    iput-boolean v1, v14, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    .line 159
    .line 160
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    iput-boolean v1, v14, Lcom/android/server/pm/PackageRemovedInfo;->mIsExternal:Z

    .line 165
    .line 166
    iget-wide v6, v13, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 167
    .line 168
    iput-wide v6, v14, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    .line 169
    .line 170
    if-eqz v3, :cond_9

    .line 171
    .line 172
    and-int/lit8 v1, v5, 0x4

    .line 173
    .line 174
    if-eqz v1, :cond_a

    .line 175
    .line 176
    :cond_9
    const/4 v1, -0x1

    .line 177
    goto :goto_a

    .line 178
    :cond_a
    move-object/from16 v16, v8

    .line 179
    .line 180
    goto/16 :goto_12

    .line 181
    .line 182
    :goto_a
    if-eq v4, v1, :cond_a

    .line 183
    .line 184
    iget-object v6, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 185
    .line 186
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 187
    .line 188
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 189
    .line 190
    monitor-enter v6

    .line 191
    :try_start_0
    invoke-virtual {v9, v13, v2, v5}, Lcom/android/server/pm/DeletePackageHelper;->markPackageUninstalledForUserLPw(Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;I)V

    .line 192
    .line 193
    .line 194
    if-nez v3, :cond_f

    .line 195
    .line 196
    iget-object v7, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 197
    .line 198
    iget-object v1, v7, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 199
    .line 200
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :try_start_1
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 202
    .line 203
    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    :try_start_2
    iget-object v1, v9, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 209
    .line 210
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    array-length v15, v1

    .line 217
    const/4 v12, 0x0

    .line 218
    :goto_b
    if-ge v12, v15, :cond_d

    .line 219
    .line 220
    move-object/from16 v16, v8

    .line 221
    .line 222
    aget v8, v1, v12

    .line 223
    .line 224
    if-ne v8, v4, :cond_c

    .line 225
    .line 226
    :cond_b
    const/4 v8, 0x1

    .line 227
    goto :goto_c

    .line 228
    :cond_c
    invoke-virtual {v13, v8}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    if-eqz v8, :cond_b

    .line 237
    .line 238
    goto :goto_d

    .line 239
    :goto_c
    add-int/2addr v12, v8

    .line 240
    move-object/from16 v8, v16

    .line 241
    .line 242
    goto :goto_b

    .line 243
    :cond_d
    move-object/from16 v16, v8

    .line 244
    .line 245
    if-eqz v7, :cond_e

    .line 246
    .line 247
    :goto_d
    goto :goto_e

    .line 248
    :cond_e
    iget-object v1, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 249
    .line 250
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 251
    .line 252
    invoke-virtual {v1, v13}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    .line 254
    .line 255
    const/4 v1, 0x0

    .line 256
    goto :goto_f

    .line 257
    :catchall_0
    move-exception v0

    .line 258
    goto :goto_11

    .line 259
    :catchall_1
    move-exception v0

    .line 260
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 261
    :try_start_4
    throw v0

    .line 262
    :cond_f
    move-object/from16 v16, v8

    .line 263
    .line 264
    :goto_e
    const/4 v1, 0x1

    .line 265
    :goto_f
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 266
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 267
    .line 268
    if-eqz v1, :cond_12

    .line 269
    .line 270
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 271
    .line 272
    invoke-virtual {v0, v13, v4, v5}, Lcom/android/server/pm/RemovePackageHelper;->clearPackageStateForUserLIF(Lcom/android/server/pm/PackageSetting;II)V

    .line 273
    .line 274
    .line 275
    iget v0, v13, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 276
    .line 277
    iput v0, v14, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    .line 278
    .line 279
    iget-boolean v0, v14, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    .line 280
    .line 281
    if-eqz v0, :cond_10

    .line 282
    .line 283
    const/4 v1, 0x1

    .line 284
    iput-boolean v1, v14, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    .line 285
    .line 286
    :cond_10
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 287
    .line 288
    if-nez v2, :cond_11

    .line 289
    .line 290
    const/4 v1, -0x1

    .line 291
    goto :goto_10

    .line 292
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    :goto_10
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :goto_11
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 304
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 305
    .line 306
    throw v0

    .line 307
    :cond_12
    :goto_12
    if-eqz p3, :cond_13

    .line 308
    .line 309
    if-nez v3, :cond_13

    .line 310
    .line 311
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isExternalStorage()Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_13

    .line 316
    .line 317
    iget-object v1, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 318
    .line 319
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 320
    .line 321
    .line 322
    iget-object v1, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Ljava/lang/String;)J

    .line 328
    .line 329
    .line 330
    :cond_13
    if-eqz v3, :cond_16

    .line 331
    .line 332
    iget v1, v0, Lcom/android/server/pm/DeletePackageAction;->mFlags:I

    .line 333
    .line 334
    iget-object v7, v0, Lcom/android/server/pm/DeletePackageAction;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    .line 335
    .line 336
    iget-object v2, v7, Lcom/android/server/pm/PackageRemovedInfo;->mOrigUsers:[I

    .line 337
    .line 338
    iget-object v2, v0, Lcom/android/server/pm/DeletePackageAction;->mDeletingPs:Lcom/android/server/pm/PackageSetting;

    .line 339
    .line 340
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    .line 342
    .line 343
    const-string v3, "PackageManager"

    .line 344
    .line 345
    const-string v4, "Deleting system pkg from data partition"

    .line 346
    .line 347
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    const/4 v3, 0x1

    .line 351
    iput-boolean v3, v7, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    .line 352
    .line 353
    iget-object v3, v0, Lcom/android/server/pm/DeletePackageAction;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 354
    .line 355
    iget-wide v4, v3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 356
    .line 357
    move-object v12, v14

    .line 358
    iget-wide v14, v2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 359
    .line 360
    cmp-long v4, v4, v14

    .line 361
    .line 362
    if-ltz v4, :cond_15

    .line 363
    .line 364
    iget v3, v3, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 365
    .line 366
    iget v4, v2, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 367
    .line 368
    if-eq v3, v4, :cond_14

    .line 369
    .line 370
    goto :goto_14

    .line 371
    :cond_14
    const/4 v3, 0x1

    .line 372
    or-int/2addr v1, v3

    .line 373
    :goto_13
    move v5, v1

    .line 374
    goto :goto_15

    .line 375
    :cond_15
    :goto_14
    and-int/lit8 v1, v1, -0x2

    .line 376
    .line 377
    goto :goto_13

    .line 378
    :goto_15
    iget-object v1, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 379
    .line 380
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 381
    .line 382
    iget-object v1, v14, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 383
    .line 384
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 385
    .line 386
    .line 387
    const/4 v3, -0x1

    .line 388
    const/4 v4, 0x1

    .line 389
    move-object/from16 v1, p0

    .line 390
    .line 391
    move-object/from16 v6, p4

    .line 392
    .line 393
    move-object/from16 v15, v16

    .line 394
    .line 395
    move/from16 v8, p5

    .line 396
    .line 397
    :try_start_6
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;IZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 398
    .line 399
    .line 400
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V

    .line 401
    .line 402
    .line 403
    iget-object v1, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 404
    .line 405
    move/from16 v8, p5

    .line 406
    .line 407
    invoke-virtual {v1, v0, v11, v8}, Lcom/android/server/pm/PackageManagerService;->restoreDisabledSystemPackageLIF(Lcom/android/server/pm/DeletePackageAction;[IZ)V

    .line 408
    .line 409
    .line 410
    goto :goto_1b

    .line 411
    :catchall_2
    move-exception v0

    .line 412
    move-object v1, v0

    .line 413
    :try_start_7
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 414
    .line 415
    .line 416
    goto :goto_16

    .line 417
    :catchall_3
    move-exception v0

    .line 418
    move-object v2, v0

    .line 419
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 420
    .line 421
    .line 422
    :goto_16
    throw v1

    .line 423
    :cond_16
    move/from16 v8, p5

    .line 424
    .line 425
    move-object v12, v14

    .line 426
    move-object/from16 v15, v16

    .line 427
    .line 428
    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 429
    .line 430
    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-eqz v0, :cond_18

    .line 435
    .line 436
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    :try_start_8
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v0, v1, v10}, Lcom/android/server/art/ArtManagerLocal;->deleteDexoptArtifacts(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;)Lcom/android/server/art/model/DeleteResult;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 449
    .line 450
    .line 451
    goto :goto_17

    .line 452
    :catchall_4
    move-exception v0

    .line 453
    move-object v2, v0

    .line 454
    goto :goto_18

    .line 455
    :catch_0
    move-exception v0

    .line 456
    :try_start_9
    const-string v2, "PackageManager"

    .line 457
    .line 458
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 463
    .line 464
    .line 465
    :goto_17
    if-eqz v1, :cond_18

    .line 466
    .line 467
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 468
    .line 469
    .line 470
    goto :goto_1a

    .line 471
    :goto_18
    if-eqz v1, :cond_17

    .line 472
    .line 473
    :try_start_a
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 474
    .line 475
    .line 476
    goto :goto_19

    .line 477
    :catchall_5
    move-exception v0

    .line 478
    move-object v1, v0

    .line 479
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 480
    .line 481
    .line 482
    :cond_17
    :goto_19
    throw v2

    .line 483
    :cond_18
    :goto_1a
    move-object/from16 v1, p0

    .line 484
    .line 485
    move-object v2, v13

    .line 486
    move v3, v4

    .line 487
    move/from16 v4, p3

    .line 488
    .line 489
    move-object/from16 v6, p4

    .line 490
    .line 491
    move-object v7, v12

    .line 492
    move/from16 v8, p5

    .line 493
    .line 494
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deleteInstalledPackageLIF(Lcom/android/server/pm/PackageSetting;IZI[ILcom/android/server/pm/PackageRemovedInfo;Z)V

    .line 495
    .line 496
    .line 497
    :goto_1b
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 498
    .line 499
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    move-object v1, v12

    .line 504
    iget-object v2, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    .line 505
    .line 506
    array-length v3, v2

    .line 507
    const/4 v4, 0x0

    .line 508
    :goto_1c
    if-ge v4, v3, :cond_1a

    .line 509
    .line 510
    aget v5, v2, v4

    .line 511
    .line 512
    invoke-virtual {v15, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 513
    .line 514
    .line 515
    move-result v6

    .line 516
    if-eqz v6, :cond_19

    .line 517
    .line 518
    iget-object v6, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 519
    .line 520
    const/4 v7, 0x1

    .line 521
    invoke-virtual {v6, v5, v0, v10, v7}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V

    .line 522
    .line 523
    .line 524
    iget-object v6, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 525
    .line 526
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getAllAvailablePackageNames()[Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v8

    .line 533
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 534
    .line 535
    invoke-virtual {v6, v0, v8, v5}, Lcom/android/server/pm/DistractingPackageHelper;->removeDistractingPackageRestrictions(Lcom/android/server/pm/Computer;[Ljava/lang/String;I)V

    .line 536
    .line 537
    .line 538
    goto :goto_1d

    .line 539
    :cond_19
    const/4 v7, 0x1

    .line 540
    :goto_1d
    add-int/2addr v4, v7

    .line 541
    goto :goto_1c

    .line 542
    :cond_1a
    const/4 v7, 0x1

    .line 543
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 544
    .line 545
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 546
    .line 547
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 548
    .line 549
    monitor-enter v2

    .line 550
    :try_start_b
    iget-object v0, v9, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 551
    .line 552
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 553
    .line 554
    iget-object v3, v13, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 555
    .line 556
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 557
    .line 558
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    if-nez v0, :cond_1b

    .line 563
    .line 564
    move v12, v7

    .line 565
    goto :goto_1e

    .line 566
    :cond_1b
    const/4 v12, 0x0

    .line 567
    :goto_1e
    iput-boolean v12, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    .line 568
    .line 569
    monitor-exit v2

    .line 570
    return-void

    .line 571
    :catchall_6
    move-exception v0

    .line 572
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 573
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 574
    .line 575
    throw v0
.end method

.method public final markPackageUninstalledForUserLPw(Lcom/android/server/pm/PackageSetting;Landroid/os/UserHandle;I)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const/16 v27, 0x0

    .line 6
    .line 7
    const/4 v5, 0x1

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-array v1, v5, [I

    .line 19
    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    aput v2, v1, v27

    .line 25
    .line 26
    :goto_0
    move-object v6, v1

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/android/server/pm/DeletePackageHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_0

    .line 37
    :goto_2
    array-length v3, v6

    .line 38
    move/from16 v4, v27

    .line 39
    .line 40
    :goto_3
    if-ge v4, v3, :cond_8

    .line 41
    .line 42
    aget v2, v6, v4

    .line 43
    .line 44
    and-int/lit8 v1, p3, 0x1

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    new-instance v9, Landroid/util/ArraySet;

    .line 50
    .line 51
    invoke-virtual {v7, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-direct {v9, v10}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 60
    .line 61
    .line 62
    new-instance v10, Landroid/util/ArraySet;

    .line 63
    .line 64
    invoke-virtual {v7, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    invoke-direct {v10, v11}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 73
    .line 74
    .line 75
    move-object/from16 v17, v9

    .line 76
    .line 77
    move-object/from16 v18, v10

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_2
    move-object/from16 v17, v8

    .line 81
    .line 82
    move-object/from16 v18, v17

    .line 83
    .line 84
    :goto_4
    if-nez v1, :cond_3

    .line 85
    .line 86
    move-object/from16 v26, v8

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_3
    invoke-interface {v7, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    move-object/from16 v26, v9

    .line 98
    .line 99
    :goto_5
    if-nez v1, :cond_4

    .line 100
    .line 101
    const-wide/16 v9, 0x0

    .line 102
    .line 103
    :goto_6
    move-wide/from16 v23, v9

    .line 104
    .line 105
    goto :goto_7

    .line 106
    :cond_4
    invoke-interface {v7, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v9

    .line 114
    goto :goto_6

    .line 115
    :goto_7
    const-string v1, "auto_disabler"

    .line 116
    .line 117
    if-eqz v26, :cond_5

    .line 118
    .line 119
    invoke-virtual {v7, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-eqz v9, :cond_5

    .line 132
    .line 133
    move v9, v5

    .line 134
    goto :goto_8

    .line 135
    :cond_5
    move/from16 v9, v27

    .line 136
    .line 137
    :goto_8
    invoke-virtual {v7, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    .line 142
    .line 143
    .line 144
    move-result-wide v28

    .line 145
    invoke-virtual {v7, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 146
    .line 147
    .line 148
    move-result-object v10

    .line 149
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    .line 150
    .line 151
    .line 152
    move-result-wide v30

    .line 153
    if-eqz v9, :cond_6

    .line 154
    .line 155
    invoke-virtual {v7, v2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    move/from16 v16, v10

    .line 160
    .line 161
    goto :goto_9

    .line 162
    :cond_6
    move/from16 v16, v27

    .line 163
    .line 164
    :goto_9
    if-eqz v9, :cond_7

    .line 165
    .line 166
    move-object/from16 v32, v1

    .line 167
    .line 168
    goto :goto_a

    .line 169
    :cond_7
    move-object/from16 v32, v8

    .line 170
    .line 171
    :goto_a
    const/16 v20, 0x0

    .line 172
    .line 173
    const/16 v21, 0x0

    .line 174
    .line 175
    const/4 v8, 0x0

    .line 176
    const/4 v9, 0x1

    .line 177
    const/4 v10, 0x1

    .line 178
    const/4 v11, 0x0

    .line 179
    const/4 v12, 0x0

    .line 180
    const/4 v13, 0x0

    .line 181
    const/4 v14, 0x0

    .line 182
    const/4 v15, 0x0

    .line 183
    const/16 v19, 0x0

    .line 184
    .line 185
    const/16 v22, 0x0

    .line 186
    .line 187
    const/16 v25, 0x0

    .line 188
    .line 189
    move-object/from16 v1, p1

    .line 190
    .line 191
    move/from16 v33, v3

    .line 192
    .line 193
    move/from16 v34, v4

    .line 194
    .line 195
    move-wide/from16 v3, v28

    .line 196
    .line 197
    move/from16 v28, v5

    .line 198
    .line 199
    move-object/from16 v29, v6

    .line 200
    .line 201
    move-wide/from16 v5, v30

    .line 202
    .line 203
    move/from16 v7, v16

    .line 204
    .line 205
    move-object/from16 v16, v32

    .line 206
    .line 207
    invoke-virtual/range {v1 .. v26}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    .line 208
    .line 209
    .line 210
    add-int/lit8 v4, v34, 0x1

    .line 211
    .line 212
    move-object/from16 v7, p1

    .line 213
    .line 214
    move/from16 v5, v28

    .line 215
    .line 216
    move-object/from16 v6, v29

    .line 217
    .line 218
    move/from16 v3, v33

    .line 219
    .line 220
    goto/16 :goto_3

    .line 221
    .line 222
    :cond_8
    iget-object v0, v0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 223
    .line 224
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 225
    .line 226
    move-object/from16 v1, p1

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 229
    .line 230
    .line 231
    return-void
.end method

.method public final removeUnusedPackagesLPw(Lcom/android/server/pm/UserManagerService;I)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/pm/DeletePackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v3, v1, :cond_6

    .line 20
    .line 21
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 22
    .line 23
    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 24
    .line 25
    iget-object v4, v4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 32
    .line 33
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 34
    .line 35
    if-nez v5, :cond_0

    .line 36
    .line 37
    goto :goto_4

    .line 38
    :cond_0
    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    iget v6, v4, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    and-int/2addr v6, v7

    .line 46
    if-nez v6, :cond_5

    .line 47
    .line 48
    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 49
    .line 50
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_5

    .line 59
    .line 60
    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 61
    .line 62
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibraryName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_1

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_1
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 74
    .line 75
    monitor-enter v6

    .line 76
    :try_start_0
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mKeepUninstalledPackages:Landroid/util/ArraySet;

    .line 77
    .line 78
    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-eqz v8, :cond_2

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    move v6, v2

    .line 87
    :goto_1
    array-length v9, p1

    .line 88
    if-ge v6, v9, :cond_4

    .line 89
    .line 90
    aget v9, p1, v6

    .line 91
    .line 92
    if-eq v9, p2, :cond_3

    .line 93
    .line 94
    invoke-virtual {v4, v9}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_3

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    :goto_2
    move v7, v8

    .line 105
    :goto_3
    if-nez v7, :cond_5

    .line 106
    .line 107
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 108
    .line 109
    new-instance v6, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;

    .line 110
    .line 111
    invoke-direct {v6, p0, v5, p2}, Lcom/android/server/pm/DeletePackageHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_4

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    throw p0

    .line 121
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_6
    return-void
.end method
