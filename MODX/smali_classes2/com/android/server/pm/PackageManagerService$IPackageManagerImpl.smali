.class public final Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;
.super Landroid/content/pm/IPackageManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

.field public final mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public final mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

.field public final mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

.field public final mPackageProperty:Lcom/android/server/pm/PackageProperty;

.field public final mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

.field public final mResolveComponentName:Landroid/content/ComponentName;

.field public final mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

.field public final mService:Lcom/android/server/pm/PackageManagerService;

.field public final mServicesExtensionPackageName:Ljava/lang/String;

.field public final mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mResolveComponentName:Landroid/content/ComponentName;

    .line 6
    .line 7
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/content/pm/IPackageManager$Stub;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 27
    .line 28
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 31
    .line 32
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 39
    .line 40
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 43
    .line 44
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mResolveComponentName:Landroid/content/ComponentName;

    .line 49
    .line 50
    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    .line 51
    .line 52
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mServicesExtensionPackageName:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mServicesExtensionPackageName:Ljava/lang/String;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mResolveComponentName:Landroid/content/ComponentName;

    .line 8
    .line 9
    move-object v3, p1

    .line 10
    move-object v4, p2

    .line 11
    move-object v5, p3

    .line 12
    move v6, p4

    .line 13
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/android/server/pm/WatchedIntentFilter;

    .line 8
    .line 9
    invoke-direct {v2, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 10
    .line 11
    .line 12
    move-object v3, p2

    .line 13
    move v4, p3

    .line 14
    move v5, p4

    .line 15
    move v6, p5

    .line 16
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->addCrossProfileIntentFilter(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;Ljava/lang/String;III)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/permission/PermissionManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/permission/PermissionManager;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Landroid/permission/PermissionManager;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/permission/PermissionManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/permission/PermissionManager;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, p1, v0}, Landroid/permission/PermissionManager;->addPermission(Landroid/content/pm/PermissionInfo;Z)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2
    .line 3
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/16 v1, 0x3e8

    .line 16
    .line 17
    if-ne p1, v1, :cond_4

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/IntentFilter;->checkDataPathAndSchemeSpecificParts()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    iget-object p1, v0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    const-string p0, "PackageManager"

    .line 36
    .line 37
    const-string p1, "Cannot set a preferred activity with no filter actions"

    .line 38
    .line 39
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 44
    .line 45
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 46
    .line 47
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 48
    .line 49
    monitor-enter v1

    .line 50
    :try_start_0
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 55
    .line 56
    iget-object v2, p1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 63
    .line 64
    if-nez v2, :cond_1

    .line 65
    .line 66
    new-instance v2, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 67
    .line 68
    invoke-direct {v2}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p3, v2}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v3, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 81
    .line 82
    invoke-direct {v3, v0, p2}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;Landroid/content/ComponentName;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, p1, v3}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 89
    .line 90
    invoke-virtual {p1, p3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 91
    .line 92
    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-static {v0}, Lcom/android/server/pm/PreferredActivityHelper;->isHomeFilter(Lcom/android/server/pm/WatchedIntentFilter;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_2

    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 110
    .line 111
    invoke-virtual {p0, p3}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    .line 112
    .line 113
    .line 114
    :goto_0
    return-void

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 118
    .line 119
    throw p0

    .line 120
    :cond_3
    const-string p0, "246749702"

    .line 121
    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const p1, 0x534e4554

    .line 131
    .line 132
    .line 133
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 134
    .line 135
    .line 136
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    const-string p1, "Invalid intent data paths or scheme specific parts in the filter."

    .line 139
    .line 140
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 145
    .line 146
    const-string p1, "addPersistentPreferredActivity can only be run by the system"

    .line 147
    .line 148
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p0
.end method

.method public final addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    new-instance v3, Lcom/android/server/pm/WatchedIntentFilter;

    .line 11
    .line 12
    move-object v0, p1

    .line 13
    invoke-direct {v3, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x1

    .line 17
    const-string v8, "Adding preferred"

    .line 18
    .line 19
    move-object v0, v1

    .line 20
    move-object v1, v2

    .line 21
    move-object v2, v3

    .line 22
    move v3, p2

    .line 23
    move-object v4, p3

    .line 24
    move-object v5, p4

    .line 25
    move v7, p5

    .line 26
    move/from16 v9, p6

    .line 27
    .line 28
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PreferredActivityHelper;->addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final applyRuntimePermissionsForAllApplicationsForMDM(II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->applyRuntimePermissionsForAllApplicationsForMDM(II)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 8
    .line 9
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final canPackageQuery(Ljava/lang/String;[Ljava/lang/String;I)[Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->canPackageQuery(Ljava/lang/String;[Ljava/lang/String;I)[Z

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final canRequestPackageInstalls(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-interface {p0, v0, p2, p1, v1}, Lcom/android/server/pm/Computer;->canRequestPackageInstalls(IILjava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final changeMonetizationBadgeState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v2, "Monetization"

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "changeMonetizationBadgeState value:"

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v4, " PackageName: "

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    sget-boolean v2, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    .line 38
    .line 39
    if-eqz v2, :cond_5

    .line 40
    .line 41
    iget-object v2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_5

    .line 50
    .line 51
    const-string/jumbo v2, "value cannot be null"

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    const/4 v2, -0x1

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    packed-switch v3, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_0
    const-string v3, "2"

    .line 70
    .line 71
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const/4 v2, 0x2

    .line 79
    goto :goto_0

    .line 80
    :pswitch_1
    const-string v3, "1"

    .line 81
    .line 82
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    move v2, v0

    .line 90
    goto :goto_0

    .line 91
    :pswitch_2
    const-string v3, "0"

    .line 92
    .line 93
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-nez v3, :cond_2

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    move v2, v1

    .line 101
    :goto_0
    packed-switch v2, :pswitch_data_1

    .line 102
    .line 103
    .line 104
    const-string p0, "Monetization"

    .line 105
    .line 106
    const-string p1, "Unknown parameter passed to change badge state"

    .line 107
    .line 108
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_3
    const-string/jumbo p1, "packageName cannot be null"

    .line 113
    .line 114
    .line 115
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p2, v1, v1, v1}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_3

    .line 129
    .line 130
    iget-object v2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    .line 132
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    .line 134
    .line 135
    const-string/jumbo v2, "persist.galaxy_store.badge.feature"

    .line 136
    .line 137
    .line 138
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    const-string/jumbo p1, "packageName cannot be null"

    .line 142
    .line 143
    .line 144
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p2, v1, v1, v0}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :pswitch_5
    iget-object p2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 152
    .line 153
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    if-eqz p2, :cond_4

    .line 158
    .line 159
    iget-object p2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 160
    .line 161
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 162
    .line 163
    .line 164
    iget-object p2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mBadgeLock:Ljava/lang/Object;

    .line 165
    .line 166
    monitor-enter p2

    .line 167
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreAppsForBadge:Landroid/util/ArraySet;

    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 170
    .line 171
    .line 172
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    const-string/jumbo p0, "persist.galaxy_store.badge.feature"

    .line 174
    .line 175
    .line 176
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :catchall_0
    move-exception p0

    .line 181
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    throw p0

    .line 183
    :cond_4
    :goto_1
    return-void

    .line 184
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 185
    .line 186
    const-string p1, "changeMonetizationBadgeState can only be run by the system or feature not supported"

    .line 187
    .line 188
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p0

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final checkPackageStartable(Ljava/lang/String;I)V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v6

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v7

    .line 11
    invoke-interface {v6, v7}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_6

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_5

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    const-string v1, "checkPackageStartable"

    .line 30
    .line 31
    move-object v0, v6

    .line 32
    move v2, v7

    .line 33
    move v3, p2

    .line 34
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 35
    .line 36
    .line 37
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    .line 38
    .line 39
    invoke-interface {v6, v7, p2, p1, p0}, Lcom/android/server/pm/Computer;->getPackageStartability(IILjava/lang/String;Z)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    const/4 p2, 0x1

    .line 44
    const-string v0, "Package "

    .line 45
    .line 46
    if-eq p0, p2, :cond_4

    .line 47
    .line 48
    const/4 p2, 0x2

    .line 49
    if-eq p0, p2, :cond_3

    .line 50
    .line 51
    const/4 p2, 0x3

    .line 52
    if-eq p0, p2, :cond_2

    .line 53
    .line 54
    const/4 p2, 0x4

    .line 55
    if-eq p0, p2, :cond_1

    .line 56
    .line 57
    const/4 p2, 0x5

    .line 58
    if-eq p0, p2, :cond_0

    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 62
    .line 63
    const-string p2, " is not dualdar aware!"

    .line 64
    .line 65
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 74
    .line 75
    const-string p2, " is not encryption aware!"

    .line 76
    .line 77
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 86
    .line 87
    const-string p2, " is currently frozen!"

    .line 88
    .line 89
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 98
    .line 99
    const-string p2, " not a system app!"

    .line 100
    .line 101
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 110
    .line 111
    const-string p2, " was not found!"

    .line 112
    .line 113
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0

    .line 121
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 122
    .line 123
    const-string p1, "User doesn\'t exist"

    .line 124
    .line 125
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 130
    .line 131
    const-string p1, "Instant applications don\'t have access to this method"

    .line 132
    .line 133
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final checkUidPermission(Ljava/lang/String;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final checkUidSignatures(II)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->checkUidSignatures(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final clearAppCategoryHintDeveloper(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x7d0

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;->Developer:Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/AppCategoryHintHelper;->clearAppCategoryHintBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 21
    .line 22
    const-string p1, "calling uid is not system server!"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public final clearAppCategoryHintUser(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/pm/AppCategoryHintHelper;->isSystemServerOrDebuggableShell()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;->User:Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/AppCategoryHintHelper;->clearAppCategoryHintBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 19
    .line 20
    const-string p1, "calling uid is not system server!"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final clearApplicationProfileData(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 24
    .line 25
    const/4 v3, -0x1

    .line 26
    const-string v4, "clearApplicationProfileData"

    .line 27
    .line 28
    const/16 v5, 0xd

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    move-object v2, p1

    .line 32
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageFreezer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 39
    .line 40
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppDataHelper:Lcom/android/server/pm/AppDataHelper;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/android/server/pm/AppDataHelper;->clearAppProfilesLIF(Lcom/android/server/pm/pkg/AndroidPackage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    .line 54
    .line 55
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/android/server/pm/PackageFreezer;->close()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_2
    move-exception v0

    .line 70
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Lcom/android/server/pm/PackageFreezer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catchall_3
    move-exception p1

    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    :goto_2
    throw p0

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 84
    .line 85
    const-string p1, "Only the system or shell can clear all profile data"

    .line 86
    .line 87
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public final clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v6

    .line 8
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    const-string v1, "clear application data"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v0, v7

    .line 19
    move v2, v6

    .line 20
    move v3, p3

    .line 21
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v7, v6, p3, p1}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance p3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-direct {p3, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda49;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 49
    .line 50
    invoke-virtual {v0, p3, p1}, Lcom/android/server/pm/ProtectedPackages;->hasDeviceOwnerOrProfileOwner(ILjava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0, p3, p1}, Lcom/android/server/pm/ProtectedPackages;->isProtectedPackage(ILjava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v1, "START CLEAR APPLICATION USER DATA: observer{"

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    invoke-interface {p2}, Landroid/content/pm/IPackageDataObserver;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const-string/jumbo v1, "null"

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string/jumbo v1, "}\npkg{"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string/jumbo v1, "}\nuser{"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string/jumbo v1, "}\n"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v1, "PackageManager"

    .line 115
    .line 116
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const/16 v1, 0xc3c

    .line 136
    .line 137
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 141
    .line 142
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 143
    .line 144
    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;

    .line 145
    .line 146
    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$1;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 154
    .line 155
    const-string p2, "Cannot clear data for a protected package: "

    .line 156
    .line 157
    invoke-static {p2, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0
.end method

.method public final clearCrossProfileIntentFilters(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->clearCrossProfileIntentFilters_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v1, p2, v0}, Lcom/android/server/pm/PackageManagerService;->enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 31
    .line 32
    invoke-static {v1, v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;II)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mCrossProfileIntentFilterHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/pm/CrossProfileIntentFilterHelper;->clearCrossProfileIntentFilters(ILjava/lang/String;Ljava/lang/Integer;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x3e8

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 17
    .line 18
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 24
    .line 25
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/Settings;->clearPackagePersistentPreferredActivities(ILjava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 47
    .line 48
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 55
    .line 56
    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 58
    .line 59
    const-string p1, "clearPackagePersistentPreferredActivities can only be run by the system"

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method public final clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-interface {p0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "PackageManager"

    .line 29
    .line 30
    iget-object v4, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {p0, v1, p1}, Lcom/android/server/pm/Computer;->isCallerSameApp(ILjava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_3

    .line 39
    .line 40
    :cond_1
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    const-string v6, "android.permission.SET_PREFERRED_APPLICATIONS"

    .line 43
    .line 44
    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    invoke-interface {p0, v1}, Lcom/android/server/pm/Computer;->getUidTargetSdkVersion(I)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const/16 v7, 0x8

    .line 55
    .line 56
    if-ge v5, v7, :cond_2

    .line 57
    .line 58
    const-string p0, "Ignoring clearPackagePreferredActivities() from uid "

    .line 59
    .line 60
    invoke-static {v1, p0, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    if-eqz v2, :cond_4

    .line 71
    .line 72
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-interface {p0, v2, v1, v5}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_4

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    :try_start_0
    const-string v1, "kioskmode"

    .line 88
    .line 89
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v1}, Lcom/samsung/android/knox/kiosk/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kiosk/IKioskMode;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    invoke-interface {v1, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->getKioskHomePackageAsUser(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    invoke-interface {v1, p0}, Lcom/samsung/android/knox/kiosk/IKioskMode;->isKioskModeEnabledAsUser(I)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    new-instance v1, Landroid/content/Intent;

    .line 116
    .line 117
    const-string v2, "com.samsung.android.knox.intent.action.TERMINATE_KIOSK_INTERNAL"

    .line 118
    .line 119
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    const-string v2, "android.intent.extra.user_handle"

    .line 123
    .line 124
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    iget-object v2, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    new-instance v4, Landroid/os/UserHandle;

    .line 134
    .line 135
    invoke-direct {v4, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :catch_0
    move-exception p0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v2, " clearPackagePreferredActivities in kioskMode exception: "

    .line 149
    .line 150
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    :cond_5
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->clearPackagePreferredActivities(ILjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :goto_1
    return-void
.end method

.method public final clearPackagePreferredActivitiesAsUserForMDM(Ljava/lang/String;I)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x3e8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 13
    .line 14
    const-string p1, "clearPackagePreferredActivitiesAsUserForMDM can only be called by the system"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 27
    .line 28
    .line 29
    const-wide/16 v3, 0x64

    .line 30
    .line 31
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 32
    .line 33
    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 34
    .line 35
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 36
    .line 37
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 39
    .line 40
    invoke-virtual {v6, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-lez p1, :cond_2

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 50
    .line 51
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide p0

    .line 62
    sub-long/2addr p0, v0

    .line 63
    cmp-long p2, p0, v3

    .line 64
    .line 65
    if-lez p2, :cond_3

    .line 66
    .line 67
    const-string p2, "PackageManager"

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "clearPackagePreferredActivitiesAsUserForMDM - Execution time: "

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p0, " ms"

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_3
    return-void

    .line 92
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :try_start_3
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 94
    .line 95
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide p1

    .line 101
    sub-long/2addr p1, v0

    .line 102
    cmp-long v0, p1, v3

    .line 103
    .line 104
    if-lez v0, :cond_4

    .line 105
    .line 106
    const-string v0, "PackageManager"

    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v2, "clearPackagePreferredActivitiesAsUserForMDM - Execution time: "

    .line 111
    .line 112
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, " ms"

    .line 119
    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_4
    throw p0
.end method

.method public final clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x3e8

    .line 11
    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 17
    .line 18
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 24
    .line 25
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Settings;->clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 47
    .line 48
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 55
    .line 56
    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 58
    .line 59
    const-string p1, "clearPersistentPreferredActivity can only be run by the system"

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method public final createEncAppData(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "result of delete cache files: completed{"

    .line 2
    .line 3
    .line 4
    const-string v1, "Cache cannot be cleared for this app due to EDM policy. packageName = "

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v8

    .line 10
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 11
    .line 12
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v3, "android.permission.INTERNAL_DELETE_CACHE_FILES"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const-string v9, "PackageManager"

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string v4, "android.permission.DELETE_CACHE_FILES"

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    const-string p0, "Calling uid "

    .line 37
    .line 38
    const-string p1, " does not have android.permission.INTERNAL_DELETE_CACHE_FILES, silently ignoring"

    .line 39
    .line 40
    invoke-static {v8, p0, p1, v9}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "delete application cache files"

    .line 59
    .line 60
    const/4 v6, 0x1

    .line 61
    const/4 v7, 0x0

    .line 62
    move v4, v8

    .line 63
    move v5, p2

    .line 64
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    const-string v3, "android.permission.ACCESS_INSTANT_APPS"

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    const-string v2, "application_policy"

    .line 78
    .line 79
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    const/4 v3, 0x1

    .line 90
    :try_start_0
    invoke-interface {v2, p1, p2, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_3

    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    .line 110
    .line 111
    if-eqz p3, :cond_2

    .line 112
    .line 113
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p3}, Landroid/content/pm/IPackageDataObserver;->hashCode()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string/jumbo v0, "}"

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    const/4 v0, 0x0

    .line 139
    invoke-interface {p3, p1, v0}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :catch_0
    :try_start_2
    const-string v0, "Observer no longer exists."

    .line 144
    .line 145
    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    .line 147
    .line 148
    :cond_2
    :goto_0
    return-void

    .line 149
    :catch_1
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    const/16 v1, 0xc3c

    .line 166
    .line 167
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 171
    .line 172
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 173
    .line 174
    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;

    .line 175
    .line 176
    move-object v2, v1

    .line 177
    move-object v3, p0

    .line 178
    move-object v4, p1

    .line 179
    move v5, v8

    .line 180
    move v7, p2

    .line 181
    move-object v8, p3

    .line 182
    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;IIILandroid/content/pm/IPackageDataObserver;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public final deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/pm/VersionedPackage;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    .line 7
    .line 8
    invoke-direct {p1, p3}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, v0, p1, p4, p5}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final deletePreloadsFileCache()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->deletePreloadsFileCache()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    const/4 v5, 0x1

    .line 8
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v6, "PackageManager"

    .line 13
    .line 14
    invoke-static {v0, v6, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-static {}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarlifeForceConnect()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    array-length v0, v3

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    aget-object v0, v3, v6

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const-string v7, "com.baidu.carlife"

    .line 40
    .line 41
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v0, v6

    .line 47
    :goto_0
    if-eqz v0, :cond_3

    .line 48
    .line 49
    :cond_2
    const-string v0, "Package [com.baidu.carlife] (5d2de):"

    .line 50
    .line 51
    const-string/jumbo v1, "pkg=Package{e6e9cbf com.baidu.carlife}"

    .line 52
    .line 53
    .line 54
    const-string v3, "applicationInfo=ApplicationInfo{fe0a00a com.baidu.carlife}"

    .line 55
    .line 56
    const-string v4, "dataDir=/data/user/0/com.baidu.carlife"

    .line 57
    .line 58
    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v24, Lcom/android/server/pm/KnownPackages;

    .line 69
    .line 70
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 71
    .line 72
    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 73
    .line 74
    iget-object v9, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredUninstallerPackage:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v11, v7, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 81
    .line 82
    iget-object v13, v7, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v14, v7, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v15, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    .line 89
    .line 90
    move-object/from16 v16, v4

    .line 91
    .line 92
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    .line 93
    .line 94
    move-object/from16 v17, v4

    .line 95
    .line 96
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mAmbientContextDetectionPackage:Ljava/lang/String;

    .line 97
    .line 98
    move-object/from16 v18, v4

    .line 99
    .line 100
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mWearableSensingPackage:Ljava/lang/String;

    .line 101
    .line 102
    move-object/from16 v19, v4

    .line 103
    .line 104
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 105
    .line 106
    move-object/from16 v20, v4

    .line 107
    .line 108
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mRetailDemoPackage:Ljava/lang/String;

    .line 109
    .line 110
    move-object/from16 v21, v4

    .line 111
    .line 112
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    .line 113
    .line 114
    move-object/from16 v22, v4

    .line 115
    .line 116
    iget-object v4, v7, Lcom/android/server/pm/PackageManagerService;->mRecentsPackage:Ljava/lang/String;

    .line 117
    .line 118
    move-object/from16 v23, v4

    .line 119
    .line 120
    move-object/from16 v7, v24

    .line 121
    .line 122
    invoke-direct/range {v7 .. v23}, Lcom/android/server/pm/KnownPackages;-><init>(Lcom/android/server/pm/DefaultAppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    new-instance v15, Landroid/util/ArrayMap;

    .line 126
    .line 127
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 128
    .line 129
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 130
    .line 131
    invoke-direct {v15, v4}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 132
    .line 133
    .line 134
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 135
    .line 136
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 137
    .line 138
    monitor-enter v4

    .line 139
    :try_start_0
    new-instance v14, Landroid/util/ArraySet;

    .line 140
    .line 141
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 142
    .line 143
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 144
    .line 145
    invoke-direct {v14, v7}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 146
    .line 147
    .line 148
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 149
    new-instance v4, Lcom/android/server/pm/DumpHelper;

    .line 150
    .line 151
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 152
    .line 153
    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 154
    .line 155
    iget-object v9, v7, Lcom/android/server/pm/PackageManagerService;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 156
    .line 157
    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 158
    .line 159
    iget-object v11, v7, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 160
    .line 161
    iget-object v12, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackages:[Ljava/lang/String;

    .line 162
    .line 163
    iget-object v13, v7, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 164
    .line 165
    invoke-virtual {v7, v0}, Lcom/android/server/pm/PackageManagerService;->getPerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;

    .line 166
    .line 167
    .line 168
    move-result-object v17

    .line 169
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 170
    .line 171
    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    .line 172
    .line 173
    move-object/from16 v18, v7

    .line 174
    .line 175
    move-object v7, v4

    .line 176
    move-object/from16 v16, v13

    .line 177
    .line 178
    move-object/from16 v13, v24

    .line 179
    .line 180
    move-object/from16 v19, v14

    .line 181
    .line 182
    move-object/from16 v14, v16

    .line 183
    .line 184
    move-object/from16 v16, v19

    .line 185
    .line 186
    invoke-direct/range {v7 .. v18}, Lcom/android/server/pm/DumpHelper;-><init>(Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Lcom/android/server/pm/StorageEventHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/PackageInstallerService;[Ljava/lang/String;Lcom/android/server/pm/KnownPackages;Lcom/android/server/pm/ChangedPackagesTracker;Landroid/util/ArrayMap;Landroid/util/ArraySet;[Landroid/os/incremental/PerUidReadTimeouts;Lcom/android/server/pm/SnapshotStatistics;)V

    .line 187
    .line 188
    .line 189
    move-object/from16 v7, p1

    .line 190
    .line 191
    invoke-virtual {v4, v0, v7, v2, v3}, Lcom/android/server/pm/DumpHelper;->doDump(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 195
    .line 196
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mPmLifecycle:Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;

    .line 197
    .line 198
    iget-boolean v0, v4, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mEnabled:Z

    .line 199
    .line 200
    const/16 v7, 0x2d

    .line 201
    .line 202
    if-nez v0, :cond_4

    .line 203
    .line 204
    goto/16 :goto_8

    .line 205
    .line 206
    :cond_4
    array-length v0, v3

    .line 207
    if-nez v0, :cond_5

    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_5
    move v0, v6

    .line 211
    :cond_6
    array-length v8, v3

    .line 212
    if-ge v0, v8, :cond_8

    .line 213
    .line 214
    aget-object v8, v3, v0

    .line 215
    .line 216
    if-eqz v8, :cond_8

    .line 217
    .line 218
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 219
    .line 220
    .line 221
    move-result v9

    .line 222
    if-lez v9, :cond_8

    .line 223
    .line 224
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    if-eq v9, v7, :cond_7

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_7
    add-int/2addr v0, v5

    .line 232
    const-string v9, "--proto"

    .line 233
    .line 234
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v8

    .line 238
    if-eqz v8, :cond_6

    .line 239
    .line 240
    goto/16 :goto_8

    .line 241
    .line 242
    :cond_8
    :goto_1
    array-length v0, v3

    .line 243
    if-nez v0, :cond_9

    .line 244
    .line 245
    goto/16 :goto_8

    .line 246
    .line 247
    :cond_9
    move v0, v6

    .line 248
    :cond_a
    array-length v8, v3

    .line 249
    if-ge v0, v8, :cond_10

    .line 250
    .line 251
    aget-object v8, v3, v0

    .line 252
    .line 253
    if-eqz v8, :cond_10

    .line 254
    .line 255
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 256
    .line 257
    .line 258
    move-result v9

    .line 259
    if-lez v9, :cond_10

    .line 260
    .line 261
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    if-eq v9, v7, :cond_b

    .line 266
    .line 267
    goto/16 :goto_8

    .line 268
    .line 269
    :cond_b
    add-int/2addr v0, v5

    .line 270
    const-string v9, "-a"

    .line 271
    .line 272
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v8

    .line 276
    if-eqz v8, :cond_a

    .line 277
    .line 278
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 279
    .line 280
    .line 281
    iget-object v0, v4, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mRRFilter:Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;

    .line 282
    .line 283
    new-instance v8, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl$$ExternalSyntheticLambda0;

    .line 284
    .line 285
    invoke-direct {v8, v2}, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v8}, Lcom/samsung/android/core/pm/allowlist/RestrictedReceiverFilter;->logViolationsIfNeeded(Ljava/util/function/Consumer;)V

    .line 289
    .line 290
    .line 291
    iget-object v0, v4, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mSkippingApks:Lcom/samsung/android/server/pm/install/SkippingApks;

    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 297
    .line 298
    .line 299
    const-string v8, "SkippingApks:"

    .line 300
    .line 301
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-object v0, v0, Lcom/samsung/android/server/pm/install/SkippingApks;->mSkippingApkList:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    if-eqz v8, :cond_c

    .line 315
    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v8

    .line 320
    check-cast v8, Ljava/lang/String;

    .line 321
    .line 322
    const-string v9, "  name : "

    .line 323
    .line 324
    invoke-static {v2, v9, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_c
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    new-instance v8, Ljava/io/File;

    .line 333
    .line 334
    const-string v9, "log"

    .line 335
    .line 336
    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    new-instance v0, Ljava/io/File;

    .line 340
    .line 341
    const-string/jumbo v9, "pm_debug_info.txt"

    .line 342
    .line 343
    .line 344
    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 348
    .line 349
    .line 350
    move-result v8

    .line 351
    if-nez v8, :cond_d

    .line 352
    .line 353
    goto :goto_6

    .line 354
    :cond_d
    const-string v8, "\npm_debug_info.txt:"

    .line 355
    .line 356
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    .line 360
    .line 361
    new-instance v9, Ljava/io/FileReader;

    .line 362
    .line 363
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 364
    .line 365
    invoke-direct {v9, v0, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    .line 366
    .line 367
    .line 368
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    .line 370
    .line 371
    :goto_3
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    if-eqz v0, :cond_e

    .line 376
    .line 377
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    .line 379
    .line 380
    goto :goto_3

    .line 381
    :catchall_0
    move-exception v0

    .line 382
    move-object v9, v0

    .line 383
    goto :goto_4

    .line 384
    :cond_e
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 385
    .line 386
    .line 387
    goto :goto_6

    .line 388
    :goto_4
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 389
    .line 390
    .line 391
    goto :goto_5

    .line 392
    :catchall_1
    move-exception v0

    .line 393
    move-object v8, v0

    .line 394
    :try_start_5
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 395
    .line 396
    .line 397
    :goto_5
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 398
    :catch_0
    :goto_6
    const-string v0, "Required system packages:"

    .line 399
    .line 400
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget-object v0, v4, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 404
    .line 405
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredSystemPackages:Ljava/util/Set;

    .line 406
    .line 407
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 412
    .line 413
    .line 414
    move-result v8

    .line 415
    if-eqz v8, :cond_f

    .line 416
    .line 417
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v8

    .line 421
    check-cast v8, Ljava/lang/String;

    .line 422
    .line 423
    const-string v9, "  "

    .line 424
    .line 425
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    goto :goto_7

    .line 432
    :cond_f
    iget-object v0, v4, Lcom/samsung/android/server/pm/lifecycle/PmLifecycleImpl;->mACFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 433
    .line 434
    iget-object v0, v0, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->mParser:Lcom/samsung/android/server/pm/appcategory/AppCategoryListParser;

    .line 435
    .line 436
    instance-of v4, v0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    .line 437
    .line 438
    if-eqz v4, :cond_10

    .line 439
    .line 440
    check-cast v0, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;

    .line 441
    .line 442
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    const-string v0, "FileExists="

    .line 446
    .line 447
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 448
    .line 449
    .line 450
    const-string v4, "AppCategoryListParserWithScpm: "

    .line 451
    .line 452
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    new-instance v0, Ljava/io/File;

    .line 461
    .line 462
    sget-object v8, Lcom/samsung/android/server/pm/appcategory/AppCategoryListParserWithScpm;->FILE_PATH:Ljava/lang/String;

    .line 463
    .line 464
    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 479
    .line 480
    .line 481
    :catchall_2
    const-string v0, ", ScpmVersion="

    .line 482
    .line 483
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    const-string/jumbo v0, "persist.sys.package_feature.version.appcategory"

    .line 487
    .line 488
    .line 489
    const-wide/32 v8, 0x78a41d35    # 9.999993913E-315

    .line 490
    .line 491
    .line 492
    invoke-static {v0, v8, v9}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 493
    .line 494
    .line 495
    move-result-wide v8

    .line 496
    invoke-virtual {v2, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 497
    .line 498
    .line 499
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 500
    .line 501
    .line 502
    :cond_10
    :goto_8
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    .line 503
    .line 504
    if-eqz v0, :cond_17

    .line 505
    .line 506
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 507
    .line 508
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 509
    .line 510
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    move v4, v6

    .line 514
    :cond_11
    array-length v8, v3

    .line 515
    if-ge v4, v8, :cond_13

    .line 516
    .line 517
    aget-object v8, v3, v4

    .line 518
    .line 519
    if-eqz v8, :cond_13

    .line 520
    .line 521
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 522
    .line 523
    .line 524
    move-result v9

    .line 525
    if-lez v9, :cond_13

    .line 526
    .line 527
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    .line 528
    .line 529
    .line 530
    move-result v9

    .line 531
    if-eq v9, v7, :cond_12

    .line 532
    .line 533
    goto :goto_9

    .line 534
    :cond_12
    add-int/2addr v4, v5

    .line 535
    const-string v9, "--proto"

    .line 536
    .line 537
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v8

    .line 541
    if-eqz v8, :cond_11

    .line 542
    .line 543
    goto/16 :goto_e

    .line 544
    .line 545
    :cond_13
    :goto_9
    iget-object v4, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mBadgeLock:Ljava/lang/Object;

    .line 546
    .line 547
    monitor-enter v4

    .line 548
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 549
    .line 550
    .line 551
    const-string v8, "Monetization app list:"

    .line 552
    .line 553
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    iget-object v8, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPreloadAppsForBadge:Landroid/util/ArraySet;

    .line 557
    .line 558
    invoke-virtual {v8}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 559
    .line 560
    .line 561
    move-result-object v8

    .line 562
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 563
    .line 564
    .line 565
    move-result v9

    .line 566
    if-eqz v9, :cond_14

    .line 567
    .line 568
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v9

    .line 572
    check-cast v9, Ljava/lang/String;

    .line 573
    .line 574
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    goto :goto_a

    .line 578
    :catchall_3
    move-exception v0

    .line 579
    goto :goto_d

    .line 580
    :cond_14
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 581
    .line 582
    .line 583
    const-string v8, "Monetization apps launched list:"

    .line 584
    .line 585
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    iget-object v8, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPreloadAppsLaunched:Landroid/util/ArraySet;

    .line 589
    .line 590
    invoke-virtual {v8}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 591
    .line 592
    .line 593
    move-result-object v8

    .line 594
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 595
    .line 596
    .line 597
    move-result v9

    .line 598
    if-eqz v9, :cond_15

    .line 599
    .line 600
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v9

    .line 604
    check-cast v9, Ljava/lang/String;

    .line 605
    .line 606
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    goto :goto_b

    .line 610
    :cond_15
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 611
    .line 612
    .line 613
    new-instance v8, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .line 617
    .line 618
    const-string v9, "GalaxyStore badge feature state: "

    .line 619
    .line 620
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    iget-object v9, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 624
    .line 625
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 626
    .line 627
    .line 628
    move-result v9

    .line 629
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v8

    .line 636
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    iget-object v8, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 640
    .line 641
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 642
    .line 643
    .line 644
    move-result v8

    .line 645
    if-eqz v8, :cond_16

    .line 646
    .line 647
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 648
    .line 649
    .line 650
    const-string v8, "GalaxyStore monetized apps: "

    .line 651
    .line 652
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    iget-object v0, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreAppsForBadge:Landroid/util/ArraySet;

    .line 656
    .line 657
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 662
    .line 663
    .line 664
    move-result v8

    .line 665
    if-eqz v8, :cond_16

    .line 666
    .line 667
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v8

    .line 671
    check-cast v8, Ljava/lang/String;

    .line 672
    .line 673
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    goto :goto_c

    .line 677
    :cond_16
    monitor-exit v4

    .line 678
    goto :goto_e

    .line 679
    :goto_d
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 680
    throw v0

    .line 681
    :cond_17
    :goto_e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 682
    .line 683
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 684
    .line 685
    move v8, v6

    .line 686
    :cond_18
    array-length v9, v3

    .line 687
    if-ge v8, v9, :cond_1a

    .line 688
    .line 689
    aget-object v9, v3, v8

    .line 690
    .line 691
    if-eqz v9, :cond_1a

    .line 692
    .line 693
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 694
    .line 695
    .line 696
    move-result v10

    .line 697
    if-lez v10, :cond_1a

    .line 698
    .line 699
    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    .line 700
    .line 701
    .line 702
    move-result v10

    .line 703
    if-eq v10, v7, :cond_19

    .line 704
    .line 705
    goto :goto_f

    .line 706
    :cond_19
    add-int/2addr v8, v5

    .line 707
    const-string v10, "--proto"

    .line 708
    .line 709
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 710
    .line 711
    .line 712
    move-result v9

    .line 713
    if-eqz v9, :cond_18

    .line 714
    .line 715
    goto/16 :goto_1c

    .line 716
    .line 717
    :cond_1a
    :goto_f
    const/4 v7, 0x0

    .line 718
    :goto_10
    array-length v9, v3

    .line 719
    if-ge v8, v9, :cond_1e

    .line 720
    .line 721
    aget-object v9, v3, v8

    .line 722
    .line 723
    add-int/2addr v8, v5

    .line 724
    const-string v10, "android"

    .line 725
    .line 726
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 727
    .line 728
    .line 729
    move-result v10

    .line 730
    if-nez v10, :cond_1d

    .line 731
    .line 732
    const-string v10, "."

    .line 733
    .line 734
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 735
    .line 736
    .line 737
    move-result v10

    .line 738
    if-eqz v10, :cond_1b

    .line 739
    .line 740
    goto :goto_11

    .line 741
    :cond_1b
    const-string v10, "heimdallfs"

    .line 742
    .line 743
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    move-result v9

    .line 747
    if-eqz v9, :cond_1c

    .line 748
    .line 749
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 750
    .line 751
    goto :goto_10

    .line 752
    :cond_1c
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 753
    .line 754
    goto :goto_10

    .line 755
    :cond_1d
    :goto_11
    move-object v7, v9

    .line 756
    goto :goto_10

    .line 757
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 758
    .line 759
    .line 760
    move-result v0

    .line 761
    if-nez v0, :cond_1f

    .line 762
    .line 763
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 764
    .line 765
    .line 766
    move-result v0

    .line 767
    if-eqz v0, :cond_2c

    .line 768
    .line 769
    :cond_1f
    const-string v0, "Unable to find package: "

    .line 770
    .line 771
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    .line 772
    .line 773
    const-string v4, "  "

    .line 774
    .line 775
    invoke-direct {v3, v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    new-instance v2, Ljava/util/ArrayList;

    .line 779
    .line 780
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .line 782
    .line 783
    new-instance v4, Lcom/android/server/HeimdAllFsService;

    .line 784
    .line 785
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 786
    .line 787
    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 788
    .line 789
    invoke-direct {v4, v8}, Lcom/android/server/HeimdAllFsService;-><init>(Landroid/content/Context;)V

    .line 790
    .line 791
    .line 792
    new-instance v8, Ljava/util/HashMap;

    .line 793
    .line 794
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 795
    .line 796
    .line 797
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 798
    .line 799
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 800
    .line 801
    sget-boolean v10, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 802
    .line 803
    monitor-enter v9

    .line 804
    if-eqz v7, :cond_20

    .line 805
    .line 806
    :try_start_8
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 807
    .line 808
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 809
    .line 810
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    invoke-virtual {v1, v7, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 819
    .line 820
    .line 821
    goto :goto_12

    .line 822
    :catchall_4
    move-exception v0

    .line 823
    goto/16 :goto_1d

    .line 824
    .line 825
    :catch_1
    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 826
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 827
    .line 828
    goto/16 :goto_1c

    .line 829
    .line 830
    :cond_20
    :try_start_a
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 831
    .line 832
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 833
    .line 834
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    :goto_12
    if-eqz v2, :cond_2b

    .line 843
    .line 844
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 845
    .line 846
    .line 847
    move-result v1

    .line 848
    if-nez v1, :cond_21

    .line 849
    .line 850
    goto/16 :goto_1b

    .line 851
    .line 852
    :cond_21
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 853
    .line 854
    .line 855
    const-string v0, "HeimdAllFS state:"

    .line 856
    .line 857
    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 861
    .line 862
    .line 863
    invoke-static {}, Lcom/android/server/HeimdAllFsService;->getFunctionOrder()Lcom/android/server/HeimdAllFsService$FunctionOrder;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    invoke-static {v0}, Lcom/android/server/HeimdAllFsService;->isServiceActivate(Lcom/android/server/HeimdAllFsService$FunctionOrder;)Z

    .line 868
    .line 869
    .line 870
    move-result v0

    .line 871
    if-nez v0, :cond_22

    .line 872
    .line 873
    const-string v0, "HeimdAllFS does not supported."

    .line 874
    .line 875
    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    monitor-exit v9

    .line 879
    goto/16 :goto_1c

    .line 880
    .line 881
    :cond_22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 882
    .line 883
    .line 884
    move-result v0

    .line 885
    int-to-long v0, v0

    .line 886
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 887
    .line 888
    .line 889
    move-result-object v2

    .line 890
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 891
    .line 892
    .line 893
    move-result v7

    .line 894
    if-eqz v7, :cond_25

    .line 895
    .line 896
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v7

    .line 900
    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 901
    .line 902
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 903
    .line 904
    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 905
    .line 906
    const-string v11, "/data"

    .line 907
    .line 908
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 909
    .line 910
    .line 911
    move-result v10

    .line 912
    if-nez v10, :cond_23

    .line 913
    .line 914
    goto :goto_13

    .line 915
    :cond_23
    new-instance v10, Ljava/util/ArrayList;

    .line 916
    .line 917
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .line 919
    .line 920
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 921
    .line 922
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 923
    .line 924
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    .line 926
    .line 927
    iget-object v11, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 928
    .line 929
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 930
    .line 931
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 932
    .line 933
    .line 934
    move-result v12

    .line 935
    if-nez v12, :cond_24

    .line 936
    .line 937
    array-length v12, v11

    .line 938
    move v13, v6

    .line 939
    :goto_14
    if-ge v13, v12, :cond_24

    .line 940
    .line 941
    aget-object v14, v11, v13

    .line 942
    .line 943
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    .line 945
    .line 946
    add-int/2addr v13, v5

    .line 947
    goto :goto_14

    .line 948
    :cond_24
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 949
    .line 950
    invoke-virtual {v8, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    goto :goto_13

    .line 954
    :cond_25
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 955
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 956
    .line 957
    const/4 v2, 0x2

    .line 958
    new-array v7, v2, [J

    .line 959
    .line 960
    const-wide/16 v9, 0x0

    .line 961
    .line 962
    aput-wide v9, v7, v6

    .line 963
    .line 964
    aput-wide v9, v7, v5

    .line 965
    .line 966
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    .line 967
    .line 968
    .line 969
    move-result v2

    .line 970
    int-to-long v11, v2

    .line 971
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 972
    .line 973
    .line 974
    move-result-object v2

    .line 975
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 976
    .line 977
    .line 978
    move-result-object v2

    .line 979
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 980
    .line 981
    .line 982
    move-result v8

    .line 983
    if-eqz v8, :cond_2a

    .line 984
    .line 985
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    move-result-object v8

    .line 989
    check-cast v8, Ljava/util/Map$Entry;

    .line 990
    .line 991
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object v13

    .line 995
    check-cast v13, Ljava/lang/String;

    .line 996
    .line 997
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v8

    .line 1001
    check-cast v8, Ljava/util/ArrayList;

    .line 1002
    .line 1003
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1004
    .line 1005
    .line 1006
    move-result v14

    .line 1007
    int-to-long v14, v14

    .line 1008
    add-long/2addr v9, v14

    .line 1009
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1010
    .line 1011
    const-string v15, "["

    .line 1012
    .line 1013
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    .line 1018
    .line 1019
    const-string v13, "]"

    .line 1020
    .line 1021
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v13

    .line 1028
    invoke-virtual {v3, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v8

    .line 1038
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1039
    .line 1040
    .line 1041
    move-result v13

    .line 1042
    if-eqz v13, :cond_29

    .line 1043
    .line 1044
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v13

    .line 1048
    check-cast v13, Ljava/lang/String;

    .line 1049
    .line 1050
    const-string v14, "HeimdAllFS"

    .line 1051
    .line 1052
    const-string v15, "Size info: "

    .line 1053
    .line 1054
    const-string v5, "Incremental Delivery APK: SKIP! : "

    .line 1055
    .line 1056
    move-object/from16 p0, v2

    .line 1057
    .line 1058
    const/4 v6, 0x2

    .line 1059
    new-array v2, v6, [J

    .line 1060
    .line 1061
    fill-array-data v2, :array_0

    .line 1062
    .line 1063
    .line 1064
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1065
    .line 1066
    move-object/from16 p1, v8

    .line 1067
    .line 1068
    const-string/jumbo v8, "path: "

    .line 1069
    .line 1070
    .line 1071
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v6

    .line 1081
    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    :try_start_b
    invoke-static {v13}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 1085
    .line 1086
    .line 1087
    move-result v6

    .line 1088
    if-eqz v6, :cond_26

    .line 1089
    .line 1090
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1091
    .line 1092
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v5

    .line 1102
    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    move-wide/from16 p2, v9

    .line 1106
    .line 1107
    :goto_17
    const/4 v5, 0x0

    .line 1108
    goto/16 :goto_1a

    .line 1109
    .line 1110
    :catch_2
    move-wide/from16 p2, v9

    .line 1111
    .line 1112
    goto :goto_18

    .line 1113
    :catch_3
    move-wide/from16 p2, v9

    .line 1114
    .line 1115
    goto/16 :goto_19

    .line 1116
    .line 1117
    :cond_26
    const-string v5, "Compressed? "

    .line 1118
    .line 1119
    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1120
    .line 1121
    .line 1122
    iget-object v5, v4, Lcom/android/server/HeimdAllFsService;->mInstalld:Landroid/os/IInstalld;

    .line 1123
    .line 1124
    invoke-interface {v5, v13, v2}, Landroid/os/IInstalld;->getCompressedStats(Ljava/lang/String;[J)Z

    .line 1125
    .line 1126
    .line 1127
    move-result v5

    .line 1128
    if-eqz v5, :cond_27

    .line 1129
    .line 1130
    const/4 v5, 0x0

    .line 1131
    aget-wide v18, v2, v5

    .line 1132
    .line 1133
    const/4 v5, 0x1

    .line 1134
    aget-wide v20, v2, v5

    .line 1135
    .line 1136
    cmp-long v5, v18, v20

    .line 1137
    .line 1138
    if-lez v5, :cond_27

    .line 1139
    .line 1140
    const-string v5, "True"

    .line 1141
    .line 1142
    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1143
    .line 1144
    .line 1145
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1146
    .line 1147
    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 1148
    .line 1149
    .line 1150
    move-wide/from16 p2, v9

    .line 1151
    .line 1152
    const/4 v6, 0x0

    .line 1153
    :try_start_c
    aget-wide v8, v2, v6

    .line 1154
    .line 1155
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1156
    .line 1157
    .line 1158
    const-string v6, ", "

    .line 1159
    .line 1160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    .line 1162
    .line 1163
    const/4 v6, 0x1

    .line 1164
    aget-wide v8, v2, v6

    .line 1165
    .line 1166
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v5

    .line 1173
    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1174
    .line 1175
    .line 1176
    goto :goto_17

    .line 1177
    :cond_27
    move-wide/from16 p2, v9

    .line 1178
    .line 1179
    const/4 v5, 0x0

    .line 1180
    aget-wide v8, v2, v5

    .line 1181
    .line 1182
    const-wide/16 v5, 0x10cf

    .line 1183
    .line 1184
    cmp-long v5, v8, v5

    .line 1185
    .line 1186
    if-nez v5, :cond_28

    .line 1187
    .line 1188
    const-string v5, "Unknown - failed to acquire installd mLock"

    .line 1189
    .line 1190
    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    goto :goto_17

    .line 1194
    :cond_28
    const-string v5, "False"

    .line 1195
    .line 1196
    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 1197
    .line 1198
    .line 1199
    goto :goto_17

    .line 1200
    :catch_4
    :goto_18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1201
    .line 1202
    const-string v6, "Error: Exception, "

    .line 1203
    .line 1204
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v5

    .line 1214
    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1215
    .line 1216
    .line 1217
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1218
    .line 1219
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1220
    .line 1221
    .line 1222
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v5

    .line 1229
    invoke-static {v14, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    .line 1231
    .line 1232
    goto :goto_17

    .line 1233
    :catch_5
    :goto_19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1234
    .line 1235
    const-string v6, "Error: getCompressedStats RemoteException, "

    .line 1236
    .line 1237
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v5

    .line 1247
    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1248
    .line 1249
    .line 1250
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1251
    .line 1252
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1253
    .line 1254
    .line 1255
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v5

    .line 1262
    invoke-static {v14, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    .line 1264
    .line 1265
    goto/16 :goto_17

    .line 1266
    .line 1267
    :goto_1a
    aget-wide v8, v7, v5

    .line 1268
    .line 1269
    aget-wide v13, v2, v5

    .line 1270
    .line 1271
    add-long/2addr v8, v13

    .line 1272
    aput-wide v8, v7, v5

    .line 1273
    .line 1274
    const/4 v5, 0x1

    .line 1275
    aget-wide v8, v7, v5

    .line 1276
    .line 1277
    aget-wide v13, v2, v5

    .line 1278
    .line 1279
    add-long/2addr v8, v13

    .line 1280
    aput-wide v8, v7, v5

    .line 1281
    .line 1282
    move-object/from16 v2, p0

    .line 1283
    .line 1284
    move-object/from16 v8, p1

    .line 1285
    .line 1286
    move-wide/from16 v9, p2

    .line 1287
    .line 1288
    const/4 v6, 0x0

    .line 1289
    goto/16 :goto_16

    .line 1290
    .line 1291
    :cond_29
    move-object/from16 p0, v2

    .line 1292
    .line 1293
    move-wide/from16 p2, v9

    .line 1294
    .line 1295
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1296
    .line 1297
    .line 1298
    const/4 v5, 0x1

    .line 1299
    const/4 v6, 0x0

    .line 1300
    goto/16 :goto_15

    .line 1301
    .line 1302
    :cond_2a
    const-string v2, "[ Summary ]"

    .line 1303
    .line 1304
    invoke-virtual {v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1308
    .line 1309
    .line 1310
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    const-string v4, "# of packages: "

    .line 1313
    .line 1314
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1318
    .line 1319
    .line 1320
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v0

    .line 1324
    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1325
    .line 1326
    .line 1327
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1328
    .line 1329
    const-string v1, " / # of packages in DATA: "

    .line 1330
    .line 1331
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v0

    .line 1341
    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1342
    .line 1343
    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1345
    .line 1346
    const-string v1, " ("

    .line 1347
    .line 1348
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1349
    .line 1350
    .line 1351
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1352
    .line 1353
    .line 1354
    const-string v1, ")"

    .line 1355
    .line 1356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v0

    .line 1363
    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1364
    .line 1365
    .line 1366
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1367
    .line 1368
    const-string v1, "Compressed apks info - sum of orig size: "

    .line 1369
    .line 1370
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1371
    .line 1372
    .line 1373
    const/4 v1, 0x0

    .line 1374
    aget-wide v1, v7, v1

    .line 1375
    .line 1376
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v0

    .line 1383
    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1384
    .line 1385
    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1387
    .line 1388
    const-string v1, " / sum of compr size : "

    .line 1389
    .line 1390
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1391
    .line 1392
    .line 1393
    const/4 v1, 0x1

    .line 1394
    aget-wide v1, v7, v1

    .line 1395
    .line 1396
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1397
    .line 1398
    .line 1399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v0

    .line 1403
    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    .line 1405
    .line 1406
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1407
    .line 1408
    .line 1409
    goto :goto_1c

    .line 1410
    :cond_2b
    :goto_1b
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1411
    .line 1412
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    .line 1417
    .line 1418
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v0

    .line 1422
    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1423
    .line 1424
    .line 1425
    monitor-exit v9

    .line 1426
    :cond_2c
    :goto_1c
    return-void

    .line 1427
    :goto_1d
    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1428
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 1429
    .line 1430
    throw v0

    .line 1431
    :catchall_5
    move-exception v0

    .line 1432
    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1433
    throw v0

    .line 1434
    nop

    .line 1435
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public final enterSafeMode()V
    .locals 1

    .line 1
    const-string v0, "Only the system can request entering safe mode"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mSystemReady:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final extendVerificationTimeout(IIJ)V
    .locals 10

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 8
    .line 9
    const-string v2, "Only package verification agents can extend verification timeouts"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;

    .line 23
    .line 24
    move-object v3, v1

    .line 25
    move-object v4, p0

    .line 26
    move v5, p1

    .line 27
    move v7, p2

    .line 28
    move-wide v8, p3

    .line 29
    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;IIIJ)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final findPersistentPreferredActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x3e8

    .line 17
    .line 18
    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 29
    .line 30
    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    sget-boolean v1, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :cond_1
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-wide/16 v4, 0x0

    .line 65
    .line 66
    move-object v1, p0

    .line 67
    move-object v2, p1

    .line 68
    move-object v3, v0

    .line 69
    move v6, p2

    .line 70
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;Ljava/lang/String;JI)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    const/4 v6, 0x0

    .line 75
    move v2, p2

    .line 76
    move v3, v7

    .line 77
    move v7, v8

    .line 78
    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(IIJZZ)J

    .line 79
    .line 80
    .line 81
    move-result-wide v7

    .line 82
    move-object v2, p1

    .line 83
    move-object v3, v0

    .line 84
    move-wide v4, v7

    .line 85
    move v6, p2

    .line 86
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const/4 v9, 0x0

    .line 91
    move v7, v9

    .line 92
    move v8, p2

    .line 93
    invoke-interface/range {v1 .. v8}, Lcom/android/server/pm/Computer;->findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    :goto_0
    return-object p0

    .line 98
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 99
    .line 100
    const-string p1, "findPersistentPreferredActivity can only be run by the system"

    .line 101
    .line 102
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0
.end method

.method public final finishPackageInstall(IZ)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "Only the system is allowed to finish installs"

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-wide/32 v0, 0x40000

    .line 12
    .line 13
    .line 14
    const-string/jumbo v2, "restore"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x9

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 23
    .line 24
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final flushPackageRestrictionsAsUser(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-interface {v1, v3}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const-string v2, "flushPackageRestrictions"

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    move v4, p1

    .line 36
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 42
    .line 43
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->flushPackageRestrictionsAsUserInternalLocked(I)V

    .line 49
    .line 50
    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 56
    .line 57
    throw p0
.end method

.method public final freeStorage(Ljava/lang/String;JILandroid/content/IntentSender;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->freeStorage_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v9, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda10;

    .line 9
    .line 10
    const/4 v8, 0x1

    .line 11
    move-object v1, v9

    .line 12
    move-object v2, p0

    .line 13
    move-object v3, p1

    .line 14
    move-wide v4, p2

    .line 15
    move v6, p4

    .line 16
    move-object v7, p5

    .line 17
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;JILjava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "START FREE STORAGE AND NOTIFY: observer{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    invoke-interface {p5}, Landroid/content/pm/IPackageDataObserver;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo v1, "null"

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string/jumbo v1, "}\nfreeStorageSize{"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string/jumbo v1, "}"

    .line 35
    .line 36
    .line 37
    const-string v2, "PackageManager"

    .line 38
    .line 39
    invoke-static {v0, v1, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify_enforcePermission()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    new-instance v9, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda10;

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    move-object v1, v9

    .line 53
    move-object v2, p0

    .line 54
    move-object v3, p1

    .line 55
    move-wide v4, p2

    .line 56
    move v6, p4

    .line 57
    move-object v7, p5

    .line 58
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;JILjava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getAllPackages()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lcom/android/server/pm/Computer;->getAllPackages()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getAppCategoryHintUserMap()Ljava/util/Map;
    .locals 4

    .line 1
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/pm/AppCategoryHintHelper;->isSystemServerOrDebuggableShell()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance v1, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda1;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v1, v2}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda1;-><init>(I)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda1;

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-direct {v2, v3}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda1;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Ljava/util/Map;

    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return-object p0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0

    .line 60
    :cond_0
    const-string p0, "AppCategoryHintHelper"

    .line 61
    .line 62
    const-string v0, "AppCategoryHintHelper is not initialized, can\'t set category"

    .line 63
    .line 64
    invoke-static {p0, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    new-instance p0, Landroid/os/RemoteException;

    .line 68
    .line 69
    const-string v0, "AppCategoryHintHelper is not initialized, can\'t set category"

    .line 70
    .line 71
    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    .line 76
    .line 77
    const-string v0, "calling uid is not system server!"

    .line 78
    .line 79
    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public final getAppCategoryInfos(Ljava/lang/String;)Ljava/util/Map;
    .locals 6

    .line 1
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 2
    .line 3
    const-string/jumbo v0, "package not found!: "

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-interface {v1, v2}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/16 v3, 0x7d0

    .line 31
    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    if-eqz v1, :cond_3

    .line 36
    .line 37
    array-length v2, v1

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    aget-object v1, v1, v3

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    :goto_0
    new-instance v1, Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 63
    .line 64
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 65
    .line 66
    monitor-enter v2

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 70
    .line 71
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 72
    .line 73
    invoke-virtual {v3, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    iget-object v0, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 80
    .line 81
    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getCategory()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget v3, v3, Lcom/android/server/pm/PackageSetting;->categoryOverride:I

    .line 90
    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppCategoryHintHelper;->getAppCategoryHintUser(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    iget-object v5, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mAppCategoryFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 104
    .line 105
    invoke-virtual {v5, p1}, Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;->getPackageCategory(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppCategoryHintHelper;->getAppCategoryHintDeveloper(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    filled-new-array {v0, v3, v4, v5, p0}, [Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {v1, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    monitor-exit v2

    .line 129
    goto :goto_1

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    goto :goto_2

    .line 132
    :cond_1
    new-instance p0, Landroid/os/RemoteException;

    .line 133
    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 143
    .line 144
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 145
    .line 146
    iget-object p1, p1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 147
    .line 148
    new-instance v0, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda3;

    .line 149
    .line 150
    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/AppCategoryHintHelper;Ljava/util/Map;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 154
    .line 155
    .line 156
    monitor-exit v2

    .line 157
    :goto_1
    return-object v1

    .line 158
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 160
    .line 161
    throw p0

    .line 162
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 163
    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v0, "Unknown or No permission, calling UID: "

    .line 167
    .line 168
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p0
.end method

.method public final getAppMetadataFd(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getAppMetadataFd_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0, v0, p2, p1}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataFilePath:Ljava/lang/String;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    new-instance p2, Ljava/io/File;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/high16 p0, 0x10000000

    .line 32
    .line 33
    :try_start_0
    invoke-static {p2, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-object p0

    .line 38
    :catch_0
    return-object p1

    .line 39
    :cond_1
    new-instance p0, Landroid/os/ParcelableException;

    .line 40
    .line 41
    new-instance p2, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 42
    .line 43
    invoke-direct {p2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public final getAppMetadataSource(Ljava/lang/String;I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getAppMetadataSource_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0, v0, p2, p1}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    iget p0, p0, Lcom/android/server/pm/PackageSetting;->mAppMetadataSource:I

    .line 21
    .line 22
    return p0

    .line 23
    :cond_0
    new-instance p0, Landroid/os/ParcelableException;

    .line 24
    .line 25
    new-instance p2, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 26
    .line 27
    invoke-direct {p2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getAppPredictionServicePackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getApplicationEnabledSetting(Ljava/lang/String;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getArchivedAppIcon(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageArchiver;->getArchivedAppIcon(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getArchivedPackage(Ljava/lang/String;I)Landroid/content/pm/ArchivedPackageParcel;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "getArchivedPackage"

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    const/4 v5, 0x1

    .line 21
    move v3, p2

    .line 22
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroid/content/pm/ArchivedPackageParcel;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/content/pm/ArchivedPackageParcel;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, v0, Landroid/content/pm/ArchivedPackageParcel;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x0

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    monitor-exit v1

    .line 45
    :goto_0
    move-object v0, v3

    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_0
    invoke-interface {v2, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    if-nez v5, :cond_1

    .line 60
    .line 61
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_1

    .line 66
    .line 67
    monitor-exit v1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 70
    .line 71
    iget-object v3, v3, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 72
    .line 73
    iput-object v3, v0, Landroid/content/pm/ArchivedPackageParcel;->signingDetails:Landroid/content/pm/SigningDetails;

    .line 74
    .line 75
    iget-wide v3, v2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 76
    .line 77
    const/16 v6, 0x20

    .line 78
    .line 79
    shr-long v6, v3, v6

    .line 80
    .line 81
    long-to-int v6, v6

    .line 82
    iput v6, v0, Landroid/content/pm/ArchivedPackageParcel;->versionCodeMajor:I

    .line 83
    .line 84
    long-to-int v3, v3

    .line 85
    iput v3, v0, Landroid/content/pm/ArchivedPackageParcel;->versionCode:I

    .line 86
    .line 87
    iget v3, v2, Lcom/android/server/pm/PackageSetting;->mTargetSdkVersion:I

    .line 88
    .line 89
    iput v3, v0, Landroid/content/pm/ArchivedPackageParcel;->targetSdkVersion:I

    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isDefaultToDeviceProtectedStorage()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iput-object v3, v0, Landroid/content/pm/ArchivedPackageParcel;->defaultToDeviceProtectedStorage:Ljava/lang/String;

    .line 100
    .line 101
    iget v3, v2, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 102
    .line 103
    const/high16 v4, 0x20000000

    .line 104
    .line 105
    and-int/2addr v3, v4

    .line 106
    const/4 v4, 0x0

    .line 107
    const/4 v6, 0x1

    .line 108
    if-eqz v3, :cond_2

    .line 109
    .line 110
    move v3, v6

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    move v3, v4

    .line 113
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iput-object v3, v0, Landroid/content/pm/ArchivedPackageParcel;->requestLegacyExternalStorage:Ljava/lang/String;

    .line 118
    .line 119
    iget v2, v2, Lcom/android/server/pm/SettingBase;->mPkgPrivateFlags:I

    .line 120
    .line 121
    const/high16 v3, 0x1000000

    .line 122
    .line 123
    and-int/2addr v2, v3

    .line 124
    if-eqz v2, :cond_3

    .line 125
    .line 126
    move v4, v6

    .line 127
    :cond_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    iput-object v2, v0, Landroid/content/pm/ArchivedPackageParcel;->userDataFragile:Ljava/lang/String;

    .line 132
    .line 133
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-eqz v5, :cond_4

    .line 135
    .line 136
    :try_start_1
    invoke-static {v5}, Lcom/android/server/pm/PackageArchiver;->createArchivedActivities(Lcom/android/server/pm/pkg/ArchiveState;)[Landroid/content/pm/ArchivedActivityParcel;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    iput-object p0, v0, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :catch_0
    move-exception p0

    .line 144
    goto :goto_3

    .line 145
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    const-class v2, Landroid/app/ActivityManager;

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Landroid/app/ActivityManager;

    .line 154
    .line 155
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 162
    .line 163
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/PackageArchiver;->getLauncherActivityInfos(ILjava/lang/String;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-static {v1, p0}, Lcom/android/server/pm/PackageArchiver;->createArchivedActivities(ILjava/util/List;)[Landroid/content/pm/ArchivedActivityParcel;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    iput-object p0, v0, Landroid/content/pm/ArchivedPackageParcel;->archivedActivities:[Landroid/content/pm/ArchivedActivityParcel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    .line 173
    :goto_2
    return-object v0

    .line 174
    :goto_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 175
    .line 176
    const-string p2, "Package does not have a main activity"

    .line 177
    .line 178
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    throw p1

    .line 182
    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    throw p0
.end method

.method public final getArtManager()Landroid/content/pm/dex/IArtManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getAttentionServicePackageName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    const v1, 0x104030a

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final getBlockUninstallForUser(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getChangedPackages(II)Landroid/content/pm/ChangedPackages;
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    invoke-interface {v7, v6}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v8, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-object v8

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return-object v8

    .line 32
    :cond_1
    const-string v1, "getChangedPackages"

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    move-object v0, v7

    .line 37
    move v2, v6

    .line 38
    move v3, p2

    .line 39
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v0

    .line 49
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    .line 50
    .line 51
    if-lt p1, v1, :cond_2

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    goto :goto_2

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_4

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mUserIdToSequenceToPackage:Landroid/util/SparseArray;

    .line 58
    .line 59
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/util/SparseArray;

    .line 64
    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    monitor-exit v0

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 70
    .line 71
    iget v3, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    .line 72
    .line 73
    sub-int/2addr v3, p1

    .line 74
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .line 76
    .line 77
    :goto_0
    iget v3, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    .line 78
    .line 79
    if-ge p1, v3, :cond_5

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Ljava/lang/String;

    .line 86
    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    new-instance v8, Landroid/content/pm/ChangedPackages;

    .line 103
    .line 104
    iget p0, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    .line 105
    .line 106
    invoke-direct {v8, p0, v2}, Landroid/content/pm/ChangedPackages;-><init>(ILjava/util/List;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_2
    if-eqz v8, :cond_8

    .line 111
    .line 112
    invoke-virtual {v8}, Landroid/content/pm/ChangedPackages;->getPackageNames()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    add-int/lit8 p1, p1, -0x1

    .line 121
    .line 122
    :goto_3
    if-ltz p1, :cond_8

    .line 123
    .line 124
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/String;

    .line 129
    .line 130
    invoke-interface {v7, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-interface {v7, v0, v6, p2}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    :cond_7
    add-int/lit8 p1, p1, -0x1

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_8
    return-object v8

    .line 147
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    throw p0
.end method

.method public final getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-interface {p0, v0, p2, p1}, Lcom/android/server/pm/Computer;->getComponentEnabledSetting(IILandroid/content/ComponentName;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getDefaultAppsBackup(I)[B
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "da"

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x3e8

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-interface {v3, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v3, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 44
    .line 45
    const-string v4, "android.app.role.BROWSER"

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 48
    .line 49
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/DefaultAppProvider;->getRoleHolder(ILjava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v3, p0}, Lcom/android/server/pm/Settings;->writeDefaultApps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v3, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    .line 58
    .line 59
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 60
    .line 61
    .line 62
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    :catch_0
    return-object v2

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 71
    .line 72
    const-string p1, "Only the system may call getDefaultAppsBackup()"

    .line 73
    .line 74
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public final getDefaultTextClassifierPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDefaultTextClassifierPackage:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getDomainVerificationAgent(I)Landroid/content/ComponentName;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 20
    .line 21
    check-cast p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    .line 24
    .line 25
    invoke-interface {p0}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v1, v0, p1, v2}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object p1, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_1
    return-object p0

    .line 65
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 66
    .line 67
    const-string p1, "Not allowed to query domain verification agent"

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0
.end method

.method public final getDomainVerificationBackup(I)[B
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast v2, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-virtual {v2, p0, v1, v3, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->writeSettings(Lcom/android/server/pm/Computer;Lcom/android/modules/utils/TypedXmlSerializer;ZI)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 33
    .line 34
    .line 35
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception p1

    .line 46
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 50
    :catch_0
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 53
    .line 54
    const-string p1, "Only the system may call getDomainVerificationBackup()"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final getFlagsForUid(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getFlagsForUid(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    const-string v0, "PackageManager"

    .line 2
    .line 3
    const-string v1, "getGrantedPermissionsForMDM"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    const-string p0, "getGrantedPermissionsForMDM: Caller is not SYSTEM_PROCESS"

    .line 20
    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_b

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 v1, -0x1

    .line 49
    iget-object v2, p0, Lcom/android/server/pm/SettingBase;->mLegacyPermissionsState:Lcom/android/server/pm/permission/LegacyPermissionState;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 56
    .line 57
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    const/16 v4, 0x16

    .line 62
    .line 63
    if-le p0, v4, :cond_2

    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    invoke-virtual {v2, p0}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    :cond_2
    if-eqz v1, :cond_5

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-lez p0, :cond_5

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_6

    .line 87
    .line 88
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 93
    .line 94
    if-nez v1, :cond_4

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    iget-boolean v2, v1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    .line 98
    .line 99
    if-eqz v2, :cond_3

    .line 100
    .line 101
    iget-object v1, v1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    const-string p0, "getGrantedPermissionsForMDM : installPermissions is null"

    .line 108
    .line 109
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_6
    if-eqz v3, :cond_9

    .line 113
    .line 114
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-lez p0, :cond_9

    .line 119
    .line 120
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_a

    .line 129
    .line 130
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 135
    .line 136
    if-nez v0, :cond_8

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_8
    iget-boolean v1, v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    .line 140
    .line 141
    if-eqz v1, :cond_7

    .line 142
    .line 143
    iget-object v0, v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_9
    const-string p0, "getGrantedPermissionsForMDM : runtimePermissions is null"

    .line 150
    .line 151
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    :cond_a
    new-instance p0, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 157
    .line 158
    .line 159
    return-object p0

    .line 160
    :cond_b
    :goto_2
    const-string p0, "Not found ps or pkg for "

    .line 161
    .line 162
    invoke-static {p0, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-object v3
.end method

.method public final getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getHoldLockToken()Landroid/os/IBinder;
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.INJECT_EVENTS"

    .line 10
    .line 11
    const-string v2, "getHoldLockToken requires INJECT_EVENTS permission"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/os/Binder;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "holdLock:"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, p0, v1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 44
    .line 45
    const-string v0, "getHoldLockToken requires a debuggable build"

    .line 46
    .line 47
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-interface {p0, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-interface {p0, v0, p1}, Lcom/android/server/pm/Computer;->getHomeActivitiesAsUser(ILjava/util/List;)Landroid/content/ComponentName;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final getIncidentReportApproverPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getInitialNonStoppedSystemPackages()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-object v0
.end method

.method public final getInstallLocation()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "default_install_location"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final getInstallReason(Ljava/lang/String;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getInstallReason(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    new-instance v6, Landroid/content/pm/ParceledListSlice;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v3, 0x0

    .line 14
    move v1, p3

    .line 15
    move-wide v4, p1

    .line 16
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->getInstalledApplications(IIZJ)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v6, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-object v6
.end method

.method public final getInstalledModules(I)Ljava/util/List;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mMetadataLoaded:Z

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    const/high16 v0, 0x20000

    .line 8
    .line 9
    and-int/2addr v0, p1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    .line 15
    .line 16
    check-cast p0, Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-string/jumbo v0, "package"

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/ModuleInfoProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 44
    .line 45
    const/high16 v1, 0x40000000    # 2.0f

    .line 46
    .line 47
    or-int/2addr p1, v1

    .line 48
    int-to-long v1, p1

    .line 49
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-interface {v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/android/server/pm/ModuleInfoProvider;->mModuleInfo:Ljava/util/Map;

    .line 87
    .line 88
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 89
    .line 90
    check-cast v2, Landroid/util/ArrayMap;

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Landroid/content/pm/ModuleInfo;

    .line 97
    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    move-object p1, v0

    .line 105
    goto :goto_1

    .line 106
    :catch_0
    move-exception p0

    .line 107
    const-string p1, "PackageManager.ModuleInfoProvider"

    .line 108
    .line 109
    const-string v0, "Unable to retrieve all package names"

    .line 110
    .line 111
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    :goto_1
    return-object p1

    .line 119
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 120
    .line 121
    const-string p1, "Call to getInstalledModules before metadata loaded"

    .line 122
    .line 123
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0
.end method

.method public final getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-interface {p0, v0, p1}, Lcom/android/server/pm/Computer;->getInstallerPackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppAndroidId_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const-string v2, "getInstantAppAndroidId"

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    move-object v1, v0

    .line 19
    move v4, p2

    .line 20
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1, p2}, Lcom/android/server/pm/Computer;->isInstantApp(Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 34
    .line 35
    const-string v0, "Error writing instant app android id file: "

    .line 36
    .line 37
    const-string v1, "Failed to read instant app android id file: "

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 43
    .line 44
    invoke-static {p2, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(ILjava/lang/String;)Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "android_id"

    .line 49
    .line 50
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 54
    .line 55
    .line 56
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    monitor-exit p0

    .line 68
    goto/16 :goto_4

    .line 69
    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :catch_0
    move-exception v3

    .line 74
    const-string v4, "InstantAppRegistry"

    .line 75
    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v4, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    :cond_1
    const/16 v1, 0x8

    .line 92
    .line 93
    new-array v1, v1, [B

    .line 94
    .line 95
    new-instance v2, Ljava/security/SecureRandom;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 101
    .line 102
    .line 103
    const/4 v2, 0x0

    .line 104
    invoke-static {v1, v2}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {p2, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(ILjava/lang/String;)Ljava/io/File;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_2

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-nez v2, :cond_2

    .line 123
    .line 124
    const-string p1, "InstantAppRegistry"

    .line 125
    .line 126
    const-string p2, "Cannot create instant app cookie directory"

    .line 127
    .line 128
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    monitor-exit p0

    .line 132
    :goto_0
    move-object p1, v1

    .line 133
    goto :goto_4

    .line 134
    :cond_2
    new-instance v2, Ljava/io/File;

    .line 135
    .line 136
    invoke-static {p2, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(ILjava/lang/String;)Ljava/io/File;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const-string p2, "android_id"

    .line 141
    .line 142
    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .line 144
    .line 145
    :try_start_3
    new-instance p1, Ljava/io/FileOutputStream;

    .line 146
    .line 147
    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    .line 149
    .line 150
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 155
    .line 156
    .line 157
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :catch_1
    move-exception p1

    .line 162
    goto :goto_2

    .line 163
    :catchall_1
    move-exception p2

    .line 164
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :catchall_2
    move-exception p1

    .line 169
    :try_start_7
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    :goto_1
    throw p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 173
    :goto_2
    :try_start_8
    const-string p2, "InstantAppRegistry"

    .line 174
    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .line 189
    .line 190
    :goto_3
    monitor-exit p0

    .line 191
    goto :goto_0

    .line 192
    :goto_4
    return-object p1

    .line 193
    :goto_5
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 194
    throw p1
.end method

.method public final getInstantAppCookie(Ljava/lang/String;I)[B
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const-string v2, "getInstantAppCookie"

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v1, v0

    .line 16
    move v4, p2

    .line 17
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-interface {v0, v1, p1}, Lcom/android/server/pm/Computer;->isCallerSameApp(ILjava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_5

    .line 37
    .line 38
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 46
    .line 47
    const-string v0, "Error reading cookie file: "

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v1

    .line 52
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Landroid/util/ArrayMap;

    .line 61
    .line 62
    if-eqz p0, :cond_2

    .line 63
    .line 64
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 73
    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p0, [B

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move-object p0, v2

    .line 82
    :goto_0
    if-eqz p0, :cond_3

    .line 83
    .line 84
    monitor-exit v1

    .line 85
    move-object v2, p0

    .line 86
    goto :goto_1

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {p2, p0}, Lcom/android/server/pm/InstantAppRegistry;->peekInstantCookieFile(ILjava/lang/String;)Ljava/io/File;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    if-eqz p0, :cond_4

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 100
    .line 101
    .line 102
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    .line 110
    .line 111
    .line 112
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :try_start_2
    monitor-exit v1

    .line 114
    goto :goto_1

    .line 115
    :catch_0
    const-string p1, "InstantAppRegistry"

    .line 116
    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    :cond_4
    monitor-exit v1

    .line 133
    :goto_1
    return-object v2

    .line 134
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    throw p0

    .line 136
    :cond_5
    :goto_3
    return-object v2
.end method

.method public final getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-interface {v1, v0, p2}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v2, "android.permission.ACCESS_INSTANT_APPS"

    .line 22
    .line 23
    const-string v3, "getInstantAppIcon"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const-string v2, "getInstantAppIcon"

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x0

    .line 36
    move v4, p2

    .line 37
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 48
    .line 49
    invoke-static {p2, p1}, Lcom/android/server/pm/InstantAppRegistry;->getInstantApplicationDir(ILjava/lang/String;)Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p2, "icon.png"

    .line 54
    .line 55
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    monitor-exit p0

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    monitor-exit p0

    .line 77
    const/4 p1, 0x0

    .line 78
    :goto_0
    return-object p1

    .line 79
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p1
.end method

.method public final getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-interface {p0, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/Computer;->getInstantAppInstallerComponent()Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final getInstantAppResolverComponent()Landroid/content/ComponentName;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerService;->getInstantAppResolver(Lcom/android/server/pm/Computer;)Landroid/content/ComponentName;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mInstantAppResolverSettingsComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInstantApps(I)Landroid/content/pm/ParceledListSlice;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {v0, v1, p1}, Lcom/android/server/pm/Computer;->canViewInstantApps(II)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-string v2, "android.permission.ACCESS_INSTANT_APPS"

    .line 22
    .line 23
    const-string v3, "getEphemeralApplications"

    .line 24
    .line 25
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const-string v2, "getEphemeralApplications"

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    const/4 v6, 0x0

    .line 36
    move-object v1, v0

    .line 37
    move v4, p1

    .line 38
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    move-object v5, v2

    .line 59
    move v4, v3

    .line 60
    :goto_0
    if-ge v4, v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 67
    .line 68
    if-eqz v6, :cond_4

    .line 69
    .line 70
    invoke-interface {v6, p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-nez v7, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/4 v7, 0x1

    .line 82
    invoke-virtual {p0, v6, p1, v7}, Lcom/android/server/pm/InstantAppRegistry;->createInstantAppInfoForPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IZ)Landroid/content/pm/InstantAppInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    if-nez v6, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    if-nez v5, :cond_3

    .line 90
    .line 91
    new-instance v5, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 103
    .line 104
    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 106
    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    iget-object v1, v1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    .line 110
    .line 111
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Ljava/util/List;

    .line 116
    .line 117
    if-eqz v1, :cond_7

    .line 118
    .line 119
    monitor-exit v0

    .line 120
    goto :goto_4

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto/16 :goto_8

    .line 123
    .line 124
    :cond_6
    move-object v1, v2

    .line 125
    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    new-instance v0, Ljava/io/File;

    .line 127
    .line 128
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    const-string v6, "instant"

    .line 133
    .line 134
    invoke-direct {v0, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_b

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_b

    .line 148
    .line 149
    array-length v4, v0

    .line 150
    move v6, v3

    .line 151
    :goto_2
    if-ge v6, v4, :cond_b

    .line 152
    .line 153
    aget-object v7, v0, v6

    .line 154
    .line 155
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-nez v8, :cond_8

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_8
    new-instance v8, Ljava/io/File;

    .line 163
    .line 164
    const-string/jumbo v9, "metadata.xml"

    .line 165
    .line 166
    .line 167
    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v8}, Lcom/android/server/pm/InstantAppRegistry;->parseMetadataFile(Ljava/io/File;)Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    if-nez v7, :cond_9

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_9
    if-nez v1, :cond_a

    .line 178
    .line 179
    new-instance v1, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .line 183
    .line 184
    :cond_a
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_b
    iget-object v4, p0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 191
    .line 192
    monitor-enter v4

    .line 193
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry;->mUninstalledInstantApps:Lcom/android/server/utils/WatchedSparseArray;

    .line 194
    .line 195
    invoke-virtual {p0, p1, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    :goto_4
    if-eqz v1, :cond_e

    .line 200
    .line 201
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    if-eqz p0, :cond_c

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 209
    .line 210
    .line 211
    move-result p0

    .line 212
    move-object p1, v2

    .line 213
    :goto_5
    if-ge v3, p0, :cond_f

    .line 214
    .line 215
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    check-cast v0, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .line 220
    .line 221
    if-nez p1, :cond_d

    .line 222
    .line 223
    new-instance p1, Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .line 227
    .line 228
    :cond_d
    iget-object v0, v0, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;->mInstantAppInfo:Landroid/content/pm/InstantAppInfo;

    .line 229
    .line 230
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    add-int/lit8 v3, v3, 0x1

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_e
    :goto_6
    move-object p1, v2

    .line 237
    :cond_f
    if-eqz v5, :cond_10

    .line 238
    .line 239
    if-eqz p1, :cond_11

    .line 240
    .line 241
    invoke-interface {v5, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_10
    move-object v5, p1

    .line 246
    :cond_11
    :goto_7
    if-eqz v5, :cond_12

    .line 247
    .line 248
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 249
    .line 250
    invoke-direct {p0, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 251
    .line 252
    .line 253
    return-object p0

    .line 254
    :cond_12
    return-object v2

    .line 255
    :catchall_1
    move-exception p0

    .line 256
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 257
    throw p0

    .line 258
    :goto_8
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    throw p0
.end method

.method public final getInstrumentationInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/InstrumentationInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->getInstrumentationInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/InstrumentationInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getIntentFilterVerifications(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 1
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getIntentVerificationStatus(Ljava/lang/String;I)I
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mEnforcer:Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;

    .line 24
    .line 25
    if-eq v1, p2, :cond_0

    .line 26
    .line 27
    iget-object v3, v2, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const-string v5, "Caller is not allowed to edit other users"

    .line 34
    .line 35
    const-string v6, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 36
    .line 37
    invoke-virtual {v3, v6, v4, v0, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v3, v2, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    .line 41
    .line 42
    iget-object v3, v3, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const-string v4, " does not exist"

    .line 49
    .line 50
    const-string v5, "User "

    .line 51
    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    iget-object v1, v2, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/android/server/pm/DomainVerificationConnection;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 57
    .line 58
    invoke-virtual {v1, p2}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object v1, v2, Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer;->mCallback:Lcom/android/server/pm/DomainVerificationConnection;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/4 v2, 0x1

    .line 73
    invoke-interface {v1, v0, p2, p1, v2}, Lcom/android/server/pm/Computer;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    xor-int/2addr v0, v2

    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLegacySettings:Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;

    .line 83
    .line 84
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getUserState(ILjava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    :goto_0
    return p0

    .line 89
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 90
    .line 91
    invoke-static {p2, v5, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 100
    .line 101
    invoke-static {v1, v5, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0
.end method

.method public final getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .locals 22

    .line 1
    move-object/from16 v12, p1

    .line 2
    .line 3
    move-object/from16 v0, p0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 10
    .line 11
    .line 12
    move-result-object v14

    .line 13
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-interface {v14, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v15, 0x0

    .line 27
    goto/16 :goto_6

    .line 28
    .line 29
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 30
    .line 31
    .line 32
    move-result v16

    .line 33
    move/from16 v0, p3

    .line 34
    .line 35
    int-to-long v10, v0

    .line 36
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/16 v1, 0x403

    .line 43
    .line 44
    if-ne v0, v1, :cond_6

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, " getLastChosenActivity NFC "

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v9, "PersonaServiceHelper"

    .line 61
    .line 62
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    const-string v0, "com.samsung.sec.knox.EXTRA_KNOX_ARRAY"

    .line 66
    .line 67
    invoke-virtual {v12, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v17

    .line 77
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object v8, v0

    .line 88
    check-cast v8, Ljava/lang/Integer;

    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, "getLastChosenActivity NFC for "

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    move-object/from16 v2, p1

    .line 116
    .line 117
    move-object/from16 v3, p2

    .line 118
    .line 119
    move-wide v4, v10

    .line 120
    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    move-object v6, v0

    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    const/4 v6, 0x0

    .line 135
    :goto_1
    if-nez v6, :cond_1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    const/16 v2, 0x2710

    .line 151
    .line 152
    if-lt v1, v2, :cond_2

    .line 153
    .line 154
    const/4 v1, 0x1

    .line 155
    :goto_2
    move/from16 v18, v1

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_2
    const/4 v1, 0x0

    .line 159
    goto :goto_2

    .line 160
    :goto_3
    const/4 v7, 0x0

    .line 161
    const/16 v19, 0x0

    .line 162
    .line 163
    const/16 v20, 0x0

    .line 164
    .line 165
    move-object v1, v13

    .line 166
    move-object/from16 v2, p1

    .line 167
    .line 168
    move-object/from16 v3, p2

    .line 169
    .line 170
    move-wide v4, v10

    .line 171
    move-object v15, v8

    .line 172
    move/from16 v8, v19

    .line 173
    .line 174
    move-object/from16 v21, v9

    .line 175
    .line 176
    move/from16 v9, v20

    .line 177
    .line 178
    move-wide/from16 v19, v10

    .line 179
    .line 180
    move v10, v0

    .line 181
    move/from16 v11, v18

    .line 182
    .line 183
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string/jumbo v2, "pms.getLastChosenActivity "

    .line 190
    .line 191
    .line 192
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v2, " for "

    .line 199
    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    move-object/from16 v2, v21

    .line 211
    .line 212
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    if-eqz v0, :cond_3

    .line 216
    .line 217
    new-instance v1, Landroid/util/Pair;

    .line 218
    .line 219
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 220
    .line 221
    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_3
    move-object v9, v2

    .line 226
    move-wide/from16 v10, v19

    .line 227
    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :cond_4
    move-object v2, v9

    .line 231
    move-wide/from16 v19, v10

    .line 232
    .line 233
    const-string v0, "getLastChosenActivity NFC return null as no user has one"

    .line 234
    .line 235
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    new-instance v1, Landroid/util/Pair;

    .line 239
    .line 240
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 241
    .line 242
    const/4 v3, 0x0

    .line 243
    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_5
    move-object v2, v9

    .line 248
    move-wide/from16 v19, v10

    .line 249
    .line 250
    const/4 v3, 0x0

    .line 251
    const-string v0, "getLastChosenActivity NFC null integer array"

    .line 252
    .line 253
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_6
    move-wide/from16 v19, v10

    .line 258
    .line 259
    const/4 v3, 0x0

    .line 260
    :goto_4
    new-instance v1, Landroid/util/Pair;

    .line 261
    .line 262
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 263
    .line 264
    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    :goto_5
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v0, Ljava/lang/Boolean;

    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_7

    .line 276
    .line 277
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 278
    .line 279
    move-object v15, v0

    .line 280
    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_7
    move-object v1, v14

    .line 284
    move-object/from16 v2, p1

    .line 285
    .line 286
    move-object/from16 v3, p2

    .line 287
    .line 288
    move-wide/from16 v4, v19

    .line 289
    .line 290
    move/from16 v6, v16

    .line 291
    .line 292
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    const/4 v7, 0x0

    .line 297
    const/4 v8, 0x0

    .line 298
    move-object v1, v13

    .line 299
    move/from16 v9, v16

    .line 300
    .line 301
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZI)Landroid/content/pm/ResolveInfo;

    .line 302
    .line 303
    .line 304
    move-result-object v15

    .line 305
    :goto_6
    return-object v15
.end method

.method public final getLaunchIntentSenderForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    .line 23
    .line 24
    move-result v14

    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 26
    .line 27
    .line 28
    move-result v15

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v9, 0x0

    .line 31
    const-string v5, "get launch intent sender for package"

    .line 32
    .line 33
    move-object v4, v1

    .line 34
    move v6, v14

    .line 35
    move/from16 v7, p4

    .line 36
    .line 37
    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 38
    .line 39
    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    move/from16 v13, p4

    .line 43
    .line 44
    invoke-interface {v1, v2, v4, v5, v13}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-static {v14, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    new-instance v12, Landroid/content/Intent;

    .line 55
    .line 56
    const-string v4, "android.intent.action.MAIN"

    .line 57
    .line 58
    invoke-direct {v12, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v11, "android.intent.category.INFO"

    .line 62
    .line 63
    invoke-virtual {v12, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    iget-object v3, v3, Lcom/android/server/pm/ResolveIntentHelper;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v12, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v16

    .line 79
    const/16 v17, 0x1

    .line 80
    .line 81
    const/16 v18, 0x0

    .line 82
    .line 83
    const-wide/16 v7, 0x0

    .line 84
    .line 85
    move-object v4, v1

    .line 86
    move-object v5, v12

    .line 87
    move-object/from16 v6, v16

    .line 88
    .line 89
    move v9, v14

    .line 90
    move v10, v15

    .line 91
    move-object/from16 v19, v11

    .line 92
    .line 93
    move/from16 v11, p4

    .line 94
    .line 95
    move-object/from16 v20, v12

    .line 96
    .line 97
    move/from16 v12, v17

    .line 98
    .line 99
    move/from16 v13, v18

    .line 100
    .line 101
    invoke-interface/range {v4 .. v13}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    if-eqz v4, :cond_0

    .line 106
    .line 107
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-gtz v5, :cond_1

    .line 112
    .line 113
    :cond_0
    move-object/from16 v4, v19

    .line 114
    .line 115
    move-object/from16 v13, v20

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    move-object/from16 v1, v20

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :goto_0
    invoke-virtual {v13, v4}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string v4, "android.intent.category.LAUNCHER"

    .line 125
    .line 126
    invoke-virtual {v13, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v13, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v16

    .line 136
    const/4 v12, 0x1

    .line 137
    const/4 v0, 0x0

    .line 138
    const-wide/16 v7, 0x0

    .line 139
    .line 140
    move-object v4, v1

    .line 141
    move-object v5, v13

    .line 142
    move-object/from16 v6, v16

    .line 143
    .line 144
    move v9, v14

    .line 145
    move v10, v15

    .line 146
    move/from16 v11, p4

    .line 147
    .line 148
    move-object v1, v13

    .line 149
    move v13, v0

    .line 150
    invoke-interface/range {v4 .. v13}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    :goto_1
    new-instance v0, Landroid/content/Intent;

    .line 155
    .line 156
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 157
    .line 158
    .line 159
    const/high16 v1, 0x10000000

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    const/4 v1, 0x0

    .line 165
    const/4 v3, 0x0

    .line 166
    if-eqz v4, :cond_2

    .line 167
    .line 168
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-nez v5, :cond_2

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 182
    .line 183
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 184
    .line 185
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 186
    .line 187
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 192
    .line 193
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 194
    .line 195
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    .line 199
    .line 200
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    const/4 v5, 0x1

    .line 205
    new-array v7, v5, [Landroid/content/Intent;

    .line 206
    .line 207
    aput-object v0, v7, v3

    .line 208
    .line 209
    if-eqz v16, :cond_3

    .line 210
    .line 211
    new-array v0, v5, [Ljava/lang/String;

    .line 212
    .line 213
    aput-object v16, v0, v3

    .line 214
    .line 215
    move-object v8, v0

    .line 216
    goto :goto_2

    .line 217
    :cond_3
    move-object v8, v1

    .line 218
    :goto_2
    const/high16 v9, 0x4000000

    .line 219
    .line 220
    const/4 v10, 0x0

    .line 221
    const/4 v1, 0x2

    .line 222
    const/4 v5, 0x0

    .line 223
    const/4 v6, 0x0

    .line 224
    const/4 v11, 0x1

    .line 225
    move-object v0, v4

    .line 226
    move-object/from16 v2, p2

    .line 227
    .line 228
    move-object/from16 v3, p3

    .line 229
    .line 230
    move-object v4, v5

    .line 231
    move-object v5, v6

    .line 232
    move v6, v11

    .line 233
    move/from16 v11, p4

    .line 234
    .line 235
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    new-instance v1, Landroid/content/IntentSender;

    .line 240
    .line 241
    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 242
    .line 243
    .line 244
    return-object v1

    .line 245
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    .line 246
    .line 247
    const-string v1, "getLaunchIntentSenderForPackage() from calling uid: "

    .line 248
    .line 249
    const-string v3, " does not own package: "

    .line 250
    .line 251
    invoke-static {v14, v1, v3, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v0
.end method

.method public final getMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 6
    .line 7
    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    if-eqz p1, :cond_5

    .line 16
    .line 17
    if-eqz p2, :cond_5

    .line 18
    .line 19
    if-nez p4, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const-string v3, "get application info"

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    move-object v2, p0

    .line 37
    move v5, p3

    .line 38
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 52
    .line 53
    if-eqz v2, :cond_5

    .line 54
    .line 55
    invoke-interface {p0, p1, v0, p3}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object p0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 63
    .line 64
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getMetaData()Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-nez p0, :cond_3

    .line 69
    .line 70
    return v1

    .line 71
    :cond_3
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    const-string p2, "com.samsung.android.icon_container.feature_appicon"

    .line 76
    .line 77
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-eqz p0, :cond_4

    .line 82
    .line 83
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const-string p2, "\\|"

    .line 88
    .line 89
    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    :goto_0
    array-length p2, p0

    .line 94
    if-ge v1, p2, :cond_4

    .line 95
    .line 96
    aget-object p2, p0, v1

    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_4
    return p1

    .line 109
    :cond_5
    :goto_1
    return v1
.end method

.method public final getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1, v2}, Lcom/android/server/pm/PackageManagerService;->enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getMimeGroups()Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/util/Set;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p0, 0x0

    .line 49
    :goto_0
    if-eqz p0, :cond_2

    .line 50
    .line 51
    new-instance p1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 54
    .line 55
    .line 56
    move-object p0, p1

    .line 57
    :goto_1
    return-object p0

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string v0, "Unknown MIME group "

    .line 61
    .line 62
    const-string v1, " for package "

    .line 63
    .line 64
    invoke-static {v0, p2, v1, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public final getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mModuleInfoProvider:Lcom/android/server/pm/ModuleInfoProvider;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ModuleInfoProvider;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getMoveStatus(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getMoveStatus_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final getNameForUid(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getNameForUid(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getNamesForUids([I)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getNamesForUids([I)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getPackageGids(Ljava/lang/String;JI)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getPackageGids(Ljava/lang/String;JI)[I

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x3e8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 13
    .line 14
    const-string p1, "getPackageGrantedPermissionsForMDM can only be called by the system"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 27
    .line 28
    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getPackageInfoVersioned(Landroid/content/pm/VersionedPackage;JI)Landroid/content/pm/PackageInfo;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    move v2, p4

    .line 20
    move-wide v6, p2

    .line 21
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/Computer;->getPackageInfoInternal(IILjava/lang/String;JJ)Landroid/content/pm/PackageInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final getPackageInstaller()Landroid/content/pm/IPackageInstaller;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string p0, "PackageManager"

    .line 33
    .line 34
    const-string v0, "Returning null PackageInstaller for InstantApps"

    .line 35
    .line 36
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 42
    .line 43
    return-object p0
.end method

.method public final getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/16 v3, 0x3e8

    .line 13
    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    const/16 v3, 0x1482

    .line 17
    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 22
    .line 23
    const-string p1, "getPackageListForDualDarPolicy can only be called by the system or knoxcore"

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 50
    .line 51
    const/4 v5, -0x1

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    sparse-switch v6, :sswitch_data_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :sswitch_0
    const-string/jumbo v6, "pkg_clearable_system"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const/4 v5, 0x3

    .line 71
    goto :goto_1

    .line 72
    :sswitch_1
    const-string/jumbo v6, "pkg_sys"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const/4 v5, 0x2

    .line 83
    goto :goto_1

    .line 84
    :sswitch_2
    const-string/jumbo v6, "pkg_not_clearable_system"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    move v5, v1

    .line 95
    goto :goto_1

    .line 96
    :sswitch_3
    const-string/jumbo v6, "pkg_not_system"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_5

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    move v5, v0

    .line 107
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 108
    .line 109
    .line 110
    goto/16 :goto_8

    .line 111
    .line 112
    :goto_2
    :pswitch_0
    if-ge v0, v4, :cond_c

    .line 113
    .line 114
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 119
    .line 120
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    if-eqz v5, :cond_7

    .line 125
    .line 126
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    if-eqz v5, :cond_7

    .line 131
    .line 132
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_7

    .line 137
    .line 138
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    iget-object v6, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 143
    .line 144
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    check-cast v5, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 149
    .line 150
    if-nez v5, :cond_6

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_6
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->isClearUserDataAllowed()Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_7

    .line 158
    .line 159
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    :cond_7
    :goto_3
    add-int/2addr v0, v1

    .line 167
    goto :goto_2

    .line 168
    :goto_4
    :pswitch_1
    if-ge v0, v4, :cond_c

    .line 169
    .line 170
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    check-cast p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 175
    .line 176
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    if-eqz p1, :cond_8

    .line 181
    .line 182
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    if-eqz p1, :cond_8

    .line 187
    .line 188
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_8

    .line 193
    .line 194
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :cond_8
    add-int/2addr v0, v1

    .line 202
    goto :goto_4

    .line 203
    :goto_5
    :pswitch_2
    if-ge v0, v4, :cond_c

    .line 204
    .line 205
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 210
    .line 211
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    if-eqz v5, :cond_a

    .line 216
    .line 217
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    if-eqz v5, :cond_a

    .line 222
    .line 223
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-eqz v5, :cond_a

    .line 228
    .line 229
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    iget-object v6, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 234
    .line 235
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    check-cast v5, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 240
    .line 241
    if-nez v5, :cond_9

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_9
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->isClearUserDataAllowed()Z

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-nez v5, :cond_a

    .line 249
    .line 250
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    :cond_a
    :goto_6
    add-int/2addr v0, v1

    .line 258
    goto :goto_5

    .line 259
    :goto_7
    :pswitch_3
    if-ge v0, v4, :cond_c

    .line 260
    .line 261
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    check-cast p0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 266
    .line 267
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    if-eqz p1, :cond_b

    .line 272
    .line 273
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    if-eqz p1, :cond_b

    .line 278
    .line 279
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    if-nez p1, :cond_b

    .line 284
    .line 285
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    :cond_b
    add-int/2addr v0, v1

    .line 293
    goto :goto_7

    .line 294
    :cond_c
    :goto_8
    return-object v3

    .line 295
    :sswitch_data_0
    .sparse-switch
        -0x650cb292 -> :sswitch_3
        -0x49349f3a -> :sswitch_2
        -0x1ed72626 -> :sswitch_1
        0x44024a5a -> :sswitch_0
    .end sparse-switch

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "Shame on you for calling the hidden API getPackageSizeInfo(). Shame!"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final getPackageUid(Ljava/lang/String;JI)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getPackagesForUid(I)[Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "getPackagesForUid"

    .line 16
    .line 17
    invoke-interface {v2, v0, v1, v3}, Lcom/android/server/pm/Computer;->enforceCrossUserOrProfilePermission(IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public final getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getPermissionControllerPackageName()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16
    .line 17
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v2, v0, v1, v3}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "PermissionController is not found"

    .line 33
    .line 34
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-class v0, Landroid/permission/PermissionManager;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/permission/PermissionManager;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/permission/PermissionManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final getPersistentApplications(I)Landroid/content/pm/ParceledListSlice;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 25
    .line 26
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    .line 27
    .line 28
    invoke-interface {v0, p1, p0}, Lcom/android/server/pm/Computer;->getPersistentApplications(IZ)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method

.method public final getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    move v2, v1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ge v2, v3, :cond_0

    .line 24
    .line 25
    new-instance v3, Lcom/android/server/pm/WatchedIntentFilter;

    .line 26
    .line 27
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Landroid/content/IntentFilter;

    .line 32
    .line 33
    invoke-direct {v3, v4}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-interface {p0, v2}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-interface {p0, v3}, Lcom/android/server/pm/Computer;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-eqz v4, :cond_6

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/android/server/IntentResolver;->filterIterator()Lcom/android/server/IntentResolver$IteratorWrapper;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    :cond_2
    :goto_1
    iget-object v5, v4, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    .line 69
    .line 70
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_6

    .line 75
    .line 76
    invoke-virtual {v4}, Lcom/android/server/IntentResolver$IteratorWrapper;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Lcom/android/server/pm/PreferredActivity;

    .line 81
    .line 82
    if-nez v5, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iget-object v6, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 86
    .line 87
    iget-object v7, v6, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 88
    .line 89
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    if-eqz p3, :cond_4

    .line 94
    .line 95
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_2

    .line 100
    .line 101
    iget-boolean v8, v6, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 102
    .line 103
    if-eqz v8, :cond_2

    .line 104
    .line 105
    :cond_4
    invoke-interface {p0, v7}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-interface {p0, v7, v2, v3}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-eqz v7, :cond_5

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    new-instance v7, Lcom/android/server/pm/WatchedIntentFilter;

    .line 117
    .line 118
    iget-object v5, v5, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 119
    .line 120
    invoke-direct {v7, v5}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    if-eqz p2, :cond_2

    .line 127
    .line 128
    iget-object v5, v6, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 129
    .line 130
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_6
    const-string p0, "application_policy"

    .line 135
    .line 136
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {p0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 145
    .line 146
    .line 147
    move-result-wide v4

    .line 148
    if-eqz p0, :cond_9

    .line 149
    .line 150
    :try_start_0
    invoke-interface {p0, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllDefaultApplicationsInternal(I)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_9

    .line 163
    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, Lcom/samsung/android/knox/application/DefaultAppConfiguration;

    .line 169
    .line 170
    if-eqz p3, :cond_8

    .line 171
    .line 172
    invoke-virtual {v3}, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->getComponentName()Landroid/content/ComponentName;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_7

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :catchall_0
    move-exception p0

    .line 188
    goto :goto_4

    .line 189
    :cond_8
    :goto_3
    new-instance v6, Lcom/android/server/pm/WatchedIntentFilter;

    .line 190
    .line 191
    invoke-virtual {v3}, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->getTaskType()Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-interface {p0, v7}, Lcom/samsung/android/knox/application/IApplicationPolicy;->createIntentFilter(Landroid/content/Intent;)Landroid/content/IntentFilter;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-direct {v6, v7}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    if-eqz p2, :cond_7

    .line 206
    .line 207
    invoke-virtual {v3}, Lcom/samsung/android/knox/application/DefaultAppConfiguration;->getComponentName()Landroid/content/ComponentName;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    .line 217
    .line 218
    throw p0

    .line 219
    :catch_0
    :cond_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    .line 221
    .line 222
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 223
    .line 224
    .line 225
    move p0, v1

    .line 226
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    if-ge p0, p2, :cond_a

    .line 231
    .line 232
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    check-cast p2, Lcom/android/server/pm/WatchedIntentFilter;

    .line 237
    .line 238
    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter$3()Landroid/content/IntentFilter;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    add-int/lit8 p0, p0, 0x1

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_a
    return v1
.end method

.method public final getPreferredActivityBackup(I)[B
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x3e8

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v2, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-interface {v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v3, "pa"

    .line 39
    .line 40
    .line 41
    invoke-interface {v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 45
    .line 46
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 47
    .line 48
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 49
    .line 50
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    invoke-virtual {p0, p1, v2, v4}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(ILcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 57
    .line 58
    .line 59
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    const-string/jumbo p0, "pa"

    .line 61
    .line 62
    .line 63
    invoke-interface {v2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    .line 65
    .line 66
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 67
    .line 68
    .line 69
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :try_start_4
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 80
    .line 81
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 82
    :catch_0
    :goto_0
    return-object v1

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 84
    .line 85
    const-string p1, "Only the system may call getPreferredActivityBackup()"

    .line 86
    .line 87
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public final getPrivateFlagsForUid(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPrivateFlagsForUid(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "getPropertyAsUser"

    .line 18
    .line 19
    invoke-interface {v1, v0, p4, v2}, Lcom/android/server/pm/Computer;->enforceCrossUserOrProfilePermission(IILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v0, p4, p2}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    const/4 v0, 0x0

    .line 27
    if-nez p4, :cond_0

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 31
    .line 32
    if-nez p3, :cond_4

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroid/util/ArrayMap;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object p0, v0

    .line 46
    :goto_0
    if-nez p0, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Ljava/util/List;

    .line 54
    .line 55
    if-nez p0, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/4 p1, 0x0

    .line 59
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    move-object v0, p0

    .line 64
    check-cast v0, Landroid/content/pm/PackageManager$Property;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    iget-object p4, p0, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    .line 68
    .line 69
    if-eqz p4, :cond_5

    .line 70
    .line 71
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/pm/PackageProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/content/pm/PackageManager$Property;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_5
    if-nez v0, :cond_6

    .line 76
    .line 77
    iget-object p4, p0, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    .line 78
    .line 79
    if-eqz p4, :cond_6

    .line 80
    .line 81
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/pm/PackageProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/content/pm/PackageManager$Property;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :cond_6
    if-nez v0, :cond_7

    .line 86
    .line 87
    iget-object p4, p0, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    .line 88
    .line 89
    if-eqz p4, :cond_7

    .line 90
    .line 91
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/pm/PackageProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/content/pm/PackageManager$Property;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :cond_7
    if-nez v0, :cond_8

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    .line 98
    .line 99
    if-eqz p0, :cond_8

    .line 100
    .line 101
    invoke-static {p1, p2, p3, p0}, Lcom/android/server/pm/PackageProperty;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/content/pm/PackageManager$Property;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    move-object v0, p0

    .line 106
    :cond_8
    :goto_1
    return-object v0
.end method

.method public final getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 22
    .line 23
    invoke-interface {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 29
    .line 30
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final getRotationResolverPackageName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    const v1, 0x104032e

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final getRuntimePermissionsVersion(I)I
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    const-string v1, "getRuntimePermissionVersion"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    monitor-exit v0

    .line 28
    return p0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final getSdkSandboxPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mRequiredSdkSandboxPackage:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getServicesSystemSharedLibraryPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mServicesExtensionPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSetupWizardPackageName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 15
    .line 16
    const-string v0, "Non-system caller"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Computer;->getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getSharedSystemSharedLibraryPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mSharedSystemSharedLibraryPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getSplashScreenTheme(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v6

    .line 11
    const-string v1, "getSplashScreenTheme"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v0, p0

    .line 16
    move v2, v6

    .line 17
    move v3, p2

    .line 18
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v6, p2, p1}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_0
    return-object p0
.end method

.method public final getSuspendedPackageAppExtras(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    invoke-interface {p0, p1, v1, v2, p2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ne v1, v0, :cond_0

    .line 18
    .line 19
    invoke-static {p2, v0, p0, p1}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedPackageAppExtras(IILcom/android/server/pm/Computer;Ljava/lang/String;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 25
    .line 26
    const-string p2, "Calling package "

    .line 27
    .line 28
    const-string v1, " does not belong to calling uid "

    .line 29
    .line 30
    invoke-static {v0, p2, p1, v1}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2, p1, p2}, Lcom/android/server/pm/Computer;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {p2, v1, v2, p1}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendingPackage(IILcom/android/server/pm/Computer;Ljava/lang/String;)Landroid/content/pm/UserPackage;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    :catch_0
    :cond_1
    return-object v0
.end method

.method public final getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    new-instance p0, Landroid/content/pm/FeatureInfo;

    .line 28
    .line 29
    invoke-direct {p0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "ro.opengles.version"

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, p0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 46
    .line 47
    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    return-object p0
.end method

.method public final getSystemCaptionsServicePackageName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    const v1, 0x1040334

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageFromComponentString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lcom/android/server/pm/Computer;->getSystemSharedLibraryNamesAndPaths()Landroid/util/ArrayMap;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    new-array v1, v0, [Ljava/lang/String;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    aput-object v3, v1, v2

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-object v1
.end method

.method public final getSystemSharedLibraryNamesAndPaths()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lcom/android/server/pm/Computer;->getSystemSharedLibraryNamesAndPaths()Landroid/util/ArrayMap;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getSystemTextClassifierPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackageName:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getTargetSdkVersion(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getTargetSdkVersion(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getUidForSharedUser(Ljava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getUidForSharedUser(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getUnknownSourcePackagesAsUser(JI)Landroid/content/pm/ParceledListSlice;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getUnknownSourceAppManager()Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 17
    .line 18
    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 51
    .line 52
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 53
    .line 54
    iget-object p3, v1, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter p3

    .line 57
    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    .line 58
    .line 59
    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-eqz p2, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p0

    .line 73
    :cond_2
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 74
    .line 75
    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    return-object p0
.end method

.method public final getUnsuspendablePackagesForUser([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 7

    .line 1
    const-string/jumbo v0, "packageNames cannot be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v1, "android.permission.SUSPEND_APPS"

    .line 12
    .line 13
    const-string v2, "getUnsuspendablePackagesForUser"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eq v1, p2, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-string v2, "Calling uid "

    .line 33
    .line 34
    const-string v3, " cannot query getUnsuspendablePackagesForUser for user "

    .line 35
    .line 36
    invoke-static {v0, p2, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 41
    .line 42
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v1, p0, p2, v0}, Lcom/android/server/pm/SuspendPackageHelper;->isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    const-string v3, "PackageManager"

    .line 58
    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    const-string p0, "Cannot suspend due to restrictions on user "

    .line 62
    .line 63
    invoke-static {p2, p0, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_1
    new-instance v2, Landroid/util/ArraySet;

    .line 68
    .line 69
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/4 v4, 0x0

    .line 77
    :goto_0
    array-length v5, p1

    .line 78
    if-ge v4, v5, :cond_4

    .line 79
    .line 80
    aget-boolean v5, v1, v4

    .line 81
    .line 82
    if-nez v5, :cond_2

    .line 83
    .line 84
    aget-object v5, p1, v4

    .line 85
    .line 86
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    aget-object v5, p1, v4

    .line 91
    .line 92
    invoke-interface {p0, v0, p2, v5}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    if-nez v5, :cond_3

    .line 97
    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v6, "Could not find package setting for package: "

    .line 101
    .line 102
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    aget-object v6, p1, v4

    .line 106
    .line 107
    invoke-static {v5, v6, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    aget-object v5, p1, v4

    .line 111
    .line 112
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    new-array p0, p0, [Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    move-object p1, p0

    .line 129
    check-cast p1, [Ljava/lang/String;

    .line 130
    .line 131
    :goto_2
    return-object p1
.end method

.method public final getUserMinAspectRatio(Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-interface {p0, v0, p2, p1}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getMinAspectRatio()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    :goto_0
    return p0
.end method

.method public final getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 7
    .line 8
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iput-object v2, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, p0, v2}, Lcom/android/server/pm/Settings;->writeLPr(Lcom/android/server/pm/Computer;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p0, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 38
    .line 39
    throw p0
.end method

.method public final getWellbeingPackageName()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v2, Landroid/app/role/RoleManager;

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/app/role/RoleManager;

    .line 14
    .line 15
    const-string v2, "android.app.role.SYSTEM_WELLBEING"

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/permission/PermissionManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/permission/PermissionManager;

    .line 10
    .line 11
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Landroid/permission/PermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final hasSigningCertificate(Ljava/lang/String;[BI)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final hasSystemFeature(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final hasSystemUidErrors()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final hasUidSigningCertificate(I[BI)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->hasUidSigningCertificate(I[BI)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final holdLock(Landroid/os/IBinder;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mTestUtilityService:Landroid/content/pm/TestUtilityService;

    .line 4
    .line 5
    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->verifyHoldLockToken(Landroid/os/IBinder;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 13
    .line 14
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 15
    .line 16
    monitor-enter p0

    .line 17
    int-to-long p1, p2

    .line 18
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 26
    .line 27
    throw p1
.end method

.method public final installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/InstallPackageHelper;->installExistingPackageAsUser(Ljava/lang/String;IIILandroid/content/IntentSender;)Landroid/util/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final isAppArchivable(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPackageArchiver:Lcom/android/server/pm/PackageArchiver;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v5, 0x1

    .line 31
    const/4 v6, 0x1

    .line 32
    const-string v2, "isAppArchivable"

    .line 33
    .line 34
    move-object v1, v7

    .line 35
    move v4, p2

    .line 36
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-static {v1, p2, v0, p1}, Lcom/android/server/pm/PackageArchiver;->getPackageState(IILcom/android/server/pm/Computer;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    move-object v1, v0

    .line 52
    check-cast v1, Lcom/android/server/pm/SettingBase;

    .line 53
    .line 54
    iget v1, v1, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 55
    .line 56
    and-int/lit8 v2, v1, 0x1

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    and-int/lit16 v1, v1, 0x80

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move-object v1, v0

    .line 67
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 68
    .line 69
    iget v1, v1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 70
    .line 71
    invoke-static {p2, v1}, Landroid/os/UserHandle;->getUid(II)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    new-instance v2, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageArchiver;ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    :try_start_1
    move-object v1, v0

    .line 94
    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 95
    .line 96
    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/android/server/pm/PackageArchiver;->getResponsibleInstallerPackage(Lcom/android/server/pm/InstallSource;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p0, v7, v1, p2}, Lcom/android/server/pm/PackageArchiver;->verifyInstaller(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/PackageArchiver;->getLauncherActivityInfos(ILjava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PackageArchiver;->isProtectivePackage(Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;I)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_2

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    const/4 v3, 0x1

    .line 116
    :catch_0
    :cond_3
    :goto_0
    return v3

    .line 117
    :catch_1
    move-exception p0

    .line 118
    new-instance p1, Landroid/os/ParcelableException;

    .line 119
    .line 120
    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw p1
.end method

.method public final isAutoRevokeWhitelisted(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 4
    .line 5
    const-class v0, Landroid/app/AppOpsManager;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 8
    .line 9
    invoke-interface {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/app/AppOpsManager;

    .line 14
    .line 15
    const/16 v0, 0x61

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const/4 p1, 0x1

    .line 26
    if-ne p0, p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method public final isDeviceUpgrading()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isFirstBoot()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 4
    .line 5
    return p0
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isInstantApp(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isPackageAutoDisabled(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 p2, 0x4

    .line 28
    if-ne p1, p2, :cond_0

    .line 29
    .line 30
    const-string p1, "auto_disabler"

    .line 31
    .line 32
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    :goto_0
    return p0
.end method

.method public final isPackageAvailable(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageAvailable(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isPackageDeviceAdminOnAnyUser(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdminOnAnyUser(Lcom/android/server/pm/Computer;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isPackageQuarantinedForUser(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageQuarantinedForUser(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p2, "Unknown target package: "

    .line 15
    .line 16
    invoke-static {p2, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isPackageStateProtected(Ljava/lang/String;I)Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object v8

    .line 15
    const-string v1, "isPackageStateProtected"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x1

    .line 19
    move-object v0, v8

    .line 20
    move v2, v6

    .line 21
    move v3, p2

    .line 22
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 23
    .line 24
    .line 25
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const-string v0, "android.permission.MANAGE_DEVICE_ADMINS"

    .line 32
    .line 33
    invoke-interface {v8, v0, v6}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 41
    .line 42
    const-string p1, "Caller must have the android.permission.MANAGE_DEVICE_ADMINS permission."

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 51
    .line 52
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0
.end method

.method public final isPackageStoppedForUser(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageStoppedForUser(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p2, "Unknown target package: "

    .line 15
    .line 16
    invoke-static {p2, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/Computer;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p2, "Unknown target package: "

    .line 15
    .line 16
    invoke-static {p2, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final isProtectedBroadcast(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string v0, "android.net.netmon.lingerExpired"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "com.android.server.sip.SipWakeupTimer"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "com.android.internal.telephony.data-reconnect"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string v0, "android.net.netmon.launchCaptivePortalApp"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    :cond_0
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 40
    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    monitor-exit v0

    .line 51
    return p0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final isSafeMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    .line 4
    .line 5
    return p0
.end method

.method public final isStorageLow()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 11
    .line 12
    const-class v2, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 15
    .line 16
    invoke-interface {p0, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$2;->isMemoryLow()Z

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    :goto_0
    return p0

    .line 39
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final isSystemCompressedPackage(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0, v0, p2, p1}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 v0, 0x0

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 29
    .line 30
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStub()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 38
    .line 39
    invoke-interface {p1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getLongVersionCode()J

    .line 40
    .line 41
    .line 42
    move-result-wide p1

    .line 43
    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 44
    .line 45
    invoke-interface {p0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getLongVersionCode()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    cmp-long p0, p1, v1

    .line 50
    .line 51
    if-nez p0, :cond_2

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    :cond_2
    :goto_0
    return v0
.end method

.method public final isUidPrivileged(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->isUidPrivileged(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isUnknownSourcePackage(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getUnknownSourceAppManager()Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/server/pm/install/UnknownSourceAppManager;->mUnknownSourceAppSet:Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    :cond_2
    return v1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p0
.end method

.method public final logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p5

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-interface {v2, v3}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 29
    .line 30
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService;->mProcessLoggingHandler:Lcom/android/server/pm/ProcessLoggingHandler;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 41
    .line 42
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v3, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string/jumbo v4, "startTimestamp"

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 58
    .line 59
    .line 60
    const-string/jumbo v4, "processName"

    .line 61
    .line 62
    .line 63
    move-object/from16 v5, p2

    .line 64
    .line 65
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string/jumbo v4, "uid"

    .line 69
    .line 70
    .line 71
    move/from16 v5, p3

    .line 72
    .line 73
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    const-string/jumbo v4, "seinfo"

    .line 77
    .line 78
    .line 79
    move-object/from16 v5, p4

    .line 80
    .line 81
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string/jumbo v4, "pid"

    .line 85
    .line 86
    .line 87
    move/from16 v5, p6

    .line 88
    .line 89
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    if-nez v1, :cond_2

    .line 93
    .line 94
    const-string v0, "No APK"

    .line 95
    .line 96
    new-instance v1, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    invoke-direct {v1, v12, v3, v0}, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ProcessLoggingHandler;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v12, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :cond_2
    iget-object v4, v12, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    .line 107
    .line 108
    monitor-enter v4

    .line 109
    :try_start_0
    iget-object v5, v12, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    .line 110
    .line 111
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    check-cast v5, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;

    .line 116
    .line 117
    if-nez v5, :cond_3

    .line 118
    .line 119
    const/4 v6, 0x1

    .line 120
    goto :goto_0

    .line 121
    :cond_3
    const/4 v6, 0x0

    .line 122
    :goto_0
    if-eqz v6, :cond_4

    .line 123
    .line 124
    new-instance v5, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;

    .line 125
    .line 126
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 127
    .line 128
    .line 129
    const/4 v7, 0x0

    .line 130
    iput-object v7, v5, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->apkHash:Ljava/lang/String;

    .line 131
    .line 132
    new-instance v7, Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v7, v5, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->pendingLogEntries:Ljava/util/List;

    .line 138
    .line 139
    iget-object v7, v12, Lcom/android/server/pm/ProcessLoggingHandler;->mLoggingInfo:Landroid/util/ArrayMap;

    .line 140
    .line 141
    invoke-virtual {v7, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    :cond_4
    move-object v13, v5

    .line 145
    goto :goto_1

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    goto :goto_4

    .line 148
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-enter v13

    .line 150
    :try_start_1
    iget-object v1, v13, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->apkHash:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_5

    .line 157
    .line 158
    iget-object v0, v13, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->apkHash:Ljava/lang/String;

    .line 159
    .line 160
    new-instance v1, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    invoke-direct {v1, v12, v3, v0}, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ProcessLoggingHandler;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v12, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    .line 167
    .line 168
    monitor-exit v13

    .line 169
    goto :goto_2

    .line 170
    :catchall_1
    move-exception v0

    .line 171
    goto :goto_3

    .line 172
    :cond_5
    iget-object v1, v13, Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;->pendingLogEntries:Ljava/util/List;

    .line 173
    .line 174
    check-cast v1, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 180
    if-nez v6, :cond_6

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    :try_start_2
    new-instance v8, Lcom/android/server/pm/ProcessLoggingHandler$1;

    .line 184
    .line 185
    invoke-direct {v8, v12, v13}, Lcom/android/server/pm/ProcessLoggingHandler$1;-><init>(Lcom/android/server/pm/ProcessLoggingHandler;Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    iget-object v10, v12, Lcom/android/server/pm/ProcessLoggingHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 193
    .line 194
    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 195
    .line 196
    iget-object v1, v2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    const/4 v4, 0x0

    .line 203
    const/4 v5, 0x0

    .line 204
    const/16 v6, 0x8

    .line 205
    .line 206
    const/4 v7, 0x0

    .line 207
    move-object v3, p1

    .line 208
    move-object v11, v12

    .line 209
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/PackageManagerService;->requestChecksumsInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :catchall_2
    move-exception v0

    .line 214
    const-string v1, "ProcessLoggingHandler"

    .line 215
    .line 216
    const-string/jumbo v2, "requestChecksums() failed"

    .line 217
    .line 218
    .line 219
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    .line 221
    .line 222
    new-instance v0, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda1;

    .line 223
    .line 224
    invoke-direct {v0, v12, v13}, Lcom/android/server/pm/ProcessLoggingHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ProcessLoggingHandler;Lcom/android/server/pm/ProcessLoggingHandler$LoggingInfo;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    .line 229
    .line 230
    :goto_2
    return-void

    .line 231
    :goto_3
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 232
    throw v0

    .line 233
    :goto_4
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 234
    throw v0
.end method

.method public final makeProviderVisible(ILjava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-interface {v2, p1, p2}, Lcom/android/server/pm/Computer;->getGrantImplicitAccessProviderInfo(ILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 19
    .line 20
    iget v6, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/PackageManagerService;->grantImplicitAccess(Lcom/android/server/pm/Computer;ILandroid/content/Intent;IIZZ)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final makeUidVisible(II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->makeUidVisible_enforcePermission()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v7

    .line 10
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 11
    .line 12
    .line 13
    move-result v10

    .line 14
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 15
    .line 16
    .line 17
    move-result v8

    .line 18
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    const-string/jumbo v2, "makeUidVisible"

    .line 25
    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v1, v9

    .line 30
    move v3, v7

    .line 31
    move v4, v10

    .line 32
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v2, "makeUidVisible"

    .line 36
    .line 37
    .line 38
    move v4, v8

    .line 39
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo v2, "makeUidVisible"

    .line 43
    .line 44
    .line 45
    move/from16 v3, p1

    .line 46
    .line 47
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 48
    .line 49
    .line 50
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 51
    .line 52
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 53
    .line 54
    .line 55
    move-result v12

    .line 56
    const/4 v15, 0x0

    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v14, 0x0

    .line 59
    move/from16 v13, p2

    .line 60
    .line 61
    invoke-virtual/range {v8 .. v15}, Lcom/android/server/pm/PackageManagerService;->grantImplicitAccess(Lcom/android/server/pm/Computer;ILandroid/content/Intent;IIZZ)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final movePackage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->movePackage_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string v0, "START MOVE PACKAGE: pkg{"

    .line 5
    .line 6
    const-string/jumbo v1, "}\nvolumeUuid{"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v2, "}\n"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "PackageManager"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    new-instance v8, Landroid/os/UserHandle;

    .line 26
    .line 27
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    new-instance v9, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda6;

    .line 47
    .line 48
    move-object v2, v9

    .line 49
    move-object v3, p0

    .line 50
    move-object v4, p1

    .line 51
    move-object v5, p2

    .line 52
    move v6, v0

    .line 53
    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return v0
.end method

.method public final movePackageToSd(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/IMemorySaverPackageMoveObserver;)I
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->movePackageToSd_enforcePermission()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/pm/MovePackageHelper;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/android/server/pm/MovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 9
    .line 10
    .line 11
    const-string v1, " remote exception on observer "

    .line 12
    .line 13
    sget-object v2, Lcom/android/server/pm/MovePackageHelper;->sMoveIdMapForSd:Ljava/util/Map;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    sget-boolean v3, Lcom/android/server/pm/AsecInstallHelper;->sPreMounted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const/4 p0, -0x6

    .line 21
    const-wide/16 p1, -0x1

    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    :try_start_1
    invoke-interface {p3, v0, p0, p1, p2}, Landroid/content/pm/IMemorySaverPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception p0

    .line 31
    :try_start_2
    const-string p1, "PackageManager"

    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :goto_0
    sget-object p0, Lcom/android/server/pm/MovePackageHelper;->sMoveIdMapForSd:Ljava/util/Map;

    .line 49
    .line 50
    check-cast p0, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 53
    .line 54
    .line 55
    sget-object p0, Lcom/android/server/pm/MovePackageHelper;->sPendingMoves:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 58
    .line 59
    .line 60
    monitor-exit v2

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    new-instance v6, Landroid/os/UserHandle;

    .line 67
    .line 68
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz p3, :cond_1

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    move-object v5, v2

    .line 88
    check-cast v5, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {v5, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_1
    new-instance p3, Lcom/android/server/pm/MovePackageHelper$SdcardParams;

    .line 94
    .line 95
    move-object v3, p3

    .line 96
    move v5, v1

    .line 97
    move-object v7, p1

    .line 98
    move-object v8, p2

    .line 99
    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/MovePackageHelper$SdcardParams;-><init>(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lcom/android/server/pm/MovePackageHelper;->sPendingMoves:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    const/4 p2, 0x1

    .line 116
    if-ne p1, p2, :cond_2

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 119
    .line 120
    new-instance p1, Lcom/android/server/pm/MovePackageHelper$2;

    .line 121
    .line 122
    invoke-direct {p1, v0, p3}, Lcom/android/server/pm/MovePackageHelper$2;-><init>(Lcom/android/server/pm/MovePackageHelper;Lcom/android/server/pm/MovePackageHelper$SdcardParams;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    .line 127
    .line 128
    :cond_2
    monitor-exit v2

    .line 129
    move v0, v1

    .line 130
    :goto_1
    return v0

    .line 131
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    throw p0
.end method

.method public final movePrimaryStorage(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->movePrimaryStorage_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mNextMoveId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "android.os.storage.extra.FS_UUID"

    .line 13
    .line 14
    invoke-static {v1, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 21
    .line 22
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->notifyCreated(ILandroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;

    .line 26
    .line 27
    invoke-direct {v1, p0, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$2;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;I)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 33
    .line 34
    const-class v2, Landroid/os/storage/StorageManager;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 37
    .line 38
    invoke-interface {p0, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroid/os/storage/StorageManager;

    .line 43
    .line 44
    invoke-virtual {p0, p1, v1}, Landroid/os/storage/StorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 45
    .line 46
    .line 47
    return v0
.end method

.method public final notifyDexLoad(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "Invalid loaderIsa in notifyDexLoad call from "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    sget-boolean v3, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const-string v4, "PackageManager"

    .line 24
    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-interface {v2, v1, p1, v3}, Lcom/android/server/pm/Computer;->isCallerSameApp(ILjava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string p1, "Invalid dex load report. loadingPackageName=%s, uid=%d"

    .line 43
    .line 44
    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getDexUseManagerLocal()Lcom/android/server/art/DexUseManagerLocal;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-eqz v5, :cond_5

    .line 65
    .line 66
    const-class p0, Lcom/android/server/pm/PackageManagerLocal;

    .line 67
    .line 68
    invoke-static {p0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lcom/android/server/pm/PackageManagerLocal;

    .line 73
    .line 74
    invoke-interface {p0, v1, v3}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    if-eqz p3, :cond_3

    .line 79
    .line 80
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-nez v2, :cond_1

    .line 91
    .line 92
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    aget-object v2, v2, v3

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    goto :goto_2

    .line 100
    :cond_1
    :goto_0
    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    sget-object v3, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string/jumbo v6, "ro.dalvik.vm.isa."

    .line 109
    .line 110
    .line 111
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_2

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    move-object v2, v3

    .line 133
    :goto_1
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-nez v3, :cond_3

    .line 138
    .line 139
    new-instance p2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string p1, ", uid "

    .line 148
    .line 149
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string p1, ": expected "

    .line 156
    .line 157
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string p1, ", got "

    .line 164
    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {v4, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .line 177
    .line 178
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_3
    :try_start_1
    invoke-virtual {v5, p0, p1, p2}, Lcom/android/server/art/DexUseManagerLocal;->notifyDexContainersLoaded(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .line 184
    .line 185
    if-eqz p0, :cond_7

    .line 186
    .line 187
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :goto_2
    if-eqz p0, :cond_4

    .line 192
    .line 193
    :try_start_2
    invoke-interface {p0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :catchall_1
    move-exception p0

    .line 198
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    :cond_4
    :goto_3
    throw p1

    .line 202
    :cond_5
    const-wide/16 v5, 0x0

    .line 203
    .line 204
    invoke-interface {v2, p1, v5, v6, v9}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    if-nez v0, :cond_6

    .line 209
    .line 210
    new-instance p0, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    const-string p2, "Loading a package that does not exist for the calling user. package="

    .line 213
    .line 214
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string p1, ", user="

    .line 221
    .line 222
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 237
    .line 238
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 239
    .line 240
    invoke-static {v1}, Landroid/os/Process;->isIsolated(I)Z

    .line 241
    .line 242
    .line 243
    move-result v10

    .line 244
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    move-object v6, v0

    .line 248
    move-object v7, p2

    .line 249
    move-object v8, p3

    .line 250
    :try_start_3
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/dex/DexManager;->notifyDexLoadInternal(Landroid/content/pm/ApplicationInfo;Ljava/util/Map;Ljava/lang/String;IZ)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :catch_0
    move-exception p0

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string p2, "Exception while notifying dex load for package "

    .line 258
    .line 259
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object p2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    const-string p2, "DexManager"

    .line 272
    .line 273
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    .line 275
    .line 276
    :cond_7
    :goto_4
    return-void
.end method

.method public final notifyPackageUse(Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    invoke-interface {v2, v0, p1}, Lcom/android/server/pm/Computer;->isCallerSameApp(ILjava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v0, 0x3e8

    .line 27
    .line 28
    invoke-interface {v2, v1, v0, p1}, Lcom/android/server/pm/Computer;->isInstantAppInternal(IILjava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    xor-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    :goto_0
    if-nez v0, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 38
    .line 39
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$mnotifyPackageUseInternal(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final notifyPackagesReplacedReceived([Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getNotifyPackagesForReplacedReceived([Ljava/lang/String;)Landroid/util/ArraySet;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 8
    .line 9
    check-cast v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    .line 12
    .line 13
    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/pm/PackageManagerShellCommand;-><init>(Landroid/content/pm/IPackageManager;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationShell;)V

    .line 14
    .line 15
    .line 16
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    move-object v3, p2

    .line 19
    move-object v4, p3

    .line 20
    move-object v5, p4

    .line 21
    move-object v6, p5

    .line 22
    move-object v7, p6

    .line 23
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    instance-of p1, p0, Ljava/lang/SecurityException;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    instance-of p1, p0, Landroid/os/ParcelableException;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const-string p1, "PackageManager"

    .line 20
    .line 21
    const-string p2, "Package Manager Unexpected Exception"

    .line 22
    .line 23
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :cond_0
    throw p0
.end method

.method public final overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;II)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->updateComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string p1, "Override label should be a valid String"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final performDexOptForADCP(Ljava/lang/String;Z)I
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x2

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p2, 0x0

    .line 6
    :goto_0
    or-int/lit8 v2, p2, 0x5

    .line 7
    .line 8
    const-string p2, "dex2oat"

    .line 9
    .line 10
    const-string v0, "For test new API"

    .line 11
    .line 12
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 18
    .line 19
    new-instance p2, Lcom/android/server/pm/dex/DexoptOptions;

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    const/16 v1, 0x17

    .line 23
    .line 24
    const-string/jumbo v4, "speed-profile"

    .line 25
    .line 26
    .line 27
    move-object v0, p2

    .line 28
    move-object v3, p1

    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-wide/16 p0, 0x4000

    .line 36
    .line 37
    const-string v0, "dexopt"

    .line 38
    .line 39
    invoke-static {p0, p1, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x4

    .line 43
    :try_start_0
    invoke-static {p2, v0}, Lcom/android/server/pm/DexOptHelper;->performDexOptWithArtService(Lcom/android/server/pm/dex/DexoptOptions;I)I

    .line 44
    .line 45
    .line 46
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {p0, p1}, Landroid/os/Trace;->traceEnd(J)V

    .line 48
    .line 49
    .line 50
    return p2

    .line 51
    :catchall_0
    move-exception p2

    .line 52
    invoke-static {p0, p1}, Landroid/os/Trace;->traceEnd(J)V

    .line 53
    .line 54
    .line 55
    throw p2
.end method

.method public final performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const-string p2, "PackageManager"

    .line 10
    .line 11
    const-string v1, "Ignored checkProfiles=false flag"

    .line 12
    .line 13
    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-boolean p2, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_2

    .line 32
    .line 33
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    iget-object p2, p2, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v0, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    iget-object p2, p2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 50
    .line 51
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-ne p2, v0, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 63
    .line 64
    const-string/jumbo p1, "performDexOptMode"

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 72
    if-eqz p4, :cond_3

    .line 73
    .line 74
    const/4 p4, 0x2

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move p4, p2

    .line 77
    :goto_1
    if-eqz p5, :cond_4

    .line 78
    .line 79
    const/4 p2, 0x4

    .line 80
    :cond_4
    or-int/2addr p2, p4

    .line 81
    invoke-static {p3}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p4

    .line 85
    if-eqz p4, :cond_5

    .line 86
    .line 87
    or-int/lit8 p2, p2, 0x1

    .line 88
    .line 89
    :cond_5
    move v2, p2

    .line 90
    new-instance p2, Lcom/android/server/pm/dex/DexoptOptions;

    .line 91
    .line 92
    const/16 v1, 0xc

    .line 93
    .line 94
    move-object v0, p2

    .line 95
    move-object v3, p1

    .line 96
    move-object v4, p3

    .line 97
    move-object v5, p6

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p2}, Lcom/android/server/pm/DexOptHelper;->performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    return p0
.end method

.method public final performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mDexOptHelper:Lcom/android/server/pm/DexOptHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    const/4 p3, 0x2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p3, 0x0

    .line 11
    :goto_0
    or-int/lit8 v2, p3, 0xd

    .line 12
    .line 13
    new-instance p3, Lcom/android/server/pm/dex/DexoptOptions;

    .line 14
    .line 15
    const/16 v1, 0xc

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    move-object v0, p3

    .line 19
    move-object v3, p1

    .line 20
    move-object v4, p2

    .line 21
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p3}, Lcom/android/server/pm/DexOptHelper;->performDexOpt(Lcom/android/server/pm/dex/DexoptOptions;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public final queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, p1

    .line 8
    move v2, p2

    .line 9
    move-wide v3, p3

    .line 10
    move-object v5, p5

    .line 11
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final queryInstrumentationAsUser(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/pm/Computer;->queryInstrumentationAsUser(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 9

    .line 1
    const-wide/32 v0, 0x40000

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string/jumbo v2, "queryIntentActivities"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    move-object v4, p1

    .line 17
    move-object v5, p2

    .line 18
    move-wide v6, p3

    .line 19
    move v8, p5

    .line 20
    invoke-interface/range {v3 .. v8}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p5}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-class p2, Lcom/samsung/android/knox/SemPersonaManager;

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 39
    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationPresent()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getUpdatedListWithAppSeparation(Ljava/util/List;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 56
    .line 57
    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v14, p8

    .line 6
    .line 7
    new-instance v15, Landroid/content/pm/ParceledListSlice;

    .line 8
    .line 9
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v2, v13, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 18
    .line 19
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 20
    .line 21
    invoke-virtual {v2, v14}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v1, v15

    .line 32
    goto/16 :goto_12

    .line 33
    .line 34
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    move-object v2, v0

    .line 39
    move-object/from16 v3, p4

    .line 40
    .line 41
    move-object/from16 v4, p5

    .line 42
    .line 43
    move-wide/from16 v5, p6

    .line 44
    .line 45
    move/from16 v7, p8

    .line 46
    .line 47
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;Ljava/lang/String;JI)Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const/4 v7, 0x0

    .line 52
    move/from16 v3, p8

    .line 53
    .line 54
    move v4, v9

    .line 55
    invoke-interface/range {v2 .. v8}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(IIJZZ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v11

    .line 59
    const/4 v6, 0x0

    .line 60
    const-string/jumbo v3, "query intent activity options"

    .line 61
    .line 62
    .line 63
    move/from16 v5, p8

    .line 64
    .line 65
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    const-wide/16 v16, 0x40

    .line 73
    .line 74
    or-long v5, v11, v16

    .line 75
    .line 76
    move-object/from16 v3, p4

    .line 77
    .line 78
    move-object/from16 v4, p5

    .line 79
    .line 80
    move/from16 v7, p8

    .line 81
    .line 82
    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    const/16 v18, 0x0

    .line 87
    .line 88
    const/4 v9, 0x0

    .line 89
    if-eqz v1, :cond_e

    .line 90
    .line 91
    move/from16 v6, v18

    .line 92
    .line 93
    move v7, v6

    .line 94
    :goto_0
    array-length v2, v1

    .line 95
    if-ge v6, v2, :cond_d

    .line 96
    .line 97
    aget-object v4, v1, v6

    .line 98
    .line 99
    if-nez v4, :cond_1

    .line 100
    .line 101
    move/from16 v20, v6

    .line 102
    .line 103
    move v1, v7

    .line 104
    move-object/from16 p0, v8

    .line 105
    .line 106
    move-object/from16 v26, v10

    .line 107
    .line 108
    move-wide v3, v11

    .line 109
    move-object/from16 v19, v15

    .line 110
    .line 111
    move-object v15, v13

    .line 112
    goto/16 :goto_3

    .line 113
    .line 114
    :cond_1
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-eqz v10, :cond_2

    .line 119
    .line 120
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_2

    .line 125
    .line 126
    move-object v5, v9

    .line 127
    goto :goto_1

    .line 128
    :cond_2
    move-object v5, v2

    .line 129
    :goto_1
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-nez v2, :cond_5

    .line 134
    .line 135
    if-eqz p3, :cond_3

    .line 136
    .line 137
    aget-object v2, p3, v6

    .line 138
    .line 139
    move-object/from16 v19, v2

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_3
    move-object/from16 v19, v9

    .line 143
    .line 144
    :goto_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 145
    .line 146
    .line 147
    move-result v20

    .line 148
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 149
    .line 150
    .line 151
    move-result v21

    .line 152
    const-wide/16 v22, 0x0

    .line 153
    .line 154
    const/16 v24, 0x0

    .line 155
    .line 156
    move-object v2, v13

    .line 157
    move-object v3, v0

    .line 158
    move-object/from16 v25, v5

    .line 159
    .line 160
    move-object/from16 v5, v19

    .line 161
    .line 162
    move v1, v7

    .line 163
    move-object/from16 v19, v15

    .line 164
    .line 165
    move v15, v6

    .line 166
    move-wide v6, v11

    .line 167
    move-object/from16 p0, v8

    .line 168
    .line 169
    move-wide/from16 v8, v22

    .line 170
    .line 171
    move-object/from16 v26, v10

    .line 172
    .line 173
    move/from16 v10, p8

    .line 174
    .line 175
    move-wide/from16 v27, v11

    .line 176
    .line 177
    move/from16 v11, v24

    .line 178
    .line 179
    move/from16 v12, v20

    .line 180
    .line 181
    move/from16 v20, v15

    .line 182
    .line 183
    move-object v15, v13

    .line 184
    move/from16 v13, v21

    .line 185
    .line 186
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    if-nez v9, :cond_4

    .line 191
    .line 192
    move-wide/from16 v3, v27

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_4
    iget-object v2, v15, Lcom/android/server/pm/ResolveIntentHelper;->mResolveInfoSupplier:Ljava/util/function/Supplier;

    .line 196
    .line 197
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 201
    .line 202
    new-instance v3, Landroid/content/ComponentName;

    .line 203
    .line 204
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 205
    .line 206
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 207
    .line 208
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 209
    .line 210
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    move-object v5, v3

    .line 214
    move-wide/from16 v3, v27

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_5
    move-object/from16 v25, v5

    .line 218
    .line 219
    move/from16 v20, v6

    .line 220
    .line 221
    move v1, v7

    .line 222
    move-object/from16 p0, v8

    .line 223
    .line 224
    move-object/from16 v26, v10

    .line 225
    .line 226
    move-wide v3, v11

    .line 227
    move-object/from16 v19, v15

    .line 228
    .line 229
    move-object v15, v13

    .line 230
    invoke-interface {v0, v2, v3, v4, v14}, Lcom/android/server/pm/Computer;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    if-nez v5, :cond_6

    .line 235
    .line 236
    :goto_3
    move-object/from16 v8, p0

    .line 237
    .line 238
    move v7, v1

    .line 239
    move/from16 v2, v20

    .line 240
    .line 241
    goto/16 :goto_8

    .line 242
    .line 243
    :cond_6
    const/4 v9, 0x0

    .line 244
    move-object/from16 v29, v5

    .line 245
    .line 246
    move-object v5, v2

    .line 247
    move-object/from16 v2, v29

    .line 248
    .line 249
    :goto_4
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    move v7, v1

    .line 254
    :goto_5
    if-ge v7, v6, :cond_b

    .line 255
    .line 256
    move-object/from16 v8, p0

    .line 257
    .line 258
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 263
    .line 264
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 265
    .line 266
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v12

    .line 272
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v11

    .line 276
    if-eqz v11, :cond_7

    .line 277
    .line 278
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 279
    .line 280
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 281
    .line 282
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v12

    .line 288
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v11

    .line 292
    if-nez v11, :cond_8

    .line 293
    .line 294
    :cond_7
    move-object/from16 v11, v25

    .line 295
    .line 296
    goto :goto_6

    .line 297
    :cond_8
    move-object/from16 v11, v25

    .line 298
    .line 299
    goto :goto_7

    .line 300
    :goto_6
    if-eqz v11, :cond_a

    .line 301
    .line 302
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 303
    .line 304
    invoke-virtual {v12, v11}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    .line 305
    .line 306
    .line 307
    move-result v12

    .line 308
    if-eqz v12, :cond_a

    .line 309
    .line 310
    :goto_7
    invoke-interface {v8, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    if-nez v9, :cond_9

    .line 314
    .line 315
    move-object v9, v10

    .line 316
    :cond_9
    add-int/lit8 v7, v7, -0x1

    .line 317
    .line 318
    add-int/lit8 v6, v6, -0x1

    .line 319
    .line 320
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 321
    .line 322
    move-object/from16 p0, v8

    .line 323
    .line 324
    move-object/from16 v25, v11

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_b
    move-object/from16 v8, p0

    .line 328
    .line 329
    if-nez v9, :cond_c

    .line 330
    .line 331
    new-instance v9, Landroid/content/pm/ResolveInfo;

    .line 332
    .line 333
    invoke-direct {v9}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 334
    .line 335
    .line 336
    iput-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 337
    .line 338
    :cond_c
    invoke-interface {v8, v1, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    move/from16 v2, v20

    .line 342
    .line 343
    iput v2, v9, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 344
    .line 345
    add-int/lit8 v7, v1, 0x1

    .line 346
    .line 347
    :goto_8
    add-int/lit8 v6, v2, 0x1

    .line 348
    .line 349
    move-object/from16 v1, p2

    .line 350
    .line 351
    move-wide v11, v3

    .line 352
    move-object v13, v15

    .line 353
    move-object/from16 v15, v19

    .line 354
    .line 355
    move-object/from16 v10, v26

    .line 356
    .line 357
    const/4 v9, 0x0

    .line 358
    goto/16 :goto_0

    .line 359
    .line 360
    :cond_d
    move v1, v7

    .line 361
    move-object/from16 v26, v10

    .line 362
    .line 363
    move-wide v3, v11

    .line 364
    move-object/from16 v19, v15

    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_e
    move-object/from16 v26, v10

    .line 368
    .line 369
    move-wide v3, v11

    .line 370
    move-object/from16 v19, v15

    .line 371
    .line 372
    move/from16 v7, v18

    .line 373
    .line 374
    :goto_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    :goto_a
    add-int/lit8 v1, v0, -0x1

    .line 379
    .line 380
    const-wide/16 v5, 0x0

    .line 381
    .line 382
    if-ge v7, v1, :cond_16

    .line 383
    .line 384
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 389
    .line 390
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 391
    .line 392
    if-nez v2, :cond_f

    .line 393
    .line 394
    goto :goto_b

    .line 395
    :cond_f
    invoke-virtual {v2}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    if-nez v2, :cond_11

    .line 400
    .line 401
    :goto_b
    move-object/from16 v10, v26

    .line 402
    .line 403
    :cond_10
    const/4 v2, 0x0

    .line 404
    goto :goto_e

    .line 405
    :cond_11
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 406
    .line 407
    .line 408
    move-result v9

    .line 409
    if-eqz v9, :cond_15

    .line 410
    .line 411
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v9

    .line 415
    check-cast v9, Ljava/lang/String;

    .line 416
    .line 417
    move-object/from16 v10, v26

    .line 418
    .line 419
    if-eqz v10, :cond_13

    .line 420
    .line 421
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result v11

    .line 425
    if-eqz v11, :cond_13

    .line 426
    .line 427
    :cond_12
    move-object/from16 v26, v10

    .line 428
    .line 429
    goto :goto_c

    .line 430
    :cond_13
    add-int/lit8 v11, v7, 0x1

    .line 431
    .line 432
    :goto_d
    if-ge v11, v0, :cond_12

    .line 433
    .line 434
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v12

    .line 438
    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 439
    .line 440
    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 441
    .line 442
    if-eqz v12, :cond_14

    .line 443
    .line 444
    invoke-virtual {v12, v9}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    .line 445
    .line 446
    .line 447
    move-result v12

    .line 448
    if-eqz v12, :cond_14

    .line 449
    .line 450
    invoke-interface {v8, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    add-int/lit8 v11, v11, -0x1

    .line 454
    .line 455
    add-int/lit8 v0, v0, -0x1

    .line 456
    .line 457
    :cond_14
    add-int/lit8 v11, v11, 0x1

    .line 458
    .line 459
    goto :goto_d

    .line 460
    :cond_15
    move-object/from16 v10, v26

    .line 461
    .line 462
    and-long v11, v3, v16

    .line 463
    .line 464
    cmp-long v2, v11, v5

    .line 465
    .line 466
    if-nez v2, :cond_10

    .line 467
    .line 468
    const/4 v2, 0x0

    .line 469
    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 470
    .line 471
    :goto_e
    add-int/lit8 v7, v7, 0x1

    .line 472
    .line 473
    move-object/from16 v26, v10

    .line 474
    .line 475
    goto :goto_a

    .line 476
    :cond_16
    const/4 v2, 0x0

    .line 477
    if-eqz p1, :cond_18

    .line 478
    .line 479
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    move/from16 v1, v18

    .line 484
    .line 485
    :goto_f
    if-ge v1, v0, :cond_18

    .line 486
    .line 487
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v7

    .line 491
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 492
    .line 493
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 494
    .line 495
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v9

    .line 499
    iget-object v10, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 500
    .line 501
    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 502
    .line 503
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v9

    .line 507
    if-eqz v9, :cond_17

    .line 508
    .line 509
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v9

    .line 513
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 514
    .line 515
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result v7

    .line 519
    if-eqz v7, :cond_17

    .line 520
    .line 521
    invoke-interface {v8, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    goto :goto_10

    .line 525
    :cond_17
    add-int/lit8 v1, v1, 0x1

    .line 526
    .line 527
    goto :goto_f

    .line 528
    :cond_18
    :goto_10
    and-long v0, v3, v16

    .line 529
    .line 530
    cmp-long v0, v0, v5

    .line 531
    .line 532
    if-nez v0, :cond_19

    .line 533
    .line 534
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 535
    .line 536
    .line 537
    move-result v0

    .line 538
    move/from16 v1, v18

    .line 539
    .line 540
    :goto_11
    if-ge v1, v0, :cond_19

    .line 541
    .line 542
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 547
    .line 548
    iput-object v2, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 549
    .line 550
    add-int/lit8 v1, v1, 0x1

    .line 551
    .line 552
    goto :goto_11

    .line 553
    :cond_19
    move-object v0, v8

    .line 554
    move-object/from16 v1, v19

    .line 555
    .line 556
    :goto_12
    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 557
    .line 558
    .line 559
    return-object v1
.end method

.method public final queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v8, p5

    .line 4
    .line 5
    new-instance v9, Landroid/content/pm/ParceledListSlice;

    .line 6
    .line 7
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object v11

    .line 15
    iget-object v0, v10, Lcom/android/server/pm/ResolveIntentHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 18
    .line 19
    invoke-virtual {v0, v8}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto/16 :goto_9

    .line 30
    .line 31
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    .line 33
    .line 34
    move-result v12

    .line 35
    invoke-interface {v11, v12}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v13

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    move-object v0, v11

    .line 42
    move/from16 v1, p5

    .line 43
    .line 44
    move v2, v12

    .line 45
    move-wide/from16 v3, p3

    .line 46
    .line 47
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/Computer;->updateFlagsForResolve(IIJZZ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    move-object v2, v0

    .line 72
    move-object v0, v1

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    move-object/from16 v2, p1

    .line 75
    .line 76
    :goto_0
    if-eqz v0, :cond_c

    .line 77
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v11, v0, v4, v5, v8}, Lcom/android/server/pm/Computer;->getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_b

    .line 89
    .line 90
    const-wide/32 v6, 0x800000

    .line 91
    .line 92
    .line 93
    and-long/2addr v6, v4

    .line 94
    const-wide/16 v14, 0x0

    .line 95
    .line 96
    cmp-long v6, v6, v14

    .line 97
    .line 98
    const/4 v7, 0x0

    .line 99
    if-eqz v6, :cond_2

    .line 100
    .line 101
    move v6, v2

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    move v6, v7

    .line 104
    :goto_1
    const-wide/32 v16, 0x1000000

    .line 105
    .line 106
    .line 107
    and-long v4, v4, v16

    .line 108
    .line 109
    cmp-long v4, v4, v14

    .line 110
    .line 111
    if-eqz v4, :cond_3

    .line 112
    .line 113
    move v4, v2

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move v4, v7

    .line 116
    :goto_2
    if-eqz v13, :cond_4

    .line 117
    .line 118
    move v5, v2

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    move v5, v7

    .line 121
    :goto_3
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iget-object v10, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 130
    .line 131
    iget v13, v10, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 132
    .line 133
    and-int/lit16 v13, v13, 0x80

    .line 134
    .line 135
    if-eqz v13, :cond_5

    .line 136
    .line 137
    move v13, v2

    .line 138
    goto :goto_4

    .line 139
    :cond_5
    move v13, v7

    .line 140
    :goto_4
    iget v14, v3, Landroid/content/pm/ProviderInfo;->flags:I

    .line 141
    .line 142
    const/high16 v15, 0x100000

    .line 143
    .line 144
    and-int/2addr v14, v15

    .line 145
    if-nez v14, :cond_6

    .line 146
    .line 147
    move v14, v2

    .line 148
    goto :goto_5

    .line 149
    :cond_6
    move v14, v7

    .line 150
    :goto_5
    if-nez v0, :cond_9

    .line 151
    .line 152
    if-nez v6, :cond_7

    .line 153
    .line 154
    if-nez v5, :cond_7

    .line 155
    .line 156
    if-nez v13, :cond_8

    .line 157
    .line 158
    :cond_7
    if-eqz v4, :cond_9

    .line 159
    .line 160
    if-eqz v5, :cond_9

    .line 161
    .line 162
    if-eqz v14, :cond_9

    .line 163
    .line 164
    :cond_8
    move v0, v2

    .line 165
    goto :goto_6

    .line 166
    :cond_9
    move v0, v7

    .line 167
    :goto_6
    if-nez v13, :cond_a

    .line 168
    .line 169
    if-nez v5, :cond_a

    .line 170
    .line 171
    iget-object v4, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 172
    .line 173
    const/16 v5, 0x3e8

    .line 174
    .line 175
    invoke-interface {v11, v5, v4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-interface {v11, v4, v12, v8}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-eqz v4, :cond_a

    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_a
    move v2, v7

    .line 187
    :goto_7
    if-nez v0, :cond_b

    .line 188
    .line 189
    if-nez v2, :cond_b

    .line 190
    .line 191
    new-instance v0, Landroid/content/pm/ResolveInfo;

    .line 192
    .line 193
    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-object v3, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 197
    .line 198
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :cond_b
    move-object v0, v1

    .line 202
    goto :goto_9

    .line 203
    :cond_c
    invoke-interface {v11}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-nez v1, :cond_e

    .line 212
    .line 213
    move-object v1, v11

    .line 214
    move-object/from16 v3, p2

    .line 215
    .line 216
    move/from16 v6, p5

    .line 217
    .line 218
    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    if-nez v6, :cond_d

    .line 223
    .line 224
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    goto :goto_9

    .line 229
    :cond_d
    move-object v0, v10

    .line 230
    move-object v1, v11

    .line 231
    move-object v2, v6

    .line 232
    move-object v3, v13

    .line 233
    move/from16 v4, p5

    .line 234
    .line 235
    move v5, v12

    .line 236
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ResolveIntentHelper;->applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)V

    .line 237
    .line 238
    .line 239
    :goto_8
    move-object v0, v6

    .line 240
    goto :goto_9

    .line 241
    :cond_e
    invoke-interface {v11, v1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-eqz v1, :cond_10

    .line 246
    .line 247
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    move-object v1, v11

    .line 252
    move-object/from16 v3, p2

    .line 253
    .line 254
    move/from16 v7, p5

    .line 255
    .line 256
    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    if-nez v6, :cond_f

    .line 261
    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    goto :goto_9

    .line 267
    :cond_f
    move-object v0, v10

    .line 268
    move-object v1, v11

    .line 269
    move-object v2, v6

    .line 270
    move-object v3, v13

    .line 271
    move/from16 v4, p5

    .line 272
    .line 273
    move v5, v12

    .line 274
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ResolveIntentHelper;->applyPostContentProviderResolutionFilter(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/lang/String;II)V

    .line 275
    .line 276
    .line 277
    goto :goto_8

    .line 278
    :cond_10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    :goto_9
    invoke-direct {v9, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 283
    .line 284
    .line 285
    return-object v9
.end method

.method public final queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v9

    .line 16
    const/4 v10, -0x1

    .line 17
    const/4 v11, 0x0

    .line 18
    move-object v4, p1

    .line 19
    move-object v5, p2

    .line 20
    move-wide v6, p3

    .line 21
    move/from16 v8, p5

    .line 22
    .line 23
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/pm/ResolveIntentHelper;->queryIntentReceiversInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method

.method public final queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    new-instance v9, Landroid/content/pm/ParceledListSlice;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v7, -0x1

    .line 15
    move-object v1, p1

    .line 16
    move-object v2, p2

    .line 17
    move-wide v3, p3

    .line 18
    move v5, p5

    .line 19
    invoke-interface/range {v0 .. v8}, Lcom/android/server/pm/Computer;->queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZ)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v9, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-object v9
.end method

.method public final queryProperty(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageProperty:Lcom/android/server/pm/PackageProperty;

    .line 21
    .line 22
    new-instance v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda4;

    .line 23
    .line 24
    invoke-direct {v3, v2, v0, v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/Computer;II)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x5

    .line 28
    const/4 v1, 0x0

    .line 29
    if-ne p2, v0, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/pm/PackageProperty;->mApplicationProperties:Landroid/util/ArrayMap;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x1

    .line 35
    if-ne p2, v0, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/pm/PackageProperty;->mActivityProperties:Landroid/util/ArrayMap;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x4

    .line 41
    if-ne p2, v0, :cond_2

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/pm/PackageProperty;->mProviderProperties:Landroid/util/ArrayMap;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v0, 0x2

    .line 47
    if-ne p2, v0, :cond_3

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/pm/PackageProperty;->mReceiverProperties:Landroid/util/ArrayMap;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const/4 v0, 0x3

    .line 53
    if-ne p2, v0, :cond_4

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/pm/PackageProperty;->mServiceProperties:Landroid/util/ArrayMap;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-object p0, v1

    .line 62
    :goto_0
    if-nez p0, :cond_5

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_5
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Landroid/util/ArrayMap;

    .line 70
    .line 71
    if-nez p0, :cond_6

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .line 88
    .line 89
    const/4 p2, 0x0

    .line 90
    :goto_1
    if-ge p2, p1, :cond_8

    .line 91
    .line 92
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda4;->test(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_7
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Ljava/util/Collection;

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    .line 113
    .line 114
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_8
    :goto_3
    if-nez v1, :cond_9

    .line 118
    .line 119
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :cond_9
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 125
    .line 126
    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    return-object p0
.end method

.method public final querySyncProviders(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    .line 10
    .line 11
    invoke-interface {v0, p1, p2, p0}, Lcom/android/server/pm/Computer;->querySyncProviders(Ljava/util/List;Ljava/util/List;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final registerDexModule(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/IDexModuleRegisterCallback;)V
    .locals 1

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "Ignored unsupported registerDexModule call for "

    .line 4
    .line 5
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v0, " in "

    .line 12
    .line 13
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p3, "PackageManager"

    .line 24
    .line 25
    invoke-static {p3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    new-instance p1, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    if-eqz p4, :cond_0

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance p3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda11;

    .line 40
    .line 41
    invoke-direct {p3, p4, p2, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda11;-><init>(Landroid/content/pm/IDexModuleRegisterCallback;Ljava/lang/String;Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public final registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->registerMoveCallback_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final registerPackageMonitorCallback(Landroid/os/IRemoteCallback;I)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v7

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string/jumbo v5, "registerPackageMonitorCallback"

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x1

    .line 22
    move v1, v7

    .line 23
    move v2, p2

    .line 24
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 36
    .line 37
    new-instance v1, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iput v7, v1, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->mUid:I

    .line 43
    .line 44
    iput p2, v1, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->mUserId:I

    .line 45
    .line 46
    invoke-virtual {p0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final relinquishUpdateOwnership(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2, v0, v1, p1}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    move-object v1, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {v2, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    if-nez v1, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget v1, v1, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 42
    .line 43
    const/16 v2, 0x3e8

    .line 44
    .line 45
    if-eq v0, v2, :cond_3

    .line 46
    .line 47
    const/16 v2, 0x7d0

    .line 48
    .line 49
    if-eq v0, v2, :cond_3

    .line 50
    .line 51
    if-ne v0, v1, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 55
    .line 56
    const-string p1, "Caller is not the current update owner."

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 63
    .line 64
    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda21;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3, p1, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    const-string v0, "Unknown target package: "

    .line 81
    .line 82
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public final removeCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->removeCrossProfileIntentFilter_enforcePermission()V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2, p2, v1}, Lcom/android/server/pm/PackageManagerService;->enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v2, p3, p4, v3}, Lcom/android/server/pm/UserManagerService;->isCrossProfileIntentFilterAccessible(IIZ)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v2, v2, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 38
    .line 39
    invoke-static {v2, v1, p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;II)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 43
    .line 44
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 45
    .line 46
    monitor-enter v2

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 50
    .line 51
    invoke-virtual {v1, p3}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v4, Landroid/util/ArraySet;

    .line 56
    .line 57
    iget-object v5, v1, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 58
    .line 59
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    move v5, v3

    .line 67
    :goto_0
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-ge v5, v6, :cond_1

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 78
    .line 79
    iget-object v7, v6, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 80
    .line 81
    invoke-static {v7, p1}, Landroid/content/IntentFilter;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_0

    .line 86
    .line 87
    iget-object v7, v6, Lcom/android/server/pm/CrossProfileIntentFilter;->mOwnerPackage:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_0

    .line 94
    .line 95
    iget v7, v6, Lcom/android/server/pm/CrossProfileIntentFilter;->mTargetUserId:I

    .line 96
    .line 97
    if-ne v7, p4, :cond_0

    .line 98
    .line 99
    iget v7, v6, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    .line 100
    .line 101
    if-ne v7, p5, :cond_0

    .line 102
    .line 103
    invoke-virtual {v1, v6}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    goto :goto_2

    .line 109
    :cond_0
    add-int/2addr v5, v0

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    move v0, v3

    .line 112
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 114
    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 118
    .line 119
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 120
    .line 121
    .line 122
    :cond_2
    return v0

    .line 123
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 125
    .line 126
    throw p0

    .line 127
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 128
    .line 129
    const-string p1, "CrossProfileIntentFilter cannot be accessed by user "

    .line 130
    .line 131
    invoke-static {v1, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p0
.end method

.method public final removeEncPkgDir(ILjava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final removeEncUserDir(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final removePermission(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/permission/PermissionManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/permission/PermissionManager;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/permission/PermissionManager;->removePermission(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcom/android/server/pm/WatchedIntentFilter;

    .line 10
    .line 11
    invoke-direct {v2, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 12
    .line 13
    .line 14
    move v3, p2

    .line 15
    move-object v4, p3

    .line 16
    move-object v5, p4

    .line 17
    move v6, p5

    .line 18
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PreferredActivityHelper;->replacePreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final requestPackageChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;I)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 11
    .line 12
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundHandler:Landroid/os/Handler;

    .line 15
    .line 16
    move-object v0, v1

    .line 17
    move-object v1, v2

    .line 18
    move-object v2, p1

    .line 19
    move v3, p2

    .line 20
    move v4, p3

    .line 21
    move v5, p4

    .line 22
    move-object/from16 v6, p5

    .line 23
    .line 24
    move-object/from16 v7, p6

    .line 25
    .line 26
    move/from16 v8, p7

    .line 27
    .line 28
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/PackageManagerService;->requestChecksumsInternal(Lcom/android/server/pm/Computer;Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;ILjava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final resetApplicationPreferences(I)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "android.permission.SET_PREFERRED_APPLICATIONS"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_0
    new-instance v3, Landroid/util/SparseBooleanArray;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 23
    .line 24
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 25
    .line 26
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 27
    .line 28
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 30
    .line 31
    invoke-virtual {v5, v2, v3, p1}, Lcom/android/server/pm/PackageManagerService;->clearPackagePreferredActivitiesLPw(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V

    .line 32
    .line 33
    .line 34
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 35
    :try_start_2
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-lez v2, :cond_0

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 52
    .line 53
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 55
    .line 56
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 57
    .line 58
    invoke-virtual {v3, p1}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 62
    .line 63
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 64
    .line 65
    check-cast v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 66
    .line 67
    invoke-virtual {v3, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->clearUser(I)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 71
    .line 72
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 73
    .line 74
    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 75
    .line 76
    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 77
    .line 78
    invoke-interface {v3, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->resetRuntimePermissionsForUser(I)V

    .line 79
    .line 80
    .line 81
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {p0, v2, p1}, Lcom/android/server/pm/PreferredActivityHelper;->updateDefaultHomeNotLocked(Lcom/android/server/pm/Computer;I)Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredActivityHelper;->resetNetworkPolicies(I)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivityHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 105
    :try_start_6
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 106
    .line 107
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 108
    :catchall_2
    move-exception p0

    .line 109
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 110
    :try_start_8
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 111
    .line 112
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 113
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    .line 115
    .line 116
    throw p0
.end method

.method public final resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    move v1, p4

    .line 12
    move-wide v3, p2

    .line 13
    move-object v5, p1

    .line 14
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->resolveContentProvider(IIJLjava/lang/String;)Landroid/content/pm/ProviderInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v10

    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 15
    .line 16
    .line 17
    move-result v11

    .line 18
    const-wide/16 v6, 0x0

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    move-object v0, v1

    .line 22
    move-object v1, v2

    .line 23
    move-object v2, p1

    .line 24
    move-object v3, p2

    .line 25
    move-wide v4, p3

    .line 26
    move/from16 v8, p5

    .line 27
    .line 28
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/ResolveIntentHelper;->resolveIntentInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JJIZII)Landroid/content/pm/ResolveInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public final resolveService(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v7

    .line 5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mResolveIntentHelper:Lcom/android/server/pm/ResolveIntentHelper;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v8, -0x1

    .line 14
    const/4 v9, 0x0

    .line 15
    move-object v2, p1

    .line 16
    move-object v3, p2

    .line 17
    move-wide v4, p3

    .line 18
    move v6, p5

    .line 19
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/ResolveIntentHelper;->resolveServiceInternal(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JIIIZ)Landroid/content/pm/ResolveInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final restoreDefaultApps([BI)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x3e8

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "da"

    .line 33
    .line 34
    new-instance v1, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda1;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PreferredActivityHelper;I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p2, p1, v1}, Lcom/android/server/pm/PreferredActivityHelper;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    return-void

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 45
    .line 46
    const-string p1, "Only the system may call restoreDefaultApps()"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public final restoreDomainVerification([BI)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/16 v0, 0x3e8

    .line 6
    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayInputStream;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :try_start_1
    iget-object v2, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mSettings:Lcom/android/server/pm/verify/domain/DomainVerificationSettings;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 34
    .line 35
    invoke-virtual {v2, p1, v0, p0}, Lcom/android/server/pm/verify/domain/DomainVerificationSettings;->restoreSettings(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Lcom/android/server/pm/Computer;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    invoke-virtual {p2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 46
    :catch_0
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 48
    .line 49
    const-string p1, "Only the system may call restorePreferredActivities()"

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final restoreLabelAndIcon(Landroid/content/ComponentName;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/server/pm/PackageManagerService;->updateComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final restorePreferredActivities([BI)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x3e8

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo p1, "pa"

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda1;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PreferredActivityHelper;I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p2, p1, v1}, Lcom/android/server/pm/PreferredActivityHelper;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;ILjava/lang/String;Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    return-void

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 46
    .line 47
    const-string p1, "Only the system may call restorePreferredActivities()"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public final semIsPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p3, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v2, "semIsPermissionRevokedByUserFixed for user "

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 32
    .line 33
    invoke-virtual {v0, p2, p1, p3}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    return v1

    .line 41
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v2, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    invoke-interface {v2, v3, v0, p3}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    const-class v0, Landroid/permission/PermissionManager;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Landroid/permission/PermissionManager;

    .line 79
    .line 80
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-virtual {p0, p2, p1, p3}, Landroid/permission/PermissionManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    .line 85
    .line 86
    .line 87
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    and-int/lit8 p0, p0, 0x2

    .line 89
    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    return v1

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_4
    :goto_0
    return v1
.end method

.method public final sendDeviceCustomizationReadyBroadcast()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "android.permission.SEND_DEVICE_CUSTOMIZATION_READY"

    .line 8
    .line 9
    const-string/jumbo v2, "sendDeviceCustomizationReadyBroadcast"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/android/server/pm/BroadcastHelper;->INSTANT_APP_BROADCAST_PERMISSION:[Ljava/lang/String;

    .line 20
    .line 21
    new-instance v6, Landroid/content/Intent;

    .line 22
    .line 23
    const-string v0, "android.intent.action.DEVICE_CUSTOMIZATION_READY"

    .line 24
    .line 25
    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/high16 v0, 0x1000000

    .line 29
    .line 30
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v0, "android.permission.RECEIVE_DEVICE_CUSTOMIZATION_READY"

    .line 38
    .line 39
    filled-new-array {v0}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    const/16 v16, 0x0

    .line 44
    .line 45
    const/16 v17, 0x0

    .line 46
    .line 47
    const/16 v18, 0x0

    .line 48
    .line 49
    const/16 v19, -0x1

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v9, 0x0

    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v13, 0x0

    .line 59
    const/4 v14, 0x0

    .line 60
    const/4 v15, -0x1

    .line 61
    :try_start_1
    invoke-interface/range {v3 .. v19}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    move-object v3, v0

    .line 70
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    .line 78
    .line 79
    throw v0
.end method

.method public final setAppCategoryHintDeveloper(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x7d0

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;->Developer:Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/AppCategoryHintHelper;->setAppCategoryHintBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 21
    .line 22
    const-string p1, "calling uid is not shell!"

    .line 23
    .line 24
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public final setAppCategoryHintUser(Ljava/lang/String;I)V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/pm/AppCategoryHintHelper;->isSystemServerOrDebuggableShell()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;->User:Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/AppCategoryHintHelper;->setAppCategoryHintBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 19
    .line 20
    const-string p1, "calling uid is not system server!"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final setApplicationCategoryHint(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    new-instance v7, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;

    .line 10
    .line 11
    move-object v0, v7

    .line 12
    move-object v1, p0

    .line 13
    move-object v3, p3

    .line 14
    move-object v5, p1

    .line 15
    move v6, p2

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;ILjava/lang/String;ILjava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v7, p3, v0}, Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    check-cast p3, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 36
    .line 37
    if-eqz p3, :cond_0

    .line 38
    .line 39
    iget-boolean v0, p3, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mStateChanged:Z

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-boolean v0, p3, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mSpecificPackageNull:Z

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 48
    .line 49
    iget-object v0, p3, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 50
    .line 51
    sget-boolean p3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_0
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v7, p3, v1}, Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    check-cast p3, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 71
    .line 72
    monitor-exit v0

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 77
    .line 78
    throw p0

    .line 79
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 80
    .line 81
    iget-boolean p3, p3, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mCommitted:Z

    .line 82
    .line 83
    if-eqz p3, :cond_1

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    .line 88
    .line 89
    .line 90
    sget-object p0, Lcom/android/server/pm/PackageManagerService;->sAppCategoryHintHelper:Lcom/android/server/pm/AppCategoryHintHelper;

    .line 91
    .line 92
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/AppCategoryHintHelper;->sendAppCategoryBroadcast(ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    return-void
.end method

.method public final setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 6
    .line 7
    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-nez p5, :cond_1

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result p5

    .line 20
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p5

    .line 24
    :cond_1
    const-string v0, "auto_disabler"

    .line 25
    .line 26
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    const-string v1, "com.sec.android.emergencymode.service"

    .line 35
    .line 36
    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {v1, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-interface {v1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/4 v5, 0x4

    .line 63
    if-ne v4, v5, :cond_2

    .line 64
    .line 65
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    move v0, v3

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    move v0, v2

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 79
    .line 80
    new-instance v4, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 81
    .line 82
    invoke-direct {v4, p1, p2, p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Ljava/lang/String;II)V

    .line 83
    .line 84
    .line 85
    invoke-static {v4}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-static {v1, p3, p4, p5}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    const-string p3, "com.google.android.partnersetup"

    .line 95
    .line 96
    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    if-eqz p3, :cond_4

    .line 101
    .line 102
    if-eqz p2, :cond_3

    .line 103
    .line 104
    if-ne p2, v3, :cond_4

    .line 105
    .line 106
    :cond_3
    move v2, v3

    .line 107
    :cond_4
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 108
    .line 109
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-interface {p3, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    if-eqz p3, :cond_5

    .line 118
    .line 119
    invoke-interface {p3, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    if-ne p3, p2, :cond_5

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler;

    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    new-instance p2, Landroid/os/Bundle;

    .line 137
    .line 138
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string/jumbo p3, "packageName"

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string/jumbo p1, "userId"

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    const-string p1, "isGoogleChanged"

    .line 154
    .line 155
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/android/server/pm/AutoDisableHandler;->mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler$ADHandler;

    .line 159
    .line 160
    invoke-virtual {p1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 165
    .line 166
    .line 167
    iget-object p0, p0, Lcom/android/server/pm/AutoDisableHandler;->mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler$ADHandler;

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    .line 171
    .line 172
    :cond_5
    return-void
.end method

.method public final setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v6, p1

    .line 3
    .line 4
    move/from16 v1, p2

    .line 5
    .line 6
    move/from16 v13, p3

    .line 7
    .line 8
    const-string v2, "Not hiding protected package: "

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->setApplicationHiddenSettingAsUser_enforcePermission()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string/jumbo v5, "setApplicationHiddenSetting for user "

    .line 24
    .line 25
    .line 26
    invoke-static {v13, v5}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    const/4 v11, 0x1

    .line 31
    const/4 v12, 0x1

    .line 32
    move-object v7, v4

    .line 33
    move v9, v3

    .line 34
    move/from16 v10, p3

    .line 35
    .line 36
    invoke-interface/range {v7 .. v12}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-static {v5}, Lcom/samsung/android/server/pm/PmServerUtils;->getProcessNameForPid(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const-string/jumbo v7, "setApplicationHiddenSettingAsUser, packageName: "

    .line 48
    .line 49
    .line 50
    const-string v8, ", userId: "

    .line 51
    .line 52
    const-string v9, ", hidden: "

    .line 53
    .line 54
    invoke-static {v13, v7, v6, v8, v9}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v8, ", callingUid: "

    .line 62
    .line 63
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v8, ", callingPackage: "

    .line 70
    .line 71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-static {v5}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v5, "PackageManager"

    .line 85
    .line 86
    const/4 v7, 0x0

    .line 87
    if-eqz v1, :cond_0

    .line 88
    .line 89
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 90
    .line 91
    invoke-virtual {v8, v13, v6}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(ILjava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-eqz v8, :cond_0

    .line 96
    .line 97
    const-string v0, "Not hiding package "

    .line 98
    .line 99
    const-string v1, ": has active device admin"

    .line 100
    .line 101
    invoke-static {v0, v6, v1, v5}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return v7

    .line 105
    :cond_0
    const-string v8, "android"

    .line 106
    .line 107
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    const-string v10, "Cannot hide package: "

    .line 112
    .line 113
    if-nez v9, :cond_b

    .line 114
    .line 115
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 116
    .line 117
    invoke-virtual {v9, v4, v6, v13}, Lcom/android/server/pm/PackageManagerService;->isRequiredSystemPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;I)Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    if-eqz v9, :cond_1

    .line 122
    .line 123
    goto/16 :goto_3

    .line 124
    .line 125
    :cond_1
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-eqz v8, :cond_2

    .line 130
    .line 131
    const-string v0, "Cannot hide package: android"

    .line 132
    .line 133
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    return v7

    .line 137
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 138
    .line 139
    .line 140
    move-result-wide v8

    .line 141
    :try_start_0
    invoke-interface {v4, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 142
    .line 143
    .line 144
    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-nez v11, :cond_3

    .line 146
    .line 147
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 148
    .line 149
    .line 150
    return v7

    .line 151
    :cond_3
    :try_start_1
    invoke-interface {v11, v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    if-eq v14, v1, :cond_a

    .line 160
    .line 161
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    if-eqz v12, :cond_a

    .line 166
    .line 167
    invoke-interface {v4, v11, v3, v13}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-eqz v4, :cond_4

    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :cond_4
    iget-object v4, v11, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 176
    .line 177
    if-eqz v4, :cond_6

    .line 178
    .line 179
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v12

    .line 183
    if-eqz v12, :cond_5

    .line 184
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v1, " providing SDK library: "

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .line 211
    .line 212
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 213
    .line 214
    .line 215
    return v7

    .line 216
    :catchall_0
    move-exception v0

    .line 217
    goto/16 :goto_2

    .line 218
    .line 219
    :cond_5
    :try_start_2
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    if-eqz v12, :cond_6

    .line 224
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v1, " providing static shared library: "

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    .line 251
    .line 252
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 253
    .line 254
    .line 255
    return v7

    .line 256
    :cond_6
    if-eqz v1, :cond_7

    .line 257
    .line 258
    :try_start_3
    iget v4, v11, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 259
    .line 260
    invoke-static {v3, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-nez v3, :cond_7

    .line 265
    .line 266
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 267
    .line 268
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 269
    .line 270
    invoke-virtual {v3, v13, v6}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-eqz v3, :cond_7

    .line 275
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 289
    .line 290
    .line 291
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    .line 293
    .line 294
    return v7

    .line 295
    :cond_7
    :try_start_4
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 296
    .line 297
    new-instance v3, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda8;

    .line 298
    .line 299
    invoke-direct {v3, v13, v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda8;-><init>(IZ)V

    .line 300
    .line 301
    .line 302
    const/4 v4, 0x0

    .line 303
    invoke-virtual {v2, v4, v6, v3}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 304
    .line 305
    .line 306
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 307
    .line 308
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-interface {v2, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    if-eqz v1, :cond_8

    .line 317
    .line 318
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 319
    .line 320
    iget v2, v4, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 321
    .line 322
    const-string v3, "hiding pkg"

    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    const/16 v1, 0xd

    .line 328
    .line 329
    invoke-static {v6, v2, v13, v3, v1}, Lcom/android/server/pm/PackageManagerService;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V

    .line 330
    .line 331
    .line 332
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 333
    .line 334
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 335
    .line 336
    invoke-virtual {v2, v6, v4, v13, v1}, Lcom/android/server/pm/BroadcastHelper;->sendApplicationHiddenForUser(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;ILcom/android/server/pm/PackageSender;)V

    .line 337
    .line 338
    .line 339
    goto :goto_0

    .line 340
    :cond_8
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 341
    .line 342
    invoke-virtual {v1, v13, v6}, Lcom/android/server/pm/PackageManagerService;->isLocaleOptimizedPackage(ILjava/lang/String;)Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-eqz v1, :cond_9

    .line 347
    .line 348
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 349
    .line 350
    sget-object v4, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->PACKAGE_ENABLE:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    .line 351
    .line 352
    const/4 v2, -0x1

    .line 353
    const/4 v3, 0x0

    .line 354
    move/from16 v5, p3

    .line 355
    .line 356
    move-object/from16 v6, p1

    .line 357
    .line 358
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->updateLocaleOverlaysForPackage(IILcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;ILjava/lang/String;)V

    .line 359
    .line 360
    .line 361
    goto :goto_0

    .line 362
    :cond_9
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 363
    .line 364
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 365
    .line 366
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 367
    .line 368
    const/4 v10, 0x0

    .line 369
    move-object v1, v3

    .line 370
    move-object/from16 v3, p1

    .line 371
    .line 372
    move/from16 v5, p3

    .line 373
    .line 374
    move v6, v10

    .line 375
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;IZLjava/lang/String;)V

    .line 376
    .line 377
    .line 378
    :goto_0
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 379
    .line 380
    invoke-virtual {v0, v13}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 381
    .line 382
    .line 383
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    .line 385
    .line 386
    const/4 v0, 0x1

    .line 387
    return v0

    .line 388
    :cond_a
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    .line 390
    .line 391
    return v7

    .line 392
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 393
    .line 394
    .line 395
    throw v0

    .line 396
    :cond_b
    :goto_3
    invoke-static {v10, v6, v5}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    return v7
.end method

.method public final setBlockUninstallForUser(Ljava/lang/String;ZI)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->setBlockUninstallForUser_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const-string p0, "PackageManager"

    .line 28
    .line 29
    const-string p2, "Cannot block uninstall of package: "

    .line 30
    .line 31
    const-string p3, " providing SDK library: "

    .line 32
    .line 33
    invoke-static {p2, p1, p3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    const-string p0, "PackageManager"

    .line 59
    .line 60
    const-string p2, "Cannot block uninstall of package: "

    .line 61
    .line 62
    const-string p3, " providing static shared library: "

    .line 63
    .line 64
    invoke-static {p2, p1, p3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    return v2

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 86
    .line 87
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 88
    .line 89
    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 91
    .line 92
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 93
    .line 94
    invoke-virtual {v1, p3, p1, p2}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 99
    .line 100
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 101
    .line 102
    .line 103
    const/4 p0, 0x1

    .line 104
    return p0

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 108
    .line 109
    throw p0
.end method

.method public final setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 6
    .line 7
    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-nez p5, :cond_1

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result p5

    .line 20
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p5

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 25
    .line 26
    new-instance v0, Landroid/content/pm/PackageManager$ComponentEnabledSetting;

    .line 27
    .line 28
    invoke-direct {v0, p1, p2, p3}, Landroid/content/pm/PackageManager$ComponentEnabledSetting;-><init>(Landroid/content/ComponentName;II)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1, p4, p5}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final setComponentEnabledSettings(Ljava/util/List;ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-eqz p1, :cond_2

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    if-nez p3, :cond_1

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 33
    .line 34
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$msetEnabledSettings(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p1, "The list of enabled settings is empty"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final setDistractingPackageRestrictionsAsUser([Ljava/lang/String;II)[Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v5, p2

    .line 6
    .line 7
    move/from16 v6, p3

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 20
    .line 21
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string v7, "android.permission.SUSPEND_APPS"

    .line 24
    .line 25
    const-string/jumbo v8, "setDistractingPackageRestrictionsAsUser"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ne v4, v6, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 45
    .line 46
    const-string v1, "Calling uid "

    .line 47
    .line 48
    const-string v3, " cannot call for user "

    .line 49
    .line 50
    invoke-static {v2, v6, v1, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_1
    :goto_0
    const-string/jumbo v4, "packageNames cannot be null"

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_2
    const-string v4, "PackageManager"

    .line 80
    .line 81
    iget-object v7, v0, Lcom/android/server/pm/DistractingPackageHelper;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 82
    .line 83
    if-eqz v5, :cond_3

    .line 84
    .line 85
    invoke-virtual {v7, v3, v6, v2}, Lcom/android/server/pm/SuspendPackageHelper;->isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-nez v8, :cond_3

    .line 90
    .line 91
    const-string v0, "Cannot restrict packages due to restrictions on user "

    .line 92
    .line 93
    invoke-static {v6, v0, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    .line 99
    .line 100
    array-length v9, v1

    .line 101
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    .line 104
    new-instance v9, Landroid/util/IntArray;

    .line 105
    .line 106
    array-length v10, v1

    .line 107
    invoke-direct {v9, v10}, Landroid/util/IntArray;-><init>(I)V

    .line 108
    .line 109
    .line 110
    new-instance v10, Ljava/util/ArrayList;

    .line 111
    .line 112
    array-length v11, v1

    .line 113
    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .line 115
    .line 116
    new-instance v11, Landroid/util/ArraySet;

    .line 117
    .line 118
    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 119
    .line 120
    .line 121
    if-eqz v5, :cond_4

    .line 122
    .line 123
    invoke-virtual {v7, v3, v1, v6, v2}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    const/4 v7, 0x0

    .line 129
    :goto_1
    const/4 v13, 0x0

    .line 130
    :goto_2
    array-length v14, v1

    .line 131
    if-ge v13, v14, :cond_8

    .line 132
    .line 133
    aget-object v14, v1, v13

    .line 134
    .line 135
    invoke-interface {v3, v2, v6, v14}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 136
    .line 137
    .line 138
    move-result-object v15

    .line 139
    if-nez v15, :cond_5

    .line 140
    .line 141
    const-string v15, "Could not find package setting for package: "

    .line 142
    .line 143
    const-string v12, ". Skipping..."

    .line 144
    .line 145
    invoke-static {v15, v14, v12, v4}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_5
    if-eqz v7, :cond_6

    .line 153
    .line 154
    aget-boolean v12, v7, v13

    .line 155
    .line 156
    if-nez v12, :cond_6

    .line 157
    .line 158
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    invoke-interface {v15, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    .line 167
    .line 168
    .line 169
    move-result v12

    .line 170
    if-eq v5, v12, :cond_7

    .line 171
    .line 172
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    iget v12, v15, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 176
    .line 177
    invoke-static {v6, v12}, Landroid/os/UserHandle;->getUid(II)I

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    invoke-virtual {v9, v12}, Landroid/util/IntArray;->add(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v11, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    :cond_7
    :goto_3
    add-int/lit8 v13, v13, 0x1

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_8
    new-instance v1, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;

    .line 191
    .line 192
    invoke-direct {v1, v11, v6, v5}, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArraySet;II)V

    .line 193
    .line 194
    .line 195
    iget-object v7, v0, Lcom/android/server/pm/DistractingPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 196
    .line 197
    invoke-virtual {v7, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-nez v1, :cond_9

    .line 205
    .line 206
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    new-array v1, v1, [Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    move-object v2, v1

    .line 217
    check-cast v2, [Ljava/lang/String;

    .line 218
    .line 219
    new-instance v1, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;

    .line 220
    .line 221
    invoke-direct {v1, v7}, Lcom/android/server/pm/AsecInstallHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9}, Landroid/util/IntArray;->toArray()[I

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    iget-object v0, v0, Lcom/android/server/pm/DistractingPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 229
    .line 230
    move/from16 v4, p3

    .line 231
    .line 232
    move/from16 v5, p2

    .line 233
    .line 234
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendDistractingPackagesChanged(Ljava/util/function/Supplier;[Ljava/lang/String;[III)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7, v6}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 238
    .line 239
    .line 240
    :cond_9
    const/4 v0, 0x0

    .line 241
    new-array v0, v0, [Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, [Ljava/lang/String;

    .line 248
    .line 249
    move-object v1, v0

    .line 250
    :goto_4
    return-object v1
.end method

.method public final setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object v8

    .line 15
    const-string/jumbo v1, "setHarmfulAppInfo"

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x1

    .line 20
    move-object v0, v8

    .line 21
    move v2, v6

    .line 22
    move v3, p3

    .line 23
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 24
    .line 25
    .line 26
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    const-string v0, "android.permission.SET_HARMFUL_APP_WARNINGS"

    .line 33
    .line 34
    invoke-interface {v8, v0, v6}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 42
    .line 43
    const-string p1, "Caller must have the android.permission.SET_HARMFUL_APP_WARNINGS permission."

    .line 44
    .line 45
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 50
    .line 51
    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda2;

    .line 52
    .line 53
    invoke-direct {v1, p3, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda2;-><init>(ILjava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    iget-boolean p2, p2, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mSpecificPackageNull:Z

    .line 62
    .line 63
    if-nez p2, :cond_2

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 66
    .line 67
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string p2, "Unknown package: "

    .line 74
    .line 75
    invoke-static {p2, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public final setHomeActivity(Landroid/content/ComponentName;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-interface {v1, p0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, p2, p0}, Lcom/android/server/pm/Computer;->getHomeActivitiesAsUser(ILjava/util/List;)Landroid/content/ComponentName;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    new-array v4, v2, [Landroid/content/ComponentName;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    move v5, v3

    .line 39
    :goto_0
    if-ge v3, v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 46
    .line 47
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 48
    .line 49
    new-instance v7, Landroid/content/ComponentName;

    .line 50
    .line 51
    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 54
    .line 55
    invoke-direct {v7, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    aput-object v7, v4, v3

    .line 59
    .line 60
    if-nez v5, :cond_1

    .line 61
    .line 62
    invoke-virtual {v7, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_1

    .line 67
    .line 68
    const/4 v5, 0x1

    .line 69
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    if-eqz v5, :cond_3

    .line 73
    .line 74
    new-instance v2, Lcom/android/server/pm/WatchedIntentFilter;

    .line 75
    .line 76
    invoke-direct {v2}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance p0, Landroid/content/IntentFilter;

    .line 80
    .line 81
    const-string v3, "android.intent.action.MAIN"

    .line 82
    .line 83
    invoke-direct {p0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iput-object p0, v2, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    .line 87
    .line 88
    const-string p0, "android.intent.category.HOME"

    .line 89
    .line 90
    invoke-virtual {v2, p0}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string p0, "android.intent.category.DEFAULT"

    .line 94
    .line 95
    invoke-virtual {v2, p0}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/high16 v3, 0x100000

    .line 99
    .line 100
    move-object v5, p1

    .line 101
    move v6, p2

    .line 102
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PreferredActivityHelper;->replacePreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 103
    .line 104
    .line 105
    :goto_1
    return-void

    .line 106
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v1, "Component "

    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p1, " cannot be home on user "

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0
.end method

.method public final setInstallLocation(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->getInstallLocation()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, p1, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    if-eqz p1, :cond_2

    .line 13
    .line 14
    if-eq p1, v1, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "default_install_location"

    .line 31
    .line 32
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 33
    .line 34
    .line 35
    return v1
.end method

.method public final setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 3
    .line 4
    .line 5
    move-result v3

    .line 6
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 7
    .line 8
    .line 9
    move-result v7

    .line 10
    new-instance v8, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    move-object v1, v8

    .line 13
    move-object v2, p0

    .line 14
    move-object v4, p1

    .line 15
    move v5, v7

    .line 16
    move-object v6, p2

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;ILjava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->recordInitialState()Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v8, v2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    if-nez p2, :cond_0

    .line 45
    .line 46
    const/4 v2, -0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-wide/16 v3, 0x0

    .line 55
    .line 56
    invoke-interface {v2, p2, v3, v4, v7}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 61
    .line 62
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 63
    .line 64
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 65
    .line 66
    monitor-enter v3

    .line 67
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 68
    .line 69
    new-instance v5, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda2;

    .line 70
    .line 71
    invoke-direct {v5, v2, v0, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda2;-><init>(IILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v1, p1, v5}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-boolean v4, v1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mPackagesChanged:Z

    .line 79
    .line 80
    if-nez v4, :cond_1

    .line 81
    .line 82
    iget-boolean v1, v1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mStateChanged:Z

    .line 83
    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackageStateWriteLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 89
    .line 90
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 92
    .line 93
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v8, v4}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_3

    .line 108
    .line 109
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 110
    .line 111
    new-instance v5, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda2;

    .line 112
    .line 113
    const/4 v6, 0x1

    .line 114
    invoke-direct {v5, v2, v6, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda2;-><init>(IILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/4 p2, 0x0

    .line 118
    invoke-virtual {v4, p2, p1, v5}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 119
    .line 120
    .line 121
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    :cond_2
    :try_start_2
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-interface {p2, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 133
    .line 134
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 135
    .line 136
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 137
    .line 138
    invoke-virtual {p2, v1}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 139
    .line 140
    .line 141
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 143
    .line 144
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {v1, p2, p1, v0, v0}, Lcom/android/server/pm/AppsFilterImpl;->addPackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V

    .line 151
    .line 152
    .line 153
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :catchall_0
    move-exception p0

    .line 160
    goto :goto_2

    .line 161
    :catchall_1
    move-exception p0

    .line 162
    goto :goto_1

    .line 163
    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    return-void

    .line 166
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 167
    :try_start_6
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 168
    .line 169
    throw p0

    .line 170
    :goto_2
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 171
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 172
    .line 173
    throw p0

    .line 174
    :cond_4
    :goto_3
    return-void
.end method

.method public final setInstantAppCookie(Ljava/lang/String;[BI)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const-string/jumbo v2, "setInstantAppCookie"

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x1

    .line 16
    move-object v1, v0

    .line 17
    move v4, p3

    .line 18
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-interface {v0, v1, p1}, Lcom/android/server/pm/Computer;->isCallerSameApp(ILjava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    return v2

    .line 33
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getInstantAppCookieMaxBytes()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const-string v1, "Instant app cookie for package "

    .line 59
    .line 60
    iget-object v3, v0, Lcom/android/server/pm/InstantAppRegistry;->mLock:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter v3

    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    :try_start_0
    array-length v4, p2

    .line 66
    if-lez v4, :cond_2

    .line 67
    .line 68
    array-length v4, p2

    .line 69
    if-le v4, p0, :cond_2

    .line 70
    .line 71
    const-string p3, "InstantAppRegistry"

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p1, " size "

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    array-length p1, p2

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, " bytes while max size is "

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    monitor-exit v3

    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iget-object p0, v0, Lcom/android/server/pm/InstantAppRegistry;->mCookiePersistence:Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;

    .line 114
    .line 115
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->schedulePersistLPw(ILcom/android/server/pm/pkg/AndroidPackage;[B)V

    .line 116
    .line 117
    .line 118
    monitor-exit v3

    .line 119
    const/4 v2, 0x1

    .line 120
    :goto_0
    return v2

    .line 121
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    throw p0

    .line 123
    :cond_3
    :goto_2
    return v2
.end method

.method public final setKeepUninstalledPackages(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.KEEP_UNINSTALLED_PACKAGES"

    .line 6
    .line 7
    const-string/jumbo v2, "setKeepUninstalledPackages requires KEEP_UNINSTALLED_PACKAGES permission"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->setKeepUninstalledPackagesInternal(Lcom/android/server/pm/Computer;Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    move/from16 v1, p3

    .line 6
    .line 7
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mPreferredActivityHelper:Lcom/android/server/pm/PreferredActivityHelper;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 12
    .line 13
    .line 14
    move-result-object v13

    .line 15
    new-instance v14, Lcom/android/server/pm/WatchedIntentFilter;

    .line 16
    .line 17
    move-object/from16 v0, p4

    .line 18
    .line 19
    invoke-direct {v14, v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-interface {v13, v0}, Lcom/android/server/pm/Computer;->getInstantAppPackageName(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    goto/16 :goto_7

    .line 36
    .line 37
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/16 v2, 0x403

    .line 52
    .line 53
    if-ne v0, v2, :cond_9

    .line 54
    .line 55
    const-string v0, "com.samsung.sec.knox.EXTRA_KNOX_ARRAY"

    .line 56
    .line 57
    invoke-virtual {v11, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_9

    .line 62
    .line 63
    const-string v15, "PersonaServiceHelper"

    .line 64
    .line 65
    const-string v2, "Set last chosen activity with user list."

    .line 66
    .line 67
    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    int-to-long v7, v1

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/4 v10, 0x1

    .line 76
    if-ne v2, v10, :cond_8

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, v5}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    iget v3, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 100
    .line 101
    const/16 v0, -0x2710

    .line 102
    .line 103
    if-ne v3, v0, :cond_1

    .line 104
    .line 105
    const-string/jumbo v0, "profile group id is not set for user "

    .line 106
    .line 107
    .line 108
    invoke-static {v5, v0, v15}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_6

    .line 112
    .line 113
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string/jumbo v1, "setLastChosenActivityForKnox parent id "

    .line 116
    .line 117
    .line 118
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0, v10, v10, v10}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v16

    .line 145
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_6

    .line 150
    .line 151
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    move-object v9, v0

    .line 156
    check-cast v9, Landroid/content/pm/UserInfo;

    .line 157
    .line 158
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_2

    .line 163
    .line 164
    iget v0, v9, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 165
    .line 166
    if-eq v0, v3, :cond_3

    .line 167
    .line 168
    :cond_2
    iget v0, v9, Landroid/content/pm/UserInfo;->id:I

    .line 169
    .line 170
    if-ne v0, v3, :cond_5

    .line 171
    .line 172
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string/jumbo v1, "setLastChosenActivityForKnox remove pref for "

    .line 175
    .line 176
    .line 177
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iget v1, v9, Landroid/content/pm/UserInfo;->id:I

    .line 181
    .line 182
    invoke-static {v0, v1, v15}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iget v4, v9, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 190
    .line 191
    move-object/from16 v1, p1

    .line 192
    .line 193
    move-object/from16 v2, p2

    .line 194
    .line 195
    move/from16 v17, v3

    .line 196
    .line 197
    move/from16 v18, v4

    .line 198
    .line 199
    move-wide v3, v7

    .line 200
    move/from16 v19, v5

    .line 201
    .line 202
    move/from16 v5, v18

    .line 203
    .line 204
    :try_start_1
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    .line 213
    .line 214
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 219
    .line 220
    .line 221
    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    const/16 v1, 0x2710

    .line 223
    .line 224
    if-lt v0, v1, :cond_4

    .line 225
    .line 226
    move/from16 v18, v10

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_4
    move/from16 v18, v6

    .line 230
    .line 231
    :goto_1
    const/16 v20, 0x1

    .line 232
    .line 233
    const/16 v21, 0x0

    .line 234
    .line 235
    const/16 v22, 0x0

    .line 236
    .line 237
    move-object v0, v12

    .line 238
    move-object/from16 v1, p1

    .line 239
    .line 240
    move-object/from16 v2, p2

    .line 241
    .line 242
    move-wide v3, v7

    .line 243
    move/from16 v23, v6

    .line 244
    .line 245
    move/from16 v6, v22

    .line 246
    .line 247
    move-wide/from16 v24, v7

    .line 248
    .line 249
    move/from16 v7, v20

    .line 250
    .line 251
    move/from16 v8, v21

    .line 252
    .line 253
    move/from16 v20, v10

    .line 254
    .line 255
    move/from16 v10, v18

    .line 256
    .line 257
    :try_start_2
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 258
    .line 259
    .line 260
    goto :goto_4

    .line 261
    :catch_0
    move-exception v0

    .line 262
    goto :goto_3

    .line 263
    :catch_1
    move-exception v0

    .line 264
    :goto_2
    move/from16 v23, v6

    .line 265
    .line 266
    move-wide/from16 v24, v7

    .line 267
    .line 268
    move/from16 v20, v10

    .line 269
    .line 270
    goto :goto_3

    .line 271
    :catch_2
    move-exception v0

    .line 272
    move/from16 v17, v3

    .line 273
    .line 274
    move/from16 v19, v5

    .line 275
    .line 276
    goto :goto_2

    .line 277
    :goto_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 278
    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_5
    move/from16 v17, v3

    .line 282
    .line 283
    move/from16 v19, v5

    .line 284
    .line 285
    move/from16 v23, v6

    .line 286
    .line 287
    move-wide/from16 v24, v7

    .line 288
    .line 289
    move/from16 v20, v10

    .line 290
    .line 291
    :goto_4
    move/from16 v3, v17

    .line 292
    .line 293
    move/from16 v5, v19

    .line 294
    .line 295
    move/from16 v10, v20

    .line 296
    .line 297
    move/from16 v6, v23

    .line 298
    .line 299
    move-wide/from16 v7, v24

    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :cond_6
    move/from16 v19, v5

    .line 304
    .line 305
    const-string/jumbo v0, "setLastChosenActivityForKnox setting preferred activity for "

    .line 306
    .line 307
    .line 308
    move/from16 v7, v19

    .line 309
    .line 310
    invoke-static {v7, v0, v15}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    const-string v8, "Setting last chosen"

    .line 314
    .line 315
    const/4 v9, 0x0

    .line 316
    const/4 v4, 0x0

    .line 317
    const/4 v6, 0x0

    .line 318
    move-object v0, v12

    .line 319
    move-object v1, v13

    .line 320
    move-object v2, v14

    .line 321
    move/from16 v3, p5

    .line 322
    .line 323
    move-object/from16 v5, p6

    .line 324
    .line 325
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PreferredActivityHelper;->addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V

    .line 326
    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_7
    move v7, v5

    .line 330
    const-string/jumbo v0, "setLastChosenActivityForKnox invalid user "

    .line 331
    .line 332
    .line 333
    invoke-static {v7, v0, v15}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto :goto_5

    .line 337
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    const-string/jumbo v2, "setLastChosenActivityForKnox invalid size for user list: "

    .line 340
    .line 341
    .line 342
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    :goto_5
    const-string/jumbo v0, "set last chosen activity has been handled by Knox logic"

    .line 360
    .line 361
    .line 362
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    goto :goto_7

    .line 366
    :cond_9
    :goto_6
    int-to-long v6, v1

    .line 367
    move-object v0, v13

    .line 368
    move-object/from16 v1, p1

    .line 369
    .line 370
    move-object/from16 v2, p2

    .line 371
    .line 372
    move-wide v3, v6

    .line 373
    move v5, v9

    .line 374
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    const/4 v8, 0x0

    .line 379
    const/4 v10, 0x1

    .line 380
    move-object v0, v12

    .line 381
    move v6, v8

    .line 382
    move v7, v10

    .line 383
    move v8, v9

    .line 384
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZI)Landroid/content/pm/ResolveInfo;

    .line 385
    .line 386
    .line 387
    const-string v8, "Setting last chosen"

    .line 388
    .line 389
    const/4 v10, 0x0

    .line 390
    const/4 v4, 0x0

    .line 391
    const/4 v6, 0x0

    .line 392
    move-object v1, v13

    .line 393
    move-object v2, v14

    .line 394
    move/from16 v3, p5

    .line 395
    .line 396
    move-object/from16 v5, p6

    .line 397
    .line 398
    move v7, v9

    .line 399
    move v9, v10

    .line 400
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PreferredActivityHelper;->addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V

    .line 401
    .line 402
    .line 403
    :goto_7
    return-void
.end method

.method public final setLicensePermissionsForMDM(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "PackageManager"

    .line 2
    .line 3
    const-string/jumbo v1, "setLicensePermissions "

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    const-string p0, "PackageManager"

    .line 20
    .line 21
    const-string p1, "Caller is not SYSTEM_PROCESS"

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 p0, -0x1

    .line 27
    return p0

    .line 28
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 37
    .line 38
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 39
    .line 40
    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    .line 48
    .line 49
    invoke-interface {v2, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->setLicensePermissionsForMDM(Ljava/lang/String;Ljava/util/Set;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mLiveComputer:Lcom/android/server/pm/ComputerLocked;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, p0, v2}, Lcom/android/server/pm/Settings;->writeLPr(Lcom/android/server/pm/Computer;Z)V

    .line 61
    .line 62
    .line 63
    monitor-exit v1

    .line 64
    return p1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 68
    .line 69
    throw p0
.end method

.method public final setMimeGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v1, p1, v3}, Lcom/android/server/pm/PackageManagerService;->enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p3}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ge v2, v3, :cond_1

    .line 30
    .line 31
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/16 v4, 0xff

    .line 42
    .line 43
    if-gt v3, v4, :cond_0

    .line 44
    .line 45
    add-int/2addr v2, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    const-string p1, "MIME type length exceeds 255 characters"

    .line 50
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    invoke-interface {v1, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getMimeGroups()Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/util/Set;

    .line 68
    .line 69
    if-eqz v2, :cond_6

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-ne v3, v4, :cond_2

    .line 80
    .line 81
    invoke-interface {v2, p3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/16 v3, 0x1f4

    .line 93
    .line 94
    if-gt v2, v3, :cond_5

    .line 95
    .line 96
    new-instance v2, Landroid/util/ArraySet;

    .line 97
    .line 98
    invoke-direct {v2, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 99
    .line 100
    .line 101
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 102
    .line 103
    new-instance v3, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda43;

    .line 104
    .line 105
    invoke-direct {v3, v0, p2, v2}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda43;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p3, v0, p1, v3}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 110
    .line 111
    .line 112
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 113
    .line 114
    iget-object v0, p3, Lcom/android/server/pm/PackageManagerService;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolver;

    .line 115
    .line 116
    invoke-virtual {p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    iget-object v2, v0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 121
    .line 122
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 123
    .line 124
    monitor-enter v2

    .line 125
    :try_start_0
    iget-object v3, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    .line 126
    .line 127
    invoke-virtual {v3, p3, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    iget-object v4, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 132
    .line 133
    invoke-virtual {v4, p3, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    or-int/2addr v3, v4

    .line 138
    iget-object v4, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    .line 139
    .line 140
    invoke-virtual {v4, p3, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    or-int/2addr v3, v4

    .line 145
    iget-object v4, v0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 146
    .line 147
    invoke-virtual {v4, p3, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    or-int/2addr p2, v3

    .line 152
    if-eqz p2, :cond_3

    .line 153
    .line 154
    invoke-virtual {v0, v0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 155
    .line 156
    .line 157
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    if-eqz p2, :cond_4

    .line 159
    .line 160
    new-instance p2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda16;

    .line 161
    .line 162
    invoke-direct {p2, p0, p1, v1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :catchall_0
    move-exception p0

    .line 175
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 177
    .line 178
    throw p0

    .line 179
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 180
    .line 181
    const-string p3, "Max limit on MIME types for MIME group "

    .line 182
    .line 183
    const-string v0, " exceeded for package "

    .line 184
    .line 185
    invoke-static {p3, p2, v0, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 194
    .line 195
    const-string p3, "Unknown MIME group "

    .line 196
    .line 197
    const-string v0, " for package "

    .line 198
    .line 199
    invoke-static {p3, p2, v0, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p0
.end method

.method public final setPackageStoppedState(Ljava/lang/String;ZI)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->setPackageStoppedState(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;ILjava/lang/String;II)[Ljava/lang/String;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p7

    .line 3
    .line 4
    move/from16 v8, p9

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v9

    .line 10
    const/4 v2, 0x1

    .line 11
    and-int/lit8 v3, p6, 0x1

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->quarantinedEnabled()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    move v10, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v10, v4

    .line 25
    :goto_0
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {}, Landroid/app/admin/flags/Flags;->crossUserSuspensionEnabledRo()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    move/from16 v5, p8

    .line 38
    .line 39
    invoke-static {v5, v1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    :goto_1
    move-object v7, v5

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    invoke-static {v8, v1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    goto :goto_1

    .line 50
    :goto_2
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    if-eqz v9, :cond_a

    .line 56
    .line 57
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    const/16 v11, 0x3e8

    .line 62
    .line 63
    if-ne v6, v11, :cond_2

    .line 64
    .line 65
    goto/16 :goto_5

    .line 66
    .line 67
    :cond_2
    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 68
    .line 69
    invoke-virtual {v6, v8}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    const-wide/16 v11, 0x0

    .line 74
    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    invoke-interface {v3, v6, v11, v12, v8}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-ne v6, v9, :cond_3

    .line 82
    .line 83
    goto/16 :goto_5

    .line 84
    .line 85
    :cond_3
    const-string/jumbo v6, "setPackagesSuspendedAsUser"

    .line 86
    .line 87
    .line 88
    if-eqz v10, :cond_4

    .line 89
    .line 90
    iget-object v13, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    const-string v14, "android.permission.QUARANTINE_APPS"

    .line 93
    .line 94
    invoke-virtual {v13, v14, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    iget-object v13, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    const-string v14, "android.permission.SUSPEND_APPS"

    .line 101
    .line 102
    invoke-virtual {v13, v14, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_3
    invoke-static {}, Landroid/app/admin/flags/Flags;->crossUserSuspensionEnabledRo()Z

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    if-eqz v13, :cond_6

    .line 110
    .line 111
    iget-object v2, v7, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 112
    .line 113
    iget v4, v7, Landroid/content/pm/UserPackage;->userId:I

    .line 114
    .line 115
    invoke-interface {v3, v2, v11, v12, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-ne v2, v9, :cond_5

    .line 120
    .line 121
    iget v2, v7, Landroid/content/pm/UserPackage;->userId:I

    .line 122
    .line 123
    if-eq v8, v2, :cond_a

    .line 124
    .line 125
    iget-object v2, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 128
    .line 129
    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    .line 134
    .line 135
    iget-object v1, v7, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v2, "Suspender package %s doesn\'t match calling uid %d"

    .line 146
    .line 147
    invoke-virtual {v2, v1}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :cond_6
    iget-object v5, v7, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 156
    .line 157
    invoke-interface {v3, v5, v11, v12, v8}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-ne v5, v9, :cond_7

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_7
    move v2, v4

    .line 165
    :goto_4
    const/16 v4, 0x7d0

    .line 166
    .line 167
    if-ne v9, v4, :cond_8

    .line 168
    .line 169
    invoke-static {v5, v9}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_8

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_8
    if-eqz v2, :cond_9

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    .line 180
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v2, "Suspending package "

    .line 184
    .line 185
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v2, v7, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 189
    .line 190
    const-string v3, " in user "

    .line 191
    .line 192
    const-string v4, " does not belong to calling uid "

    .line 193
    .line 194
    invoke-static {v8, v2, v3, v4, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw v0

    .line 208
    :cond_a
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string/jumbo v4, "setPackagesSuspendedAsUser, packageName: "

    .line 211
    .line 212
    .line 213
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v4, ", userId: "

    .line 224
    .line 225
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v4, ", suspended: "

    .line 232
    .line 233
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    move/from16 v4, p2

    .line 237
    .line 238
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v5, ", callingUid: "

    .line 242
    .line 243
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v5, ", callingPackage: "

    .line 250
    .line 251
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-static {v1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 265
    .line 266
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSuspendPackageHelper:Lcom/android/server/pm/SuspendPackageHelper;

    .line 267
    .line 268
    move-object v1, v3

    .line 269
    move-object/from16 v2, p1

    .line 270
    .line 271
    move/from16 v3, p2

    .line 272
    .line 273
    move-object/from16 v4, p3

    .line 274
    .line 275
    move-object/from16 v5, p4

    .line 276
    .line 277
    move-object/from16 v6, p5

    .line 278
    .line 279
    move/from16 v8, p9

    .line 280
    .line 281
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/SuspendPackageHelper;->setPackagesSuspended(Lcom/android/server/pm/Computer;[Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Landroid/content/pm/UserPackage;IIZ)[Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    return-object v0
.end method

.method public final setRequiredForSystemUser(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "setRequiredForSystemUser can only be run by the system or root"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    new-instance v1, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, v2, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda0;-><init>(IZ)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-boolean p1, p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;->mCommitted:Z

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettings()V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method public final setRuntimePermissionsVersion(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 8
    .line 9
    const-string/jumbo v1, "setRuntimePermissionVersion"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-$$Nest$menforceAdjustRuntimePermissionsPolicyOrUpgradeRuntimePermissions(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    .line 25
    .line 26
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    .line 30
    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final setSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    const-string/jumbo v1, "setSplashScreenTheme"

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v0, v7

    .line 17
    move v2, v6

    .line 18
    move v3, p3

    .line 19
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v7, p1, v6}, Lcom/android/server/pm/PackageManagerService;->enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v7, v6, p3, p1}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 38
    .line 39
    new-instance v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda2;

    .line 40
    .line 41
    invoke-direct {v0, p3, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda2;-><init>(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final setSystemAppHiddenUntilInstalled(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->setSystemAppHiddenUntilInstalled(Lcom/android/server/pm/Computer;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setSystemAppInstallState(Ljava/lang/String;ZI)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->setSystemAppInstallState(ILcom/android/server/pm/Computer;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final setUpdateAvailable(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->setUpdateAvailable_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda0;-><init>(IZ)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setUserMinAspectRatio(Ljava/lang/String;II)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->setUserMinAspectRatio_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v6

    .line 8
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 11
    .line 12
    .line 13
    move-result-object v7

    .line 14
    const-string/jumbo v1, "setUserMinAspectRatio"

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    move-object v0, v7

    .line 20
    move v2, v6

    .line 21
    move v3, p2

    .line 22
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(Ljava/lang/String;IIZZ)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v7, p1, v6}, Lcom/android/server/pm/PackageManagerService;->enforceOwnerRights(Lcom/android/server/pm/Computer;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v7, v6, p2, p1}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getMinAspectRatio()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-ne v0, p3, :cond_1

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 52
    .line 53
    new-instance v0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda5;

    .line 54
    .line 55
    invoke-direct {v0, p2, p3}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda5;-><init>(II)V

    .line 56
    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final shouldAppSupportBadgeIcon(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mBadgeLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->isMonetizedPreloadApp(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mPreloadAppsLaunched:Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreAppsForBadge:Landroid/util/ArraySet;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    :cond_2
    const/4 v1, 0x1

    .line 51
    :cond_3
    monitor-exit v0

    .line 52
    :goto_1
    return v1

    .line 53
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->unregisterMoveCallback_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/MovePackageHelper$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final updateIntentVerificationStatus(Ljava/lang/String;II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 4
    .line 5
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setLegacyUserState(IILjava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final verifyIntentFilter(IILjava/util/List;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->mDomainVerificationConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "android.permission.INTENT_FILTER_VERIFICATION_AGENT"

    .line 10
    .line 11
    const-string v2, "Only the intent filter verification agent can verify applications"

    .line 12
    .line 13
    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p2, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;

    .line 17
    .line 18
    invoke-direct {p2, v0, p1, p3}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;-><init>(IILjava/util/List;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x3

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/DomainVerificationConnection;->schedule(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final verifyPendingInstall(II)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 8
    .line 9
    const-string v2, "Only package verification agents can verify applications"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v2, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;

    .line 23
    .line 24
    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;III)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    const-string/jumbo p0, "verifyPendingInstall vid: "

    .line 31
    .line 32
    .line 33
    const-string v1, ", vcode: "

    .line 34
    .line 35
    const-string v2, ", callingUid: "

    .line 36
    .line 37
    invoke-static {p1, p2, p0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "PackageManager"

    .line 42
    .line 43
    invoke-static {p0, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final waitForHandler(JZ)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mBackgroundHandler:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance p3, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {p3, v0}, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    new-instance p3, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    invoke-direct {p3, v0}, Lcom/android/server/location/settings/SettingsStore$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    add-long/2addr v2, p1

    .line 39
    :catch_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 40
    .line 41
    .line 42
    move-result-wide p0

    .line 43
    const-wide/16 p2, 0x0

    .line 44
    .line 45
    cmp-long p0, p0, p2

    .line 46
    .line 47
    if-lez p0, :cond_2

    .line 48
    .line 49
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide p0

    .line 53
    sub-long p0, v2, p0

    .line 54
    .line 55
    cmp-long p2, p0, p2

    .line 56
    .line 57
    if-gtz p2, :cond_1

    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return p0

    .line 61
    :cond_1
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 62
    .line 63
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 64
    .line 65
    .line 66
    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return p0

    .line 68
    :cond_2
    return v1
.end method
