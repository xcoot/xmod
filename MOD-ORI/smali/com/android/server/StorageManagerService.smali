.class public final Lcom/android/server/StorageManagerService;
.super Landroid/os/storage/IStorageManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# static fields
.field public static final KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

.field public static final LOCAL_LOGV:Z

.field public static final PASS_CLIENTS:Ljava/util/List;

.field public static sMediaStoreAuthorityProcessName:Ljava/lang/String;

.field public static sSelf:Lcom/android/server/StorageManagerService;

.field public static volatile sSmartIdleMaintPeriod:I


# instance fields
.field public mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

.field public final mAppFuseLock:Ljava/lang/Object;

.field public final mAsecMountSet:Ljava/util/HashSet;

.field public final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field public volatile mBootCompleted:Z

.field public final mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

.field public final mCeStorageEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mCeStoragePreparedUsers:Ljava/util/Set;

.field public final mCeUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

.field public final mCloudMediaProviders:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public volatile mCurrentUserId:I

.field public volatile mDaemonConnected:Z

.field public mDem:Lcom/samsung/android/security/SemSdCardEncryption;

.field public mDirEncryptListner:Lcom/android/server/StorageManagerService$DirEncryptListner;

.field public final mDiskScanLatches:Landroid/util/ArrayMap;

.field public final mDisks:Landroid/util/ArrayMap;

.field public volatile mDownloadsAuthorityAppId:I

.field public volatile mExternalStorageAuthorityAppId:I

.field public final mFuseMountedUser:Ljava/util/Set;

.field public final mHandler:Lcom/android/server/StorageManagerService$Callbacks;

.field public mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

.field public mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public mIPackageManager:Landroid/content/pm/IPackageManager;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public volatile mInternalStorageSize:J

.field public final mIsMediaSharedWithParent:Ljava/util/HashMap;

.field public mLastMaintenance:J

.field public final mLastMaintenanceFile:Ljava/io/File;

.field public final mListener:Lcom/android/server/StorageManagerService$4;

.field public final mLock:Ljava/lang/Object;

.field public volatile mMaxWriteRecords:I

.field public volatile mMediaStoreAuthorityAppId:I

.field public mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

.field public mMoveTargetUuid:Ljava/lang/String;

.field public volatile mNeedGC:Z

.field public mNextAppFuseName:I

.field public final mObbActionHandler:Lcom/android/server/StorageManagerService$Callbacks;

.field public final mObbMounts:Ljava/util/Map;

.field public final mObbPathToStateMap:Ljava/util/Map;

.field public final mPackageMonitorsForUser:Landroid/util/SparseArray;

.field public final mPassReceiver:Lcom/android/server/StorageManagerService$1;

.field public volatile mPassedLifetimeThresh:Z

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPolicyReceiver:Lcom/android/server/StorageManagerService$1;

.field public mPrimaryStorageUuid:Ljava/lang/String;

.field public final mRecords:Landroid/util/ArrayMap;

.field public volatile mRemountCurrentUserVolumesOnUnlock:Z

.field public volatile mSecureKeyguardShowing:Z

.field public final mSettingsFile:Landroid/util/AtomicFile;

.field public final mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

.field public final mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

.field public volatile mStorageWriteRecords:[I

.field public volatile mStoraged:Landroid/os/IStoraged;

.field public mSystemUnlockedUsers:[I

.field public final mUidsWithLegacyExternalStorage:Ljava/util/Set;

.field public final mUnmountLock:Ljava/lang/Object;

.field public mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

.field public final mUserReceiver:Lcom/android/server/StorageManagerService$1;

.field public final mUserSharesMediaWith:Landroid/util/SparseIntArray;

.field public volatile mVold:Landroid/os/IVold;

.field public final mVoldAppDataIsolationEnabled:Z

.field public final mVolumes:Landroid/util/ArrayMap;

.field public final mWriteRecordFile:Landroid/util/AtomicFile;

.field public preSDPolicy:Z


# direct methods
.method public static -$$Nest$maddObbStateLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    .line 5
    .line 6
    invoke-interface {v0}, Landroid/os/storage/IObbActionListener;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 11
    .line 12
    check-cast v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/util/List;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 28
    .line 29
    check-cast v2, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/android/server/StorageManagerService$ObbState;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v4, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string p1, "Attempt to add ObbState twice. This indicates an error in the StorageManagerService logic."

    .line 65
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_2
    :goto_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :try_start_0
    iget-object v2, p1, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    .line 74
    .line 75
    invoke-interface {v2}, Landroid/os/storage/IObbActionListener;->asBinder()Landroid/os/IBinder;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-interface {v2, p1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 84
    .line 85
    iget-object v0, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    .line 86
    .line 87
    check-cast p0, Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :catch_0
    move-exception v2

    .line 94
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 104
    .line 105
    check-cast p0, Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    :cond_3
    throw v2
.end method

.method public static -$$Nest$mcompleteUnlockUser(Lcom/android/server/StorageManagerService;I)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    const-string v1, "StorageManagerService"

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "completeUnlockUser: userId="

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->onKeyguardStateChanged(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 33
    .line 34
    array-length v4, v3

    .line 35
    move v5, v1

    .line 36
    :goto_0
    if-ge v5, v4, :cond_1

    .line 37
    .line 38
    aget v6, v3, v5

    .line 39
    .line 40
    if-ne v6, p1, :cond_0

    .line 41
    .line 42
    const-string p0, "StorageManagerService"

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v1, "completeUnlockUser called for already unlocked user:"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    monitor-exit v2

    .line 66
    goto :goto_2

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_3

    .line 69
    :cond_0
    add-int/2addr v5, v0

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move v3, v1

    .line 72
    :goto_1
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 73
    .line 74
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ge v3, v4, :cond_3

    .line 79
    .line 80
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 87
    .line 88
    invoke-virtual {v4, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_2

    .line 93
    .line 94
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_2

    .line 99
    .line 100
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {v4, v5, p1, v1}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 107
    .line 108
    const/4 v7, 0x6

    .line 109
    invoke-virtual {v6, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getState()I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    invoke-static {v4}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 125
    .line 126
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    sget v7, Lcom/android/server/StorageManagerService$Callbacks;->$r8$clinit:I

    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    iput-object v5, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 140
    .line 141
    iput-object v4, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 142
    .line 143
    iput-object v4, v7, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 144
    .line 145
    invoke-virtual {v6, v0, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 150
    .line 151
    .line 152
    :cond_2
    add-int/2addr v3, v0

    .line 153
    goto :goto_1

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 155
    .line 156
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 161
    .line 162
    monitor-exit v2

    .line 163
    :goto_2
    return-void

    .line 164
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    throw p0
.end method

.method public static -$$Nest$mdispatchOnFinished(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onFinished(ILandroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    :cond_0
    return-void
.end method

.method public static -$$Nest$mdispatchOnStatus(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/os/IVoldTaskListener;->onStatus(ILandroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    :cond_0
    return-void
.end method

.method public static -$$Nest$monDiskScannedLocked(Lcom/android/server/StorageManagerService;Landroid/os/storage/DiskInfo;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v0, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 18
    .line 19
    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget v0, p1, Landroid/os/storage/DiskInfo;->flags:I

    .line 37
    .line 38
    and-int/lit8 v2, v0, 0x4

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    const-string v0, "SD"

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    and-int/lit8 v0, v0, 0x8

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    const-string v0, "USB"

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const-string/jumbo v0, "null"

    .line 53
    .line 54
    .line 55
    :goto_1
    iget-object v2, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string/jumbo v4, "{"

    .line 60
    .line 61
    .line 62
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string/jumbo v2, "}:"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v3, "DiskInfo"

    .line 79
    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v3, "\n"

    .line 85
    .line 86
    invoke-static {v2, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iget-wide v4, p1, Landroid/os/storage/DiskInfo;->size:J

    .line 95
    .line 96
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    iget v5, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    .line 101
    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    filled-new-array {v0, v4, v5}, [Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const-string v4, "  flags=%s size=%d volumeCount=%d"

    .line 111
    .line 112
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v0, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v2, p1, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    .line 132
    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v5, "  sysPath="

    .line 136
    .line 137
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v0, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string/jumbo v3, "onDiskScannedLocked: disk="

    .line 161
    .line 162
    .line 163
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v0, " volumeCount="

    .line 170
    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    const-string v2, "StorageManagerService"

    .line 182
    .line 183
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    const-string v0, "android.os.storage.action.DISK_SCANNED"

    .line 187
    .line 188
    const/high16 v2, 0x5000000

    .line 189
    .line 190
    invoke-static {v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string v2, "android.os.storage.extra.DISK_ID"

    .line 195
    .line 196
    iget-object v3, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    const-string v2, "android.os.storage.extra.VOLUME_COUNT"

    .line 202
    .line 203
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    .line 205
    .line 206
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 207
    .line 208
    const/4 v3, 0x7

    .line 209
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    .line 217
    .line 218
    iget-object v2, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    .line 225
    .line 226
    if-eqz v0, :cond_4

    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 229
    .line 230
    .line 231
    :cond_4
    iput v1, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    .line 232
    .line 233
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 234
    .line 235
    sget v0, Lcom/android/server/StorageManagerService$Callbacks;->$r8$clinit:I

    .line 236
    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 249
    .line 250
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 251
    .line 252
    const/4 p1, 0x5

    .line 253
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 258
    .line 259
    .line 260
    return-void
.end method

.method public static -$$Nest$monVolumeCreatedLocked(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 11
    .line 12
    iget v1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 13
    .line 14
    const-string v2, " because user "

    .line 15
    .line 16
    const-string v3, "Ignoring volume "

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const-string v5, "StorageManagerService"

    .line 20
    .line 21
    if-ltz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v1, v4}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget p1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " is no longer running."

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v5, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :cond_0
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    const/4 v6, 0x2

    .line 71
    const/4 v7, 0x5

    .line 72
    if-ne v0, v6, :cond_7

    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    iget v6, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 77
    .line 78
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v0, v6, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    const-class v6, Landroid/os/UserManager;

    .line 89
    .line 90
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/os/UserManager;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/os/UserManager;->isMediaSharedWithParent()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    move v0, v4

    .line 102
    :goto_0
    if-nez v0, :cond_4

    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 105
    .line 106
    iget v6, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    new-instance v8, Landroid/content/Intent;

    .line 112
    .line 113
    const-string v9, "android.service.storage.ExternalStorageService"

    .line 114
    .line 115
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v9, v0, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServicePackageName:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    iget-object v0, v0, Lcom/android/server/storage/StorageSessionController;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const v9, 0xc0084

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v8, v9, v6}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-nez v0, :cond_2

    .line 137
    .line 138
    const/4 v0, 0x0

    .line 139
    goto :goto_1

    .line 140
    :cond_2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 141
    .line 142
    :goto_1
    if-eqz v0, :cond_3

    .line 143
    .line 144
    move v4, v1

    .line 145
    :cond_3
    if-nez v4, :cond_4

    .line 146
    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget p1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 163
    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string p1, " does not support external storage."

    .line 172
    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-static {v5, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    goto/16 :goto_3

    .line 184
    .line 185
    :cond_4
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 186
    .line 187
    const-class v1, Landroid/os/storage/StorageManager;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 194
    .line 195
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 200
    .line 201
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_5

    .line 208
    .line 209
    const-string/jumbo v1, "private"

    .line 210
    .line 211
    .line 212
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-nez v1, :cond_6

    .line 219
    .line 220
    :cond_5
    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 221
    .line 222
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 223
    .line 224
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_e

    .line 229
    .line 230
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v1, "Found primary storage at #1 "

    .line 233
    .line 234
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v5, v0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 248
    .line 249
    or-int/2addr v0, v7

    .line 250
    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 251
    .line 252
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 253
    .line 254
    invoke-virtual {p0, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_3

    .line 262
    .line 263
    :cond_7
    if-nez v0, :cond_a

    .line 264
    .line 265
    const-string/jumbo v0, "primary_physical"

    .line 266
    .line 267
    .line 268
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_8

    .line 275
    .line 276
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 277
    .line 278
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_8

    .line 283
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v1, "Found primary storage at #2 "

    .line 287
    .line 288
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-static {v5, v0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 302
    .line 303
    or-int/2addr v0, v7

    .line 304
    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 305
    .line 306
    :cond_8
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 307
    .line 308
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_9

    .line 313
    .line 314
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 315
    .line 316
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-eqz v0, :cond_9

    .line 321
    .line 322
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 323
    .line 324
    or-int/lit8 v0, v0, 0x4

    .line 325
    .line 326
    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 327
    .line 328
    :cond_9
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 329
    .line 330
    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 331
    .line 332
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 333
    .line 334
    invoke-virtual {p0, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 339
    .line 340
    .line 341
    goto :goto_3

    .line 342
    :cond_a
    if-ne v0, v1, :cond_b

    .line 343
    .line 344
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 345
    .line 346
    invoke-virtual {p0, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 351
    .line 352
    .line 353
    goto :goto_3

    .line 354
    :cond_b
    if-ne v0, v7, :cond_d

    .line 355
    .line 356
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 357
    .line 358
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isStubVisible()Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-eqz v0, :cond_c

    .line 363
    .line 364
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 365
    .line 366
    or-int/lit8 v0, v0, 0x4

    .line 367
    .line 368
    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 369
    .line 370
    goto :goto_2

    .line 371
    :cond_c
    iget v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 372
    .line 373
    or-int/2addr v0, v6

    .line 374
    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 375
    .line 376
    :goto_2
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 377
    .line 378
    iput v0, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 379
    .line 380
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 381
    .line 382
    invoke-virtual {p0, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 387
    .line 388
    .line 389
    goto :goto_3

    .line 390
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    const-string v0, "Skipping automatic mounting of "

    .line 393
    .line 394
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object p0

    .line 404
    invoke-static {v5, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    :cond_e
    :goto_3
    return-void
.end method

.method public static -$$Nest$mremoveObbStateLocked(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    .line 5
    .line 6
    invoke-interface {v0}, Landroid/os/storage/IObbActionListener;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 11
    .line 12
    check-cast v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/util/List;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget-object v2, p1, Lcom/android/server/StorageManagerService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    .line 29
    .line 30
    invoke-interface {v2}, Landroid/os/storage/IObbActionListener;->asBinder()Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-interface {v2, p1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 45
    .line 46
    check-cast v1, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    .line 54
    .line 55
    check-cast p0, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static -$$Nest$mscrubPath(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string/jumbo p0, "internal"

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    iget-wide v0, p0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 29
    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    cmp-long p1, v0, v2

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string/jumbo v0, "ext:"

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iget-wide v2, p0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 50
    .line 51
    sub-long/2addr v0, v2

    .line 52
    const-wide/32 v2, 0x240c8400

    .line 53
    .line 54
    .line 55
    div-long/2addr v0, v2

    .line 56
    long-to-int p0, v0

    .line 57
    const-string/jumbo v0, "w"

    .line 58
    .line 59
    .line 60
    invoke-static {p0, p1, v0}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    const-string/jumbo p0, "unknown"

    .line 66
    .line 67
    .line 68
    :goto_1
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "StorageManagerService"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/StorageManagerService;->LOCAL_LOGV:Z

    .line 9
    .line 10
    const/16 v0, 0x3c

    .line 11
    .line 12
    sput v0, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 13
    .line 14
    const-string v0, "(?i)(^/storage/[^/]+/(?:([0-9]+)/)?Android/(?:data|media|obb|sandbox)/)([^/]+)(/.*)?"

    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    const-string/jumbo v5, "com.samsung.android.app.moments"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v6, "com.samsung.android.mcfds"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v1, "com.samsung.android.smartsuggestions"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v2, "com.samsung.android.moneta"

    .line 32
    .line 33
    .line 34
    const-string/jumbo v3, "com.samsung.sept.Security"

    .line 35
    .line 36
    .line 37
    const-string/jumbo v4, "com.samsung.android.privateaccesstokens"

    .line 38
    .line 39
    .line 40
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/android/server/StorageManagerService;->PASS_CLIENTS:Ljava/util/List;

    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/os/storage/IStorageManager$Stub;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mFuseMountedUser:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCeStoragePreparedUsers:Ljava/util/Set;

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/android/server/StorageManagerService;->mInternalStorageSize:J

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mNeedGC:Z

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v1, v2}, Lcom/android/server/LockGuard;->installNewLock(IZ)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance v1, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    sget-object v3, Llibcore/util/EmptyArray;->INT:[I

    .line 39
    .line 40
    iput-object v3, v1, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 41
    .line 42
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mCeUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

    .line 46
    .line 47
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 48
    .line 49
    new-instance v1, Landroid/util/ArrayMap;

    .line 50
    .line 51
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 55
    .line 56
    new-instance v1, Landroid/util/ArrayMap;

    .line 57
    .line 58
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 62
    .line 63
    new-instance v1, Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 69
    .line 70
    new-instance v1, Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    .line 76
    .line 77
    new-instance v1, Landroid/util/SparseArray;

    .line 78
    .line 79
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 83
    .line 84
    const/4 v1, -0x1

    .line 85
    iput v1, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    .line 86
    .line 87
    iput v1, p0, Lcom/android/server/StorageManagerService;->mDownloadsAuthorityAppId:I

    .line 88
    .line 89
    iput v1, p0, Lcom/android/server/StorageManagerService;->mExternalStorageAuthorityAppId:I

    .line 90
    .line 91
    iput v2, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 92
    .line 93
    iput-boolean v2, p0, Lcom/android/server/StorageManagerService;->mRemountCurrentUserVolumesOnUnlock:Z

    .line 94
    .line 95
    new-instance v1, Ljava/lang/Object;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    .line 101
    .line 102
    iput v2, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 106
    .line 107
    new-instance v3, Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mIsMediaSharedWithParent:Ljava/util/HashMap;

    .line 113
    .line 114
    new-instance v3, Ljava/util/HashSet;

    .line 115
    .line 116
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 120
    .line 121
    new-instance v3, Ljava/lang/Object;

    .line 122
    .line 123
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mUnmountLock:Ljava/lang/Object;

    .line 127
    .line 128
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    .line 129
    .line 130
    invoke-direct {v3, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 131
    .line 132
    .line 133
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 134
    .line 135
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->preSDPolicy:Z

    .line 136
    .line 137
    new-instance v3, Landroid/util/SparseIntArray;

    .line 138
    .line 139
    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Landroid/util/SparseIntArray;

    .line 143
    .line 144
    iput-boolean v2, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 145
    .line 146
    iput-boolean v2, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 147
    .line 148
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 149
    .line 150
    new-instance v3, Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 153
    .line 154
    .line 155
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 156
    .line 157
    new-instance v3, Ljava/util/HashMap;

    .line 158
    .line 159
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 160
    .line 161
    .line 162
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 163
    .line 164
    new-instance v3, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 165
    .line 166
    invoke-direct {v3, p0}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 167
    .line 168
    .line 169
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 170
    .line 171
    new-instance v3, Landroid/util/ArraySet;

    .line 172
    .line 173
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 174
    .line 175
    .line 176
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    .line 177
    .line 178
    new-instance v3, Landroid/util/SparseArray;

    .line 179
    .line 180
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 181
    .line 182
    .line 183
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mPackageMonitorsForUser:Landroid/util/SparseArray;

    .line 184
    .line 185
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 186
    .line 187
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 188
    .line 189
    .line 190
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mCeStorageEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 191
    .line 192
    new-instance v3, Lcom/android/server/StorageManagerService$1;

    .line 193
    .line 194
    const/4 v4, 0x0

    .line 195
    invoke-direct {v3, p0, v4}, Lcom/android/server/StorageManagerService$1;-><init>(Lcom/android/server/StorageManagerService;I)V

    .line 196
    .line 197
    .line 198
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Lcom/android/server/StorageManagerService$1;

    .line 199
    .line 200
    new-instance v3, Lcom/android/server/StorageManagerService$1;

    .line 201
    .line 202
    const/4 v4, 0x2

    .line 203
    invoke-direct {v3, p0, v4}, Lcom/android/server/StorageManagerService$1;-><init>(Lcom/android/server/StorageManagerService;I)V

    .line 204
    .line 205
    .line 206
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mPassReceiver:Lcom/android/server/StorageManagerService$1;

    .line 207
    .line 208
    new-instance v3, Lcom/android/server/StorageManagerService$4;

    .line 209
    .line 210
    invoke-direct {v3, p0}, Lcom/android/server/StorageManagerService$4;-><init>(Lcom/android/server/StorageManagerService;)V

    .line 211
    .line 212
    .line 213
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mListener:Lcom/android/server/StorageManagerService$4;

    .line 214
    .line 215
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mDirEncryptListner:Lcom/android/server/StorageManagerService$DirEncryptListner;

    .line 216
    .line 217
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    .line 218
    .line 219
    new-instance v3, Lcom/android/server/StorageManagerService$1;

    .line 220
    .line 221
    const/4 v4, 0x1

    .line 222
    invoke-direct {v3, p0, v4}, Lcom/android/server/StorageManagerService$1;-><init>(Lcom/android/server/StorageManagerService;I)V

    .line 223
    .line 224
    .line 225
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mPolicyReceiver:Lcom/android/server/StorageManagerService$1;

    .line 226
    .line 227
    sput-object p0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    .line 228
    .line 229
    const-string/jumbo v3, "persist.sys.vold_app_data_isolation_enabled"

    .line 230
    .line 231
    .line 232
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    iput-boolean v2, p0, Lcom/android/server/StorageManagerService;->mVoldAppDataIsolationEnabled:Z

    .line 237
    .line 238
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 239
    .line 240
    new-instance v2, Lcom/android/server/StorageManagerService$Callbacks;

    .line 241
    .line 242
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-direct {v2, v3}, Lcom/android/server/StorageManagerService$Callbacks;-><init>(Landroid/os/Looper;)V

    .line 251
    .line 252
    .line 253
    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 254
    .line 255
    const-string v2, "StorageManagerService"

    .line 256
    .line 257
    invoke-static {v2}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    new-instance v3, Lcom/android/server/StorageManagerService$Callbacks;

    .line 262
    .line 263
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    const/4 v4, 0x2

    .line 268
    invoke-direct {v3, p0, v2, v4}, Lcom/android/server/StorageManagerService$Callbacks;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;I)V

    .line 269
    .line 270
    .line 271
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 272
    .line 273
    new-instance v2, Lcom/android/server/StorageManagerService$Callbacks;

    .line 274
    .line 275
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    const/4 v4, 0x1

    .line 284
    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/StorageManagerService$Callbacks;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;I)V

    .line 285
    .line 286
    .line 287
    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 288
    .line 289
    new-instance v2, Lcom/android/server/storage/StorageSessionController;

    .line 290
    .line 291
    invoke-direct {v2, p1}, Lcom/android/server/storage/StorageSessionController;-><init>(Landroid/content/Context;)V

    .line 292
    .line 293
    .line 294
    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 295
    .line 296
    new-instance v2, Lcom/android/server/pm/Installer;

    .line 297
    .line 298
    invoke-direct {v2, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    .line 299
    .line 300
    .line 301
    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 302
    .line 303
    invoke-virtual {v2}, Lcom/android/server/pm/Installer;->onStart()V

    .line 304
    .line 305
    .line 306
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    new-instance v2, Ljava/io/File;

    .line 311
    .line 312
    const-string/jumbo v3, "system"

    .line 313
    .line 314
    .line 315
    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    new-instance p1, Ljava/io/File;

    .line 319
    .line 320
    const-string/jumbo v3, "last-fstrim"

    .line 321
    .line 322
    .line 323
    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    .line 327
    .line 328
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-nez v2, :cond_0

    .line 333
    .line 334
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 335
    .line 336
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .line 341
    .line 342
    goto :goto_0

    .line 343
    :catch_0
    const-string p1, "StorageManagerService"

    .line 344
    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v3, "Unable to create fstrim record "

    .line 348
    .line 349
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    .line 353
    .line 354
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-static {p1, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 370
    .line 371
    .line 372
    move-result-wide v2

    .line 373
    iput-wide v2, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    .line 374
    .line 375
    :goto_0
    new-instance p1, Landroid/util/AtomicFile;

    .line 376
    .line 377
    new-instance v2, Ljava/io/File;

    .line 378
    .line 379
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    const-string/jumbo v4, "storage.xml"

    .line 384
    .line 385
    .line 386
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    const-string/jumbo v3, "storage-settings"

    .line 390
    .line 391
    .line 392
    invoke-direct {p1, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 396
    .line 397
    new-instance p1, Landroid/util/AtomicFile;

    .line 398
    .line 399
    new-instance v2, Ljava/io/File;

    .line 400
    .line 401
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    const-string/jumbo v4, "storage-write-records"

    .line 406
    .line 407
    .line 408
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-direct {p1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 412
    .line 413
    .line 414
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    .line 415
    .line 416
    const-string/jumbo p1, "storage_native_boot"

    .line 417
    .line 418
    .line 419
    const-string/jumbo v2, "smart_idle_maint_period"

    .line 420
    .line 421
    .line 422
    const/16 v3, 0x3c

    .line 423
    .line 424
    invoke-static {p1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 425
    .line 426
    .line 427
    move-result p1

    .line 428
    sput p1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 429
    .line 430
    sget p1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 431
    .line 432
    const/16 v2, 0xa

    .line 433
    .line 434
    if-ge p1, v2, :cond_1

    .line 435
    .line 436
    sput v2, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 437
    .line 438
    goto :goto_1

    .line 439
    :cond_1
    sget p1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 440
    .line 441
    const/16 v2, 0x5a0

    .line 442
    .line 443
    if-le p1, v2, :cond_2

    .line 444
    .line 445
    sput v2, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 446
    .line 447
    :cond_2
    :goto_1
    const/16 p1, 0x10e0

    .line 448
    .line 449
    sget v2, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 450
    .line 451
    div-int/2addr p1, v2

    .line 452
    iput p1, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    .line 453
    .line 454
    iget p1, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    .line 455
    .line 456
    new-array p1, p1, [I

    .line 457
    .line 458
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    .line 459
    .line 460
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 461
    .line 462
    monitor-enter p1

    .line 463
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->readSettingsLocked()V

    .line 464
    .line 465
    .line 466
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 467
    const-class p1, Landroid/os/storage/StorageManagerInternal;

    .line 468
    .line 469
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 470
    .line 471
    invoke-static {p1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    new-instance p1, Landroid/content/IntentFilter;

    .line 475
    .line 476
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 477
    .line 478
    .line 479
    const-string v2, "android.intent.action.USER_ADDED"

    .line 480
    .line 481
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    const-string v2, "android.intent.action.USER_REMOVED"

    .line 485
    .line 486
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 490
    .line 491
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Lcom/android/server/StorageManagerService$1;

    .line 492
    .line 493
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 494
    .line 495
    invoke-virtual {v2, v3, p1, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 496
    .line 497
    .line 498
    new-instance p1, Landroid/content/IntentFilter;

    .line 499
    .line 500
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 501
    .line 502
    .line 503
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 504
    .line 505
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    const-string/jumbo v2, "package"

    .line 509
    .line 510
    .line 511
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 515
    .line 516
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPassReceiver:Lcom/android/server/StorageManagerService$1;

    .line 517
    .line 518
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 519
    .line 520
    invoke-virtual {v2, v3, p1, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 521
    .line 522
    .line 523
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 524
    .line 525
    monitor-enter v2

    .line 526
    :try_start_2
    new-instance p1, Landroid/os/storage/VolumeInfo;

    .line 527
    .line 528
    const-string/jumbo v3, "private"

    .line 529
    .line 530
    .line 531
    invoke-direct {p1, v3, v0, v1, v1}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    const/4 v0, 0x2

    .line 535
    iput v0, p1, Landroid/os/storage/VolumeInfo;->state:I

    .line 536
    .line 537
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    iput-object v0, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 546
    .line 547
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 548
    .line 549
    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 550
    .line 551
    invoke-virtual {v0, v3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 555
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 556
    .line 557
    .line 558
    move-result-object p1

    .line 559
    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 560
    .line 561
    .line 562
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 563
    .line 564
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPolicyReceiver:Lcom/android/server/StorageManagerService$1;

    .line 565
    .line 566
    new-instance v0, Landroid/content/IntentFilter;

    .line 567
    .line 568
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 569
    .line 570
    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {p1, p0, v0, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 574
    .line 575
    .line 576
    return-void

    .line 577
    :catchall_0
    move-exception p0

    .line 578
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 579
    throw p0

    .line 580
    :catchall_1
    move-exception p0

    .line 581
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 582
    throw p0
.end method

.method public static chkMountUnmountFormatCaller(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "com.sec.android.app.myfiles"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string p0, "StorageManagerService"

    .line 11
    .line 12
    const-string v0, "Caller is not MyFiles"

    .line 13
    .line 14
    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public static createVolumeInfoStrForPulbicVolume(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;
    .locals 10

    .line 1
    const-class v0, Landroid/os/storage/VolumeInfo;

    .line 2
    .line 3
    iget v1, p0, Landroid/os/storage/VolumeInfo;->type:I

    .line 4
    .line 5
    const-string v2, "TYPE_"

    .line 6
    .line 7
    invoke-static {v0, v2, v1}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string/jumbo v1, "null"

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object v2, p0, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const-string v2, ""

    .line 31
    .line 32
    :goto_1
    const-class v3, Landroid/os/storage/VolumeInfo;

    .line 33
    .line 34
    iget v4, p0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 35
    .line 36
    int-to-long v4, v4

    .line 37
    const-string v6, "MOUNT_FLAG_"

    .line 38
    .line 39
    invoke-static {v3, v6, v4, v5}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-class v4, Landroid/os/storage/VolumeInfo;

    .line 44
    .line 45
    const-string v5, "STATE_"

    .line 46
    .line 47
    iget v6, p0, Landroid/os/storage/VolumeInfo;->state:I

    .line 48
    .line 49
    invoke-static {v4, v5, v6}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget-object v5, p0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v7, "{"

    .line 58
    .line 59
    .line 60
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string/jumbo v5, "}:"

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    const-string v6, "VolumeInfo"

    .line 77
    .line 78
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const-string v6, "\n"

    .line 83
    .line 84
    invoke-static {v5, v6}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    const-string/jumbo v7, "type="

    .line 93
    .line 94
    .line 95
    const-string v8, " diskId="

    .line 96
    .line 97
    const-string v9, " partGuid="

    .line 98
    .line 99
    invoke-static {v7, v0, v8, v1, v9}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    filled-new-array {v3, v1, v4}, [Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v2, " mountFlags=%s mountUserId=%d state=%s"

    .line 134
    .line 135
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0, v6}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v1, p0, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 155
    .line 156
    iget-object v2, p0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, p0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 159
    .line 160
    iget-object p0, p0, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 161
    .line 162
    const-string v4, " fsType="

    .line 163
    .line 164
    const-string v5, " fsUuid="

    .line 165
    .line 166
    const-string v6, " path="

    .line 167
    .line 168
    invoke-static {v4, v1, v5, v2, v6}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v2, " internalPath="

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    return-object p0
.end method

.method public static extendWatchdogTimeout(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Lcom/android/server/Watchdog$HandlerChecker;->pauseForLocked(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThreadFor(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static isMediaPath(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const-string v1, "/data/media"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v0

    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    return v0
.end method

.method public static isRootedDevice()Z
    .locals 16

    .line 1
    const-string/jumbo v0, "ro.boot.flash.locked"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v2, "phone status : "

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "StorageManagerService"

    .line 24
    .line 25
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const-string v1, "0"

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x1

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    return v1

    .line 38
    :cond_0
    const-string v14, "/system/usr/we-need-root/su-backup"

    .line 39
    .line 40
    const-string v15, "/system/xbin/mu"

    .line 41
    .line 42
    const-string v3, "/sbin/su"

    .line 43
    .line 44
    const-string v4, "/system/su"

    .line 45
    .line 46
    const-string v5, "/system/bin/su"

    .line 47
    .line 48
    const-string v6, "/system/xbin/su"

    .line 49
    .line 50
    const-string v7, "/system/bin/.ext/.su"

    .line 51
    .line 52
    const-string v8, "/data/local/xbin/su"

    .line 53
    .line 54
    const-string v9, "/data/local/bin/su"

    .line 55
    .line 56
    const-string v10, "/system/sd/xbin/su"

    .line 57
    .line 58
    const-string v11, "/system/bin/failsafe/su"

    .line 59
    .line 60
    const-string v12, "/data/local/su"

    .line 61
    .line 62
    const-string v13, "/system/app/Superuser.apk"

    .line 63
    .line 64
    filled-new-array/range {v3 .. v15}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v12, "/proc"

    .line 69
    .line 70
    const-string v13, "/dev"

    .line 71
    .line 72
    const-string v3, "/data"

    .line 73
    .line 74
    const-string v4, "/system"

    .line 75
    .line 76
    const-string v5, "/system/bin"

    .line 77
    .line 78
    const-string v6, "/system/sbin"

    .line 79
    .line 80
    const-string v7, "/system/xbin"

    .line 81
    .line 82
    const-string v8, "/vendor/bin"

    .line 83
    .line 84
    const-string v9, "/sys"

    .line 85
    .line 86
    const-string v10, "/sbin"

    .line 87
    .line 88
    const-string v11, "/etc"

    .line 89
    .line 90
    filled-new-array/range {v3 .. v13}, [Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    const/4 v4, 0x0

    .line 95
    move v5, v4

    .line 96
    :goto_0
    const/16 v6, 0xd

    .line 97
    .line 98
    if-ge v5, v6, :cond_3

    .line 99
    .line 100
    aget-object v6, v0, v5

    .line 101
    .line 102
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    invoke-static {v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-eqz v7, :cond_2

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string/jumbo v3, "rooting:su located at : "

    .line 118
    .line 119
    .line 120
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    return v1

    .line 134
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_3
    :goto_1
    move v0, v4

    .line 138
    :goto_2
    const/16 v1, 0xb

    .line 139
    .line 140
    if-ge v0, v1, :cond_6

    .line 141
    .line 142
    aget-object v1, v3, v0

    .line 143
    .line 144
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-eqz v5, :cond_4

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_4
    new-instance v5, Ljava/io/File;

    .line 152
    .line 153
    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_5

    .line 161
    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string/jumbo v6, "rooting:read only changed as writable : "

    .line 165
    .line 166
    .line 167
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    :goto_3
    return v4
.end method

.method public static isValidPath(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 3
    .line 4
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    const-string v1, "/data/media"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string v1, "/data/sec"

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string p0, "StorageManagerService"

    .line 31
    .line 32
    const-string/jumbo v1, "input path is not supported"

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return v0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_2
    return v0

    .line 44
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    return v0
.end method

.method public static readVolumeRecord(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/storage/VolumeRecord;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "type"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string/jumbo v2, "fsUuid"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Landroid/os/storage/VolumeRecord;

    .line 17
    .line 18
    invoke-direct {v3, v1, v2}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v1, "partGuid"

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 29
    .line 30
    const-string/jumbo v1, "nickname"

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, v3, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 38
    .line 39
    const-string/jumbo v1, "userFlags"

    .line 40
    .line 41
    .line 42
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    iput v1, v3, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 47
    .line 48
    const-string/jumbo v1, "createdMillis"

    .line 49
    .line 50
    .line 51
    const-wide/16 v4, 0x0

    .line 52
    .line 53
    invoke-interface {p0, v0, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    iput-wide v1, v3, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 58
    .line 59
    const-string/jumbo v1, "lastSeenMillis"

    .line 60
    .line 61
    .line 62
    invoke-interface {p0, v0, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    iput-wide v1, v3, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 67
    .line 68
    const-string/jumbo v1, "lastTrimMillis"

    .line 69
    .line 70
    .line 71
    invoke-interface {p0, v0, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    iput-wide v1, v3, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 76
    .line 77
    const-string/jumbo v1, "lastBenchMillis"

    .line 78
    .line 79
    .line 80
    invoke-interface {p0, v0, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    iput-wide v0, v3, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 85
    .line 86
    return-object v3
.end method

.method public static waitForLatch(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "Thread "

    .line 2
    .line 3
    const-string v1, "StorageManagerService"

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    :cond_0
    :goto_0
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v5, 0x1388

    .line 12
    .line 13
    invoke-virtual {p0, v5, v6, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v5, " still waiting for "

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v5, "..."

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v1, v4}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    const-string v4, "Interrupt while waiting for "

    .line 61
    .line 62
    invoke-virtual {v4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v1, v4}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :goto_1
    const-wide/16 v4, 0x0

    .line 70
    .line 71
    cmp-long v4, p1, v4

    .line 72
    .line 73
    if-lez v4, :cond_0

    .line 74
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    add-long v6, v2, p1

    .line 80
    .line 81
    cmp-long v4, v4, v6

    .line 82
    .line 83
    if-gtz v4, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, " gave up waiting for "

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p3, " after "

    .line 113
    .line 114
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string/jumbo p3, "ms"

    .line 118
    .line 119
    .line 120
    invoke-static {v1, p1, p2, p3}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p0
.end method

.method public static writeVolumeRecord(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/storage/VolumeRecord;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "volume"

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    iget v2, p1, Landroid/os/storage/VolumeRecord;->type:I

    .line 9
    .line 10
    const-string/jumbo v3, "type"

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 14
    .line 15
    .line 16
    const-string/jumbo v2, "fsUuid"

    .line 17
    .line 18
    .line 19
    iget-object v3, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v2, "partGuid"

    .line 25
    .line 26
    .line 27
    iget-object v3, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v2, "nickname"

    .line 33
    .line 34
    .line 35
    iget-object v3, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v2, "userFlags"

    .line 41
    .line 42
    .line 43
    iget v3, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 44
    .line 45
    invoke-interface {p0, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    .line 47
    .line 48
    const-string/jumbo v2, "createdMillis"

    .line 49
    .line 50
    .line 51
    iget-wide v3, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    .line 52
    .line 53
    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 54
    .line 55
    .line 56
    const-string/jumbo v2, "lastSeenMillis"

    .line 57
    .line 58
    .line 59
    iget-wide v3, p1, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 60
    .line 61
    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    .line 63
    .line 64
    const-string/jumbo v2, "lastTrimMillis"

    .line 65
    .line 66
    .line 67
    iget-wide v3, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 68
    .line 69
    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    .line 71
    .line 72
    const-string/jumbo v2, "lastBenchMillis"

    .line 73
    .line 74
    .line 75
    iget-wide v3, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 76
    .line 77
    invoke-interface {p0, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 78
    .line 79
    .line 80
    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public final abortChanges(Ljava/lang/String;Z)V
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
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 16
    .line 17
    const-string/jumbo p1, "no permission to commit checkpoint changes"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final abortIdleMaint(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    const-string v0, "StorageManagerService"

    .line 2
    .line 3
    const-string v1, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 9
    .line 10
    new-instance v2, Lcom/android/server/StorageManagerService$11;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/StorageManagerService$11;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v2}, Landroid/os/IVold;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "abortIdleMaint, HeimdAllFSThread = null"

    .line 20
    .line 21
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    const-string p1, "HeimdAllFS"

    .line 29
    .line 30
    const-string v1, "Abort()"

    .line 31
    .line 32
    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Lcom/android/server/HeimdAllFsService$1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    return-void
.end method

.method public final abortIdleMaintenance()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->abortIdleMaint(Ljava/lang/Runnable;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final adjustAllocateFlags(IILjava/lang/String;)I
    .locals 5

    .line 1
    const-string v0, "UID "

    .line 2
    .line 3
    and-int/lit8 v1, p1, 0x1

    .line 4
    .line 5
    const-string v2, "StorageManagerService"

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v3, "android.permission.ALLOCATE_AGGRESSIVE"

    .line 12
    .line 13
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    and-int/lit8 p1, p1, -0x7

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-class v1, Landroid/app/AppOpsManager;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Landroid/app/AppOpsManager;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    const/16 v1, 0x1a

    .line 33
    .line 34
    :try_start_0
    invoke-virtual {p0, v1, p2, p3}, Landroid/app/AppOpsManager;->isOperationActive(IILjava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, " is actively using camera; letting them defy reserved cached data"

    .line 49
    .line 50
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    or-int/lit8 p1, p1, 0x4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    return p1

    .line 69
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    .line 71
    .line 72
    throw p0
.end method

.method public final allocateBytes(Ljava/lang/String;JILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p4, v0, p5}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    or-int/lit8 v0, p4, 0x8

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    cmp-long v2, p2, v0

    .line 16
    .line 17
    if-lez v2, :cond_1

    .line 18
    .line 19
    or-int/lit8 v2, p4, 0x10

    .line 20
    .line 21
    invoke-virtual {p0, p1, v2, p5}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    add-long/2addr v2, v0

    .line 26
    cmp-long p5, p2, v2

    .line 27
    .line 28
    if-gtz p5, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p0, Landroid/os/ParcelableException;

    .line 32
    .line 33
    new-instance p1, Ljava/io/IOException;

    .line 34
    .line 35
    const-string p4, "Failed to allocate "

    .line 36
    .line 37
    const-string p5, " because only "

    .line 38
    .line 39
    invoke-static {p4, p2, p3, p5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const-string p3, " allocatable"

    .line 44
    .line 45
    invoke-static {p2, v2, v3, p3}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, p1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_1
    :goto_0
    iget-object p5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    const-class v0, Landroid/os/storage/StorageManager;

    .line 59
    .line 60
    invoke-virtual {p5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p5

    .line 64
    check-cast p5, Landroid/os/storage/StorageManager;

    .line 65
    .line 66
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    :try_start_0
    invoke-virtual {p5, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    and-int/lit8 v3, p4, 0x1

    .line 75
    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    invoke-virtual {p5, v2}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    :goto_1
    add-long/2addr p2, v2

    .line 83
    goto :goto_2

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_4

    .line 86
    :catch_0
    move-exception p0

    .line 87
    goto :goto_3

    .line 88
    :cond_2
    invoke-virtual {p5, v2}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    goto :goto_1

    .line 93
    :goto_2
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 94
    .line 95
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 98
    .line 99
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->freeStorage(ILjava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :goto_3
    :try_start_1
    new-instance p1, Landroid/os/ParcelableException;

    .line 107
    .line 108
    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public final benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->benchmark_enforcePermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/StorageManagerService$9;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/StorageManagerService$9;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    throw p0
.end method

.method public final checkChargeStatus()Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string/jumbo v0, "level"

    .line 16
    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const-string/jumbo v2, "scale"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    int-to-float v0, v0

    .line 31
    const/high16 v1, 0x42c80000    # 100.0f

    .line 32
    .line 33
    mul-float/2addr v0, v1

    .line 34
    int-to-float p0, p0

    .line 35
    div-float/2addr v0, p0

    .line 36
    const/4 p0, 0x0

    .line 37
    cmpg-float p0, v0, p0

    .line 38
    .line 39
    if-gez p0, :cond_0

    .line 40
    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "Battery level is "

    .line 44
    .line 45
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ", which is lower than threshold: 0.0"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const-string v0, "StorageManagerService"

    .line 61
    .line 62
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    return p0

    .line 67
    :cond_0
    const/4 p0, 0x1

    .line 68
    return p0
.end method

.method public final checkExternalSecureContainerMounted()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/os/storage/StorageManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/os/storage/StorageManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x2

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v1, "Description : "

    .line 53
    .line 54
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " state : "

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v0, "StorageManagerService"

    .line 81
    .line 82
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    const/4 p0, 0x1

    .line 86
    return p0

    .line 87
    :cond_1
    const/4 p0, 0x0

    .line 88
    return p0
.end method

.method public final cleanupSercureContainerList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 21
    .line 22
    iget-boolean v1, v1, Lcom/android/server/StorageManagerService$PackageInstalledMap;->external:Z

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final commitChanges()V
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
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 10
    .line 11
    invoke-interface {p0}, Landroid/os/IVold;->commitChanges()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 16
    .line 17
    const-string/jumbo v0, "no permission to commit checkpoint changes"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public final connectStoraged()V
    .locals 4

    .line 1
    const-string/jumbo v0, "storaged"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    new-instance v1, Lcom/android/server/StorageManagerService$5;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/server/StorageManagerService$5;-><init>(Lcom/android/server/StorageManagerService;I)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    const/4 v0, 0x0

    .line 22
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {v0}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const-string v0, "StorageManagerService"

    .line 32
    .line 33
    const-string/jumbo v1, "storaged not found; trying again"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :goto_1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda1;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-direct {v1, p0, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/StorageManagerService;I)V

    .line 51
    .line 52
    .line 53
    const-wide/16 v2, 0x3e8

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 63
    .line 64
    const/4 v0, 0x2

    .line 65
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 70
    .line 71
    .line 72
    :goto_2
    return-void
.end method

.method public final connectVold()V
    .locals 7

    .line 1
    const-string/jumbo v0, "vold"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    new-instance v3, Lcom/android/server/StorageManagerService$5;

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    invoke-direct {v3, p0, v4}, Lcom/android/server/StorageManagerService$5;-><init>(Lcom/android/server/StorageManagerService;I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-object v0, v1

    .line 23
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {v0}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 30
    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mListener:Lcom/android/server/StorageManagerService$4;

    .line 34
    .line 35
    invoke-interface {v0, v3}, Landroid/os/IVold;->setListener(Landroid/os/IVoldListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_1
    move-exception v0

    .line 40
    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 41
    .line 42
    const-string v1, "StorageManagerService"

    .line 43
    .line 44
    const-string/jumbo v3, "vold listener rejected; trying again"

    .line 45
    .line 46
    .line 47
    invoke-static {v1, v3, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const-string v0, "StorageManagerService"

    .line 52
    .line 53
    const-string/jumbo v1, "vold not found; trying again"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :goto_1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda1;

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    invoke-direct {v1, p0, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/StorageManagerService;I)V

    .line 71
    .line 72
    .line 73
    const-wide/16 v2, 0x3e8

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 80
    .line 81
    invoke-interface {v0}, Landroid/os/IVold;->getUnlockedUsers()[I

    .line 82
    .line 83
    .line 84
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 85
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_4

    .line 90
    .line 91
    const-string v1, "StorageManagerService"

    .line 92
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v4, "CE storage for users "

    .line 96
    .line 97
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v4, " is already unlocked"

    .line 108
    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-static {v1, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 120
    .line 121
    monitor-enter v1

    .line 122
    :try_start_3
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCeUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    array-length v4, v0

    .line 128
    :goto_2
    if-ge v2, v4, :cond_3

    .line 129
    .line 130
    aget v5, v0, v2

    .line 131
    .line 132
    iget-object v6, v3, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 133
    .line 134
    invoke-static {v6, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    iput-object v5, v3, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 139
    .line 140
    add-int/lit8 v2, v2, 0x1

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_3
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 144
    .line 145
    .line 146
    monitor-exit v1

    .line 147
    goto :goto_3

    .line 148
    :catchall_0
    move-exception p0

    .line 149
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    throw p0

    .line 151
    :catch_2
    move-exception v0

    .line 152
    const-string v1, "StorageManagerService"

    .line 153
    .line 154
    const-string v2, "Failed to get unlocked users from vold"

    .line 155
    .line 156
    invoke-static {v1, v2, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .line 158
    .line 159
    :cond_4
    :goto_3
    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 163
    .line 164
    const/4 v0, 0x2

    .line 165
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 170
    .line 171
    .line 172
    :goto_4
    return-void
.end method

.method public final cpFileAtData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 1
    const-string v0, "File copy in media path result "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string/jumbo v2, "com.samsung.android.permission.SEM_VOLD_DATA_MOVE"

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/android/server/StorageManagerService;->isValidPath(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const-string v3, "StorageManagerService"

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    invoke-static {p2}, Lcom/android/server/StorageManagerService;->isValidPath(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/android/server/StorageManagerService;->isMediaPath(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-static {p2}, Lcom/android/server/StorageManagerService;->isMediaPath(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const-string/jumbo p0, "cpFileAtData not support from media to media dir, so return false"

    .line 41
    .line 42
    .line 43
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 53
    .line 54
    iget v7, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    .line 55
    .line 56
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    new-instance v9, Lcom/android/server/StorageManagerService$15;

    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    invoke-direct {v9, p0, v1}, Lcom/android/server/StorageManagerService$15;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    move-object v5, p1

    .line 67
    move-object v6, p2

    .line 68
    invoke-interface/range {v4 .. v9}, Landroid/os/IVold;->cpFileAtData(Ljava/lang/String;Ljava/lang/String;IILandroid/os/IVoldTaskListener;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Landroid/os/PersistableBundle;

    .line 76
    .line 77
    const-string/jumbo p1, "result"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_2

    .line 85
    .line 86
    const-string/jumbo p1, "true"

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    const-string/jumbo p1, "false"

    .line 93
    .line 94
    .line 95
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {v3, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    return p0

    .line 103
    :goto_1
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    return v2

    .line 107
    :cond_3
    :goto_2
    const-string/jumbo p0, "cpFileAtData not support other than media or sec dir, so return false"

    .line 108
    .line 109
    .line 110
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    return v2
.end method

.method public final createPassStorage()I
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getPackageName(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "Unknown"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-string v3, "StorageManagerService"

    .line 16
    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/StorageManagerService;->isRootedDevice()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->isPlatformSignedApp(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 32
    .line 33
    iget p0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 34
    .line 35
    invoke-interface {v2, v1, p0, v0}, Landroid/os/IVold;->createPassStorage(Ljava/lang/String;II)I

    .line 36
    .line 37
    .line 38
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    const/16 p0, -0xc

    .line 45
    .line 46
    return p0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 48
    .line 49
    const-string v0, " Signature of the calling package is not match"

    .line 50
    .line 51
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    const-string/jumbo p0, "isDetectedRoot: true "

    .line 56
    .line 57
    .line 58
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    new-instance p0, Ljava/lang/SecurityException;

    .line 62
    .line 63
    const-string v0, " Root detected"

    .line 64
    .line 65
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_2
    const-string p0, "Package name of Client not allowed "

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    new-instance p0, Ljava/lang/SecurityException;

    .line 79
    .line 80
    const-string v0, " calling package is not allowed"

    .line 81
    .line 82
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .locals 8

    .line 1
    const-string v0, "android.permission.ASEC_CREATE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    move v3, p2

    .line 14
    move-object v4, p3

    .line 15
    move-object v5, p4

    .line 16
    move v6, p5

    .line 17
    move v7, p6

    .line 18
    invoke-interface/range {v1 .. v7}, Landroid/os/IVold;->asecCreate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    move p2, v0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p2

    .line 24
    const-string p3, "StorageManagerService"

    .line 25
    .line 26
    invoke-static {p3, p2}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    const/4 p2, -0x1

    .line 30
    :goto_0
    if-nez p2, :cond_1

    .line 31
    .line 32
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 33
    .line 34
    monitor-enter p3

    .line 35
    if-eqz p6, :cond_0

    .line 36
    .line 37
    :try_start_1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 38
    .line 39
    new-instance p4, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 40
    .line 41
    const/4 p5, 0x1

    .line 42
    invoke-direct {p4, p1, p5}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 52
    .line 53
    new-instance p4, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 54
    .line 55
    invoke-direct {p4, p1, v0}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :goto_1
    monitor-exit p3

    .line 62
    goto :goto_3

    .line 63
    :goto_2
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw p0

    .line 65
    :cond_1
    :goto_3
    return p2
.end method

.method public final createUserStorageKeys(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->createUserStorageKeys_enforcePermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->createUserStorageKeys(IZ)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCeUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 21
    .line 22
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 23
    .line 24
    .line 25
    monitor-exit p2

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    const-string p1, "StorageManagerService"

    .line 32
    .line 33
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public final destroyPassStorage()I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getPackageName(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "Unknown"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->isPlatformSignedApp(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 24
    .line 25
    iget p0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 26
    .line 27
    invoke-interface {v2, v1, p0, v0}, Landroid/os/IVold;->destroyPassStorage(Ljava/lang/String;II)I

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return p0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string v0, "StorageManagerService"

    .line 34
    .line 35
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    const/16 p0, -0xc

    .line 39
    .line 40
    return p0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 42
    .line 43
    const-string v0, " Signature of the calling package is not match"

    .line 44
    .line 45
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 50
    .line 51
    const-string v0, " calling package is not allowed"

    .line 52
    .line 53
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final destroySecureContainer(Ljava/lang/String;Z)I
    .locals 3

    .line 1
    const-string v0, "android.permission.ASEC_DESTROY"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 17
    .line 18
    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->asecDestroy(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p2

    .line 24
    const-string v0, "StorageManagerService"

    .line 25
    .line 26
    invoke-static {v0, p2}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    const/4 p2, -0x1

    .line 30
    :goto_0
    if-nez p2, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 36
    .line 37
    new-instance v2, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 38
    .line 39
    invoke-direct {v2, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 49
    .line 50
    new-instance v1, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 51
    .line 52
    invoke-direct {v1, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    :goto_1
    monitor-exit v0

    .line 62
    goto :goto_3

    .line 63
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw p0

    .line 65
    :cond_1
    :goto_3
    return p2
.end method

.method public final destroyUserStorage(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->destroyUserStorage_enforcePermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IVold;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string p1, "StorageManagerService"

    .line 12
    .line 13
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public final destroyUserStorageKeys(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->destroyUserStorageKeys_enforcePermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroid/os/IVold;->destroyUserStorageKeys(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCeUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 15
    .line 16
    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 21
    .line 22
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    const-string p1, "StorageManagerService"

    .line 32
    .line 33
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public final disableAppDataIsolation(Ljava/lang/String;II)V
    .locals 4

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
    const/16 v1, 0x7d0

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
    const-string/jumbo p1, "no permission to enable app visibility"

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 22
    .line 23
    invoke-virtual {v0, p3, p1}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(ILjava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    invoke-virtual {v1, p1, v2, v3, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    array-length v1, v0

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 v0, 0x1

    .line 40
    new-array v0, v0, [Ljava/lang/String;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    aput-object p1, v0, v1

    .line 44
    .line 45
    :goto_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 46
    .line 47
    invoke-interface {p0, p3, p2, v0}, Landroid/os/IVold;->unmountAppStorageDirs(II[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    throw p0
.end method

.method public dispatchCeStorageLockedEvent(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCeStorageEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/os/storage/ICeStorageLockEventListener;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Landroid/os/storage/ICeStorageLockEventListener;->onStorageLocked(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "StorageManagerService"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    .line 13
    .line 14
    const-string p3, "  "

    .line 15
    .line 16
    const/16 v0, 0xa0

    .line 17
    .line 18
    invoke-direct {p1, p2, p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    new-instance p2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    const-string v0, "android.SecVold.StorageManagerService"

    .line 33
    .line 34
    const/16 v1, 0x600

    .line 35
    .line 36
    invoke-virtual {p0, p3, v0, v1}, Lcom/android/server/StorageManagerService;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-static {p2, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p2

    .line 45
    const-string p3, "StorageManagerService"

    .line 46
    .line 47
    const-string v0, "Failed to get StorageVolume List "

    .line 48
    .line 49
    invoke-static {p3, v0, p2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    :goto_0
    if-eqz p2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 56
    .line 57
    .line 58
    const-string p3, "StorageVolumes:"

    .line 59
    .line 60
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v0, "Size:"

    .line 66
    .line 67
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 85
    .line 86
    .line 87
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    if-eqz p3, :cond_1

    .line 96
    .line 97
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    check-cast p3, Landroid/os/storage/StorageVolume;

    .line 102
    .line 103
    invoke-virtual {p3, p1}, Landroid/os/storage/StorageVolume;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 117
    .line 118
    monitor-enter p2

    .line 119
    :try_start_1
    const-string p3, "Disks:"

    .line 120
    .line 121
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 125
    .line 126
    .line 127
    const/4 p3, 0x0

    .line 128
    move v0, p3

    .line 129
    :goto_2
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 130
    .line 131
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-ge v0, v1, :cond_3

    .line 136
    .line 137
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 144
    .line 145
    invoke-virtual {v1, p1}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v0, v0, 0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catchall_0
    move-exception p0

    .line 152
    goto/16 :goto_d

    .line 153
    .line 154
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 158
    .line 159
    .line 160
    const-string v0, "Volumes:"

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v1, "Size:"

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 176
    .line 177
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 192
    .line 193
    .line 194
    move v0, p3

    .line 195
    :goto_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 196
    .line 197
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-ge v0, v1, :cond_5

    .line 202
    .line 203
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 204
    .line 205
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 210
    .line 211
    const-string/jumbo v2, "private"

    .line 212
    .line 213
    .line 214
    iget-object v3, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_4

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_4
    invoke-virtual {v1, p1}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 224
    .line 225
    .line 226
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 233
    .line 234
    .line 235
    const-string v0, "Records:"

    .line 236
    .line 237
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 241
    .line 242
    .line 243
    move v0, p3

    .line 244
    :goto_5
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 245
    .line 246
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-ge v0, v1, :cond_6

    .line 251
    .line 252
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 253
    .line 254
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 259
    .line 260
    invoke-virtual {v1, p1}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 261
    .line 262
    .line 263
    add-int/lit8 v0, v0, 0x1

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 270
    .line 271
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    const-string v1, "Primary storage UUID: "

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 295
    .line 296
    .line 297
    invoke-static {}, Landroid/os/storage/StorageManager;->getPrimaryStoragePathAndSize()Landroid/util/Pair;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    if-nez v0, :cond_7

    .line 302
    .line 303
    const-string v0, "Internal storage total size: N/A"

    .line 304
    .line 305
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_7
    const-string v1, "Internal storage ("

    .line 310
    .line 311
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v1, Ljava/lang/String;

    .line 317
    .line 318
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const-string v1, ") total size: "

    .line 322
    .line 323
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 327
    .line 328
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    const-string v1, " ("

    .line 332
    .line 333
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v0, Ljava/lang/Long;

    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 341
    .line 342
    .line 343
    move-result-wide v0

    .line 344
    sget-object v2, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 345
    .line 346
    const-wide/16 v3, 0x1

    .line 347
    .line 348
    invoke-virtual {v2, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    .line 349
    .line 350
    .line 351
    move-result-wide v2

    .line 352
    div-long/2addr v0, v2

    .line 353
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 354
    .line 355
    .line 356
    const-string v0, " MiB)"

    .line 357
    .line 358
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    :goto_6
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 362
    .line 363
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .line 368
    .line 369
    const-string v1, "CE unlocked users: "

    .line 370
    .line 371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCeUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    const-string v1, "System unlocked users: "

    .line 392
    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 397
    .line 398
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    const-string v0, "Sharing media with parent : "

    .line 413
    .line 414
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mIsMediaSharedWithParent:Ljava/util/HashMap;

    .line 418
    .line 419
    new-instance v1, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda2;

    .line 420
    .line 421
    invoke-direct {v1, p1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 428
    .line 429
    .line 430
    const-string v0, "User pairs for sharing media : "

    .line 431
    .line 432
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    move v0, p3

    .line 436
    :goto_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Landroid/util/SparseIntArray;

    .line 437
    .line 438
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    if-ge v0, v1, :cond_8

    .line 443
    .line 444
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Landroid/util/SparseIntArray;

    .line 445
    .line 446
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Landroid/util/SparseIntArray;

    .line 451
    .line 452
    const/4 v3, -0x1

    .line 453
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    const-string v4, " ["

    .line 463
    .line 464
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v1, ", "

    .line 471
    .line 472
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const-string v1, "] "

    .line 479
    .line 480
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    add-int/lit8 v0, v0, 0x1

    .line 491
    .line 492
    goto :goto_7

    .line 493
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 497
    .line 498
    .line 499
    :goto_8
    const/16 v0, 0x14

    .line 500
    .line 501
    if-ge p3, v0, :cond_9

    .line 502
    .line 503
    const-string v0, "/data/log/vold-dump_%02d"

    .line 504
    .line 505
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    const-string v2, "VOLD LAST LOG BUF#"

    .line 523
    .line 524
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 542
    .line 543
    .line 544
    :catch_1
    add-int/lit8 p3, p3, 0x1

    .line 545
    .line 546
    goto :goto_8

    .line 547
    :cond_9
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 548
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 549
    .line 550
    monitor-enter p3

    .line 551
    :try_start_4
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 552
    .line 553
    .line 554
    const-string/jumbo p2, "mObbMounts:"

    .line 555
    .line 556
    .line 557
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 561
    .line 562
    .line 563
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 564
    .line 565
    check-cast p2, Ljava/util/HashMap;

    .line 566
    .line 567
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 568
    .line 569
    .line 570
    move-result-object p2

    .line 571
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 572
    .line 573
    .line 574
    move-result-object p2

    .line 575
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    if-eqz v0, :cond_b

    .line 580
    .line 581
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    check-cast v0, Ljava/util/Map$Entry;

    .line 586
    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .line 591
    .line 592
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    const-string v2, ":"

    .line 600
    .line 601
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 612
    .line 613
    .line 614
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    check-cast v0, Ljava/util/List;

    .line 619
    .line 620
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    if-eqz v1, :cond_a

    .line 629
    .line 630
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 635
    .line 636
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 637
    .line 638
    .line 639
    goto :goto_a

    .line 640
    :catchall_1
    move-exception p0

    .line 641
    goto :goto_c

    .line 642
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 643
    .line 644
    .line 645
    goto :goto_9

    .line 646
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 647
    .line 648
    .line 649
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 650
    .line 651
    .line 652
    const-string/jumbo p2, "mObbPathToStateMap:"

    .line 653
    .line 654
    .line 655
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 659
    .line 660
    .line 661
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 662
    .line 663
    check-cast p2, Ljava/util/HashMap;

    .line 664
    .line 665
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 666
    .line 667
    .line 668
    move-result-object p2

    .line 669
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 670
    .line 671
    .line 672
    move-result-object p2

    .line 673
    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 674
    .line 675
    .line 676
    move-result v0

    .line 677
    if-eqz v0, :cond_c

    .line 678
    .line 679
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    check-cast v0, Ljava/util/Map$Entry;

    .line 684
    .line 685
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    check-cast v1, Ljava/lang/String;

    .line 690
    .line 691
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    const-string v1, " -> "

    .line 695
    .line 696
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 704
    .line 705
    .line 706
    goto :goto_b

    .line 707
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 708
    .line 709
    .line 710
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 711
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 712
    .line 713
    monitor-enter p2

    .line 714
    :try_start_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 715
    .line 716
    .line 717
    const-string p3, "Media cloud providers: "

    .line 718
    .line 719
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 723
    .line 724
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 725
    .line 726
    .line 727
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 728
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 729
    .line 730
    .line 731
    const-string p2, "Last maintenance: "

    .line 732
    .line 733
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    iget-wide p2, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    .line 737
    .line 738
    invoke-static {p2, p3}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object p0

    .line 742
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    return-void

    .line 746
    :catchall_2
    move-exception p0

    .line 747
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 748
    throw p0

    .line 749
    :goto_c
    :try_start_7
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 750
    throw p0

    .line 751
    :goto_d
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 752
    throw p0
.end method

.method public final encryptExternalStorage(Z)I
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/os/storage/StorageManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 v1, 0x0

    .line 64
    :goto_0
    const/4 v0, -0x1

    .line 65
    const-string v2, "StorageManagerService"

    .line 66
    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    const-string/jumbo p0, "sdVolume == null"

    .line 70
    .line 71
    .line 72
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return v0

    .line 76
    :cond_2
    const-string/jumbo v3, "readonly_storage"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService;->hasDeviceRestriction(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    const/4 v4, 0x0

    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    const-string v3, "Policy has restriction \'readonly_storage\'; readonly"

    .line 87
    .line 88
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    const/high16 v3, -0x80000000

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    move v3, v4

    .line 95
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string/jumbo v6, "state : "

    .line 98
    .line 99
    .line 100
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-static {v2, v5}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    .line 118
    .line 119
    .line 120
    :try_start_0
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    .line 121
    .line 122
    if-eqz v5, :cond_4

    .line 123
    .line 124
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 125
    .line 126
    invoke-virtual {v5, v1}, Lcom/android/server/storage/StorageSessionController;->onVolumeUnmount(Landroid/os/storage/VolumeInfo;)V

    .line 127
    .line 128
    .line 129
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 130
    .line 131
    iget-object v7, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 132
    .line 133
    iget v5, v1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    .line 134
    .line 135
    or-int v8, v5, v3

    .line 136
    .line 137
    iget v9, v1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 138
    .line 139
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    .line 140
    .line 141
    invoke-virtual {v3}, Lcom/samsung/android/security/SemSdCardEncryption;->getListener()Landroid/os/IVoldTaskListener;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    new-instance v12, Lcom/android/server/StorageManagerService$8;

    .line 146
    .line 147
    const/4 v3, 0x1

    .line 148
    invoke-direct {v12, v3, v1, p0}, Lcom/android/server/StorageManagerService$8;-><init>(ILandroid/os/storage/VolumeInfo;Lcom/android/server/StorageManagerService;)V

    .line 149
    .line 150
    .line 151
    move v10, p1

    .line 152
    invoke-interface/range {v6 .. v12}, Landroid/os/IVold;->sdeEnable(Ljava/lang/String;IIZLandroid/os/IVoldTaskListener;Landroid/os/IVoldMountCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catch_0
    move-exception p0

    .line 157
    goto :goto_3

    .line 158
    :cond_4
    :goto_2
    return v4

    .line 159
    :goto_3
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .line 161
    .line 162
    return v0
.end method

.method public final enforceAdminUser()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v0, "user"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/os/UserManager;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 35
    .line 36
    const-string v0, "Only admin users can adopt sd cards"

    .line 37
    .line 38
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final enforceExternalStorageService()V
    .locals 1

    .line 1
    const-string v0, "android.permission.WRITE_MEDIA_STORAGE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget p0, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    .line 15
    .line 16
    if-ne v0, p0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    .line 21
    const-string v0, "Only the ExternalStorageService is permitted"

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final enforcePermission$1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final finalizeSecureContainer(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "android.permission.ASEC_CREATE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Landroid/os/IVold;->asecFinalize(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "StorageManagerService"

    .line 18
    .line 19
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    :goto_0
    return p0
.end method

.method public final findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    monitor-exit v0

    .line 29
    return-object v1

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public final findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 20
    .line 21
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 32
    .line 33
    iget-object p1, v2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Landroid/os/storage/VolumeRecord;

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-object p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    monitor-exit v0

    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final findStorageForUuidAsUser(ILjava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/os/storage/StorageManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/os/storage/StorageManager;

    .line 10
    .line 11
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v0, "emulated;"

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_0
    const-string/jumbo v0, "primary_physical"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_1
    invoke-virtual {p0, p2}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string/jumbo p1, "findStorageForUuidAsUser cannot find volumeUuid:"

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p1, "StorageManagerService"

    .line 75
    .line 76
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    const/4 p0, 0x0

    .line 80
    return-object p0

    .line 81
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string/jumbo v1, "private"

    .line 91
    .line 92
    .line 93
    const-string/jumbo v2, "emulated"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v0, ";"

    .line 104
    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0
.end method

.method public final findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/os/storage/VolumeInfo;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "No volume found for ID "

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p0
.end method

.method public final findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 20
    .line 21
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-object p0, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v0, "No volume found for path "

    .line 44
    .line 45
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p0
.end method

.method public final finishMediaUpdate()V
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
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p0, "StorageManagerService"

    .line 18
    .line 19
    const-string v0, "Odd, nobody asked to unmount?"

    .line 20
    .line 21
    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 26
    .line 27
    const-string/jumbo v0, "no permission to call finishMediaUpdate()"

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public final fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 3

    .line 1
    const-string/jumbo v0, "fixPermissionsSecureContainer: id="

    .line 2
    .line 3
    .line 4
    const-string v1, " gid="

    .line 5
    .line 6
    const-string v2, " filename="

    .line 7
    .line 8
    invoke-static {p2, v0, p1, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "StorageManagerService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-string v0, "android.permission.ASEC_CREATE"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 30
    .line 31
    .line 32
    if-nez p3, :cond_0

    .line 33
    .line 34
    const-string p3, ""

    .line 35
    .line 36
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 37
    .line 38
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IVold;->asecFixperms(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    const/4 p0, -0x1

    .line 48
    :goto_0
    return p0
.end method

.method public final fixupAppDir(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "Failed to fixup app dir for "

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "StorageManagerService"

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    const-string p0, "Asked to fixup an app dir without a userId: "

    .line 25
    .line 26
    invoke-static {p0, p1, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v4, 0x3

    .line 39
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :try_start_1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 54
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v5, "/"

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-interface {p0, v4, v2}, Landroid/os/IVold;->fixupAppDir(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catch_0
    move-exception p0

    .line 77
    goto :goto_0

    .line 78
    :catch_1
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :catch_2
    move-exception p0

    .line 81
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v1, "Couldn\'t find package to fixup app dir "

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v1, "Invalid userId in path: "

    .line 118
    .line 119
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v0, "Path "

    .line 136
    .line 137
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p1, " is not a valid application-specific directory"

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    :goto_2
    return-void
.end method

.method public final forgetAllVolumes()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->forgetAllVolumes_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string v0, "StorageManagerService"

    .line 5
    .line 6
    const-string/jumbo v1, "forgetAllVolumes"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ge v2, v3, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Landroid/os/storage/VolumeRecord;

    .line 40
    .line 41
    iget-object v5, v4, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_0

    .line 48
    .line 49
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 50
    .line 51
    const/16 v6, 0x9

    .line 52
    .line 53
    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 64
    .line 65
    sget v5, Lcom/android/server/StorageManagerService$Callbacks;->$r8$clinit:I

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    iput-object v3, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 75
    .line 76
    const/4 v3, 0x4

    .line 77
    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 88
    .line 89
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 90
    .line 91
    .line 92
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_3

    .line 101
    .line 102
    const-string/jumbo v3, "ro.vold.primary_physical"

    .line 103
    .line 104
    .line 105
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_2

    .line 110
    .line 111
    const-string/jumbo v2, "primary_physical"

    .line 112
    .line 113
    .line 114
    :cond_2
    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 115
    .line 116
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 117
    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 120
    .line 121
    const/16 v1, 0xa

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    .line 129
    .line 130
    monitor-exit v0

    .line 131
    return-void

    .line 132
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    throw p0
.end method

.method public final forgetVolume(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->forgetVolume_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string v0, "StorageManagerService"

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v2, "forgetVolume: fsUuid="

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/os/storage/VolumeRecord;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    iget-object v2, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 49
    .line 50
    const/16 v3, 0x9

    .line 51
    .line 52
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 63
    .line 64
    sget v2, Lcom/android/server/StorageManagerService$Callbacks;->$r8$clinit:I

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 74
    .line 75
    const/4 v3, 0x4

    .line 76
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    const-string/jumbo p1, "ro.vold.primary_physical"

    .line 92
    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_1

    .line 100
    .line 101
    const-string/jumbo p1, "primary_physical"

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    sget-object p1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 106
    .line 107
    :goto_1
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 110
    .line 111
    const/16 v1, 0xa

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 118
    .line 119
    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 121
    .line 122
    .line 123
    monitor-exit v0

    .line 124
    return-void

    .line 125
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p0
.end method

.method public final format(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->format_enforcePermission()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "Begin format: volId="

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "StorageManagerService"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 28
    .line 29
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 30
    .line 31
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 32
    .line 33
    const-string v3, "auto"

    .line 34
    .line 35
    invoke-interface {v2, p1, v3}, Landroid/os/IVold;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->forgetVolume(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    :goto_0
    return-void
.end method

.method public final formatBySecApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p2}, Lcom/android/server/StorageManagerService;->chkMountUnmountFormatCaller(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    const-string p2, "StorageManagerService"

    .line 8
    .line 9
    const-string v0, "Format call accepted"

    .line 10
    .line 11
    invoke-static {p2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const-class v1, Landroid/os/storage/StorageManager;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 44
    .line 45
    iget-object v3, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    if-nez v1, :cond_2

    .line 59
    .line 60
    const-string p0, "No matched storage to format by SecApp, so just return"

    .line 61
    .line 62
    invoke-static {p2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->partitionPublic(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 71
    .line 72
    const-string p1, "Format call denied to ["

    .line 73
    .line 74
    const-string v0, "]"

    .line 75
    .line 76
    invoke-static {p1, p2, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public final fstrim(ILandroid/os/IVoldTaskListener;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->fstrim_enforcePermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string v0, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 16
    .line 17
    invoke-interface {v0}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string p0, "StorageManagerService"

    .line 25
    .line 26
    const-string p1, "Skipping fstrim - block based checkpoint in progress"

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception p0

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 35
    .line 36
    new-instance v1, Lcom/android/server/StorageManagerService$9;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/StorageManagerService$9;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, p1, v1}, Landroid/os/IVold;->fstrim(ILandroid/os/IVoldTaskListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void

    .line 46
    :goto_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    throw p0
.end method

.method public final getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p2, v0, p3}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object p3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-class v0, Landroid/os/storage/StorageManager;

    .line 12
    .line 13
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    check-cast p3, Landroid/os/storage/StorageManager;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-class v0, Landroid/app/usage/StorageStatsManager;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/app/usage/StorageStatsManager;

    .line 28
    .line 29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    :try_start_0
    invoke-virtual {p3, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    and-int/lit8 v3, p2, 0x10

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    invoke-virtual {p3, v2}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    invoke-virtual {p3, v2}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v10

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_3

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    move-wide v6, v4

    .line 61
    move-wide v8, v6

    .line 62
    move-wide v10, v8

    .line 63
    :goto_0
    and-int/lit8 v3, p2, 0x8

    .line 64
    .line 65
    if-nez v3, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/app/usage/StorageStatsManager;->getCacheBytes(Ljava/lang/String;)J

    .line 74
    .line 75
    .line 76
    move-result-wide p0

    .line 77
    invoke-virtual {p3, v2, p2}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    sub-long/2addr p0, v2

    .line 82
    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 83
    .line 84
    .line 85
    move-result-wide p0

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    move-wide p0, v4

    .line 88
    :goto_1
    and-int/lit8 p2, p2, 0x1

    .line 89
    .line 90
    if-eqz p2, :cond_2

    .line 91
    .line 92
    add-long/2addr v6, p0

    .line 93
    sub-long/2addr v6, v10

    .line 94
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 95
    .line 96
    .line 97
    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    .line 100
    .line 101
    return-wide p0

    .line 102
    :cond_2
    add-long/2addr v6, p0

    .line 103
    sub-long/2addr v6, v8

    .line 104
    :try_start_1
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 105
    .line 106
    .line 107
    move-result-wide p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    .line 110
    .line 111
    return-wide p0

    .line 112
    :goto_2
    :try_start_2
    new-instance p1, Landroid/os/ParcelableException;

    .line 113
    .line 114
    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    .line 120
    .line 121
    throw p0
.end method

.method public final getCacheQuotaBytes(Ljava/lang/String;I)J
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p2, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.STORAGE_INTERNAL"

    .line 10
    .line 11
    const-string v2, "StorageManagerService"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-class v2, Landroid/app/usage/StorageStatsManager;

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroid/app/usage/StorageStatsManager;

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    .line 31
    .line 32
    .line 33
    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    return-wide p0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method

.method public final getCacheSizeBytes(Ljava/lang/String;I)J
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p2, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.STORAGE_INTERNAL"

    .line 10
    .line 11
    const-string v2, "StorageManagerService"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-class v2, Landroid/app/usage/StorageStatsManager;

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroid/app/usage/StorageStatsManager;

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/lang/String;I)Landroid/app/usage/StorageStats;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    .line 35
    .line 36
    .line 37
    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return-wide p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    :try_start_1
    new-instance p1, Landroid/os/ParcelableException;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public getCeStorageEventCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCeStorageEventCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCloudMediaProvider()Ljava/lang/String;
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v7

    .line 9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v8, v1

    .line 19
    check-cast v8, Ljava/lang/String;

    .line 20
    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    const/4 v9, 0x0

    .line 23
    if-nez v8, :cond_0

    .line 24
    .line 25
    return-object v9

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 27
    .line 28
    check-cast v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-wide/16 v3, 0x0

    .line 37
    .line 38
    move v1, v7

    .line 39
    move v2, v6

    .line 40
    move-object v5, v8

    .line 41
    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->resolveContentProvider(IIJLjava/lang/String;)Landroid/content/pm/ProviderInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 48
    .line 49
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0, v6, v7, v0, v1}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-object v8

    .line 60
    :cond_2
    :goto_0
    return-object v9

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0
.end method

.method public final getDisks()[Landroid/os/storage/DiskInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    new-array v1, v1, [Landroid/os/storage/DiskInfo;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_0

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/os/storage/DiskInfo;

    .line 28
    .line 29
    aput-object v3, v1, v2

    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    monitor-exit v0

    .line 37
    return-object v1

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final getExternalStorageMountMode(ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->getExternalStorageMountMode_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->getExternalStorageMountMode(ILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final getInternalStorageBlockDeviceSize()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mInternalStorageSize:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 10
    .line 11
    invoke-interface {v0}, Landroid/os/IVold;->getStorageSize()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/android/server/StorageManagerService;->mInternalStorageSize:J

    .line 16
    .line 17
    :cond_0
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mInternalStorageSize:J

    .line 18
    .line 19
    return-wide v0
.end method

.method public final getInternalStorageRemainingLifetime()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->getInternalStorageRemainingLifetime_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 5
    .line 6
    invoke-interface {p0}, Landroid/os/IVold;->getStorageRemainingLifetime()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final getManageSpaceActivityIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 7

    .line 1
    const-string v0, "Unknown uid "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUidOrThrow()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 8
    .line 9
    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    aget-object v2, v2, v4

    .line 19
    .line 20
    invoke-virtual {v3, v1, v2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorageAccess(ILjava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 24
    const-string v3, "Only File Manager Apps permitted"

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    :try_start_1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 29
    .line 30
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const-wide/16 v5, 0x0

    .line 35
    .line 36
    invoke-interface {v0, p1, v5, v6, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 43
    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    const-string p0, "StorageManagerService"

    .line 47
    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, " doesn\'t have a manageSpaceActivity"

    .line 57
    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    return-object p0

    .line 70
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    :try_start_2
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    new-instance v3, Landroid/content/Intent;

    .line 81
    .line 82
    const-string v4, "android.intent.action.VIEW"

    .line 83
    .line 84
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    const/high16 p1, 0x10000000

    .line 93
    .line 94
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const/4 v0, 0x2

    .line 102
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const/high16 v0, 0x54000000

    .line 111
    .line 112
    invoke-static {p0, p2, v3, v0, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    .line 113
    .line 114
    .line 115
    move-result-object p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    .line 118
    .line 119
    return-object p0

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    goto :goto_0

    .line 122
    :catch_0
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 123
    .line 124
    const-string/jumbo p1, "packageName not found"

    .line 125
    .line 126
    .line 127
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_1
    :try_start_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 136
    .line 137
    const-string p1, "Invalid packageName"

    .line 138
    .line 139
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 143
    :catch_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 144
    .line 145
    invoke-direct {p0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_2
    :try_start_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 150
    .line 151
    invoke-direct {p0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p0

    .line 155
    :catch_2
    move-exception p0

    .line 156
    goto :goto_1

    .line 157
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 158
    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 175
    :goto_1
    new-instance p1, Ljava/lang/SecurityException;

    .line 176
    .line 177
    invoke-static {v1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-direct {p1, p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    throw p1
.end method

.method public final getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string/jumbo v0, "rawPath cannot be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 14
    .line 15
    check-cast v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    const-string p0, "StorageManagerService"

    .line 27
    .line 28
    const-string v0, "Failed to find OBB mounted at "

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return-object p0

    .line 39
    :cond_0
    iget-object p1, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p0
.end method

.method public final getPackageName(I)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ID of Client "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "StorageManagerService"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    array-length p1, p0

    .line 31
    const-string v0, "Unknown"

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-ge v2, p1, :cond_2

    .line 35
    .line 36
    aget-object v3, p0, v2

    .line 37
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v5, "Package name of Client "

    .line 41
    .line 42
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {v1, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    sget-object v4, Lcom/android/server/StorageManagerService;->PASS_CLIENTS:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_1

    .line 66
    .line 67
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_0

    .line 78
    .line 79
    move-object v0, v3

    .line 80
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    return-object v0
.end method

.method public final getPassStorage()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getPackageName(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "Unknown"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-string v3, "StorageManagerService"

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->isPlatformSignedApp(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 26
    .line 27
    iget p0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 28
    .line 29
    invoke-interface {v2, v1, p0, v0}, Landroid/os/IVold;->getPassStorage(Ljava/lang/String;II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-object p0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 41
    .line 42
    const-string v0, " Signature of the calling package is not match"

    .line 43
    .line 44
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_1
    const-string p0, "Package name of Client not allowed "

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    new-instance p0, Ljava/lang/SecurityException;

    .line 58
    .line 59
    const-string v0, " calling package is not allowed"

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method public final getPrimaryStorageUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "android.permission.ASEC_ACCESS"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Landroid/os/IVold;->asecFsPath(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "StorageManagerService"

    .line 18
    .line 19
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final getSecureContainerList()[Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "android.permission.ASEC_ACCESS"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 11
    .line 12
    invoke-interface {v1}, Landroid/os/IVold;->asecList()[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v1

    .line 18
    const-string v2, "StorageManagerService"

    .line 19
    .line 20
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    new-array v1, v0, [Ljava/lang/String;

    .line 24
    .line 25
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 35
    .line 36
    monitor-enter v1

    .line 37
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->checkExternalSecureContainerMounted()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_3

    .line 42
    .line 43
    new-instance v3, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    move v4, v0

    .line 55
    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_1

    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 66
    .line 67
    iget-boolean v6, v5, Lcom/android/server/StorageManagerService$PackageInstalledMap;->external:Z

    .line 68
    .line 69
    if-eqz v6, :cond_0

    .line 70
    .line 71
    iget-object v5, v5, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    if-lez v4, :cond_2

    .line 82
    .line 83
    const-string p0, "StorageManagerService"

    .line 84
    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string/jumbo v6, "getSecureContainerList : (no media) lists = "

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-static {p0, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    .line 108
    .line 109
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    new-array p0, v0, [Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    check-cast p0, [Ljava/lang/String;

    .line 117
    .line 118
    return-object p0

    .line 119
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    throw p0
.end method

.method public final getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "getSecureContainerPath: id="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "StorageManagerService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const-string v0, "android.permission.ASEC_ACCESS"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isExternalSecureContainer(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->checkExternalSecureContainerMounted()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 42
    .line 43
    new-instance v2, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 44
    .line 45
    invoke-direct {v2, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    const-string p0, "/mnt/asec/"

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 62
    .line 63
    invoke-interface {p0, p1}, Landroid/os/IVold;->asecPath(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-object p0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method public final getUsedF2fsFileNode()J
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/os/IVold;->getUsedF2fsFileNode()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-wide v0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string v0, "StorageManagerService"

    .line 10
    .line 11
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    return-wide v0
.end method

.method public final getUsedSpaceSecureContainer(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "android.permission.ASEC_CREATE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Landroid/os/IVold;->asecGetUsedSpace(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "StorageManagerService"

    .line 18
    .line 19
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    return p0
.end method

.method public final getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "Unknown uid "

    .line 8
    .line 9
    const-string v4, "android.SecVold.StorageManagerService"

    .line 10
    .line 11
    move-object/from16 v5, p2

    .line 12
    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/16 v6, 0x3e8

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const-string v5, "android"

    .line 26
    .line 27
    move v7, v4

    .line 28
    move v4, v6

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    :goto_0
    if-ne v4, v6, :cond_1

    .line 39
    .line 40
    const/4 v8, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object v8, v0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 43
    .line 44
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    check-cast v8, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 49
    .line 50
    const-wide/16 v11, 0x0

    .line 51
    .line 52
    move v9, v4

    .line 53
    move-object v13, v5

    .line 54
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->isSameApp(IIJLjava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    :goto_1
    if-eqz v8, :cond_28

    .line 59
    .line 60
    if-eq v7, v1, :cond_2

    .line 61
    .line 62
    iget-object v7, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    const-string v8, "android.permission.INTERACT_ACROSS_USERS"

    .line 65
    .line 66
    const-string v9, "Need INTERACT_ACROSS_USERS to get volumes for another user"

    .line 67
    .line 68
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    and-int/lit16 v7, v2, 0x100

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    if-eqz v7, :cond_3

    .line 75
    .line 76
    const/4 v7, 0x1

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    move v7, v8

    .line 79
    :goto_2
    and-int/lit16 v9, v2, 0x200

    .line 80
    .line 81
    if-eqz v9, :cond_4

    .line 82
    .line 83
    const/4 v9, 0x1

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    move v9, v8

    .line 86
    :goto_3
    and-int/lit16 v10, v2, 0x400

    .line 87
    .line 88
    if-eqz v10, :cond_5

    .line 89
    .line 90
    const/4 v10, 0x1

    .line 91
    goto :goto_4

    .line 92
    :cond_5
    move v10, v8

    .line 93
    :goto_4
    and-int/lit16 v11, v2, 0x800

    .line 94
    .line 95
    if-eqz v11, :cond_6

    .line 96
    .line 97
    const/4 v11, 0x1

    .line 98
    goto :goto_5

    .line 99
    :cond_6
    move v11, v8

    .line 100
    :goto_5
    and-int/lit16 v2, v2, 0x1000

    .line 101
    .line 102
    if-eqz v2, :cond_7

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    goto :goto_6

    .line 106
    :cond_7
    move v2, v8

    .line 107
    :goto_6
    iget v12, v0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    .line 108
    .line 109
    invoke-static {v4, v12}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    if-eqz v2, :cond_a

    .line 114
    .line 115
    :try_start_0
    iget-object v13, v0, Lcom/android/server/StorageManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 116
    .line 117
    invoke-interface {v13, v4}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    if-eqz v13, :cond_9

    .line 122
    .line 123
    if-nez v12, :cond_a

    .line 124
    .line 125
    iget-object v3, v0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 126
    .line 127
    aget-object v13, v13, v8

    .line 128
    .line 129
    invoke-virtual {v3, v4, v13}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorageAccess(ILjava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_8

    .line 134
    .line 135
    goto :goto_8

    .line 136
    :cond_8
    new-instance v0, Ljava/lang/SecurityException;

    .line 137
    .line 138
    const-string v1, "Only File Manager Apps permitted"

    .line 139
    .line 140
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    goto :goto_7

    .line 146
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    .line 147
    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_7
    new-instance v1, Ljava/lang/SecurityException;

    .line 165
    .line 166
    const-string v2, "Unknown uid "

    .line 167
    .line 168
    invoke-static {v4, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    throw v1

    .line 176
    :cond_a
    :goto_8
    iget-object v3, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 177
    .line 178
    monitor-enter v3

    .line 179
    :try_start_1
    iget-object v13, v0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 180
    .line 181
    invoke-static {v13, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 182
    .line 183
    .line 184
    move-result v13

    .line 185
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 186
    const/16 v3, 0x4d

    .line 187
    .line 188
    if-nez v13, :cond_c

    .line 189
    .line 190
    iget-object v13, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 191
    .line 192
    monitor-enter v13

    .line 193
    :try_start_2
    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 194
    .line 195
    invoke-static {v15, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 196
    .line 197
    .line 198
    move-result v15

    .line 199
    monitor-exit v13

    .line 200
    if-eqz v15, :cond_b

    .line 201
    .line 202
    goto :goto_9

    .line 203
    :cond_b
    move v13, v8

    .line 204
    goto :goto_a

    .line 205
    :catchall_0
    move-exception v0

    .line 206
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    throw v0

    .line 208
    :cond_c
    :goto_9
    const/4 v13, 0x1

    .line 209
    :goto_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 210
    .line 211
    .line 212
    move-result-wide v15

    .line 213
    :try_start_3
    const-class v17, Lcom/android/server/pm/UserManagerInternal;

    .line 214
    .line 215
    invoke-static/range {v17 .. v17}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v17

    .line 219
    move-object/from16 v14, v17

    .line 220
    .line 221
    check-cast v14, Lcom/android/server/pm/UserManagerInternal;

    .line 222
    .line 223
    invoke-virtual {v14, v1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 224
    .line 225
    .line 226
    move-result-object v14

    .line 227
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isDemo()Z

    .line 228
    .line 229
    .line 230
    move-result v14

    .line 231
    iget-object v8, v0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 232
    .line 233
    if-ne v4, v6, :cond_d

    .line 234
    .line 235
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    :goto_b
    const/4 v4, 0x1

    .line 239
    goto :goto_c

    .line 240
    :cond_d
    invoke-virtual {v8, v4, v5}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->getExternalStorageMountMode(ILjava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-eqz v4, :cond_e

    .line 245
    .line 246
    goto :goto_b

    .line 247
    :cond_e
    const/4 v4, 0x0

    .line 248
    :goto_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/StorageManagerService;->isCeStorageUnlocked(I)Z

    .line 249
    .line 250
    .line 251
    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 252
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 253
    .line 254
    .line 255
    new-instance v6, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .line 259
    .line 260
    new-instance v8, Landroid/util/ArraySet;

    .line 261
    .line 262
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 263
    .line 264
    .line 265
    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mUserSharesMediaWith:Landroid/util/SparseIntArray;

    .line 266
    .line 267
    const/4 v3, -0x1

    .line 268
    invoke-virtual {v15, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 273
    .line 274
    monitor-enter v15

    .line 275
    move/from16 v19, v11

    .line 276
    .line 277
    move/from16 v18, v14

    .line 278
    .line 279
    const/4 v14, 0x0

    .line 280
    const/16 v16, 0x0

    .line 281
    .line 282
    :goto_d
    :try_start_4
    iget-object v11, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 283
    .line 284
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    if-ge v14, v11, :cond_22

    .line 289
    .line 290
    iget-object v11, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 291
    .line 292
    invoke-virtual {v11, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v11

    .line 296
    check-cast v11, Ljava/lang/String;

    .line 297
    .line 298
    move-object/from16 v20, v8

    .line 299
    .line 300
    iget-object v8, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 301
    .line 302
    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    check-cast v8, Landroid/os/storage/VolumeInfo;

    .line 307
    .line 308
    move/from16 v21, v14

    .line 309
    .line 310
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 311
    .line 312
    .line 313
    move-result v14

    .line 314
    move-object/from16 v22, v6

    .line 315
    .line 316
    const/4 v6, 0x2

    .line 317
    if-eqz v14, :cond_14

    .line 318
    .line 319
    if-eq v14, v6, :cond_10

    .line 320
    .line 321
    const/4 v6, 0x5

    .line 322
    if-eq v14, v6, :cond_14

    .line 323
    .line 324
    :cond_f
    const/16 v6, 0x4d

    .line 325
    .line 326
    goto/16 :goto_f

    .line 327
    .line 328
    :cond_10
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 329
    .line 330
    .line 331
    move-result v6

    .line 332
    if-ne v6, v1, :cond_11

    .line 333
    .line 334
    goto :goto_e

    .line 335
    :cond_11
    if-eqz v2, :cond_12

    .line 336
    .line 337
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 338
    .line 339
    .line 340
    move-result v6

    .line 341
    if-ne v6, v3, :cond_12

    .line 342
    .line 343
    goto :goto_e

    .line 344
    :catchall_1
    move-exception v0

    .line 345
    goto/16 :goto_19

    .line 346
    .line 347
    :cond_12
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    const/16 v14, 0x4d

    .line 352
    .line 353
    if-ne v6, v14, :cond_13

    .line 354
    .line 355
    goto :goto_e

    .line 356
    :cond_13
    move v6, v14

    .line 357
    goto :goto_f

    .line 358
    :cond_14
    :goto_e
    if-eqz v7, :cond_17

    .line 359
    .line 360
    invoke-virtual {v8, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    if-nez v6, :cond_16

    .line 365
    .line 366
    if-eqz v2, :cond_15

    .line 367
    .line 368
    invoke-virtual {v8, v3}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    .line 369
    .line 370
    .line 371
    move-result v6

    .line 372
    if-nez v6, :cond_16

    .line 373
    .line 374
    :cond_15
    const/16 v6, 0x4d

    .line 375
    .line 376
    invoke-virtual {v8, v6}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    .line 377
    .line 378
    .line 379
    move-result v14

    .line 380
    if-eqz v14, :cond_f

    .line 381
    .line 382
    :cond_16
    const/16 v6, 0x4d

    .line 383
    .line 384
    goto :goto_10

    .line 385
    :cond_17
    invoke-virtual {v8, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    .line 386
    .line 387
    .line 388
    move-result v6

    .line 389
    if-nez v6, :cond_16

    .line 390
    .line 391
    const/16 v6, 0x4d

    .line 392
    .line 393
    invoke-virtual {v8, v6}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    .line 394
    .line 395
    .line 396
    move-result v14

    .line 397
    if-nez v14, :cond_1b

    .line 398
    .line 399
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    .line 400
    .line 401
    .line 402
    move-result v14

    .line 403
    if-nez v14, :cond_18

    .line 404
    .line 405
    if-eqz v10, :cond_18

    .line 406
    .line 407
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    .line 408
    .line 409
    .line 410
    move-result-object v14

    .line 411
    if-nez v14, :cond_1b

    .line 412
    .line 413
    :cond_18
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 414
    .line 415
    .line 416
    move-result v14

    .line 417
    if-nez v14, :cond_19

    .line 418
    .line 419
    invoke-virtual {v8, v3}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    .line 420
    .line 421
    .line 422
    move-result v14

    .line 423
    if-nez v14, :cond_1b

    .line 424
    .line 425
    :cond_19
    if-eqz v2, :cond_1a

    .line 426
    .line 427
    invoke-virtual {v8, v3}, Landroid/os/storage/VolumeInfo;->isVisibleForUser(I)Z

    .line 428
    .line 429
    .line 430
    move-result v14

    .line 431
    if-eqz v14, :cond_1a

    .line 432
    .line 433
    goto :goto_10

    .line 434
    :cond_1a
    :goto_f
    move/from16 v24, v2

    .line 435
    .line 436
    move-object/from16 v6, v20

    .line 437
    .line 438
    move-object/from16 v8, v22

    .line 439
    .line 440
    goto/16 :goto_16

    .line 441
    .line 442
    :cond_1b
    :goto_10
    if-eqz v12, :cond_1c

    .line 443
    .line 444
    move/from16 v24, v2

    .line 445
    .line 446
    goto/16 :goto_12

    .line 447
    .line 448
    :cond_1c
    if-nez v13, :cond_1d

    .line 449
    .line 450
    const-string v14, "StorageManagerService"

    .line 451
    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .line 456
    .line 457
    move/from16 v24, v2

    .line 458
    .line 459
    const-string v2, "Reporting "

    .line 460
    .line 461
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    const-string v2, " unmounted due to system locked"

    .line 468
    .line 469
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-static {v14, v2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    .line 478
    .line 479
    :goto_11
    const/4 v2, 0x1

    .line 480
    goto :goto_13

    .line 481
    :cond_1d
    move/from16 v24, v2

    .line 482
    .line 483
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 484
    .line 485
    .line 486
    move-result v2

    .line 487
    const/4 v6, 0x2

    .line 488
    if-ne v2, v6, :cond_1e

    .line 489
    .line 490
    if-nez v5, :cond_1e

    .line 491
    .line 492
    const-string v2, "StorageManagerService"

    .line 493
    .line 494
    new-instance v6, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .line 498
    .line 499
    const-string v14, "Reporting "

    .line 500
    .line 501
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    const-string/jumbo v11, "unmounted due to "

    .line 508
    .line 509
    .line 510
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    const-string v11, " locked"

    .line 517
    .line 518
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v6

    .line 525
    invoke-static {v2, v6}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .line 527
    .line 528
    goto :goto_11

    .line 529
    :cond_1e
    if-nez v4, :cond_1f

    .line 530
    .line 531
    if-nez v9, :cond_1f

    .line 532
    .line 533
    const-string v2, "StorageManagerService"

    .line 534
    .line 535
    new-instance v6, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .line 539
    .line 540
    const-string v14, "Reporting "

    .line 541
    .line 542
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    const-string/jumbo v11, "unmounted due to missing permissions"

    .line 549
    .line 550
    .line 551
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v6

    .line 558
    invoke-static {v2, v6}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    .line 560
    .line 561
    goto :goto_11

    .line 562
    :cond_1f
    :goto_12
    const/4 v2, 0x0

    .line 563
    :goto_13
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 564
    .line 565
    .line 566
    move-result v6

    .line 567
    if-eq v1, v6, :cond_20

    .line 568
    .line 569
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 570
    .line 571
    .line 572
    move-result v6

    .line 573
    if-ltz v6, :cond_20

    .line 574
    .line 575
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 576
    .line 577
    .line 578
    move-result v6

    .line 579
    goto :goto_14

    .line 580
    :cond_20
    move v6, v1

    .line 581
    :goto_14
    iget-object v11, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 582
    .line 583
    invoke-virtual {v8, v11, v6, v2}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    .line 588
    .line 589
    .line 590
    move-result v6

    .line 591
    if-eqz v6, :cond_21

    .line 592
    .line 593
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 594
    .line 595
    .line 596
    move-result v6

    .line 597
    if-ne v6, v1, :cond_21

    .line 598
    .line 599
    move-object/from16 v8, v22

    .line 600
    .line 601
    const/4 v6, 0x0

    .line 602
    invoke-virtual {v8, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 603
    .line 604
    .line 605
    const/16 v16, 0x1

    .line 606
    .line 607
    goto :goto_15

    .line 608
    :cond_21
    move-object/from16 v8, v22

    .line 609
    .line 610
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    :goto_15
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    move-object/from16 v6, v20

    .line 618
    .line 619
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    :goto_16
    add-int/lit8 v14, v21, 0x1

    .line 623
    .line 624
    move/from16 v2, v24

    .line 625
    .line 626
    move-object/from16 v37, v8

    .line 627
    .line 628
    move-object v8, v6

    .line 629
    move-object/from16 v6, v37

    .line 630
    .line 631
    goto/16 :goto_d

    .line 632
    .line 633
    :cond_22
    move-object/from16 v37, v8

    .line 634
    .line 635
    move-object v8, v6

    .line 636
    move-object/from16 v6, v37

    .line 637
    .line 638
    if-eqz v19, :cond_25

    .line 639
    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 641
    .line 642
    .line 643
    move-result-wide v2

    .line 644
    const-wide/32 v4, 0x240c8400

    .line 645
    .line 646
    .line 647
    sub-long/2addr v2, v4

    .line 648
    const/4 v4, 0x0

    .line 649
    :goto_17
    iget-object v5, v0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 650
    .line 651
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 652
    .line 653
    .line 654
    move-result v5

    .line 655
    if-ge v4, v5, :cond_25

    .line 656
    .line 657
    iget-object v5, v0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 658
    .line 659
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    check-cast v5, Landroid/os/storage/VolumeRecord;

    .line 664
    .line 665
    iget-object v7, v5, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    .line 666
    .line 667
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    move-result v7

    .line 671
    if-eqz v7, :cond_23

    .line 672
    .line 673
    goto :goto_18

    .line 674
    :cond_23
    iget-wide v9, v5, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    .line 675
    .line 676
    const-wide/16 v11, 0x0

    .line 677
    .line 678
    cmp-long v7, v9, v11

    .line 679
    .line 680
    if-lez v7, :cond_24

    .line 681
    .line 682
    cmp-long v7, v9, v2

    .line 683
    .line 684
    if-ltz v7, :cond_24

    .line 685
    .line 686
    iget-object v7, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 687
    .line 688
    invoke-virtual {v5, v7}, Landroid/os/storage/VolumeRecord;->buildStorageVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    .line 689
    .line 690
    .line 691
    move-result-object v5

    .line 692
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    .line 694
    .line 695
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v5

    .line 699
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    :cond_24
    :goto_18
    add-int/lit8 v4, v4, 0x1

    .line 703
    .line 704
    goto :goto_17

    .line 705
    :cond_25
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 706
    const v2, 0x104000e

    .line 707
    .line 708
    .line 709
    if-eqz v18, :cond_26

    .line 710
    .line 711
    invoke-static {}, Landroid/os/Environment;->getDataPreloadsMediaDirectory()Ljava/io/File;

    .line 712
    .line 713
    .line 714
    move-result-object v22

    .line 715
    new-instance v3, Landroid/os/UserHandle;

    .line 716
    .line 717
    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 718
    .line 719
    .line 720
    iget-object v4, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 721
    .line 722
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v23

    .line 726
    new-instance v4, Landroid/os/storage/StorageVolume;

    .line 727
    .line 728
    const-string/jumbo v20, "demo"

    .line 729
    .line 730
    .line 731
    const-string/jumbo v33, "demo"

    .line 732
    .line 733
    .line 734
    const-string/jumbo v34, "mounted_ro"

    .line 735
    .line 736
    .line 737
    const-wide/16 v29, 0x0

    .line 738
    .line 739
    const/16 v32, 0x0

    .line 740
    .line 741
    const/16 v24, 0x0

    .line 742
    .line 743
    const/16 v25, 0x0

    .line 744
    .line 745
    const/16 v26, 0x1

    .line 746
    .line 747
    const/16 v27, 0x0

    .line 748
    .line 749
    const/16 v28, 0x0

    .line 750
    .line 751
    move-object/from16 v19, v4

    .line 752
    .line 753
    move-object/from16 v21, v22

    .line 754
    .line 755
    move-object/from16 v31, v3

    .line 756
    .line 757
    invoke-direct/range {v19 .. v34}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZZJLandroid/os/UserHandle;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    .line 762
    .line 763
    :cond_26
    if-nez v16, :cond_27

    .line 764
    .line 765
    const-string v3, "StorageManagerService"

    .line 766
    .line 767
    const-string v4, "No primary storage defined yet; hacking together a stub"

    .line 768
    .line 769
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    .line 771
    .line 772
    const-string/jumbo v3, "ro.vold.primary_physical"

    .line 773
    .line 774
    .line 775
    const/4 v4, 0x0

    .line 776
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 777
    .line 778
    .line 779
    move-result v24

    .line 780
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    .line 781
    .line 782
    .line 783
    move-result-object v21

    .line 784
    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 785
    .line 786
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v22

    .line 790
    xor-int/lit8 v25, v24, 0x1

    .line 791
    .line 792
    new-instance v0, Landroid/os/UserHandle;

    .line 793
    .line 794
    move-object/from16 v30, v0

    .line 795
    .line 796
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 797
    .line 798
    .line 799
    new-instance v0, Landroid/os/storage/StorageVolume;

    .line 800
    .line 801
    move-object/from16 v18, v0

    .line 802
    .line 803
    const-string/jumbo v19, "stub_primary"

    .line 804
    .line 805
    .line 806
    const-string/jumbo v33, "removed"

    .line 807
    .line 808
    .line 809
    const-string/jumbo v35, "fuse"

    .line 810
    .line 811
    .line 812
    const/16 v32, 0x0

    .line 813
    .line 814
    const/16 v34, 0x0

    .line 815
    .line 816
    const/16 v23, 0x1

    .line 817
    .line 818
    const/16 v26, 0x0

    .line 819
    .line 820
    const/16 v27, 0x0

    .line 821
    .line 822
    const-wide/16 v28, 0x0

    .line 823
    .line 824
    const/16 v31, 0x0

    .line 825
    .line 826
    const/16 v36, 0x0

    .line 827
    .line 828
    move-object/from16 v20, v21

    .line 829
    .line 830
    invoke-direct/range {v18 .. v36}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZZZZJLandroid/os/UserHandle;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 831
    .line 832
    .line 833
    const/4 v1, 0x0

    .line 834
    invoke-virtual {v8, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 835
    .line 836
    .line 837
    :cond_27
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 838
    .line 839
    .line 840
    move-result v0

    .line 841
    new-array v0, v0, [Landroid/os/storage/StorageVolume;

    .line 842
    .line 843
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v0

    .line 847
    check-cast v0, [Landroid/os/storage/StorageVolume;

    .line 848
    .line 849
    return-object v0

    .line 850
    :goto_19
    :try_start_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 851
    throw v0

    .line 852
    :catchall_2
    move-exception v0

    .line 853
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 854
    .line 855
    .line 856
    throw v0

    .line 857
    :catchall_3
    move-exception v0

    .line 858
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 859
    throw v0

    .line 860
    :cond_28
    new-instance v0, Ljava/lang/SecurityException;

    .line 861
    .line 862
    const-string/jumbo v1, "callingPackage does not match UID"

    .line 863
    .line 864
    .line 865
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    throw v0
.end method

.method public final getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-array v0, v0, [Landroid/os/storage/VolumeRecord;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/os/storage/VolumeRecord;

    .line 28
    .line 29
    aput-object v2, v0, v1

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    monitor-exit p1

    .line 37
    return-object v0

    .line 38
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string/jumbo p0, "unknown"

    .line 4
    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    new-array v1, v1, [Landroid/os/storage/VolumeInfo;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ge v2, v3, :cond_2

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 34
    .line 35
    aput-object v3, v1, v2

    .line 36
    .line 37
    iget-object v3, v3, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    const-string p0, "StorageManagerService"

    .line 46
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v4, "getVolumeState: path="

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, ", state="

    .line 62
    .line 63
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    aget-object p1, v1, v2

    .line 67
    .line 68
    iget p1, p1, Landroid/os/storage/VolumeInfo;->state:I

    .line 69
    .line 70
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, " From pid="

    .line 74
    .line 75
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    aget-object p0, v1, v2

    .line 93
    .line 94
    iget p0, p0, Landroid/os/storage/VolumeInfo;->state:I

    .line 95
    .line 96
    invoke-static {p0}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    monitor-exit v0

    .line 101
    return-object p0

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    const-string p0, "StorageManagerService"

    .line 108
    .line 109
    const-string/jumbo p1, "getVolumeState: No matched Volume"

    .line 110
    .line 111
    .line 112
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    const-string/jumbo p0, "unknown"

    .line 116
    .line 117
    .line 118
    monitor-exit v0

    .line 119
    return-object p0

    .line 120
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    throw p0
.end method

.method public final getVolumes(I)[Landroid/os/storage/VolumeInfo;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-array v0, v0, [Landroid/os/storage/VolumeInfo;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 28
    .line 29
    aput-object v2, v0, v1

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    monitor-exit p1

    .line 37
    return-object v0

    .line 38
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final hasDeviceRestriction(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "hasDeviceRestriction: "

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "StorageManagerService"

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "usbhost_storage"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string/jumbo v2, "true"

    .line 21
    .line 22
    .line 23
    const-string/jumbo v3, "content://com.sec.knox.provider/RestrictionPolicy4"

    .line 24
    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-string/jumbo v0, "isUsbHostStorageAllowed"

    .line 29
    .line 30
    .line 31
    filled-new-array {v2}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/android/server/StorageManagerService;->hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_0
    const-string/jumbo v0, "sdcard_storage"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v4, 0x0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    .line 51
    .line 52
    .line 53
    const-string/jumbo v1, "isSdCardEnabled"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, v0, v1, v4}, Lcom/android/server/StorageManagerService;->hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    return p0

    .line 61
    :cond_1
    const-string/jumbo v0, "mass_storage"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    const-string/jumbo v0, "isUsbMassStorageEnabled"

    .line 71
    .line 72
    .line 73
    filled-new-array {v2}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/android/server/StorageManagerService;->hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    return p0

    .line 82
    :cond_2
    const-string/jumbo v0, "readonly_storage"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    const-string/jumbo v0, "isSDCardWriteAllowed"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1, v3, v0, v4}, Lcom/android/server/StorageManagerService;->hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    return p0

    .line 99
    :cond_3
    const-string/jumbo p0, "not define policy !!!"

    .line 100
    .line 101
    .line 102
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    const/4 p0, 0x0

    .line 106
    return p0
.end method

.method public final hasSecRestriction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, " policy not yet?"

    .line 2
    .line 3
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v4, p3

    .line 16
    move-object v5, p4

    .line 17
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string p2, "StorageManagerService"

    .line 22
    .line 23
    const-string/jumbo p4, "policy : "

    .line 24
    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 29
    .line 30
    .line 31
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", restrict(allow) = "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {p2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    const-string/jumbo v0, "false"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x1

    .line 75
    return p0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_3

    .line 78
    :catch_0
    move-exception p3

    .line 79
    goto :goto_1

    .line 80
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-static {p2, p3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    :cond_1
    if-eqz p0, :cond_2

    .line 88
    .line 89
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, ", return exception"

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p2, p1, p3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .line 112
    .line 113
    if-eqz p0, :cond_2

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    :goto_2
    const/4 p0, 0x0

    .line 117
    return p0

    .line 118
    :goto_3
    if-eqz p0, :cond_3

    .line 119
    .line 120
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 121
    .line 122
    .line 123
    :cond_3
    throw p1
.end method

.method public final isAppIoBlocked(I)Z
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/storage/StorageUserConnection;

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_1
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection;->mUidsBlockedOnIo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :catchall_1
    move-exception p0

    .line 10
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final isAppIoBlocked(Ljava/lang/String;III)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/StorageManagerService;->isAppIoBlocked(I)Z

    move-result p0

    return p0
.end method

.method public final isCeStorageUnlocked(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCeUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 7
    .line 8
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    monitor-exit v0

    .line 13
    return p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final isExternalSecureContainer(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-boolean p0, v1, Lcom/android/server/StorageManagerService$PackageInstalledMap;->external:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    const-string v0, "StorageManagerService"

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo v2, "isExternalSecureContainer: id="

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " result="

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return p0

    .line 66
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p0
.end method

.method public final isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/StorageManagerService;->isMountDisallowedByEAS(Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, "StorageManagerService"

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string p0, "Policy has restriction \'storage_itpolicy_ui\'; cannot mount volume."

    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return v3

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-class v4, Landroid/os/UserManager;

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/os/UserManager;

    .line 34
    .line 35
    :try_start_0
    const-string/jumbo v4, "restriction_policy"

    .line 36
    .line 37
    .line 38
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v4}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    .line 47
    .line 48
    invoke-direct {v5}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 52
    .line 53
    if-eqz v6, :cond_2

    .line 54
    .line 55
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    invoke-interface {v4, v5}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-nez v6, :cond_2

    .line 68
    .line 69
    const-string v4, "SDcard is restricted in MDM"

    .line 70
    .line 71
    invoke-static {v1, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    new-instance v4, Landroid/content/Intent;

    .line 75
    .line 76
    const-string/jumbo v5, "com.samsung.intent.action.SDCARD_ITPOLICY_TOAST_EVENT"

    .line 77
    .line 78
    .line 79
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 85
    .line 86
    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 87
    .line 88
    .line 89
    return v3

    .line 90
    :cond_2
    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 91
    .line 92
    if-eqz v6, :cond_3

    .line 93
    .line 94
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isUsb()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_3

    .line 99
    .line 100
    if-eqz v4, :cond_3

    .line 101
    .line 102
    invoke-interface {v4, v5, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_3

    .line 107
    .line 108
    const-string v4, "USB MEMORY is restricted in MDM"

    .line 109
    .line 110
    invoke-static {v1, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    return v3

    .line 114
    :catch_0
    :cond_3
    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 115
    .line 116
    if-eqz v4, :cond_4

    .line 117
    .line 118
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_4

    .line 123
    .line 124
    move v4, v3

    .line 125
    goto :goto_0

    .line 126
    :cond_4
    move v4, v2

    .line 127
    :goto_0
    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 128
    .line 129
    if-eqz v5, :cond_5

    .line 130
    .line 131
    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isUsb()Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_5

    .line 136
    .line 137
    move v5, v3

    .line 138
    goto :goto_1

    .line 139
    :cond_5
    move v5, v2

    .line 140
    :goto_1
    if-eqz v4, :cond_6

    .line 141
    .line 142
    const-string/jumbo v4, "sdcard_storage"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v4}, Lcom/android/server/StorageManagerService;->hasDeviceRestriction(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_6

    .line 150
    .line 151
    const-string p0, "Policy has restriction \'sdcard\'; cannot mount volume."

    .line 152
    .line 153
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    return v3

    .line 157
    :cond_6
    if-eqz v5, :cond_7

    .line 158
    .line 159
    const-string/jumbo v4, "usbhost_storage"

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v4}, Lcom/android/server/StorageManagerService;->hasDeviceRestriction(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-eqz p0, :cond_7

    .line 167
    .line 168
    const-string p0, "Policy has restriction \'usbhost_storage\'; cannot mount volume."

    .line 169
    .line 170
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    return v3

    .line 174
    :cond_7
    iget-object p0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 175
    .line 176
    if-eqz p0, :cond_8

    .line 177
    .line 178
    invoke-virtual {p0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    if-eqz p0, :cond_8

    .line 183
    .line 184
    const-string/jumbo p0, "no_usb_file_transfer"

    .line 185
    .line 186
    .line 187
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v0, p0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    goto :goto_2

    .line 196
    :cond_8
    move p0, v2

    .line 197
    :goto_2
    iget p1, p1, Landroid/os/storage/VolumeInfo;->type:I

    .line 198
    .line 199
    if-eqz p1, :cond_a

    .line 200
    .line 201
    if-eq p1, v3, :cond_a

    .line 202
    .line 203
    const/4 v1, 0x5

    .line 204
    if-ne p1, v1, :cond_9

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_9
    move p1, v2

    .line 208
    goto :goto_4

    .line 209
    :cond_a
    :goto_3
    const-string/jumbo p1, "no_physical_media"

    .line 210
    .line 211
    .line 212
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    :goto_4
    if-nez p0, :cond_b

    .line 221
    .line 222
    if-eqz p1, :cond_c

    .line 223
    .line 224
    :cond_b
    move v2, v3

    .line 225
    :cond_c
    return v2
.end method

.method public final isMountDisallowedByEAS(Z)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "isMountDisallowedByEAS: storage_itpolicy from_intent "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "StorageManagerService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const-string/jumbo v2, "device_policy"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    const-string/jumbo p0, "isMountDisallowedByEAS: DevicePolicyManager is NULL"

    .line 36
    .line 37
    .line 38
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :cond_0
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->semGetAllowStorageCard(Landroid/content/ComponentName;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v3, 0x1

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    iget-boolean p1, p0, Lcom/android/server/StorageManagerService;->preSDPolicy:Z

    .line 53
    .line 54
    if-ne v0, p1, :cond_1

    .line 55
    .line 56
    const-string/jumbo p0, "policy has restriction but not show noti storage_itpolicy"

    .line 57
    .line 58
    .line 59
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return v3

    .line 63
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/StorageManagerService;->preSDPolicy:Z

    .line 64
    .line 65
    const-string/jumbo p1, "policy has restriction storage_itpolicy"

    .line 66
    .line 67
    .line 68
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    const-string p1, "Send ACTION_SDCARD_ITPOLICY_TOAST_EVENT INTENT!!"

    .line 72
    .line 73
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    new-instance p1, Landroid/content/Intent;

    .line 77
    .line 78
    const-string/jumbo v0, "com.samsung.intent.action.SDCARD_ITPOLICY_TOAST_EVENT"

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 87
    .line 88
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 89
    .line 90
    .line 91
    return v3

    .line 92
    :cond_2
    const-string/jumbo p1, "isMountDisallowedByEAS: check is true"

    .line 93
    .line 94
    .line 95
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iput-boolean v3, p0, Lcom/android/server/StorageManagerService;->preSDPolicy:Z

    .line 99
    .line 100
    return v2
.end method

.method public final isObbMounted(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "rawPath cannot be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 11
    .line 12
    check-cast p0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    monitor-exit v0

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public final isPassSupport()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "StorageManagerService"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string/jumbo p0, "isPassSupport - FBE is not enabled"

    .line 11
    .line 12
    .line 13
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string p0, "Current user is not support PASS"

    .line 22
    .line 23
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->isCeStorageUnlocked(I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "User "

    .line 38
    .line 39
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget p0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, "\'s CE storage is already locked"

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return v1

    .line 60
    :cond_2
    const/4 p0, 0x1

    .line 61
    return p0
.end method

.method public final isPassUnlocked()Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getPackageName(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "Unknown"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->isPlatformSignedApp(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 24
    .line 25
    iget p0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 26
    .line 27
    invoke-interface {v2, v1, p0, v0}, Landroid/os/IVold;->isPassUnlocked(Ljava/lang/String;II)Z

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return p0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string v0, "StorageManagerService"

    .line 34
    .line 35
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return p0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 41
    .line 42
    const-string v0, " Signature of the calling package is not match"

    .line 43
    .line 44
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 49
    .line 50
    const-string v0, " calling package is not allowed"

    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public final isPlatformSignedApp(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-class v2, Landroid/app/ActivityManager;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/app/ActivityManager;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :try_start_0
    iget p0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 19
    .line 20
    invoke-virtual {v0, p1, v1, p0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    const-string/jumbo p0, "package not found: "

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "StorageManagerService"

    .line 33
    .line 34
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    :goto_0
    if-nez p0, :cond_0

    .line 39
    .line 40
    return v1

    .line 41
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public final isSecureContainerMounted(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string/jumbo v0, "isSecureContainerMounted: id="

    .line 2
    .line 3
    .line 4
    const-string v1, "android.permission.ASEC_ACCESS"

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 16
    .line 17
    new-instance v2, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 18
    .line 19
    invoke-direct {v2, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const-string v2, "StorageManagerService"

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " ret="

    .line 37
    .line 38
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    monitor-exit v1

    .line 52
    return p0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public final isSensitive(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Landroid/os/IVold;->isSensitive(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "StorageManagerService"

    .line 18
    .line 19
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final lastMaintenance()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final lockCeStorage(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->lockCeStorage_enforcePermission()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string p1, "Headless system user data cannot be locked.."

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isCeStorageUnlocked(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    const-string p0, "StorageManagerService"

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "User "

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, "\'s CE storage is already locked"

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 53
    .line 54
    invoke-interface {v0, p1}, Landroid/os/IVold;->lockCeStorage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter v0

    .line 60
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCeUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

    .line 61
    .line 62
    iget-object v2, v1, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 63
    .line 64
    invoke-static {v2, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iput-object v2, v1, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 69
    .line 70
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 71
    .line 72
    .line 73
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    invoke-static {}, Landroid/multiuser/Flags;->enableBiometricsToUnlockPrivateSpace()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->dispatchCeStorageLockedEvent(I)V

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    throw p0

    .line 99
    :catch_0
    move-exception p0

    .line 100
    const-string p1, "StorageManagerService"

    .line 101
    .line 102
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final lockPassStorage()I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getPackageName(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "Unknown"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->isPlatformSignedApp(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 24
    .line 25
    iget p0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 26
    .line 27
    invoke-interface {v2, v1, p0, v0}, Landroid/os/IVold;->lockPassStorage(Ljava/lang/String;II)I

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return p0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string v0, "StorageManagerService"

    .line 34
    .line 35
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    const/16 p0, -0xc

    .line 39
    .line 40
    return p0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 42
    .line 43
    const-string v0, " Signature of the calling package is not match"

    .line 44
    .line 45
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 50
    .line 51
    const-string v0, " calling package is not allowed"

    .line 52
    .line 53
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final maybeRemountVolumes(I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-ge v2, v3, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    iget v5, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 49
    .line 50
    if-eq v4, v5, :cond_0

    .line 51
    .line 52
    iget v4, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 53
    .line 54
    iput v4, v3, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_3

    .line 62
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 81
    .line 82
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->createVolumeInfoStrForPulbicVolume(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const-string v3, "StorageManagerService"

    .line 87
    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v5, "Remounting volume for user: "

    .line 91
    .line 92
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v5, ". Volume: "

    .line 99
    .line 100
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 114
    .line 115
    const/16 v3, 0x8

    .line 116
    .line 117
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 125
    .line 126
    const/4 v3, 0x5

    .line 127
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_2
    return-void

    .line 136
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    throw p0
.end method

.method public final mkdirs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, ": "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "sys.user."

    .line 12
    .line 13
    .line 14
    const-string v4, ".ce_available"

    .line 15
    .line 16
    invoke-static {v2, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {p0, v2}, Lcom/android/server/StorageManagerService;->isCeStorageUnlocked(I)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const-string v5, "Failed to prepare "

    .line 25
    .line 26
    if-eqz v4, :cond_a

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    invoke-static {v5, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    const-string v4, "appops"

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroid/app/AppOpsManager;

    .line 57
    .line 58
    invoke-virtual {v3, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :try_start_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v4, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-virtual {v3, v4, p1, v6, v2}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    new-instance v3, Ljava/lang/SecurityException;

    .line 84
    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v6, " should not have "

    .line 94
    .line 95
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :catch_0
    :cond_3
    :goto_1
    :try_start_1
    new-instance v3, Ljava/io/File;

    .line 110
    .line 111
    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 115
    .line 116
    .line 117
    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 118
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    const-string v4, "/"

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-nez v6, :cond_4

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    :cond_4
    sget-object v4, Lcom/android/server/StorageManagerService;->KNOWN_APP_DIR_PATHS:Ljava/util/regex/Pattern;

    .line 135
    .line 136
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    const-string v7, "Invalid mkdirs path: "

    .line 145
    .line 146
    if-eqz v6, :cond_9

    .line 147
    .line 148
    const/4 v6, 0x3

    .line 149
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-eqz v6, :cond_8

    .line 158
    .line 159
    const/4 p1, 0x2

    .line 160
    invoke-virtual {v4, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    if-eqz v6, :cond_5

    .line 165
    .line 166
    invoke-virtual {v4, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-eqz v6, :cond_6

    .line 179
    .line 180
    :cond_5
    invoke-virtual {v4, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    if-nez p1, :cond_7

    .line 185
    .line 186
    iget p1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 187
    .line 188
    if-ne v2, p1, :cond_6

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 192
    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string p2, " does not match calling user id "

    .line 202
    .line 203
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p0

    .line 217
    :cond_7
    :goto_2
    :try_start_2
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 218
    .line 219
    invoke-interface {p0, v3, v1}, Landroid/os/IVold;->setupAppDir(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :catch_1
    move-exception p0

    .line 224
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 225
    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw p1

    .line 248
    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    .line 249
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    const-string p2, " does not contain calling package "

    .line 259
    .line 260
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p0

    .line 274
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    .line 275
    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string p2, " is not a known app path."

    .line 285
    .line 286
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw p0

    .line 297
    :catch_2
    move-exception p0

    .line 298
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 299
    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string v2, "Failed to resolve "

    .line 303
    .line 304
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw p1

    .line 324
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 325
    .line 326
    invoke-static {v5, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    throw p0
.end method

.method public final monitor()V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/os/IVold;->monitor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string v0, "StorageManagerService"

    .line 9
    .line 10
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public final mount(Landroid/os/storage/VolumeInfo;)V
    .locals 8

    .line 19
    const-string v0, "StorageManagerService"

    :try_start_0
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Mounting volume "

    if-nez v1, :cond_0

    .line 20
    :try_start_1
    invoke-static {p1}, Lcom/android/server/StorageManagerService;->createVolumeInfoStrForPulbicVolume(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_0
    const-string/jumbo v1, "readonly_storage"

    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->hasDeviceRestriction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 24
    const-string v1, "Policy has restriction \'readonly_storage\'; readonly"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, -0x80000000

    goto :goto_1

    :cond_1
    move v1, v2

    .line 25
    :goto_1
    const-string v3, "#mount might be slow"

    invoke-static {v3}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 26
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    .line 27
    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 28
    const-string v3, "Admin Stirage Card Encryption Policy is Set"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, 0x20000000

    goto :goto_2

    :cond_2
    move v3, v2

    .line 29
    :goto_2
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    iget v6, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/2addr v1, v6

    or-int/2addr v1, v3

    iget v3, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    new-instance v6, Lcom/android/server/StorageManagerService$8;

    const/4 v7, 0x0

    invoke-direct {v6, v7, p1, p0}, Lcom/android/server/StorageManagerService$8;-><init>(ILandroid/os/storage/VolumeInfo;Lcom/android/server/StorageManagerService;)V

    invoke-interface {v4, v5, v1, v3, v6}, Landroid/os/IVold;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 30
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v1, :cond_3

    .line 31
    iget v1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v1, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 32
    :cond_3
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "Mounted volume "

    if-nez v1, :cond_4

    .line 33
    :try_start_2
    invoke-static {p1}, Lcom/android/server/StorageManagerService;->createVolumeInfoStrForPulbicVolume(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 35
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_3
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    const-string v1, "/data/media"

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 37
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 38
    const-string/jumbo v1, "com.google.android.providers.media.module"

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 39
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz p1, :cond_5

    .line 40
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    invoke-interface {p0, p1}, Landroid/os/IVold;->setMpUidForFileSystem(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 41
    :goto_4
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_5
    return-void
.end method

.method public final mount(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->mount_enforcePermission()V

    .line 2
    const-string v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Begin mount: volId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getMountUserId()I

    move-result p1

    iget v2, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    if-eq p1, v2, :cond_0

    .line 7
    iget p1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput p1, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->mount(Landroid/os/storage/VolumeInfo;)V

    return-void

    .line 10
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Mounting "

    const-string v1, " restricted by policy"

    .line 12
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final mountBySecApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/android/server/StorageManagerService;->chkMountUnmountFormatCaller(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p2, "StorageManagerService"

    .line 8
    .line 9
    const-string v0, "Mount call accepted"

    .line 10
    .line 11
    invoke-static {p2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->mount(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 19
    .line 20
    const-string p1, "Mount call denied to ["

    .line 21
    .line 22
    const-string v0, "]"

    .line 23
    .line 24
    invoke-static {p1, p2, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public final mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;ILandroid/content/res/ObbInfo;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "rawPath cannot be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "canonicalPath cannot be null"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string/jumbo v0, "token cannot be null"

    .line 14
    .line 15
    .line 16
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const-string/jumbo v0, "obbIfno cannot be null"

    .line 20
    .line 21
    .line 22
    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v9, Lcom/android/server/StorageManagerService$ObbState;

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    move-object v1, v9

    .line 33
    move-object v2, p0

    .line 34
    move-object v3, p1

    .line 35
    move-object v4, p2

    .line 36
    move v5, v0

    .line 37
    move-object v6, p3

    .line 38
    move v7, p4

    .line 39
    invoke-direct/range {v1 .. v8}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Lcom/android/server/StorageManagerService$MountObbAction;

    .line 43
    .line 44
    invoke-direct {p1, p0, v9, v0, p5}, Lcom/android/server/StorageManagerService$MountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;ILandroid/content/res/ObbInfo;)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 48
    .line 49
    const/4 p2, 0x1

    .line 50
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;
    .locals 7

    .line 1
    const-string v0, "StorageManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "mountProxyFileDescriptorBridge"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Lcom/android/server/storage/AppFuseBridge;

    .line 21
    .line 22
    invoke-direct {v2}, Lcom/android/server/storage/AppFuseBridge;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/Thread;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 30
    .line 31
    const-string v4, "AppFuseBridge"

    .line 32
    .line 33
    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_3

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 44
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    .line 45
    .line 46
    add-int/lit8 v4, v3, 0x1

    .line 47
    .line 48
    iput v4, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I
    :try_end_1
    .catch Lcom/android/server/AppFuseMountException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    :try_start_2
    new-instance v4, Lcom/android/internal/os/AppFuseMount;

    .line 51
    .line 52
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 53
    .line 54
    new-instance v6, Lcom/android/server/StorageManagerService$AppFuseMountScope;

    .line 55
    .line 56
    invoke-direct {v6, p0, v0, v3}, Lcom/android/server/StorageManagerService$AppFuseMountScope;-><init>(Lcom/android/server/StorageManagerService;II)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v6}, Lcom/android/server/storage/AppFuseBridge;->addBridge(Lcom/android/server/storage/AppFuseBridge$MountScope;)Landroid/os/ParcelFileDescriptor;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-direct {v4, v3, v5}, Lcom/android/internal/os/AppFuseMount;-><init>(ILandroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/server/AppFuseMountException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .line 65
    .line 66
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    return-object v4

    .line 68
    :catch_0
    move-exception p0

    .line 69
    goto :goto_2

    .line 70
    :catch_1
    move-exception v3

    .line 71
    const/4 v4, 0x0

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    :try_start_4
    const-string p0, "StorageManagerService"

    .line 75
    .line 76
    const-string v0, ""

    .line 77
    .line 78
    invoke-static {p0, v0, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Lcom/android/server/AppFuseMountException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    .line 80
    .line 81
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 82
    return-object v4

    .line 83
    :cond_1
    :try_start_6
    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;
    :try_end_6
    .catch Lcom/android/server/AppFuseMountException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 84
    .line 85
    :try_start_7
    monitor-exit v1

    .line 86
    goto :goto_0

    .line 87
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-direct {v0, v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :goto_3
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 98
    throw p0
.end method

.method public final mountSdpMediaStorageCmd(I)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/os/IVold;->mountSdpMediaStorageCmd(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string p1, "StorageManagerService"

    .line 10
    .line 11
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 3

    .line 1
    const-string v0, "android.permission.ASEC_MOUNT_UNMOUNT"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 13
    .line 14
    new-instance v2, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 15
    .line 16
    invoke-direct {v2, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    monitor-exit v0

    .line 26
    const/4 p0, -0x6

    .line 27
    return p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_4

    .line 30
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const/4 v0, 0x0

    .line 32
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 33
    .line 34
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/IVold;->asecMount(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    .line 36
    .line 37
    move p2, v0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p2

    .line 40
    const-string p3, "StorageManagerService"

    .line 41
    .line 42
    invoke-static {p3, p2}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    const/4 p2, -0x1

    .line 46
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    if-nez p2, :cond_2

    .line 51
    .line 52
    iget-object p4, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 53
    .line 54
    monitor-enter p4

    .line 55
    if-eqz p3, :cond_1

    .line 56
    .line 57
    :try_start_2
    const-string v1, "/data/app-asec/"

    .line 58
    .line 59
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    if-eqz p3, :cond_1

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 66
    .line 67
    new-instance p3, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 68
    .line 69
    invoke-direct {p3, p1, v0}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 79
    .line 80
    new-instance p3, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-direct {p3, p1, v0}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :goto_1
    monitor-exit p4

    .line 90
    goto :goto_3

    .line 91
    :goto_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    throw p0

    .line 93
    :cond_2
    :goto_3
    return p2

    .line 94
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    throw p0
.end method

.method public final mountVolume(Ljava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "mountVolume : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "StorageManagerService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->mount(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public final mvFileAtData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 1
    const-string v0, "Rename in media path result "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string/jumbo v2, "com.samsung.android.permission.SEM_VOLD_DATA_MOVE"

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/android/server/StorageManagerService;->isValidPath(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const-string v3, "StorageManagerService"

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    invoke-static {p2}, Lcom/android/server/StorageManagerService;->isValidPath(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/android/server/StorageManagerService;->isMediaPath(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-static {p2}, Lcom/android/server/StorageManagerService;->isMediaPath(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    const-string/jumbo p0, "mvFileAtData not support from media to media dir, so return false"

    .line 41
    .line 42
    .line 43
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 53
    .line 54
    iget v7, p0, Lcom/android/server/StorageManagerService;->mMediaStoreAuthorityAppId:I

    .line 55
    .line 56
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    new-instance v9, Lcom/android/server/StorageManagerService$15;

    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    invoke-direct {v9, p0, v1}, Lcom/android/server/StorageManagerService$15;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    move-object v5, p1

    .line 67
    move-object v6, p2

    .line 68
    invoke-interface/range {v4 .. v9}, Landroid/os/IVold;->mvFileAtData(Ljava/lang/String;Ljava/lang/String;IILandroid/os/IVoldTaskListener;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Landroid/os/PersistableBundle;

    .line 76
    .line 77
    const-string/jumbo p1, "result"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_2

    .line 85
    .line 86
    const-string/jumbo p1, "true"

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    const-string/jumbo p1, "false"

    .line 93
    .line 94
    .line 95
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {v3, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    return p0

    .line 103
    :goto_1
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    return v2

    .line 107
    :cond_3
    :goto_2
    const-string/jumbo p0, "mvFileAtData not support other than media or sec dir, so return false"

    .line 108
    .line 109
    .line 110
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    return v2
.end method

.method public final needsCheckpoint()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->needsCheckpoint_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 5
    .line 6
    invoke-interface {p0}, Landroid/os/IVold;->needsCheckpoint()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final notifyAppIoBlocked(Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->enforceExternalStorageService()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object p3, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter p3

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/server/storage/StorageUserConnection;

    .line 23
    .line 24
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/server/storage/StorageUserConnection;->mSessionsLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter p1

    .line 30
    :try_start_1
    iget-object p3, p0, Lcom/android/server/storage/StorageUserConnection;->mUidsBlockedOnIo:Landroid/util/SparseArray;

    .line 31
    .line 32
    const/4 p4, 0x0

    .line 33
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p4

    .line 37
    invoke-virtual {p3, p2, p4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    check-cast p3, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection;->mUidsBlockedOnIo:Landroid/util/SparseArray;

    .line 48
    .line 49
    add-int/lit8 p3, p3, 0x1

    .line 50
    .line 51
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-virtual {p0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    monitor-exit p1

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    throw p0
.end method

.method public final notifyAppIoResumed(Ljava/lang/String;III)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->enforceExternalStorageService()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object p3, p0, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter p3

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/android/server/storage/StorageUserConnection;

    .line 23
    .line 24
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    const-string p1, "Unexpected app IO resumption for uid: "

    .line 28
    .line 29
    iget-object p3, p0, Lcom/android/server/storage/StorageUserConnection;->mSessionsLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter p3

    .line 32
    :try_start_1
    iget-object p4, p0, Lcom/android/server/storage/StorageUserConnection;->mUidsBlockedOnIo:Landroid/util/SparseArray;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p4, p2, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    check-cast p4, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p4

    .line 49
    if-nez p4, :cond_0

    .line 50
    .line 51
    const-string v0, "StorageUserConnection"

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_2

    .line 71
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 72
    if-gt p4, p1, :cond_1

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection;->mUidsBlockedOnIo:Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/android/server/storage/StorageUserConnection;->mUidsBlockedOnIo:Landroid/util/SparseArray;

    .line 81
    .line 82
    add-int/lit8 p4, p4, -0x1

    .line 83
    .line 84
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    monitor-exit p3

    .line 92
    goto :goto_3

    .line 93
    :goto_2
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    throw p0

    .line 95
    :cond_2
    :goto_3
    return-void

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    throw p0
.end method

.method public final onAwakeStateChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onKeyguardStateChanged(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-class v0, Landroid/app/KeyguardManager;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/app/KeyguardManager;

    .line 12
    .line 13
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 25
    .line 26
    if-eq v0, p1, :cond_1

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 31
    .line 32
    iget-boolean p0, p0, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 33
    .line 34
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/16 v0, 0x11

    .line 39
    .line 40
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final onMoveStatusLocked(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 2
    .line 3
    const-string v1, "StorageManagerService"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Odd, status but no move requested"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v2, -0x1

    .line 14
    const-wide/16 v3, -0x1

    .line 15
    .line 16
    :try_start_0
    invoke-interface {v0, v2, p1, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    const/16 v0, 0x52

    .line 20
    .line 21
    const-string v2, "Move to "

    .line 22
    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, " copy phase finshed; persisting"

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 55
    .line 56
    const/16 v3, 0x12

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, " finished with status "

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 98
    .line 99
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 100
    .line 101
    :cond_2
    return-void
.end method

.method public final openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    const-string v0, "StorageManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "mountProxyFileDescriptor"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    const/high16 v0, 0x30000000

    .line 10
    .line 11
    and-int/2addr p3, v0

    .line 12
    const/4 v0, 0x0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1
    :try_end_0
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const-string p0, "StorageManagerService"

    .line 21
    .line 22
    const-string p1, "FuseBridge has not been created"

    .line 23
    .line 24
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    monitor-exit v1

    .line 28
    return-object v0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/storage/AppFuseBridge;->openFile(III)Landroid/os/ParcelFileDescriptor;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    monitor-exit v1

    .line 36
    return-object p0

    .line 37
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    const-string p1, "StorageManagerService"

    .line 41
    .line 42
    const-string p2, "The mount point has already been invalid"

    .line 43
    .line 44
    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public final partitionMixed(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->partitionMixed_enforcePermission()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "partitionMixed: diskId="

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "StorageManagerService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "#partition might be slow"

    .line 32
    .line 33
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 37
    .line 38
    const/4 v2, 0x2

    .line 39
    invoke-interface {p0, p1, v2, p2}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    const-string/jumbo p0, "partitionMixed"

    .line 43
    .line 44
    .line 45
    const-wide/32 p1, 0x2bf20

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p1, p2, p0}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public final partitionPrivate(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->partitionPrivate_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "partitionPrivate: diskId="

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "StorageManagerService"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "#partition might be slow"

    .line 32
    .line 33
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    const/4 v3, -0x1

    .line 40
    invoke-interface {p0, p1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    const-string/jumbo p0, "partitionPrivate"

    .line 44
    .line 45
    .line 46
    const-wide/32 v2, 0x2bf20

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v2, v3, p0}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public final partitionPublic(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->partitionPublic_enforcePermission()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "partitionPublic: diskId="

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "StorageManagerService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v2, "#partition might be slow"

    .line 29
    .line 30
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, -0x1

    .line 37
    invoke-interface {p0, p1, v2, v3}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo p0, "partitionPublic"

    .line 41
    .line 42
    .line 43
    const-wide/32 v2, 0x927c0

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v2, v3, p0}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public final prepareUserStorage(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->prepareUserStorage_enforcePermission()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/StorageManagerService;->prepareUserStorageInternal(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public final prepareUserStorageIfNeeded(Landroid/os/storage/VolumeInfo;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-class v2, Landroid/os/UserManager;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/os/UserManager;

    .line 16
    .line 17
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 44
    .line 45
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 46
    .line 47
    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    const/4 v4, 0x3

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 56
    .line 57
    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    move v4, v1

    .line 64
    :goto_1
    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 65
    .line 66
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 67
    .line 68
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/StorageManagerService;->prepareUserStorageInternal(IILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    return-void
.end method

.method public final prepareUserStorageInternal(IILjava/lang/String;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "encryption policy for SA logging : "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "encryption policy for SA logging"

    .line 5
    .line 6
    .line 7
    const-string v2, "StorageManagerService"

    .line 8
    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 10
    .line 11
    invoke-interface {v3, p3, p1, p2}, Landroid/os/IVold;->prepareUserStorage(Ljava/lang/String;II)V

    .line 12
    .line 13
    .line 14
    if-eqz p3, :cond_1

    .line 15
    .line 16
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-class v3, Landroid/os/storage/StorageManager;

    .line 19
    .line 20
    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroid/os/storage/StorageManager;

    .line 25
    .line 26
    invoke-virtual {p2, p3}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    iget p2, p2, Landroid/os/storage/VolumeInfo;->type:I

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    if-ne p2, v3, :cond_1

    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 42
    .line 43
    .line 44
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    :try_start_1
    iget-object p2, p2, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 49
    .line 50
    invoke-interface {p2, p3}, Landroid/os/IInstalld;->tryMountDataMirror(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p2

    .line 55
    :try_start_2
    invoke-static {p2}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 56
    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 60
    :catch_1
    move-exception p2

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 63
    .line 64
    :try_start_3
    new-instance p1, Lcom/samsung/android/jdsms/Sender;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Lcom/samsung/android/jdsms/Sender;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    const-string p0, "FBE4"

    .line 72
    .line 73
    const-string/jumbo p2, "encryption policy success"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/jdsms/Sender;->send(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_2
    move-exception p0

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_1
    return-void

    .line 104
    :goto_2
    const/4 p3, -0x1

    .line 105
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    const-string v3, ""

    .line 110
    .line 111
    const-string v4, "224585613"

    .line 112
    .line 113
    filled-new-array {v4, p3, v3}, [Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    const v3, 0x534e4554

    .line 118
    .line 119
    .line 120
    invoke-static {v3, p3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 121
    .line 122
    .line 123
    invoke-static {v2, p2}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .line 125
    .line 126
    const-string/jumbo p3, "security.fbe.global_de"

    .line 127
    .line 128
    .line 129
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    .line 134
    .line 135
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    .line 140
    .line 141
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    .line 146
    .line 147
    const/4 v6, 0x0

    .line 148
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-nez v4, :cond_4

    .line 153
    .line 154
    const-string/jumbo v4, "loaded"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p3

    .line 161
    if-nez p3, :cond_4

    .line 162
    .line 163
    invoke-virtual {v3, p1}, Lcom/android/server/pm/UserManagerInternal;->shouldIgnorePrepareStorageErrors(I)Z

    .line 164
    .line 165
    .line 166
    move-result p3

    .line 167
    if-eqz p3, :cond_3

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 171
    .line 172
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    throw p0

    .line 176
    :cond_4
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string/jumbo p3, "ignoring error preparing storage for existing user "

    .line 179
    .line 180
    .line 181
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string p3, "; device may be insecure!"

    .line 188
    .line 189
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-static {v2, p2}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    if-nez p1, :cond_5

    .line 200
    .line 201
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-nez p1, :cond_5

    .line 210
    .line 211
    :try_start_4
    new-instance p1, Lcom/samsung/android/jdsms/Sender;

    .line 212
    .line 213
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 214
    .line 215
    invoke-direct {p1, p0}, Lcom/samsung/android/jdsms/Sender;-><init>(Landroid/content/Context;)V

    .line 216
    .line 217
    .line 218
    const-string/jumbo p0, "security.fbe.fail_cause"

    .line 219
    .line 220
    .line 221
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    const-string p2, "FBE5"

    .line 226
    .line 227
    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/jdsms/Sender;->send(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :catch_3
    move-exception p0

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    :cond_5
    :goto_4
    return-void
.end method

.method public final readSettingsLocked()V
    .locals 11

    .line 1
    const-string v0, "Failed reading metadata"

    .line 2
    .line 3
    const-string v1, "StorageManagerService"

    .line 4
    .line 5
    const-string/jumbo v2, "readSettingsLocked: "

    .line 6
    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v3, "ro.vold.primary_physical"

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    const-string/jumbo v5, "primary_physical"

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v5, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 28
    .line 29
    :goto_0
    iput-object v5, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    :try_start_0
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 33
    .line 34
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    :cond_1
    :goto_1
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    const/4 v8, 0x1

    .line 72
    if-eq v7, v8, :cond_4

    .line 73
    .line 74
    const/4 v9, 0x2

    .line 75
    if-ne v7, v9, :cond_1

    .line 76
    .line 77
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    const-string/jumbo v10, "volumes"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    if-eqz v10, :cond_3

    .line 89
    .line 90
    const-string/jumbo v7, "version"

    .line 91
    .line 92
    .line 93
    invoke-interface {v2, v5, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    const/4 v10, 0x3

    .line 102
    if-ge v7, v10, :cond_2

    .line 103
    .line 104
    if-lt v7, v9, :cond_1

    .line 105
    .line 106
    if-nez v8, :cond_1

    .line 107
    .line 108
    :cond_2
    const-string/jumbo v7, "primaryStorageUuid"

    .line 109
    .line 110
    .line 111
    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    iput-object v7, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    move-object v5, v6

    .line 120
    goto :goto_5

    .line 121
    :catch_0
    move-exception p0

    .line 122
    move-object v5, v6

    .line 123
    goto :goto_2

    .line 124
    :catch_1
    move-exception p0

    .line 125
    move-object v5, v6

    .line 126
    goto :goto_4

    .line 127
    :catch_2
    move-object v5, v6

    .line 128
    goto :goto_3

    .line 129
    :cond_3
    const-string/jumbo v8, "volume"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-eqz v7, :cond_1

    .line 137
    .line 138
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->readVolumeRecord(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/storage/VolumeRecord;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 143
    .line 144
    iget-object v9, v7, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {v8, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    new-instance v8, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string/jumbo v9, "readSettingsLocked: TAG_VOLUME rec="

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v9, " rec.fsUuid="

    .line 164
    .line 165
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object v7, v7, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-static {v1, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_4
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 182
    .line 183
    .line 184
    goto :goto_6

    .line 185
    :catchall_1
    move-exception p0

    .line 186
    goto :goto_5

    .line 187
    :catch_3
    move-exception p0

    .line 188
    goto :goto_2

    .line 189
    :catch_4
    move-exception p0

    .line 190
    goto :goto_4

    .line 191
    :goto_2
    :try_start_2
    invoke-static {v1, v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    .line 193
    .line 194
    :catch_5
    :goto_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 195
    .line 196
    .line 197
    goto :goto_6

    .line 198
    :goto_4
    :try_start_3
    invoke-static {v1, v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :goto_5
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 203
    .line 204
    .line 205
    throw p0

    .line 206
    :goto_6
    return-void
.end method

.method public final refreshLifetimeConstraint()Z
    .locals 6

    .line 1
    const-string v0, "StorageManagerService"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 5
    .line 6
    invoke-interface {v2}, Landroid/os/IVold;->getStorageLifeTime()I

    .line 7
    .line 8
    .line 9
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const/4 v3, -0x1

    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    const-string p0, "Failed to get storage lifetime"

    .line 14
    .line 15
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    const/4 v3, 0x1

    .line 20
    if-lez v2, :cond_1

    .line 21
    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v5, "Ended smart idle maintenance, because of lifetime("

    .line 25
    .line 26
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, "), lifetime threshold(0)"

    .line 33
    .line 34
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iput-boolean v3, p0, Lcom/android/server/StorageManagerService;->mPassedLifetimeThresh:Z

    .line 45
    .line 46
    return v1

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v1, "Storage lifetime: "

    .line 50
    .line 51
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    return v3

    .line 65
    :catch_0
    move-exception p0

    .line 66
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    return v1
.end method

.method public final refreshZramSettings()V
    .locals 5

    .line 1
    const-string/jumbo v0, "persist.sys.zram_enabled"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string/jumbo v3, "zram_enabled"

    .line 24
    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const-string v3, "1"

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    move-object v2, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v2, "0"

    .line 38
    .line 39
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const v1, 0x111029e

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {p0}, Lcom/android/server/ZramWriteback;->scheduleZramWriteback(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public final registerListener(Landroid/os/storage/IStorageEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/os/RemoteCallbackList;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "android.permission.ASEC_RENAME"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 13
    .line 14
    new-instance v2, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 15
    .line 16
    invoke-direct {v2, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 26
    .line 27
    new-instance v2, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 28
    .line 29
    invoke-direct {v2, p2}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :try_start_1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 41
    .line 42
    invoke-interface {p0, p1, p2}, Landroid/os/IVold;->asecRename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    const-string p1, "StorageManagerService"

    .line 49
    .line 50
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    const/4 p0, -0x1

    .line 54
    :goto_0
    return p0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v0

    .line 58
    const/4 p0, -0x6

    .line 59
    return p0

    .line 60
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    throw p0
.end method

.method public final reserveDataBlocks(J)I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final resetIfBootedAndConnected()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "StorageManagerService"

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "Thinking about reset, mBootCompleted="

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v3, v1, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, ", mDaemonConnected="

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v3, v1, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-boolean v0, v1, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    .line 35
    .line 36
    if-eqz v0, :cond_7

    .line 37
    .line 38
    iget-boolean v0, v1, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    .line 39
    .line 40
    if-eqz v0, :cond_7

    .line 41
    .line 42
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const-class v2, Landroid/os/UserManager;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    move-object v2, v0

    .line 51
    check-cast v2, Landroid/os/UserManager;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const-string v0, "#onReset might be slow"

    .line 58
    .line 59
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->extendWatchdogTimeout(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v4, v1, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 63
    .line 64
    iget-object v5, v1, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    invoke-virtual {v4, v6}, Lcom/android/server/storage/StorageSessionController;->shouldHandle(Landroid/os/storage/VolumeInfo;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v7, 0x1

    .line 72
    const/4 v8, 0x0

    .line 73
    if-nez v0, :cond_0

    .line 74
    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :cond_0
    new-instance v9, Landroid/util/SparseArray;

    .line 78
    .line 79
    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 80
    .line 81
    .line 82
    iget-object v10, v4, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter v10

    .line 85
    :try_start_0
    iput-boolean v7, v4, Lcom/android/server/storage/StorageSessionController;->mIsResetting:Z

    .line 86
    .line 87
    const-string v0, "StorageSessionController"

    .line 88
    .line 89
    const-string v11, "Started resetting external storage service..."

    .line 90
    .line 91
    invoke-static {v0, v11}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move v0, v8

    .line 95
    :goto_0
    iget-object v11, v4, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    .line 96
    .line 97
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    if-ge v0, v11, :cond_1

    .line 102
    .line 103
    iget-object v11, v4, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    .line 104
    .line 105
    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    iget-object v12, v4, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    .line 110
    .line 111
    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    check-cast v12, Lcom/android/server/storage/StorageUserConnection;

    .line 116
    .line 117
    invoke-virtual {v9, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    goto/16 :goto_9

    .line 125
    .line 126
    :cond_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    move v10, v8

    .line 128
    :goto_1
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-ge v10, v0, :cond_3

    .line 133
    .line 134
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    move-object v11, v0

    .line 139
    check-cast v11, Lcom/android/server/storage/StorageUserConnection;

    .line 140
    .line 141
    iget-object v12, v11, Lcom/android/server/storage/StorageUserConnection;->mSessionsLock:Ljava/lang/Object;

    .line 142
    .line 143
    monitor-enter v12

    .line 144
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    .line 145
    .line 146
    iget-object v13, v11, Lcom/android/server/storage/StorageUserConnection;->mSessions:Ljava/util/Map;

    .line 147
    .line 148
    check-cast v13, Ljava/util/HashMap;

    .line 149
    .line 150
    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    invoke-direct {v0, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 155
    .line 156
    .line 157
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_2

    .line 167
    .line 168
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    move-object v13, v0

    .line 173
    check-cast v13, Ljava/lang/String;

    .line 174
    .line 175
    :try_start_2
    const-string v0, "StorageSessionController"

    .line 176
    .line 177
    new-instance v14, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v15, "Unmounting "

    .line 183
    .line 184
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v14

    .line 194
    invoke-static {v0, v14}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    invoke-interface {v5, v13}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string v0, "StorageSessionController"

    .line 201
    .line 202
    new-instance v14, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string v15, "Unmounted "

    .line 208
    .line 209
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v14

    .line 219
    invoke-static {v0, v14}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string v14, "StorageSessionController"

    .line 225
    .line 226
    new-instance v15, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v7, "Failed to unmount volume: "

    .line 229
    .line 230
    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    invoke-static {v14, v7, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    .line 242
    .line 243
    :goto_3
    :try_start_3
    const-string v0, "StorageSessionController"

    .line 244
    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    const-string v14, "Exiting "

    .line 251
    .line 252
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v7

    .line 262
    invoke-static {v0, v7}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    invoke-virtual {v11, v13}, Lcom/android/server/storage/StorageUserConnection;->removeSessionAndWait(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    const-string v0, "StorageSessionController"

    .line 269
    .line 270
    new-instance v7, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v14, "Exited "

    .line 276
    .line 277
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    invoke-static {v0, v7}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_3 .. :try_end_3} :catch_1

    .line 288
    .line 289
    .line 290
    const/4 v7, 0x1

    .line 291
    goto/16 :goto_2

    .line 292
    .line 293
    :catch_1
    move-exception v0

    .line 294
    const-string v7, "StorageSessionController"

    .line 295
    .line 296
    new-instance v12, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    const-string v14, "Failed to exit session: "

    .line 299
    .line 300
    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v13, ". Killing MediaProvider..."

    .line 307
    .line 308
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    invoke-static {v7, v12, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    .line 317
    .line 318
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->keyAt(I)I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 323
    .line 324
    .line 325
    move-result-object v16

    .line 326
    :try_start_4
    iget-object v7, v4, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServicePackageName:Ljava/lang/String;

    .line 327
    .line 328
    iget v12, v4, Lcom/android/server/storage/StorageSessionController;->mExternalStorageServiceAppId:I

    .line 329
    .line 330
    const-string/jumbo v20, "storage_session_controller reset"

    .line 331
    .line 332
    .line 333
    const/16 v21, 0xd

    .line 334
    .line 335
    move-object/from16 v17, v7

    .line 336
    .line 337
    move/from16 v18, v12

    .line 338
    .line 339
    move/from16 v19, v0

    .line 340
    .line 341
    invoke-interface/range {v16 .. v21}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 342
    .line 343
    .line 344
    goto :goto_4

    .line 345
    :catch_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v12, "Failed to kill the ExtenalStorageService for user "

    .line 348
    .line 349
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    const-string v7, "StorageSessionController"

    .line 360
    .line 361
    invoke-static {v7, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .line 363
    .line 364
    :cond_2
    :goto_4
    iget-object v0, v11, Lcom/android/server/storage/StorageUserConnection;->mActiveConnection:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    .line 365
    .line 366
    invoke-virtual {v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->close()V

    .line 367
    .line 368
    .line 369
    iget-object v0, v11, Lcom/android/server/storage/StorageUserConnection;->mHandlerThread:Landroid/os/HandlerThread;

    .line 370
    .line 371
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 372
    .line 373
    .line 374
    add-int/lit8 v10, v10, 0x1

    .line 375
    .line 376
    const/4 v7, 0x1

    .line 377
    goto/16 :goto_1

    .line 378
    .line 379
    :catchall_1
    move-exception v0

    .line 380
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 381
    throw v0

    .line 382
    :cond_3
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 383
    .line 384
    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    iget-object v5, v4, Lcom/android/server/storage/StorageSessionController;->mLock:Ljava/lang/Object;

    .line 388
    .line 389
    monitor-enter v5

    .line 390
    :try_start_6
    iget-object v0, v4, Lcom/android/server/storage/StorageSessionController;->mConnections:Landroid/util/SparseArray;

    .line 391
    .line 392
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 393
    .line 394
    .line 395
    iput-boolean v8, v4, Lcom/android/server/storage/StorageSessionController;->mIsResetting:Z

    .line 396
    .line 397
    const-string v0, "StorageSessionController"

    .line 398
    .line 399
    const-string v4, "Finished resetting external storage service"

    .line 400
    .line 401
    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 405
    :goto_5
    iget-object v4, v1, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 406
    .line 407
    monitor-enter v4

    .line 408
    :try_start_7
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    .line 409
    .line 410
    array-length v5, v0

    .line 411
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    iget-object v5, v1, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    .line 416
    .line 417
    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 418
    .line 419
    .line 420
    iget-object v5, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 421
    .line 422
    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    .line 423
    .line 424
    .line 425
    new-instance v5, Landroid/os/storage/VolumeInfo;

    .line 426
    .line 427
    const-string/jumbo v7, "private"

    .line 428
    .line 429
    .line 430
    const/4 v9, 0x1

    .line 431
    invoke-direct {v5, v7, v9, v6, v6}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    const/4 v6, 0x2

    .line 435
    iput v6, v5, Landroid/os/storage/VolumeInfo;->state:I

    .line 436
    .line 437
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 438
    .line 439
    .line 440
    move-result-object v6

    .line 441
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v6

    .line 445
    iput-object v6, v5, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 446
    .line 447
    iget-object v6, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 448
    .line 449
    iget-object v7, v5, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 450
    .line 451
    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 455
    :try_start_8
    const-string v4, "StorageManagerService"

    .line 456
    .line 457
    const-string v5, "Resetting vold..."

    .line 458
    .line 459
    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    iget-object v4, v1, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 463
    .line 464
    invoke-interface {v4}, Landroid/os/IVold;->reset()V

    .line 465
    .line 466
    .line 467
    const-string v4, "StorageManagerService"

    .line 468
    .line 469
    const-string v5, "Reset vold"

    .line 470
    .line 471
    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/StorageManagerService;->cleanupSercureContainerList()V

    .line 475
    .line 476
    .line 477
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 482
    .line 483
    .line 484
    move-result v5

    .line 485
    if-eqz v5, :cond_5

    .line 486
    .line 487
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 492
    .line 493
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    .line 494
    .line 495
    .line 496
    move-result v6

    .line 497
    if-eqz v6, :cond_4

    .line 498
    .line 499
    iget-object v6, v1, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 500
    .line 501
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    .line 502
    .line 503
    iget v9, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 504
    .line 505
    iget v5, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 506
    .line 507
    invoke-interface {v6, v7, v9, v5}, Landroid/os/IVold;->onUserAdded(III)V

    .line 508
    .line 509
    .line 510
    goto :goto_6

    .line 511
    :catch_3
    move-exception v0

    .line 512
    goto :goto_8

    .line 513
    :cond_4
    iget-object v6, v1, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 514
    .line 515
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    .line 516
    .line 517
    iget v5, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 518
    .line 519
    const/4 v9, -0x1

    .line 520
    invoke-interface {v6, v7, v5, v9}, Landroid/os/IVold;->onUserAdded(III)V

    .line 521
    .line 522
    .line 523
    goto :goto_6

    .line 524
    :cond_5
    array-length v4, v0

    .line 525
    :goto_7
    if-ge v8, v4, :cond_6

    .line 526
    .line 527
    aget v5, v0, v8

    .line 528
    .line 529
    iget-object v6, v1, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 530
    .line 531
    invoke-interface {v6, v5}, Landroid/os/IVold;->onUserStarted(I)V

    .line 532
    .line 533
    .line 534
    iget-object v6, v1, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    .line 535
    .line 536
    invoke-interface {v6, v5}, Landroid/os/IStoraged;->onUserStarted(I)V

    .line 537
    .line 538
    .line 539
    add-int/lit8 v8, v8, 0x1

    .line 540
    .line 541
    goto :goto_7

    .line 542
    :cond_6
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/StorageManagerService;->restoreSystemUnlockedUsers(Landroid/os/UserManager;Ljava/util/List;[I)V

    .line 543
    .line 544
    .line 545
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 546
    .line 547
    iget-boolean v2, v1, Lcom/android/server/StorageManagerService;->mSecureKeyguardShowing:Z

    .line 548
    .line 549
    invoke-interface {v0, v2}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V

    .line 550
    .line 551
    .line 552
    iget-object v0, v1, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    .line 553
    .line 554
    iget-object v1, v1, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 555
    .line 556
    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->onReset(Landroid/os/IVold;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 557
    .line 558
    .line 559
    goto :goto_a

    .line 560
    :goto_8
    const-string v1, "StorageManagerService"

    .line 561
    .line 562
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    .line 564
    .line 565
    goto :goto_a

    .line 566
    :catchall_2
    move-exception v0

    .line 567
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 568
    throw v0

    .line 569
    :catchall_3
    move-exception v0

    .line 570
    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 571
    throw v0

    .line 572
    :goto_9
    :try_start_b
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 573
    throw v0

    .line 574
    :cond_7
    :goto_a
    return-void
.end method

.method public final resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "android.permission.ASEC_CREATE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IVold;->asecResize(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "StorageManagerService"

    .line 18
    .line 19
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    :goto_0
    return p0
.end method

.method public final restoreSystemUnlockedUsers(Landroid/os/UserManager;Ljava/util/List;[I)V
    .locals 4

    .line 1
    invoke-static {p3}, Ljava/util/Arrays;->sort([I)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 22
    .line 23
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isUserRunning(I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-ltz v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "UNLOCK_USER lost from vold reset, will retry, user:"

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "StorageManagerService"

    .line 61
    .line 62
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 66
    .line 67
    invoke-interface {v1, v0}, Landroid/os/IVold;->onUserStarted(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStoraged:Landroid/os/IStoraged;

    .line 71
    .line 72
    invoke-interface {v1, v0}, Landroid/os/IStoraged;->onUserStarted(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 76
    .line 77
    const/16 v2, 0xe

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    return-void
.end method

.method public final runIdleMaint(Ljava/lang/Runnable;)V
    .locals 5

    .line 1
    const-string v0, "StorageManagerService"

    .line 2
    .line 3
    const-string v1, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v2, Lcom/android/server/HeimdAllFsService;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v2, v3}, Lcom/android/server/HeimdAllFsService;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 27
    .line 28
    invoke-interface {v1}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p0, "Skipping idle maintenance - block based checkpoint in progress"

    .line 36
    .line 37
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 44
    .line 45
    iget-boolean v2, p0, Lcom/android/server/StorageManagerService;->mNeedGC:Z

    .line 46
    .line 47
    new-instance v3, Lcom/android/server/StorageManagerService$11;

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/StorageManagerService$11;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/Runnable;I)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v1, v2, v3}, Landroid/os/IVold;->runIdleMaint(ZLandroid/os/IVoldTaskListener;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHeimdAllFs:Lcom/android/server/HeimdAllFsService;

    .line 57
    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    new-instance p1, Lcom/android/server/HeimdAllFsService$1;

    .line 61
    .line 62
    invoke-direct {p1, p0}, Lcom/android/server/HeimdAllFsService$1;-><init>(Lcom/android/server/HeimdAllFsService;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcom/android/server/HeimdAllFsService;->mHeimdallFsThread:Lcom/android/server/HeimdAllFsService$1;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :goto_1
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_2
    return-void
.end method

.method public final runIdleMaintenance()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaint(Ljava/lang/Runnable;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final runMaintenance()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->runMaintenance_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final semGetExternalSdCardHealthState()I
    .locals 7

    .line 1
    const-string p0, "]"

    .line 2
    .line 3
    const-string v0, "External SD Card Health State ["

    .line 4
    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    const-string v2, "/sys/class/sec/sdinfo/fc"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, -0x1

    .line 17
    const-string v4, "StorageManagerService"

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const-string p0, "EXTERNAL SD CARD HEALTH CHECK FILE does not exist!!"

    .line 22
    .line 23
    invoke-static {v4, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return v3

    .line 27
    :cond_0
    const-string/jumbo v2, "empty"

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    :try_start_0
    invoke-static {v1, v6, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v1, "Error at reading SD Card Health State"

    .line 61
    .line 62
    invoke-static {v4, v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    :goto_0
    const-string v0, "GOOD"

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    move v3, v6

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const-string v0, "BAD"

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string/jumbo v1, "semGetExternalSdCardHealthState returns ["

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {v4, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    return v3
.end method

.method public final semGetExternalSdCardId()Ljava/lang/String;
    .locals 4

    .line 1
    const-string/jumbo v0, "empty"

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "android"

    .line 19
    .line 20
    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/4 v1, 0x0

    .line 25
    const-string v2, "StorageManagerService"

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    const-string p0, "The caller is not qualified."

    .line 30
    .line 31
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 36
    .line 37
    const-string v3, "/sys/class/sec/sdinfo/data"

    .line 38
    .line 39
    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    const-string p0, "EXTERNAL SD CARD CID VALUE FILE does not exist!!"

    .line 49
    .line 50
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_1
    const/4 v3, 0x0

    .line 55
    :try_start_0
    invoke-static {p0, v3, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    const-string v3, "Error at reading SD Card CID Value"

    .line 66
    .line 67
    invoke-static {v2, v3, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    move-object p0, v0

    .line 71
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    const-string v0, "No Card"

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move-object v1, p0

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    :goto_1
    const-string p0, "External SD Card CID value -> return as null"

    .line 89
    .line 90
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :goto_2
    return-object v1
.end method

.method public final setCeStorageProtection(I[B)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->setCeStorageProtection_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2}, Landroid/os/IVold;->setCeStorageProtection(I[B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final setCloudMediaProvider(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->enforceExternalStorageService()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCloudMediaProviders:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 35
    .line 36
    const/16 v2, 0x10

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {p0, v2, v0, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

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
    monitor-exit v1

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final setDebugFlags(II)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->setDebugFlags_enforcePermission()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p2, 0x3

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    const-string/jumbo v2, "force_off"

    .line 9
    .line 10
    .line 11
    const-string/jumbo v3, "force_on"

    .line 12
    .line 13
    .line 14
    const/16 v4, 0xa

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    and-int/lit8 v0, p1, 0x1

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    move-object v0, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    and-int/lit8 v0, p1, 0x2

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    move-object v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v0, v1

    .line 31
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    :try_start_0
    const-string/jumbo v7, "persist.sys.adoptable"

    .line 36
    .line 37
    .line 38
    invoke-static {v7, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    :goto_1
    and-int/lit8 v0, p2, 0xc

    .line 60
    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    and-int/lit8 v0, p1, 0x4

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    move-object v1, v3

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    and-int/lit8 v0, p1, 0x8

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    move-object v1, v2

    .line 74
    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    :try_start_1
    const-string/jumbo v0, "persist.sys.sdcardfs"

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 85
    .line 86
    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_5
    :goto_3
    and-int/lit8 p2, p2, 0x10

    .line 103
    .line 104
    if-eqz p2, :cond_7

    .line 105
    .line 106
    and-int/lit8 p1, p1, 0x10

    .line 107
    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    const/4 p1, 0x1

    .line 111
    goto :goto_4

    .line 112
    :cond_6
    const/4 p1, 0x0

    .line 113
    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    :try_start_2
    const-string/jumbo p2, "persist.sys.virtual_disk"

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 128
    .line 129
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 134
    .line 135
    .line 136
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    .line 138
    .line 139
    goto :goto_5

    .line 140
    :catchall_2
    move-exception p0

    .line 141
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :cond_7
    :goto_5
    return-void
.end method

.method public final setDualDARPolicyCmd(II)Z
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
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 13
    .line 14
    const-string p1, "System can call this API"

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
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 21
    .line 22
    invoke-interface {p0, p1, p2}, Landroid/os/IVold;->setDualDARPolicyCmd(II)Z

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    const-string p1, "StorageManagerService"

    .line 29
    .line 30
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .locals 7

    .line 1
    const-string v0, "Primary storage already at "

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->setPrimaryStorageUuid_enforcePermission()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_8

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 18
    .line 19
    if-nez v0, :cond_7

    .line 20
    .line 21
    iput-object p2, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-class v0, Landroid/os/UserManager;

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/os/UserManager;

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 62
    .line 63
    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService;->isCeStorageUnlocked(I)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_0

    .line 68
    .line 69
    const-string p1, "StorageManagerService"

    .line 70
    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v0, "Failing move due to locked user "

    .line 77
    .line 78
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    .line 82
    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    const/16 p1, -0xa

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 96
    .line 97
    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_1
    const-string/jumbo v0, "primary_physical"

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_6

    .line 113
    .line 114
    const-string/jumbo v0, "primary_physical"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_2
    iget v0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 126
    .line 127
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p0, v0, v2}, Lcom/android/server/StorageManagerService;->findStorageForUuidAsUser(ILjava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {p0, v0, p1}, Lcom/android/server/StorageManagerService;->findStorageForUuidAsUser(ILjava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const/4 v3, -0x6

    .line 138
    if-nez v2, :cond_3

    .line 139
    .line 140
    const-string p1, "StorageManagerService"

    .line 141
    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v0, "Failing move due to missing from volume "

    .line 148
    .line 149
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 165
    .line 166
    .line 167
    monitor-exit v1

    .line 168
    return-void

    .line 169
    :cond_3
    if-nez v0, :cond_4

    .line 170
    .line 171
    const-string p2, "StorageManagerService"

    .line 172
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v2, "Failing move due to missing to volume "

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 194
    .line 195
    .line 196
    monitor-exit v1

    .line 197
    return-void

    .line 198
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 200
    .line 201
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    if-eqz v4, :cond_5

    .line 210
    .line 211
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 216
    .line 217
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 218
    .line 219
    const/4 v6, 0x3

    .line 220
    invoke-virtual {p0, v5, v6, v1}, Lcom/android/server/StorageManagerService;->prepareUserStorageInternal(IILjava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 224
    .line 225
    invoke-virtual {p0, v4, v6, p1}, Lcom/android/server/StorageManagerService;->prepareUserStorageInternal(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    .line 227
    .line 228
    goto :goto_0

    .line 229
    :cond_5
    :try_start_2
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 230
    .line 231
    iget-object p2, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 232
    .line 233
    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    .line 234
    .line 235
    new-instance v1, Lcom/android/server/StorageManagerService$15;

    .line 236
    .line 237
    const/4 v2, 0x2

    .line 238
    invoke-direct {v1, v2, p0}, Lcom/android/server/StorageManagerService$15;-><init>(ILjava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    invoke-interface {p1, p2, v0, v1}, Landroid/os/IVold;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :catch_0
    move-exception p0

    .line 246
    const-string p1, "StorageManagerService"

    .line 247
    .line 248
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .line 250
    .line 251
    :goto_1
    return-void

    .line 252
    :catch_1
    move-exception p1

    .line 253
    const-string p2, "StorageManagerService"

    .line 254
    .line 255
    const-string v0, "Failing move due to failure on prepare user data"

    .line 256
    .line 257
    invoke-static {p2, v0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 261
    .line 262
    monitor-enter p1

    .line 263
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 264
    .line 265
    .line 266
    monitor-exit p1

    .line 267
    return-void

    .line 268
    :catchall_1
    move-exception p0

    .line 269
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 270
    throw p0

    .line 271
    :cond_6
    :goto_2
    :try_start_4
    const-string p1, "StorageManagerService"

    .line 272
    .line 273
    const-string p2, "Skipping move to/from primary physical"

    .line 274
    .line 275
    invoke-static {p1, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    const/16 p1, 0x52

    .line 279
    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 281
    .line 282
    .line 283
    const/16 p1, -0x64

    .line 284
    .line 285
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    .line 286
    .line 287
    .line 288
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 289
    .line 290
    const/16 p1, 0xa

    .line 291
    .line 292
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 297
    .line 298
    .line 299
    monitor-exit v1

    .line 300
    return-void

    .line 301
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 302
    .line 303
    const-string p1, "Move already in progress"

    .line 304
    .line 305
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw p0

    .line 309
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 310
    .line 311
    new-instance p2, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw p0

    .line 327
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 328
    throw p0
.end method

.method public final setSdpPolicyCmd(I)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/os/IVold;->setSdpPolicyCmd(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string p1, "StorageManagerService"

    .line 10
    .line 11
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final setSdpPolicyToPathCmd(ILjava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroid/os/IVold;->setSdpPolicyToPathCmd(ILjava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string p1, "StorageManagerService"

    .line 10
    .line 11
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final setSensitive(ILjava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Landroid/os/IVold;->setSensitive(ILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "StorageManagerService"

    .line 18
    .line 19
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->setVolumeNickname_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string v0, "StorageManagerService"

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v2, "setVolumeNickname: fsUuid="

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, " nickname="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/os/storage/VolumeRecord;

    .line 45
    .line 46
    iput-object p2, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    .line 47
    .line 48
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 49
    .line 50
    sget v1, Lcom/android/server/StorageManagerService$Callbacks;->$r8$clinit:I

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->clone()Landroid/os/storage/VolumeRecord;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 64
    .line 65
    const/4 p1, 0x3

    .line 66
    invoke-virtual {p2, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 74
    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0
.end method

.method public final setVolumeUserFlags(Ljava/lang/String;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->setVolumeUserFlags_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string v0, "StorageManagerService"

    .line 5
    .line 6
    const-string/jumbo v1, "setVolumeUserFlags: fsUuid="

    .line 7
    .line 8
    .line 9
    const-string v2, " flags="

    .line 10
    .line 11
    const-string v3, " mask="

    .line 12
    .line 13
    invoke-static {p2, v1, p1, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/os/storage/VolumeRecord;

    .line 40
    .line 41
    iget v1, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 42
    .line 43
    not-int v2, p3

    .line 44
    and-int/2addr v1, v2

    .line 45
    and-int/2addr p2, p3

    .line 46
    or-int/2addr p2, v1

    .line 47
    iput p2, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    .line 48
    .line 49
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 50
    .line 51
    sget p3, Lcom/android/server/StorageManagerService$Callbacks;->$r8$clinit:I

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->clone()Landroid/os/storage/VolumeRecord;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 65
    .line 66
    const/4 p1, 0x3

    .line 67
    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    .line 75
    .line 76
    .line 77
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0
.end method

.method public final shrinkDataDdp(J)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final shutdown(Landroid/os/storage/IStorageShutdownObserver;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->shutdown_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string v0, "StorageManagerService"

    .line 5
    .line 6
    const-string v1, "Shutting down"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final startCheckpoint(I)V
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
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/16 v1, 0x7d0

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 17
    .line 18
    const-string/jumbo p1, "no permission to start filesystem checkpoint"

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 26
    .line 27
    invoke-interface {p0, p1}, Landroid/os/IVold;->startCheckpoint(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final supportsCheckpoint()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/os/IVold;->supportsCheckpoint()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final trimSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "android.permission.ASEC_CREATE"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IVold;->asecTrim(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "StorageManagerService"

    .line 18
    .line 19
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    .line 21
    .line 22
    const/4 p0, -0x1

    .line 23
    :goto_0
    return p0
.end method

.method public final unlockCeStorage(I[B)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->unlockCeStorage_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->unlockCeStorage(I[B)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter p2

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCeUnlockedUsers:Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/server/StorageManagerService$WatchedUnlockedUsers;->users:[I

    .line 27
    .line 28
    invoke-static {}, Landroid/os/UserManager;->invalidateIsUserUnlockedCache()V

    .line 29
    .line 30
    .line 31
    monitor-exit p2

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final unlockPassStorage()I
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->getPackageName(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "Unknown"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_2

    .line 16
    .line 17
    invoke-static {}, Lcom/android/server/StorageManagerService;->isRootedDevice()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-string v3, "StorageManagerService"

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/android/server/StorageManagerService;->isPlatformSignedApp(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 32
    .line 33
    iget p0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 34
    .line 35
    invoke-interface {v2, v1, p0, v0}, Landroid/os/IVold;->unlockPassStorage(Ljava/lang/String;II)I

    .line 36
    .line 37
    .line 38
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    const/16 p0, -0xc

    .line 45
    .line 46
    return p0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 48
    .line 49
    const-string v0, " Signature of the calling package is not match"

    .line 50
    .line 51
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    const-string/jumbo p0, "isDetectedRoot: true "

    .line 56
    .line 57
    .line 58
    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    new-instance p0, Ljava/lang/SecurityException;

    .line 62
    .line 63
    const-string v0, " Root detected"

    .line 64
    .line 65
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 70
    .line 71
    const-string v0, " calling package is not allowed"

    .line 72
    .line 73
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public final unmount(Landroid/os/storage/VolumeInfo;)V
    .locals 4

    .line 21
    const-string v0, "StorageManagerService"

    :try_start_0
    iget v1, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 22
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v1}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v3
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v1, v2}, Landroid/os/IInstalld;->onPrivateVolumeRemoved(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 25
    :try_start_2
    invoke-static {v1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    throw v1
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception v1

    .line 26
    :try_start_3
    const-string v2, "Failed unmount mirror data"

    invoke-static {v0, v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageSessionController;->onVolumeUnmount(Landroid/os/storage/VolumeInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 29
    :goto_1
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public final unmount(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/os/storage/IStorageManager$Stub;->unmount_enforcePermission()V

    .line 2
    const-string v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Begin unmount: volId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mUnmountLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    .line 8
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    check-cast v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 9
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 10
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    invoke-virtual {v3}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getAsecInstallHelper()Lcom/android/server/pm/AsecInstallHelper;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/android/server/pm/AsecInstallHelper;->updateExternalMediaStatus(ZZ)V

    .line 11
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v4, "mUnmountSignal"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v5, -0x1

    .line 12
    :try_start_2
    invoke-static {v3, v5, v6, v4}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 13
    :try_start_3
    const-string v5, "TimeoutException in "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "StorageManagerService"

    invoke-static {v5, v4, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v3, 0x0

    .line 14
    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    .line 15
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->unmount(Landroid/os/storage/VolumeInfo;)V

    return-void

    :catchall_0
    move-exception p0

    .line 18
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    throw p0
.end method

.method public final unmountBySecApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/android/server/StorageManagerService;->chkMountUnmountFormatCaller(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p2, "StorageManagerService"

    .line 8
    .line 9
    const-string v0, "Unmount call accepted"

    .line 10
    .line 11
    invoke-static {p2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->unmount(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 19
    .line 20
    const-string p1, "Unmount call denied to ["

    .line 21
    .line 22
    const-string v0, "]"

    .line 23
    .line 24
    invoke-static {p1, p2, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public final unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .locals 10

    .line 1
    const-string/jumbo v0, "rawPath cannot be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    .line 11
    .line 12
    check-cast v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/StorageManagerService$ObbState;

    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    new-instance v0, Lcom/android/server/StorageManagerService$ObbState;

    .line 28
    .line 29
    iget-object v5, v1, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v9, v1, Lcom/android/server/StorageManagerService$ObbState;->volId:Ljava/lang/String;

    .line 32
    .line 33
    move-object v2, v0

    .line 34
    move-object v3, p0

    .line 35
    move-object v4, p1

    .line 36
    move-object v7, p3

    .line 37
    move v8, p4

    .line 38
    invoke-direct/range {v2 .. v9}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lcom/android/server/StorageManagerService$UnmountObbAction;

    .line 42
    .line 43
    invoke-direct {p1, p0, v0, p2}, Lcom/android/server/StorageManagerService$UnmountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string p0, "StorageManagerService"

    .line 58
    .line 59
    const-string p2, "Unknown OBB mount at "

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p0
.end method

.method public final unmountSecureContainer(Ljava/lang/String;Z)I
    .locals 3

    .line 1
    const-string v0, "StorageManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "unmountSecureContainer: id="

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, " force="

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const-string v0, "android.permission.ASEC_MOUNT_UNMOUNT"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 38
    .line 39
    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 41
    .line 42
    new-instance v2, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 43
    .line 44
    invoke-direct {v2, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    const-string p0, "StorageManagerService"

    .line 54
    .line 55
    const-string/jumbo p1, "unmountSecureContainer: fail"

    .line 56
    .line 57
    .line 58
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    monitor-exit v0

    .line 62
    const/4 p0, -0x5

    .line 63
    return p0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isExternalSecureContainer(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const/4 v2, 0x0

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->checkExternalSecureContainerMounted()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_1

    .line 78
    .line 79
    const-string p2, "StorageManagerService"

    .line 80
    .line 81
    const-string/jumbo v1, "unmountSecureContainer: no media"

    .line 82
    .line 83
    .line 84
    invoke-static {p2, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 88
    .line 89
    new-instance p2, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 90
    .line 91
    invoke-direct {p2, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    monitor-exit v0

    .line 98
    return v2

    .line 99
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 105
    .line 106
    .line 107
    :try_start_1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 108
    .line 109
    invoke-interface {v0, p1, p2}, Landroid/os/IVold;->asecUnmount(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception p2

    .line 114
    const-string v0, "StorageManagerService"

    .line 115
    .line 116
    invoke-static {v0, p2}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .line 118
    .line 119
    const/4 v2, -0x1

    .line 120
    :goto_0
    if-nez v2, :cond_2

    .line 121
    .line 122
    iget-object p2, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 123
    .line 124
    monitor-enter p2

    .line 125
    :try_start_2
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    .line 126
    .line 127
    new-instance v0, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 128
    .line 129
    invoke-direct {v0, p1}, Lcom/android/server/StorageManagerService$PackageInstalledMap;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    monitor-exit p2

    .line 136
    goto :goto_1

    .line 137
    :catchall_1
    move-exception p0

    .line 138
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 139
    throw p0

    .line 140
    :cond_2
    :goto_1
    return v2

    .line 141
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    throw p0
.end method

.method public final unmountVolume(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo p3, "unmountVolume :"

    .line 4
    .line 5
    .line 6
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string p3, "StorageManagerService"

    .line 17
    .line 18
    invoke-static {p3, p2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->unmount(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/StorageManagerService$Callbacks;->mCallbacks:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Landroid/os/RemoteCallbackList;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final updateLegacyStorageApps(ILjava/lang/String;Z)V
    .locals 3

    .line 1
    const-string v0, "Package "

    .line 2
    .line 3
    const-string v1, "Package "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    :try_start_0
    const-string p3, "StorageManagerService"

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p2, " has legacy storage"

    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p3, p2}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p0, Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const-string p3, "StorageManagerService"

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p2, " does not have legacy storage"

    .line 57
    .line 58
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p3, p2}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mUidsWithLegacyExternalStorage:Ljava/util/Set;

    .line 69
    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p0, Landroid/util/ArraySet;

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :goto_0
    monitor-exit v2

    .line 80
    return-void

    .line 81
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0
.end method

.method public final updateStorageWriteRecords(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    sub-int/2addr v2, v3

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    .line 14
    .line 15
    aput p1, v0, v4

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Ljava/io/ObjectOutputStream;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 27
    .line 28
    .line 29
    sget v1, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    if-eqz p1, :cond_0

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mWriteRecordFile:Landroid/util/AtomicFile;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    :goto_0
    return-void
.end method

.method public final waitForAsecScan()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const-string/jumbo v0, "mAsecsScanned"

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, -0x1

    .line 7
    .line 8
    :try_start_0
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    const-string v1, "TimeoutException in "

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "StorageManagerService"

    .line 20
    .line 21
    invoke-static {v1, v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final warnOnNotMounted()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    const-string p0, "StorageManagerService"

    .line 42
    .line 43
    const-string v0, "No primary storage mounted!"

    .line 44
    .line 45
    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p0
.end method

.method public final writeSettingsLocked()V
    .locals 7

    .line 1
    const-string/jumbo v0, "volumes"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "writeSettingsLocked: "

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 9
    .line 10
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    const-string v4, "StorageManagerService"

    .line 15
    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v4, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-interface {v1, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 51
    .line 52
    .line 53
    const-string/jumbo v4, "version"

    .line 54
    .line 55
    .line 56
    const/4 v5, 0x3

    .line 57
    invoke-interface {v1, v2, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    .line 59
    .line 60
    const-string/jumbo v4, "primaryStorageUuid"

    .line 61
    .line 62
    .line 63
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const/4 v5, 0x0

    .line 75
    :goto_0
    if-ge v5, v4, :cond_0

    .line 76
    .line 77
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Landroid/os/storage/VolumeRecord;

    .line 84
    .line 85
    invoke-static {v1, v6}, Lcom/android/server/StorageManagerService;->writeVolumeRecord(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/os/storage/VolumeRecord;)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v5, v5, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-object v2, v3

    .line 92
    goto :goto_1

    .line 93
    :cond_0
    invoke-interface {v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    .line 95
    .line 96
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 100
    .line 101
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catch_1
    :goto_1
    if-eqz v2, :cond_1

    .line 106
    .line 107
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 108
    .line 109
    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    :goto_2
    return-void
.end method
