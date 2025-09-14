.class public final Lcom/android/server/pm/StorageEventHelper;
.super Landroid/os/storage/StorageEventListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

.field public final mLoadedVolumes:Landroid/util/ArraySet;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/DeletePackageHelper;Lcom/android/server/pm/RemovePackageHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 12
    .line 13
    new-instance v0, Lcom/android/server/pm/BroadcastHelper;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/android/server/pm/StorageEventHelper;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/android/server/pm/StorageEventHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final onVolumeForgotten(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "PackageManager"

    .line 8
    .line 9
    const-string p1, "Forgetting internal storage is probably a mistake; ignoring"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 18
    .line 19
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v6, 0x0

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 48
    .line 49
    const-string v3, "PackageManager"

    .line 50
    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v5, "Destroying "

    .line 57
    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v5, " because volume was forgotten"

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    iget-object v3, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 81
    .line 82
    new-instance v4, Landroid/content/pm/VersionedPackage;

    .line 83
    .line 84
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const/4 v7, -0x1

    .line 89
    invoke-direct {v4, v5, v7}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    new-instance v5, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    .line 93
    .line 94
    const/4 v7, 0x0

    .line 95
    invoke-direct {v5, v7}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mDeletePackageHelper:Lcom/android/server/pm/DeletePackageHelper;

    .line 103
    .line 104
    const/4 v8, 0x0

    .line 105
    const/4 v7, 0x2

    .line 106
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageVersionedInternal(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;IIZ)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v3, v2}, Lcom/android/internal/policy/AttributeCache;->removePackage(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto :goto_1

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 124
    .line 125
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 126
    .line 127
    iget-object v1, v1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 128
    .line 129
    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 133
    .line 134
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageManagerService;->writeSettingsLPrTEMP(Z)V

    .line 135
    .line 136
    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 139
    .line 140
    return-void

    .line 141
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    sget-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    .line 143
    .line 144
    throw p0
.end method

.method public final onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 4

    .line 1
    iget p2, p1, Landroid/os/storage/VolumeInfo;->type:I

    .line 2
    .line 3
    const/4 p3, 0x5

    .line 4
    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p2, v1, :cond_1

    .line 7
    .line 8
    iget p2, p1, Landroid/os/storage/VolumeInfo;->state:I

    .line 9
    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object v2, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 19
    .line 20
    invoke-virtual {v2, p2}, Lcom/android/server/pm/UserManagerService;->reconcileUsers(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/StorageEventHelper;->reconcileApps(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 35
    .line 36
    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 37
    .line 38
    monitor-enter v3

    .line 39
    :try_start_0
    invoke-virtual {v2, p2}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object p2, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 44
    .line 45
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    new-instance v2, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/StorageEventHelper;Landroid/os/storage/VolumeInfo;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p0

    .line 60
    :cond_0
    if-ne p2, p3, :cond_1

    .line 61
    .line 62
    iget-object p2, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 63
    .line 64
    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 65
    .line 66
    new-instance v2, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/pm/StorageEventHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/StorageEventHelper;Landroid/os/storage/VolumeInfo;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    iget p2, p1, Landroid/os/storage/VolumeInfo;->type:I

    .line 76
    .line 77
    if-nez p2, :cond_3

    .line 78
    .line 79
    iget-object p2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 80
    .line 81
    if-eqz p2, :cond_3

    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_3

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/pm/StorageEventHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    iget p1, p1, Landroid/os/storage/VolumeInfo;->state:I

    .line 98
    .line 99
    const/4 p2, 0x0

    .line 100
    if-ne p1, v0, :cond_2

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    sput-boolean v1, Lcom/android/server/pm/AsecInstallHelper;->sPreMounted:Z

    .line 106
    .line 107
    const-string p1, "PackageManager"

    .line 108
    .line 109
    const-string p3, "SD Card is mounted, updateExternalMediaStatus"

    .line 110
    .line 111
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/AsecInstallHelper;->updateExternalMediaStatus(ZZ)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    if-ne p1, p3, :cond_3

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    sput-boolean p2, Lcom/android/server/pm/AsecInstallHelper;->sPreMounted:Z

    .line 124
    .line 125
    const-string p1, "PackageManager"

    .line 126
    .line 127
    const-string p3, "SD Card is unmounted, updateExternalMediaStatus"

    .line 128
    .line 129
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p2, p2}, Lcom/android/server/pm/AsecInstallHelper;->updateExternalMediaStatus(ZZ)V

    .line 133
    .line 134
    .line 135
    :cond_3
    :goto_1
    return-void
.end method

.method public final reconcileApps(Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 23
    .line 24
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p2}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    array-length p2, p1

    .line 47
    const/4 v1, 0x0

    .line 48
    move v3, v2

    .line 49
    :goto_1
    if-ge v3, p2, :cond_6

    .line 50
    .line 51
    aget-object v4, p1, v3

    .line 52
    .line 53
    invoke-static {v4}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_1

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_5

    .line 64
    .line 65
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v5}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_5

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    move v7, v2

    .line 84
    :goto_2
    if-ge v7, v6, :cond_3

    .line 85
    .line 86
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    check-cast v8, Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eqz v8, :cond_2

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    if-nez v1, :cond_4

    .line 103
    .line 104
    new-instance v1, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_6
    if-eqz v1, :cond_7

    .line 116
    .line 117
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    :goto_4
    if-ge v2, p1, :cond_7

    .line 122
    .line 123
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    check-cast p2, Ljava/io/File;

    .line 128
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v3, "Destroying orphaned at "

    .line 132
    .line 133
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const/4 v3, 0x5

    .line 144
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/server/pm/StorageEventHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 148
    .line 149
    invoke-virtual {v0, p2}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePath(Ljava/io/File;)V

    .line 150
    .line 151
    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_7
    return-void
.end method
