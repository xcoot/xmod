.class public final Lcom/android/server/pm/ShortcutService;
.super Landroid/content/pm/IShortcutService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ACTIVITY_NOT_EXPORTED:Lcom/android/server/pm/ShortcutService$1;

.field public static final ACTIVITY_NOT_INSTALLED:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;

.field public static final DEBUG_REBOOT:Z

.field static final DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

.field static final DEFAULT_ICON_PERSIST_QUALITY:I = 0x64

.field static final DEFAULT_MAX_ICON_DIMENSION_DP:I = 0x60

.field static final DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP:I = 0x30

.field static final DEFAULT_MAX_SHORTCUTS_PER_ACTIVITY:I = 0xf

.field static final DEFAULT_MAX_SHORTCUTS_PER_APP:I = 0x64

.field static final DEFAULT_MAX_UPDATES_PER_INTERVAL:I = 0xa

.field static final DEFAULT_RESET_INTERVAL_SEC:J = 0x15180L

.field static final DEFAULT_SAVE_DELAY_MS:I = 0xbb8

.field static final DIRECTORY_DUMP:Ljava/lang/String; = "shortcut_dump"

.field static final DIRECTORY_PER_USER:Ljava/lang/String; = "shortcut_service"

.field public static final EMPTY_RESOLVE_INFO:Ljava/util/List;

.field static final FILENAME_BASE_STATE:Ljava/lang/String; = "shortcut_service.xml"

.field static final FILENAME_USER_PACKAGES:Ljava/lang/String; = "shortcuts.xml"

.field static final FILENAME_USER_PACKAGES_RESERVE_COPY:Ljava/lang/String; = "shortcuts.xml.reservecopy"

.field public static final PACKAGE_NOT_INSTALLED:Lcom/android/server/pm/ShortcutService$1;

.field public static final sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mChooserActivity:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mDirtyUserIds:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public final mIPackageManager:Landroid/content/pm/IPackageManager;

.field public mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public mIconPersistQuality:I

.field public final mIsAppSearchEnabled:Z

.field public mLastLockedUser:I

.field public mLastWtfStacktrace:Ljava/lang/Exception;

.field public final mListeners:Ljava/util/ArrayList;

.field public mMaxIconDimension:I

.field public mMaxShortcuts:I

.field public mMaxShortcutsPerApp:I

.field public mMaxUpdatesPerInterval:I

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mNonPersistentUsersLock:Ljava/lang/Object;

.field public final mOnRoleHoldersChangedListener:Lcom/android/server/pm/ShortcutService$3;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field final mPackageMonitor:Landroid/content/BroadcastReceiver;

.field public final mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mReceiver:Lcom/android/server/pm/ShortcutService$5;

.field public mResetInterval:J

.field public final mRoleManager:Landroid/app/role/RoleManager;

.field public mSaveDelayMillis:I

.field public final mSaveDirtyInfoRunner:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;

.field public final mServiceLock:Ljava/lang/Object;

.field public final mShortcutChangeCallbacks:Ljava/util/ArrayList;

.field public final mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

.field public final mShortcutNonPersistentUsers:Landroid/util/SparseArray;

.field public final mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

.field public final mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mShutdownReceiver:Lcom/android/server/pm/ShortcutService$5;

.field public final mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mStatLogger:Lcom/android/internal/util/StatLogger;

.field public final mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

.field public final mUidObserver:Lcom/android/server/pm/ShortcutService$4;

.field public final mUidState:Landroid/util/SparseIntArray;

.field public final mUnlockedUsers:Landroid/util/SparseBooleanArray;

.field public final mUriGrantsManager:Landroid/app/IUriGrantsManager;

.field public final mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public final mUriPermissionOwner:Landroid/os/IBinder;

.field public final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mUsers:Landroid/util/SparseArray;

.field public mWtfCount:I

.field public final mWtfLock:Ljava/lang/Object;


# direct methods
.method public static -$$Nest$mhandlePackageAdded(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "ShortcutService"

    .line 9
    .line 10
    const-string v1, "handlePackageAdded: %s user=%d"

    .line 11
    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-direct {v2, v3}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;-><init>(I)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;

    .line 41
    .line 42
    invoke-direct {v3, p2, p1, v2}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;-><init>(ILjava/lang/String;Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 46
    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p0
.end method

.method public static -$$Nest$mhandlePackageChanged(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(ILjava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v0, "ShortcutService"

    .line 16
    .line 17
    const-string v1, "handlePackageChanged: %s user=%d"

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {p2, p1, v1}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p0
.end method

.method public static -$$Nest$mhandlePackageDataCleared(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "handlePackageDataCleared: %s user=%d"

    .line 17
    .line 18
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "ShortcutService"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(ILjava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static -$$Nest$mhandlePackageUpdateFinished(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "ShortcutService"

    .line 9
    .line 10
    const-string v1, "handlePackageUpdateFinished: %s user=%d"

    .line 11
    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    filled-new-array {p1, v2}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    invoke-direct {v2, v3}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;-><init>(I)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;

    .line 41
    .line 42
    invoke-direct {v3, p2, p1, v2}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;-><init>(ILjava/lang/String;Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->isPackageInstalled(ILjava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    const/4 p2, 0x1

    .line 55
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 4
    .line 5
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    .line 27
    .line 28
    new-instance v0, Lcom/android/server/pm/ShortcutService$1;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, v1}, Lcom/android/server/pm/ShortcutService$1;-><init>(I)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Lcom/android/server/pm/ShortcutService$1;

    .line 35
    .line 36
    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-direct {v0, v1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;-><init>(I)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_INSTALLED:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;

    .line 43
    .line 44
    new-instance v0, Lcom/android/server/pm/ShortcutService$1;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-direct {v0, v1}, Lcom/android/server/pm/ShortcutService$1;-><init>(I)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Lcom/android/server/pm/ShortcutService$1;

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IShortcutService$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v8, 0x0

    .line 11
    invoke-direct {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/Object;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mNonPersistentUsersLock:Ljava/lang/Object;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/Object;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mWtfLock:Ljava/lang/Object;

    .line 36
    .line 37
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    const/4 v9, 0x1

    .line 40
    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mListeners:Ljava/util/ArrayList;

    .line 44
    .line 45
    new-instance v2, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mShortcutChangeCallbacks:Ljava/util/ArrayList;

    .line 51
    .line 52
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    .line 54
    const-wide/16 v3, 0x0

    .line 55
    .line 56
    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 57
    .line 58
    .line 59
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 60
    .line 61
    new-instance v2, Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 67
    .line 68
    new-instance v2, Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    .line 74
    .line 75
    new-instance v2, Landroid/util/SparseIntArray;

    .line 76
    .line 77
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    .line 81
    .line 82
    new-instance v2, Landroid/util/SparseLongArray;

    .line 83
    .line 84
    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    .line 88
    .line 89
    new-instance v2, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    .line 95
    .line 96
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    .line 103
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    .line 105
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    .line 110
    new-instance v2, Landroid/util/SparseBooleanArray;

    .line 111
    .line 112
    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 116
    .line 117
    new-instance v2, Lcom/android/internal/util/StatLogger;

    .line 118
    .line 119
    const-string v23, "isActivityEnabled"

    .line 120
    .line 121
    const-string/jumbo v24, "packageUpdateCheck"

    .line 122
    .line 123
    .line 124
    const-string v10, "getHomeActivities()"

    .line 125
    .line 126
    const-string v11, "Launcher permission check"

    .line 127
    .line 128
    const-string v12, "getPackageInfo()"

    .line 129
    .line 130
    const-string v13, "getPackageInfo(SIG)"

    .line 131
    .line 132
    const-string v14, "getApplicationInfo"

    .line 133
    .line 134
    const-string v15, "cleanupDanglingBitmaps"

    .line 135
    .line 136
    const-string v16, "getActivity+metadata"

    .line 137
    .line 138
    const-string v17, "getInstalledPackages"

    .line 139
    .line 140
    const-string v18, "checkPackageChanges"

    .line 141
    .line 142
    const-string v19, "getApplicationResources"

    .line 143
    .line 144
    const-string/jumbo v20, "resourceNameLookup"

    .line 145
    .line 146
    .line 147
    const-string v21, "getLauncherActivity"

    .line 148
    .line 149
    const-string v22, "checkLauncherActivity"

    .line 150
    .line 151
    const-string v25, "asyncPreloadUserDelay"

    .line 152
    .line 153
    const-string v26, "getDefaultLauncher()"

    .line 154
    .line 155
    filled-new-array/range {v10 .. v26}, [Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-direct {v2, v3}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 163
    .line 164
    iput v8, v0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    .line 165
    .line 166
    new-instance v2, Lcom/android/internal/logging/MetricsLogger;

    .line 167
    .line 168
    invoke-direct {v2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 169
    .line 170
    .line 171
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 172
    .line 173
    new-instance v2, Lcom/android/server/pm/ShortcutService$3;

    .line 174
    .line 175
    invoke-direct {v2, v0}, Lcom/android/server/pm/ShortcutService$3;-><init>(Lcom/android/server/pm/ShortcutService;)V

    .line 176
    .line 177
    .line 178
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mOnRoleHoldersChangedListener:Lcom/android/server/pm/ShortcutService$3;

    .line 179
    .line 180
    new-instance v2, Lcom/android/server/pm/ShortcutService$4;

    .line 181
    .line 182
    invoke-direct {v2, v0}, Lcom/android/server/pm/ShortcutService$4;-><init>(Lcom/android/server/pm/ShortcutService;)V

    .line 183
    .line 184
    .line 185
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Lcom/android/server/pm/ShortcutService$4;

    .line 186
    .line 187
    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;

    .line 188
    .line 189
    invoke-direct {v2, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/ShortcutService;)V

    .line 190
    .line 191
    .line 192
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;

    .line 193
    .line 194
    const/4 v2, -0x1

    .line 195
    iput v2, v0, Lcom/android/server/pm/ShortcutService;->mLastLockedUser:I

    .line 196
    .line 197
    new-instance v10, Lcom/android/server/pm/ShortcutService$5;

    .line 198
    .line 199
    const/4 v2, 0x0

    .line 200
    invoke-direct {v10, v0, v2}, Lcom/android/server/pm/ShortcutService$5;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    .line 201
    .line 202
    .line 203
    new-instance v2, Lcom/android/server/pm/ShortcutService$5;

    .line 204
    .line 205
    const/4 v3, 0x1

    .line 206
    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/ShortcutService$5;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    .line 207
    .line 208
    .line 209
    iput-object v2, v0, Lcom/android/server/pm/ShortcutService;->mPackageMonitor:Landroid/content/BroadcastReceiver;

    .line 210
    .line 211
    new-instance v11, Lcom/android/server/pm/ShortcutService$5;

    .line 212
    .line 213
    const/4 v3, 0x2

    .line 214
    invoke-direct {v11, v0, v3}, Lcom/android/server/pm/ShortcutService$5;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    .line 215
    .line 216
    .line 217
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    iput-object v7, v0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 221
    .line 222
    const-class v3, Landroid/content/pm/ShortcutServiceInternal;

    .line 223
    .line 224
    new-instance v4, Lcom/android/server/pm/ShortcutService$LocalService;

    .line 225
    .line 226
    invoke-direct {v4, v0}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v3, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    new-instance v12, Landroid/os/Handler;

    .line 233
    .line 234
    move-object/from16 v3, p2

    .line 235
    .line 236
    invoke-direct {v12, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 237
    .line 238
    .line 239
    iput-object v12, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    .line 240
    .line 241
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 246
    .line 247
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    .line 248
    .line 249
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 254
    .line 255
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 259
    .line 260
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    .line 261
    .line 262
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    .line 267
    .line 268
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 272
    .line 273
    const-class v3, Landroid/app/usage/UsageStatsManagerInternal;

    .line 274
    .line 275
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    check-cast v3, Landroid/app/usage/UsageStatsManagerInternal;

    .line 280
    .line 281
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 285
    .line 286
    const-class v3, Landroid/app/ActivityManagerInternal;

    .line 287
    .line 288
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 293
    .line 294
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 298
    .line 299
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManager:Landroid/app/IUriGrantsManager;

    .line 307
    .line 308
    const-class v3, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 309
    .line 310
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    check-cast v3, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 315
    .line 316
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 320
    .line 321
    const-string v4, "ShortcutService"

    .line 322
    .line 323
    check-cast v3, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 324
    .line 325
    invoke-virtual {v3, v4}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mUriPermissionOwner:Landroid/os/IBinder;

    .line 330
    .line 331
    const-class v3, Landroid/app/role/RoleManager;

    .line 332
    .line 333
    invoke-virtual {v7, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    check-cast v3, Landroid/app/role/RoleManager;

    .line 338
    .line 339
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 343
    .line 344
    new-instance v3, Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 345
    .line 346
    invoke-direct {v3, v0, v1}, Lcom/android/server/pm/ShortcutRequestPinProcessor;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    iput-object v3, v0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 350
    .line 351
    new-instance v1, Lcom/android/server/pm/ShortcutDumpFiles;

    .line 352
    .line 353
    invoke-direct {v1, v0}, Lcom/android/server/pm/ShortcutDumpFiles;-><init>(Lcom/android/server/pm/ShortcutService;)V

    .line 354
    .line 355
    .line 356
    iput-object v1, v0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    .line 357
    .line 358
    const-string/jumbo v1, "systemui"

    .line 359
    .line 360
    .line 361
    const-string/jumbo v3, "shortcut_appsearch_integration"

    .line 362
    .line 363
    .line 364
    invoke-static {v1, v3, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_0

    .line 369
    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-nez v1, :cond_0

    .line 375
    .line 376
    move v1, v9

    .line 377
    goto :goto_0

    .line 378
    :cond_0
    move v1, v8

    .line 379
    :goto_0
    iput-boolean v1, v0, Lcom/android/server/pm/ShortcutService;->mIsAppSearchEnabled:Z

    .line 380
    .line 381
    if-eqz p3, :cond_1

    .line 382
    .line 383
    return-void

    .line 384
    :cond_1
    new-instance v4, Landroid/content/IntentFilter;

    .line 385
    .line 386
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 387
    .line 388
    .line 389
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 390
    .line 391
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 395
    .line 396
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 400
    .line 401
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 405
    .line 406
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const-string/jumbo v1, "package"

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    const/16 v13, 0x3e8

    .line 416
    .line 417
    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 418
    .line 419
    .line 420
    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 421
    .line 422
    const/4 v5, 0x0

    .line 423
    move-object/from16 v1, p1

    .line 424
    .line 425
    move-object v3, v14

    .line 426
    move-object v6, v12

    .line 427
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 428
    .line 429
    .line 430
    new-instance v4, Landroid/content/IntentFilter;

    .line 431
    .line 432
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 433
    .line 434
    .line 435
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 436
    .line 437
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 441
    .line 442
    .line 443
    move-object/from16 v1, p1

    .line 444
    .line 445
    move-object v2, v10

    .line 446
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 447
    .line 448
    .line 449
    new-instance v4, Landroid/content/IntentFilter;

    .line 450
    .line 451
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 452
    .line 453
    .line 454
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 455
    .line 456
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v4, v13}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 460
    .line 461
    .line 462
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 463
    .line 464
    move-object/from16 v1, p1

    .line 465
    .line 466
    move-object v2, v11

    .line 467
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 468
    .line 469
    .line 470
    :try_start_0
    new-instance v1, Lcom/android/server/pm/ShortcutService$SettingChangeObserver;

    .line 471
    .line 472
    new-instance v2, Landroid/os/Handler;

    .line 473
    .line 474
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 475
    .line 476
    .line 477
    invoke-direct {v1, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 478
    .line 479
    .line 480
    iput-object v7, v1, Lcom/android/server/pm/ShortcutService$SettingChangeObserver;->mContext:Landroid/content/Context;

    .line 481
    .line 482
    invoke-virtual {v1, v9}, Lcom/android/server/pm/ShortcutService$SettingChangeObserver;->onChange(Z)V

    .line 483
    .line 484
    .line 485
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    const-string v3, "emergency_mode"

    .line 490
    .line 491
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-virtual {v2, v3, v8, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .line 497
    .line 498
    :catch_0
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService;->mUidObserver:Lcom/android/server/pm/ShortcutService$4;

    .line 499
    .line 500
    const/4 v2, 0x3

    .line 501
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    .line 502
    .line 503
    .line 504
    iget-object v1, v0, Lcom/android/server/pm/ShortcutService;->mOnRoleHoldersChangedListener:Lcom/android/server/pm/ShortcutService$3;

    .line 505
    .line 506
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectRegisterRoleHoldersListener(Landroid/app/role/OnRoleHoldersChangedListener;)V

    .line 507
    .line 508
    .line 509
    return-void
.end method

.method public static addShortcutIdsToSet(Landroid/util/ArraySet;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public static assignImplicitRanks(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/content/pm/ShortcutInfo;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public static isInstalled(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 16
    .line 17
    const/high16 v0, 0x800000

    .line 18
    .line 19
    and-int/2addr p0, v0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0
.end method

.method public static parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    return-wide p2

    .line 13
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-wide p0

    .line 18
    :catch_0
    const-string p1, "Error parsing long "

    .line 19
    .line 20
    const-string v0, "ShortcutService"

    .line 21
    .line 22
    invoke-static {p1, p0, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-wide p2
.end method

.method public static prepareChangedShortcuts(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 39
    .line 40
    .line 41
    :cond_3
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_4

    .line 46
    .line 47
    new-instance p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda30;

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda30;-><init>(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p2, p0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 54
    .line 55
    .line 56
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda30;

    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    invoke-direct {v3, p1, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda30;-><init>(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v6, 0x0

    .line 69
    const/4 v4, 0x4

    .line 70
    const/4 v7, 0x0

    .line 71
    move-object v1, p3

    .line 72
    move-object v2, p0

    .line 73
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 74
    .line 75
    .line 76
    return-object p0
.end method

.method public static removeNonKeyFields(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v0, :cond_2

    .line 19
    .line 20
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->hasKeyFieldsOnly()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v4, 0x4

    .line 37
    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutInfo;->clone(I)Landroid/content/pm/ShortcutInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-object v1
.end method

.method public static shrinkBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-gt v0, p0, :cond_0

    .line 10
    .line 11
    if-gt v1, p0, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    mul-int/2addr v0, p0

    .line 19
    div-int/2addr v0, v2

    .line 20
    mul-int/2addr v1, p0

    .line 21
    div-int/2addr v1, v2

    .line 22
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 23
    .line 24
    invoke-static {v0, v1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-instance v2, Landroid/graphics/Canvas;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Landroid/graphics/RectF;

    .line 34
    .line 35
    int-to-float v0, v0

    .line 36
    int-to-float v1, v1

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-direct {v3, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {v2, p1, v0, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 43
    .line 44
    .line 45
    return-object p0
.end method

.method public static throwForInvalidTag(ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p1, "Invalid tag \'%s\' found at depth %d"

    .line 12
    .line 13
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public static warnForInvalidTag(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "Invalid tag \'%s\' found at depth %d"

    .line 10
    .line 11
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string p1, "ShortcutService"

    .line 16
    .line 17
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V
    .locals 0

    .line 3
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 4
    const-string p2, "1"

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    const-string p2, "0"

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final addDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v2

    .line 30
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    const/4 p3, 0x1

    .line 47
    invoke-virtual {p1, p3, p2}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(ILjava/util/List;)V

    .line 48
    .line 49
    .line 50
    new-instance v3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    invoke-direct {v3, v4}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v3, 0x0

    .line 67
    if-nez v0, :cond_0

    .line 68
    .line 69
    monitor-exit v2

    .line 70
    return v3

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 74
    move-object v5, v0

    .line 75
    move v4, v3

    .line 76
    :goto_0
    if-ge v4, v1, :cond_2

    .line 77
    .line 78
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    check-cast v6, Landroid/content/pm/ShortcutInfo;

    .line 83
    .line 84
    invoke-virtual {p0, v6, v3, v3}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v6}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 91
    .line 92
    .line 93
    if-nez v5, :cond_1

    .line 94
    .line 95
    new-instance v5, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .line 99
    .line 100
    :cond_1
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    add-int/lit8 v4, v4, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 107
    .line 108
    .line 109
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-virtual {p0, p1, v5, v0}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 114
    .line 115
    .line 116
    return p3

    .line 117
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    throw p0
.end method

.method public final allowSmartSwitchBackup(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mSmartSwitchBackupAllowed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final applyRestore([BI)V
    .locals 5

    .line 1
    const-string v0, "Can\'t restore: user "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    sget-boolean v1, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v1, "ShortcutService"

    .line 14
    .line 15
    const-string v2, "Restoring user "

    .line 16
    .line 17
    invoke-static {p2, v2, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p2, " is locked or not running"

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 p2, 0x0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    .line 55
    .line 56
    const-string/jumbo v2, "restore-0-start.txt"

    .line 57
    .line 58
    .line 59
    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    .line 69
    .line 70
    const-string/jumbo v2, "restore-1-payload.xml"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v3, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    invoke-direct {v3, p1}, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;-><init>([B)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 82
    .line 83
    .line 84
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 85
    .line 86
    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x1

    .line 90
    :try_start_1
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    .line 91
    .line 92
    .line 93
    move-result-object p1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    .line 95
    .line 96
    const-string/jumbo v2, "restore-2.txt"

    .line 97
    .line 98
    .line 99
    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;

    .line 100
    .line 101
    const/4 v4, 0x1

    .line 102
    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutUser;->mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    .line 116
    .line 117
    const-string/jumbo v0, "restore-3.txt"

    .line 118
    .line 119
    .line 120
    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;

    .line 121
    .line 122
    const/4 v3, 0x1

    .line 123
    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 127
    .line 128
    .line 129
    const-wide/16 v2, 0x0

    .line 130
    .line 131
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    .line 135
    .line 136
    const-string/jumbo v0, "restore-4.txt"

    .line 137
    .line 138
    .line 139
    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;

    .line 140
    .line 141
    const/4 v3, 0x1

    .line 142
    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    .line 149
    .line 150
    const-string/jumbo v0, "restore-5-finish.txt"

    .line 151
    .line 152
    .line 153
    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;

    .line 154
    .line 155
    const/4 v3, 0x2

    .line 156
    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 160
    .line 161
    .line 162
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUser(I)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :catch_0
    move-exception p0

    .line 168
    :try_start_3
    const-string p1, "ShortcutService"

    .line 169
    .line 170
    const-string p2, "Restoration failed."

    .line 171
    .line 172
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .line 174
    .line 175
    monitor-exit v1

    .line 176
    return-void

    .line 177
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    throw p0

    .line 179
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 180
    .line 181
    const-string p1, "Caller must be system"

    .line 182
    .line 183
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p0
.end method

.method public final applyRestoreSmartSwitch(Landroid/os/ParcelFileDescriptor;I)I
    .locals 7

    .line 1
    const-string v0, "Shortcut Restoration failed : "

    .line 2
    .line 3
    const-string v1, "Shortcut Restoration failed : "

    .line 4
    .line 5
    const-string v2, "Shortcut Restoration failed : user locked - "

    .line 6
    .line 7
    const-string v3, "Start Shortcut Restoration"

    .line 8
    .line 9
    invoke-static {v3}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "com.samsung.android.scloud.backup.lib.write"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v3

    .line 21
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x1

    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    monitor-exit v3

    .line 44
    return v5

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p0, v5}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    :try_start_1
    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 56
    .line 57
    invoke-direct {v6, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    .line 59
    .line 60
    :try_start_2
    invoke-virtual {p0, p2, v6, v5}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, v5}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/server/pm/ShortcutService$InvalidFileFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 65
    .line 66
    .line 67
    :try_start_3
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p1}, Lcom/android/server/pm/ShortcutUser;->mergeRestoredFile(Lcom/android/server/pm/ShortcutUser;)V

    .line 71
    .line 72
    .line 73
    const-wide/16 v0, 0x0

    .line 74
    .line 75
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->saveUser(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    .line 80
    .line 81
    :try_start_4
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    .line 82
    .line 83
    .line 84
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    const-string p0, "Success Shortcut Restoration"

    .line 86
    .line 87
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return v4

    .line 91
    :catchall_1
    move-exception p1

    .line 92
    goto :goto_1

    .line 93
    :catchall_2
    move-exception p1

    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception p1

    .line 96
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 109
    .line 110
    .line 111
    :try_start_6
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 112
    .line 113
    .line 114
    :try_start_7
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    .line 115
    .line 116
    .line 117
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 118
    return v5

    .line 119
    :goto_0
    :try_start_8
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :catch_1
    move-exception p1

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-static {p1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 137
    .line 138
    .line 139
    :try_start_9
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    .line 140
    .line 141
    .line 142
    monitor-exit v3

    .line 143
    return v5

    .line 144
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :goto_2
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 149
    throw p0
.end method

.method public areShortcutsSupportedOnHomeScreen(I)Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-static {}, Landroid/multiuser/Flags;->disablePrivateSpaceItemsOnHome()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    const/16 v0, 0x10

    .line 32
    .line 33
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    iget-object v7, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 37
    .line 38
    invoke-virtual {v7, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->areItemsRestrictedOnHomeScreen()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    xor-int/2addr p1, v1

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    :goto_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 58
    .line 59
    .line 60
    return p1

    .line 61
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :catchall_1
    move-exception p1

    .line 64
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_2
    :goto_2
    return v1
.end method

.method public final canSeeAnyPinnedShortcut(IIILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/ShortcutService;->injectHasAccessShortcutsPermission(II)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService;->mNonPersistentUsersLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget-object p3, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    check-cast p3, Lcom/android/server/pm/ShortcutNonPersistentUser;

    .line 19
    .line 20
    if-nez p3, :cond_1

    .line 21
    .line 22
    new-instance p3, Lcom/android/server/pm/ShortcutNonPersistentUser;

    .line 23
    .line 24
    invoke-direct {p3, p1}, Lcom/android/server/pm/ShortcutNonPersistentUser;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p0, p3, Lcom/android/server/pm/ShortcutNonPersistentUser;->mHostPackageSet:Landroid/util/ArraySet;

    .line 33
    .line 34
    invoke-virtual {p0, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    monitor-exit p2

    .line 39
    return p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public checkPackageChanges(I)V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ShortcutService"

    .line 6
    .line 7
    const-string v1, "checkPackageChanges() ownerUserId="

    .line 8
    .line 9
    invoke-static {p1, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const/4 v2, 0x0

    .line 17
    :try_start_0
    const-string/jumbo v3, "window"

    .line 18
    .line 19
    .line 20
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v3}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    move v3, v2

    .line 45
    :goto_0
    if-eqz v3, :cond_1

    .line 46
    .line 47
    const-string p0, "ShortcutService"

    .line 48
    .line 49
    const-string p1, "Safe mode, skipping checkPackageChanges()"

    .line 50
    .line 51
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    const/16 v3, 0x8

    .line 62
    .line 63
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 69
    .line 70
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 71
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    new-instance v7, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda15;

    .line 76
    .line 77
    invoke-direct {v7, p0, v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/util/ArrayList;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v7}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-lez v7, :cond_2

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    add-int/lit8 v7, v7, -0x1

    .line 94
    .line 95
    :goto_1
    if-ltz v7, :cond_2

    .line 96
    .line 97
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    check-cast v8, Landroid/content/pm/UserPackage;

    .line 102
    .line 103
    iget-object v9, v8, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 104
    .line 105
    iget v8, v8, Landroid/content/pm/UserPackage;->userId:I

    .line 106
    .line 107
    invoke-virtual {p0, v9, p1, v8, v2}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageLocked(Ljava/lang/String;IIZ)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 v7, v7, -0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catchall_1
    move-exception p1

    .line 114
    goto :goto_2

    .line 115
    :cond_2
    iget-wide v6, v6, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    .line 116
    .line 117
    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/pm/ShortcutService;->rescanUpdatedPackagesLocked(IJ)V

    .line 118
    .line 119
    .line 120
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :goto_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 130
    :catchall_2
    move-exception p1

    .line 131
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 132
    .line 133
    .line 134
    throw p1
.end method

.method public final cleanUpPackageForAllLoadedUsers(ILjava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda33;

    .line 5
    .line 6
    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;IZ)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

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

.method public cleanUpPackageLocked(Ljava/lang/String;IIZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-ne p3, p2, :cond_3

    .line 19
    .line 20
    iget-object v4, v3, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/android/server/pm/ShortcutPackage;

    .line 27
    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackage;->isAppSearchEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-nez v5, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    new-instance v5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda26;

    .line 38
    .line 39
    invoke-direct {v5, v4}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/pm/ShortcutPackage;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v5}, Lcom/android/server/pm/ShortcutPackage;->runAsSystem(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    iget-object v5, v3, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 46
    .line 47
    iget v6, v3, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 48
    .line 49
    invoke-virtual {v5, v6, p1}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    const/4 v4, 0x0

    .line 54
    :goto_2
    if-eqz v4, :cond_4

    .line 55
    .line 56
    move v1, v2

    .line 57
    :cond_4
    iget-object v5, v3, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-static {p3, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Lcom/android/server/pm/ShortcutLauncher;

    .line 68
    .line 69
    new-instance v6, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda3;

    .line 70
    .line 71
    invoke-direct {v6, p1, p3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v6}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 75
    .line 76
    .line 77
    new-instance v6, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    invoke-direct {v6, v7}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v6}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 84
    .line 85
    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;

    .line 89
    .line 90
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    :cond_5
    if-eqz p4, :cond_6

    .line 97
    .line 98
    if-ne p3, p2, :cond_6

    .line 99
    .line 100
    invoke-virtual {v3, p1, v2}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    :cond_6
    if-nez p4, :cond_7

    .line 104
    .line 105
    if-ne p3, p2, :cond_7

    .line 106
    .line 107
    new-instance p1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;

    .line 108
    .line 109
    const/4 p3, 0x0

    .line 110
    invoke-direct {p1, p3, v4, v5}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 114
    .line 115
    .line 116
    :cond_7
    if-nez v0, :cond_8

    .line 117
    .line 118
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    .line 119
    .line 120
    .line 121
    :cond_8
    return-void
.end method

.method public final cleanupBitmapsForPackage(ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_2

    .line 28
    .line 29
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p1, "Unable to remove directory "

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string p1, "ShortcutService"

    .line 44
    .line 45
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public final cleanupDanglingBitmapDirectoriesLocked(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    new-instance v2, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v3

    .line 15
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    new-instance v5, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    invoke-direct {v5, v6, v2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    array-length v4, v3

    .line 44
    const/4 v5, 0x0

    .line 45
    :goto_0
    if-ge v5, v4, :cond_3

    .line 46
    .line 47
    aget-object v6, v3, v5

    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-nez v7, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    check-cast v8, Lcom/android/server/pm/ShortcutPackage;

    .line 65
    .line 66
    if-nez v8, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0, p1, v7}, Lcom/android/server/pm/ShortcutService;->cleanupBitmapsForPackage(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v7, v8, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 73
    .line 74
    monitor-enter v7

    .line 75
    :try_start_1
    iget-object v9, v8, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    .line 76
    .line 77
    invoke-virtual {v9}, Lcom/android/server/pm/ShortcutBitmapSaver;->waitForAllSavesLocked()Z

    .line 78
    .line 79
    .line 80
    new-instance v9, Landroid/util/ArraySet;

    .line 81
    .line 82
    const/4 v10, 0x1

    .line 83
    invoke-direct {v9, v10}, Landroid/util/ArraySet;-><init>(I)V

    .line 84
    .line 85
    .line 86
    new-instance v10, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda24;

    .line 87
    .line 88
    const/4 v11, 0x1

    .line 89
    invoke-direct {v10, v11, v9}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda24;-><init>(ILandroid/util/ArraySet;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8, v10}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcut(Ljava/util/function/Consumer;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    iget-object v7, v8, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 101
    .line 102
    iget-object v7, v7, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 103
    .line 104
    new-instance v11, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;

    .line 105
    .line 106
    invoke-direct {v11, v10, v9, v6}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda28;-><init>([Ljava/io/File;Landroid/util/ArraySet;Ljava/io/File;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v8, v11}, Lcom/android/server/pm/ShortcutService;->injectPostToHandlerDebounced(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    throw p0

    .line 118
    :cond_3
    const/4 p1, 0x5

    .line 119
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :catchall_1
    move-exception p0

    .line 124
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    throw p0
.end method

.method public final createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 4

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "Shortcut must be enabled"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter p1

    .line 22
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 26
    .line 27
    iget-object v1, v0, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 28
    .line 29
    iget-object v2, v1, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 30
    .line 31
    invoke-virtual {v2, p3}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x0

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    const-string p2, "ShortcutService"

    .line 43
    .line 44
    const-string p3, "Default launcher not found."

    .line 45
    .line 46
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v1, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p2, v3, v2, p3}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinShortcutLocked(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Ljava/lang/String;I)Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    new-instance p3, Landroid/content/Intent;

    .line 58
    .line 59
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v0, "android.content.pm.extra.PIN_ITEM_REQUEST"

    .line 63
    .line 64
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p4, v3}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p0
.end method

.method public final disableShortcuts(Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;II)V
    .locals 19

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
    move/from16 v3, p5

    .line 8
    .line 9
    invoke-virtual {v0, v3, v1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "shortcutIds must be provided"

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v4

    .line 21
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v3, v1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-nez p3, :cond_0

    .line 33
    .line 34
    move-object v12, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    move-object v12, v5

    .line 41
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v13, 0x1

    .line 46
    sub-int/2addr v5, v13

    .line 47
    move-object v11, v3

    .line 48
    move-object v15, v11

    .line 49
    move v14, v5

    .line 50
    :goto_1
    if-ltz v14, :cond_5

    .line 51
    .line 52
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    check-cast v5, Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    move-object v10, v5

    .line 63
    check-cast v10, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v1, v10}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_1

    .line 70
    .line 71
    move/from16 v8, p4

    .line 72
    .line 73
    move v7, v13

    .line 74
    goto :goto_4

    .line 75
    :cond_1
    const/4 v7, 0x1

    .line 76
    const/16 v16, 0x0

    .line 77
    .line 78
    const/4 v9, 0x1

    .line 79
    const/16 v17, 0x1

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    move-object v5, v1

    .line 83
    move-object v6, v10

    .line 84
    move-object v13, v10

    .line 85
    move/from16 v10, v17

    .line 86
    .line 87
    move-object/from16 v18, v11

    .line 88
    .line 89
    move/from16 v11, v16

    .line 90
    .line 91
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    new-instance v6, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;

    .line 96
    .line 97
    const/4 v7, 0x0

    .line 98
    move/from16 v8, p4

    .line 99
    .line 100
    invoke-direct {v6, v1, v12, v8, v7}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/ShortcutPackage;Ljava/lang/Object;II)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v13, v3, v6}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    .line 104
    .line 105
    .line 106
    if-nez v5, :cond_3

    .line 107
    .line 108
    if-nez v15, :cond_2

    .line 109
    .line 110
    new-instance v15, Ljava/util/ArrayList;

    .line 111
    .line 112
    const/4 v5, 0x1

    .line 113
    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    goto :goto_5

    .line 119
    :cond_2
    :goto_2
    invoke-virtual {v1, v13}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-object/from16 v11, v18

    .line 127
    .line 128
    const/4 v7, 0x1

    .line 129
    goto :goto_4

    .line 130
    :cond_3
    move-object/from16 v6, v18

    .line 131
    .line 132
    if-nez v6, :cond_4

    .line 133
    .line 134
    new-instance v11, Ljava/util/ArrayList;

    .line 135
    .line 136
    const/4 v7, 0x1

    .line 137
    invoke-direct {v11, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_4
    const/4 v7, 0x1

    .line 142
    move-object v11, v6

    .line 143
    :goto_3
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    :goto_4
    add-int/lit8 v14, v14, -0x1

    .line 147
    .line 148
    move v13, v7

    .line 149
    goto :goto_1

    .line 150
    :cond_5
    move-object v6, v11

    .line 151
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 152
    .line 153
    .line 154
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {v0, v1, v15, v6}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :goto_5
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    throw v0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "ShortcutService"

    .line 4
    .line 5
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->dumpNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p2, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-string v3, "Now: ["

    .line 13
    .line 14
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 18
    .line 19
    .line 20
    const-string v3, "] "

    .line 21
    .line 22
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "  Raw last reset: ["

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 44
    .line 45
    .line 46
    const-string v1, "] "

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    invoke-static {v1, v2}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    const-string v3, "  Last reset: ["

    .line 74
    .line 75
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 79
    .line 80
    .line 81
    const-string v3, "] "

    .line 82
    .line 83
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v1, v2}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 99
    .line 100
    .line 101
    move-result-wide v1

    .line 102
    iget-wide v3, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    .line 103
    .line 104
    add-long/2addr v1, v3

    .line 105
    const-string v3, "  Next reset: ["

    .line 106
    .line 107
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 111
    .line 112
    .line 113
    const-string v3, "] "

    .line 114
    .line 115
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v2}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 129
    .line 130
    .line 131
    const-string v1, "  Config:"

    .line 132
    .line 133
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v1, "    Max icon dim: "

    .line 137
    .line 138
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 144
    .line 145
    .line 146
    const-string v1, "    Icon format: "

    .line 147
    .line 148
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 152
    .line 153
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    const-string v1, "    Icon quality: "

    .line 157
    .line 158
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    .line 162
    .line 163
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 164
    .line 165
    .line 166
    const-string v1, "    saveDelayMillis: "

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    .line 172
    .line 173
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 174
    .line 175
    .line 176
    const-string v1, "    resetInterval: "

    .line 177
    .line 178
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-wide v1, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    .line 182
    .line 183
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 184
    .line 185
    .line 186
    const-string v1, "    maxUpdatesPerInterval: "

    .line 187
    .line 188
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    .line 192
    .line 193
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 194
    .line 195
    .line 196
    const-string v1, "    maxShortcutsPerActivity: "

    .line 197
    .line 198
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    .line 202
    .line 203
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 207
    .line 208
    .line 209
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 210
    .line 211
    const-string v2, "  "

    .line 212
    .line 213
    invoke-virtual {v1, p1, v2}, Lcom/android/internal/util/StatLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfLock:Ljava/lang/Object;

    .line 217
    .line 218
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 220
    .line 221
    .line 222
    const-string v2, "  #Failures: "

    .line 223
    .line 224
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget v2, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    .line 228
    .line 229
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 230
    .line 231
    .line 232
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    .line 233
    .line 234
    if-eqz v2, :cond_0

    .line 235
    .line 236
    const-string v2, "  Last failure stack trace: "

    .line 237
    .line 238
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    .line 242
    .line 243
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    goto :goto_0

    .line 251
    :catchall_0
    move-exception p0

    .line 252
    goto :goto_1

    .line 253
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :try_start_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 255
    .line 256
    .line 257
    goto :goto_2

    .line 258
    :catchall_1
    move-exception p0

    .line 259
    goto :goto_5

    .line 260
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    :try_start_4
    throw p0

    .line 262
    :cond_1
    :goto_2
    const/4 v1, 0x0

    .line 263
    move v2, v1

    .line 264
    :goto_3
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 265
    .line 266
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-ge v2, v3, :cond_3

    .line 271
    .line 272
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 273
    .line 274
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    check-cast v3, Lcom/android/server/pm/ShortcutUser;

    .line 279
    .line 280
    iget v4, v3, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 281
    .line 282
    invoke-virtual {p2, v4}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isUserMatch(I)Z

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    if-eqz v4, :cond_2

    .line 287
    .line 288
    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/ShortcutUser;->dump(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 292
    .line 293
    .line 294
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_3
    :goto_4
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    .line 298
    .line 299
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-ge v1, v2, :cond_5

    .line 304
    .line 305
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mShortcutNonPersistentUsers:Landroid/util/SparseArray;

    .line 306
    .line 307
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    check-cast v2, Lcom/android/server/pm/ShortcutNonPersistentUser;

    .line 312
    .line 313
    iget v3, v2, Lcom/android/server/pm/ShortcutNonPersistentUser;->mUserId:I

    .line 314
    .line 315
    invoke-virtual {p2, v3}, Lcom/android/server/pm/ShortcutService$DumpFilter;->isUserMatch(I)Z

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    if-eqz v3, :cond_4

    .line 320
    .line 321
    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/ShortcutNonPersistentUser;->dump(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 325
    .line 326
    .line 327
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_5
    monitor-exit v0

    .line 331
    return-void

    .line 332
    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 333
    throw p0
.end method

.method public dumpNoCheck(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance p1, Lcom/android/server/pm/ShortcutService$DumpFilter;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/android/server/pm/ShortcutService$DumpFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    goto/16 :goto_9

    .line 11
    .line 12
    :cond_0
    move v2, v1

    .line 13
    :goto_0
    array-length v3, p3

    .line 14
    if-ge v2, v3, :cond_11

    .line 15
    .line 16
    add-int/lit8 v3, v2, 0x1

    .line 17
    .line 18
    aget-object v4, p3, v2

    .line 19
    .line 20
    const-string v5, "-c"

    .line 21
    .line 22
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    iput-boolean v0, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    .line 29
    .line 30
    goto/16 :goto_7

    .line 31
    .line 32
    :cond_1
    const-string v5, "--checkin"

    .line 33
    .line 34
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    iput-boolean v0, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    .line 41
    .line 42
    iput-boolean v0, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    .line 43
    .line 44
    goto/16 :goto_7

    .line 45
    .line 46
    :cond_2
    const-string v5, "-a"

    .line 47
    .line 48
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_10

    .line 53
    .line 54
    const-string v5, "--all"

    .line 55
    .line 56
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_3

    .line 61
    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :cond_3
    const-string v5, "-u"

    .line 65
    .line 66
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_f

    .line 71
    .line 72
    const-string v5, "--uid"

    .line 73
    .line 74
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_4

    .line 79
    .line 80
    goto/16 :goto_5

    .line 81
    .line 82
    :cond_4
    const-string v5, "-f"

    .line 83
    .line 84
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_e

    .line 89
    .line 90
    const-string v5, "--files"

    .line 91
    .line 92
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_5

    .line 97
    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :cond_5
    const-string v5, "-n"

    .line 101
    .line 102
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-nez v5, :cond_d

    .line 107
    .line 108
    const-string v5, "--no-main"

    .line 109
    .line 110
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-eqz v5, :cond_6

    .line 115
    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :cond_6
    const-string v5, "--user"

    .line 119
    .line 120
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_8

    .line 125
    .line 126
    array-length v4, p3

    .line 127
    if-ge v3, v4, :cond_7

    .line 128
    .line 129
    add-int/lit8 v2, v2, 0x2

    .line 130
    .line 131
    :try_start_0
    aget-object v3, p3, v3

    .line 132
    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    iget-object v4, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    .line 138
    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v4, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :catch_0
    move-exception p0

    .line 151
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 152
    .line 153
    const-string p2, "Invalid user ID"

    .line 154
    .line 155
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 160
    .line 161
    const-string p1, "Missing user ID for --user"

    .line 162
    .line 163
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p0

    .line 167
    :cond_8
    const-string v5, "-p"

    .line 168
    .line 169
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-nez v5, :cond_b

    .line 174
    .line 175
    const-string v5, "--package"

    .line 176
    .line 177
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_9

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_9
    const-string v2, "-"

    .line 185
    .line 186
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-nez v2, :cond_a

    .line 191
    .line 192
    :goto_1
    move v2, v3

    .line 193
    goto :goto_8

    .line 194
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 195
    .line 196
    const-string p1, "Unknown option "

    .line 197
    .line 198
    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p0

    .line 206
    :cond_b
    :goto_2
    array-length v4, p3

    .line 207
    if-ge v3, v4, :cond_c

    .line 208
    .line 209
    add-int/lit8 v2, v2, 0x2

    .line 210
    .line 211
    aget-object v3, p3, v3

    .line 212
    .line 213
    iget-object v4, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    .line 214
    .line 215
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    check-cast v4, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    iput-boolean v1, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 229
    .line 230
    const-string p1, "Missing package name for --package"

    .line 231
    .line 232
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p0

    .line 236
    :cond_d
    :goto_3
    iput-boolean v1, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_e
    :goto_4
    iput-boolean v0, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_f
    :goto_5
    iput-boolean v0, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_10
    :goto_6
    iput-boolean v0, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    .line 246
    .line 247
    iput-boolean v0, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    .line 248
    .line 249
    :goto_7
    move v2, v3

    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_11
    :goto_8
    array-length v3, p3

    .line 253
    if-ge v2, v3, :cond_12

    .line 254
    .line 255
    add-int/lit8 v3, v2, 0x1

    .line 256
    .line 257
    aget-object v2, p3, v2

    .line 258
    .line 259
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    iget-object v4, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    .line 264
    .line 265
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    check-cast v4, Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    goto :goto_1

    .line 275
    :cond_12
    :goto_9
    iget-boolean p3, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    .line 276
    .line 277
    if-eqz p3, :cond_14

    .line 278
    .line 279
    iget-boolean p1, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    .line 280
    .line 281
    iget-object p3, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 282
    .line 283
    monitor-enter p3

    .line 284
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    .line 285
    .line 286
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 287
    .line 288
    .line 289
    :goto_a
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 290
    .line 291
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    if-ge v1, v3, :cond_13

    .line 296
    .line 297
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 298
    .line 299
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    check-cast v3, Lcom/android/server/pm/ShortcutUser;

    .line 304
    .line 305
    invoke-virtual {v3, p1}, Lcom/android/server/pm/ShortcutUser;->dumpCheckin(Z)Lorg/json/JSONObject;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 310
    .line 311
    .line 312
    add-int/lit8 v1, v1, 0x1

    .line 313
    .line 314
    goto :goto_a

    .line 315
    :catchall_0
    move-exception p0

    .line 316
    goto :goto_d

    .line 317
    :catch_1
    move-exception p0

    .line 318
    goto :goto_b

    .line 319
    :cond_13
    new-instance p1, Lorg/json/JSONObject;

    .line 320
    .line 321
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 322
    .line 323
    .line 324
    const-string/jumbo v1, "shortcut"

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    .line 329
    .line 330
    const-string v1, "lowRam"

    .line 331
    .line 332
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 337
    .line 338
    .line 339
    const-string v1, "iconSize"

    .line 340
    .line 341
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    .line 342
    .line 343
    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    .line 352
    .line 353
    goto :goto_c

    .line 354
    :goto_b
    :try_start_2
    const-string p1, "ShortcutService"

    .line 355
    .line 356
    const-string p2, "Unable to write in json"

    .line 357
    .line 358
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    .line 360
    .line 361
    :goto_c
    monitor-exit p3

    .line 362
    goto/16 :goto_12

    .line 363
    .line 364
    :goto_d
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    throw p0

    .line 366
    :cond_14
    iget-boolean p3, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    .line 367
    .line 368
    if-eqz p3, :cond_15

    .line 369
    .line 370
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->dumpInner(Ljava/io/PrintWriter;Lcom/android/server/pm/ShortcutService$DumpFilter;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 374
    .line 375
    .line 376
    :cond_15
    iget-boolean p3, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    .line 377
    .line 378
    if-eqz p3, :cond_18

    .line 379
    .line 380
    iget-object p3, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 381
    .line 382
    monitor-enter p3

    .line 383
    :try_start_3
    const-string v0, "** SHORTCUT MANAGER UID STATES (dumpsys shortcut -n -u)"

    .line 384
    .line 385
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    :goto_e
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    .line 389
    .line 390
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-ge v1, v0, :cond_17

    .line 395
    .line 396
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    .line 397
    .line 398
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    .line 403
    .line 404
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    const-string v3, "    UID="

    .line 409
    .line 410
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 414
    .line 415
    .line 416
    const-string v3, " state="

    .line 417
    .line 418
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 422
    .line 423
    .line 424
    const/4 v3, 0x5

    .line 425
    if-gt v2, v3, :cond_16

    .line 426
    .line 427
    const-string v2, "  [FG]"

    .line 428
    .line 429
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    goto :goto_f

    .line 433
    :catchall_1
    move-exception p0

    .line 434
    goto :goto_10

    .line 435
    :cond_16
    :goto_f
    const-string v2, "  last FG="

    .line 436
    .line 437
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    .line 441
    .line 442
    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->get(I)J

    .line 443
    .line 444
    .line 445
    move-result-wide v2

    .line 446
    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 450
    .line 451
    .line 452
    add-int/lit8 v1, v1, 0x1

    .line 453
    .line 454
    goto :goto_e

    .line 455
    :cond_17
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 456
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 457
    .line 458
    .line 459
    goto :goto_11

    .line 460
    :goto_10
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 461
    throw p0

    .line 462
    :cond_18
    :goto_11
    iget-boolean p1, p1, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    .line 463
    .line 464
    if-eqz p1, :cond_19

    .line 465
    .line 466
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 467
    .line 468
    monitor-enter p1

    .line 469
    :try_start_5
    const-string p3, "** SHORTCUT MANAGER FILES (dumpsys shortcut -n -f)"

    .line 470
    .line 471
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    .line 475
    .line 476
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutDumpFiles;->dumpAll(Ljava/io/PrintWriter;)V

    .line 477
    .line 478
    .line 479
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 480
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 481
    .line 482
    .line 483
    goto :goto_12

    .line 484
    :catchall_2
    move-exception p0

    .line 485
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 486
    throw p0

    .line 487
    :cond_19
    :goto_12
    return-void
.end method

.method public final enableShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .locals 7

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "shortcutIds must be provided"

    .line 5
    .line 6
    .line 7
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    const/4 v1, 0x1

    .line 28
    sub-int/2addr p3, v1

    .line 29
    const/4 v2, 0x0

    .line 30
    move-object v3, v2

    .line 31
    :goto_0
    if-ltz p3, :cond_2

    .line 32
    .line 33
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_0

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_0
    new-instance v5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda10;

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    invoke-direct {v5, v6, p1}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v4, v2, v5}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    .line 59
    .line 60
    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    new-instance v3, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_3

    .line 71
    :cond_1
    :goto_1
    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :goto_2
    add-int/lit8 p3, p3, -0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    throw p0
.end method

.method public final fillInDefaultActivity(Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ltz v0, :cond_3

    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-nez v4, :cond_2

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {p0, v4, v2}, Lcom/android/server/pm/ShortcutService;->injectGetDefaultMainActivity(ILjava/lang/String;)Landroid/content/ComponentName;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    move v4, v1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v4, 0x0

    .line 41
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v6, "Launcher activity not found for package "

    .line 44
    .line 45
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    return-void
.end method

.method public final fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->isReturnedByServer()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "ShortcutService"

    .line 8
    .line 9
    const-string v1, "Re-publishing ShortcutInfo returned by server is not supported. Some information such as icon may lost from shortcut."

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "Cannot publish shortcut: activity "

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, " does not belong to package "

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ShortcutService;->injectIsMainActivity(ILandroid/content/ComponentName;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, " is not main activity"

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    if-nez p2, :cond_3

    .line 106
    .line 107
    invoke-virtual {p1, p3}, Landroid/content/pm/ShortcutInfo;->enforceMandatoryFields(Z)V

    .line 108
    .line 109
    .line 110
    if-nez p3, :cond_3

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    if-eqz p2, :cond_2

    .line 117
    .line 118
    const/4 p2, 0x1

    .line 119
    goto :goto_0

    .line 120
    :cond_2
    const/4 p2, 0x0

    .line 121
    :goto_0
    const-string p3, "Cannot publish shortcut: target activity is not set"

    .line 122
    .line 123
    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    if-eqz p2, :cond_6

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {p2}, Landroid/content/pm/ShortcutInfo;->validateIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    if-nez p2, :cond_4

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    .line 151
    .line 152
    .line 153
    move-result p3

    .line 154
    const/4 v0, 0x4

    .line 155
    if-eq p3, v0, :cond_5

    .line 156
    .line 157
    const/4 v0, 0x6

    .line 158
    if-eq p3, v0, :cond_5

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 176
    .line 177
    .line 178
    move-result p3

    .line 179
    invoke-static {p2, p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    move-object v0, p0

    .line 184
    check-cast v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 185
    .line 186
    const/4 v4, 0x1

    .line 187
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    .line 188
    .line 189
    .line 190
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    and-int/lit16 p0, p0, 0x2000

    .line 195
    .line 196
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo;->replaceFlags(I)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public final fixUpShortcutResourceNamesAndValues(Landroid/content/pm/ShortcutInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ShortcutService;->injectGetResourcesForApplicationAsUser(ILjava/lang/String;)Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    const/16 v3, 0xa

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->lookupAndFillInResourceNames(Landroid/content/res/Resources;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo;->resolveResourceStrings(Landroid/content/res/Resources;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_0
    :goto_0
    return-void
.end method

.method public final forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/pm/ShortcutUser;

    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method public final getBackupPayload(I)[B
    .locals 5

    .line 1
    const-string v0, "Can\'t backup: user "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, " is locked or not running"

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    monitor-exit v1

    .line 40
    return-object v3

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    .line 48
    .line 49
    const/4 v4, 0x5

    .line 50
    invoke-direct {v2, v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    .line 57
    .line 58
    const/4 v4, 0x6

    .line 59
    invoke-direct {v2, v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    .line 66
    .line 67
    const/4 v4, 0x7

    .line 68
    invoke-direct {v2, v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    .line 78
    .line 79
    .line 80
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 81
    .line 82
    const v2, 0x8000

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    const/4 v2, 0x1

    .line 89
    :try_start_1
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(Ljava/io/OutputStream;ZI)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutDumpFiles:Lcom/android/server/pm/ShortcutDumpFiles;

    .line 97
    .line 98
    const-string v0, "backup-1-payload.txt"

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    new-instance v2, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;

    .line 104
    .line 105
    invoke-direct {v2, p1}, Lcom/android/server/pm/ShortcutDumpFiles$$ExternalSyntheticLambda0;-><init>([B)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 109
    .line 110
    .line 111
    monitor-exit v1

    .line 112
    return-object p1

    .line 113
    :catch_0
    move-exception p0

    .line 114
    const-string p1, "ShortcutService"

    .line 115
    .line 116
    const-string v0, "Backup failed."

    .line 117
    .line 118
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .line 120
    .line 121
    monitor-exit v1

    .line 122
    return-object v3

    .line 123
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    throw p0

    .line 125
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 126
    .line 127
    const-string p1, "Caller must be system"

    .line 128
    .line 129
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0
.end method

.method public final getBackupShortcut(I)Landroid/os/ParcelFileDescriptor;
    .locals 10

    .line 1
    const-string v0, "Shortcut Backup failed : "

    .line 2
    .line 3
    const-string v1, "Shortcut Backup failed : "

    .line 4
    .line 5
    const-string v2, "Shortcut Backup failed : "

    .line 6
    .line 7
    const-string v3, "Shortcut Backup failed : user locked - "

    .line 8
    .line 9
    const-string v4, "Start Shortcut Backup"

    .line 10
    .line 11
    invoke-static {v4}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "com.samsung.android.scloud.backup.lib.write"

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v4

    .line 23
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-nez v6, :cond_0

    .line 28
    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    monitor-exit v4

    .line 45
    return-object v5

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/4 v6, 0x1

    .line 54
    invoke-virtual {p0, v6}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    :try_start_1
    new-instance v8, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    .line 59
    .line 60
    const/4 v9, 0x2

    .line 61
    invoke-direct {v8, v9}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v8}, Lcom/android/server/pm/ShortcutUser;->forAllPackageItems(Ljava/util/function/Consumer;)V

    .line 65
    .line 66
    .line 67
    new-instance v8, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    .line 68
    .line 69
    const/4 v9, 0x3

    .line 70
    invoke-direct {v8, v9}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v8}, Lcom/android/server/pm/ShortcutUser;->forAllLaunchers(Ljava/util/function/Consumer;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    .line 80
    .line 81
    .line 82
    new-instance v3, Ljava/io/File;

    .line 83
    .line 84
    const-string v8, "/data/misc/shortcutbnr"

    .line 85
    .line 86
    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v8, Ljava/io/File;

    .line 90
    .line 91
    const-string/jumbo v9, "shortcut.br"

    .line 92
    .line 93
    .line 94
    invoke-direct {v8, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    .line 96
    .line 97
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    if-nez v9, :cond_1

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_1
    move-exception p1

    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :catch_0
    move-exception p1

    .line 111
    goto :goto_4

    .line 112
    :cond_1
    :goto_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_2

    .line 117
    .line 118
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    .line 120
    .line 121
    :cond_2
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    .line 122
    .line 123
    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    .line 125
    .line 126
    :try_start_4
    invoke-virtual {p0, v0, v6, p1}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(Ljava/io/OutputStream;ZI)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    .line 134
    .line 135
    const/16 v6, 0x192

    .line 136
    .line 137
    invoke-static {p1, v3, v6}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 138
    .line 139
    .line 140
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 141
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 142
    .line 143
    .line 144
    :try_start_6
    const-string v0, "Success Shortcut Backup"

    .line 145
    .line 146
    invoke-static {v0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    .line 150
    .line 151
    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 152
    .line 153
    .line 154
    :try_start_7
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    .line 155
    .line 156
    .line 157
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 158
    return-object v0

    .line 159
    :catch_1
    move-exception p1

    .line 160
    goto :goto_2

    .line 161
    :catch_2
    move-exception p1

    .line 162
    goto :goto_3

    .line 163
    :catchall_2
    move-exception p1

    .line 164
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :catchall_3
    move-exception v0

    .line 169
    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    :goto_1
    throw p1
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 173
    :goto_2
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {p1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 186
    .line 187
    .line 188
    :try_start_b
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    .line 189
    .line 190
    .line 191
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 192
    return-object v5

    .line 193
    :goto_3
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {p1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 206
    .line 207
    .line 208
    :try_start_d
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    .line 209
    .line 210
    .line 211
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 212
    return-object v5

    .line 213
    :goto_4
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-static {p1}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 226
    .line 227
    .line 228
    :try_start_f
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    .line 229
    .line 230
    .line 231
    monitor-exit v4

    .line 232
    return-object v5

    .line 233
    :goto_5
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ShortcutService;->allowSmartSwitchBackup(Z)V

    .line 234
    .line 235
    .line 236
    throw p1

    .line 237
    :goto_6
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 238
    throw p0
.end method

.method public final getBaseStateFile()Lcom/android/server/pm/ResilientAtomicFile;
    .locals 7

    .line 1
    new-instance v1, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectSystemDataPath()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v2, "shortcut_service.xml"

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectSystemDataPath()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string/jumbo v3, "shortcut_service.xml.backup"

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Ljava/io/File;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectSystemDataPath()Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string/jumbo v0, "shortcut_service.xml.reservecopy"

    .line 32
    .line 33
    .line 34
    invoke-direct {v3, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance p0, Lcom/android/server/pm/ResilientAtomicFile;

    .line 38
    .line 39
    const-string v5, "base shortcut"

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const/16 v4, 0x1f9

    .line 43
    .line 44
    move-object v0, p0

    .line 45
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    .line 46
    .line 47
    .line 48
    return-object p0
.end method

.method public final getBitmapPathList(I)[Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "com.samsung.android.scloud.backup.lib.write"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance p1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {p1, v1, v0}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    new-array p0, p0, [Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, [Ljava/lang/String;

    .line 36
    .line 37
    return-object p0
.end method

.method public final getDefaultLauncher(I)Ljava/lang/String;
    .locals 12

    .line 1
    const-string v0, "Default launcher not found. user: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const/16 v5, 0x10

    .line 14
    .line 15
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    iget-object v8, v7, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v8, :cond_0

    .line 28
    .line 29
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 34
    .line 35
    .line 36
    return-object v8

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :try_start_2
    iget-object v8, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 40
    .line 41
    invoke-virtual {v8}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v8

    .line 45
    iget-object v10, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 46
    .line 47
    invoke-virtual {v10, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    invoke-virtual {p0, v10}, Lcom/android/server/pm/ShortcutService;->injectGetHomeRoleHolderAsUser(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    const/4 v11, 0x0

    .line 56
    invoke-virtual {p0, v11, v8, v9}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 57
    .line 58
    .line 59
    if-eqz v10, :cond_1

    .line 60
    .line 61
    iput-object v10, v7, Lcom/android/server/pm/ShortcutUser;->mCachedLauncher:Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-string v7, "ShortcutService"

    .line 65
    .line 66
    new-instance v8, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {v7, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 86
    .line 87
    .line 88
    return-object v10

    .line 89
    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 91
    :catchall_1
    move-exception p1

    .line 92
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 96
    .line 97
    .line 98
    throw p1
.end method

.method public final getIconMaxDimensions(Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    .line 8
    .line 9
    monitor-exit p1

    .line 10
    return p0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public getIconPersistFormatForTest()Landroid/graphics/Bitmap$CompressFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 2
    .line 3
    return-object p0
.end method

.method public getIconPersistQualityForTest()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    .line 2
    .line 3
    return p0
.end method

.method public final getInstalledPackages(I)Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const/4 v4, 0x7

    .line 12
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectGetPackagesWithUninstalled(I)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v5, Lcom/android/server/pm/ShortcutService;->PACKAGE_NOT_INSTALLED:Lcom/android/server/pm/ShortcutService$1;

    .line 17
    .line 18
    invoke-interface {p1, v5}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    :try_start_1
    const-string v5, "ShortcutService"

    .line 32
    .line 33
    const-string v6, "RemoteException"

    .line 34
    .line 35
    invoke-static {v5, v6, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0

    .line 46
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public getLauncherShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutLauncher;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/pm/ShortcutUser;

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getAllLaunchersForTest()Landroid/util/ArrayMap;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p2, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/server/pm/ShortcutLauncher;

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-object p0

    .line 35
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p2, p3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/server/pm/ShortcutLauncher;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/pm/ShortcutLauncher;

    .line 20
    .line 21
    iget v1, p0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 22
    .line 23
    invoke-direct {v0, p0, v1, p3, p2}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public getMaxIconDimensionForTest()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    .line 2
    .line 3
    return p0
.end method

.method public final getMaxShortcutCountPerActivity(Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    .line 5
    .line 6
    return p0
.end method

.method public getMaxShortcutsForTest()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    .line 2
    .line 3
    return p0
.end method

.method public getMaxUpdatesPerIntervalForTest()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    .line 2
    .line 3
    return p0
.end method

.method public final getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutService;->injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->isInstalled(Landroid/content/pm/ApplicationInfo;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return-object p0
.end method

.method public getPackageShortcutForTest(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object p0

    if-nez p0, :cond_0

    .line 8
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 10
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ShortcutUser;

    if-nez p0, :cond_0

    .line 3
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutUser;->getAllPackagesForTest()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ShortcutPackage;

    monitor-exit v0

    return-object p0

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p1, p0, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutUser;->detectLocaleChange(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Lcom/android/server/pm/ShortcutUser;->rescanPackageIfNeeded(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final getRateLimitResetTime(Ljava/lang/String;I)J
    .locals 4

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    .line 20
    .line 21
    add-long/2addr v0, v2

    .line 22
    monitor-exit p1

    .line 23
    return-wide v0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final getRemainingCallCount(Ljava/lang/String;I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutPackage;->getApiCallCount(Z)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    sub-int/2addr p0, p1

    .line 33
    monitor-exit v1

    .line 34
    return p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public getResetIntervalForTest()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getShareTargets(Ljava/lang/String;Landroid/content/IntentFilter;I)Landroid/content/pm/ParceledListSlice;
    .locals 3

    .line 1
    const-string/jumbo v0, "packageName"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    const-string v0, "intentFilter"

    .line 8
    .line 9
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectChooserActivity()Landroid/content/ComponentName;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(ILjava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ne v1, v0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    const-string p1, "android.permission.MANAGE_APP_PREDICTIONS"

    .line 47
    .line 48
    const-string v0, "getShareTargets"

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectChooserActivity()Landroid/content/ComponentName;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :goto_3
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 78
    .line 79
    monitor-enter v0

    .line 80
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    new-instance p3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;

    .line 93
    .line 94
    invoke-direct {p3, v1, p2, p1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;-><init>(Ljava/util/List;Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 98
    .line 99
    .line 100
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 101
    .line 102
    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    monitor-exit v0

    .line 106
    return-object p0

    .line 107
    :catchall_0
    move-exception p0

    .line 108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    throw p0
.end method

.method public final getShortcutBitmapsFileDescriptor()Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .locals 2

    .line 1
    const-string v0, "com.samsung.android.scloud.backup.lib.write"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/android/server/pm/ShortcutService$8;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutService$8;-><init>(Lcom/android/server/pm/ShortcutService;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getShortcutRequestPinProcessorForTest()Lcom/android/server/pm/ShortcutRequestPinProcessor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getShortcuts(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
    .locals 10

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 8
    .line 9
    .line 10
    and-int/lit8 v1, p2, 0x2

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v3

    .line 19
    :goto_0
    and-int/lit8 v4, p2, 0x4

    .line 20
    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    move v4, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v4, v3

    .line 26
    :goto_1
    and-int/lit8 v5, p2, 0x1

    .line 27
    .line 28
    if-eqz v5, :cond_2

    .line 29
    .line 30
    move v5, v2

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move v5, v3

    .line 33
    :goto_2
    and-int/lit8 p2, p2, 0x8

    .line 34
    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    move p2, v2

    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move p2, v3

    .line 40
    :goto_3
    if-eqz v4, :cond_4

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move v4, v3

    .line 45
    :goto_4
    or-int/2addr v1, v4

    .line 46
    if-eqz v5, :cond_5

    .line 47
    .line 48
    const/16 v4, 0x20

    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_5
    move v4, v3

    .line 52
    :goto_5
    or-int/2addr v1, v4

    .line 53
    if-eqz p2, :cond_6

    .line 54
    .line 55
    const v3, 0x60004000

    .line 56
    .line 57
    .line 58
    :cond_6
    or-int p2, v1, v3

    .line 59
    .line 60
    new-instance v5, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda8;

    .line 61
    .line 62
    invoke-direct {v5, p2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 63
    .line 64
    .line 65
    new-instance p2, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    const/16 v6, 0x9

    .line 77
    .line 78
    const/4 v9, 0x0

    .line 79
    move-object v4, p2

    .line 80
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 81
    .line 82
    .line 83
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    sub-int/2addr p1, v2

    .line 90
    :goto_6
    if-ltz p1, :cond_7

    .line 91
    .line 92
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    check-cast p3, Landroid/content/pm/ShortcutInfo;

    .line 97
    .line 98
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->setReturnedByServer()V

    .line 99
    .line 100
    .line 101
    add-int/lit8 p1, p1, -0x1

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_7
    invoke-direct {p0, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    monitor-exit v0

    .line 108
    return-object p0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    throw p0
.end method

.method public getShortcutsForTest()Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUserBitmapFilePath(I)Ljava/io/File;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string p1, "bitmaps"

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;
    .locals 7

    .line 1
    new-instance v1, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v2, "shortcuts.xml"

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string/jumbo v3, "shortcuts.xml.backup"

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Ljava/io/File;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string/jumbo p1, "shortcuts.xml.reservecopy"

    .line 32
    .line 33
    .line 34
    invoke-direct {v3, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance p0, Lcom/android/server/pm/ResilientAtomicFile;

    .line 38
    .line 39
    const-string/jumbo v5, "user shortcut"

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/16 v4, 0x1f9

    .line 44
    .line 45
    move-object v0, p0

    .line 46
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    .line 47
    .line 48
    .line 49
    return-object p0
.end method

.method public final getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/pm/ShortcutService;->mLastLockedUser:I

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const-string v1, "User still locked"

    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    iput p1, p0, Lcom/android/server/pm/ShortcutService;->mLastLockedUser:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/android/server/pm/ShortcutService;->mLastLockedUser:I

    .line 22
    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/server/pm/ShortcutUser;

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    new-instance v0, Lcom/android/server/pm/ShortcutUser;

    .line 40
    .line 41
    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->checkPackageChanges(I)V

    .line 50
    .line 51
    .line 52
    :cond_3
    return-object v0
.end method

.method public final handleLocaleChanged(Z)V
    .locals 4

    .line 1
    const/16 v0, -0x2710

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;

    .line 14
    .line 15
    invoke-direct {v3, p1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda11;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    .line 20
    .line 21
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :catchall_1
    move-exception p0

    .line 29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    throw p0
.end method

.method public final handleOnUidStateChanged(II)V
    .locals 5

    .line 1
    const-string/jumbo v0, "shortcutHandleOnUidStateChanged"

    .line 2
    .line 3
    .line 4
    const-wide/32 v1, 0x80000

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x5

    .line 19
    if-gt p2, v3, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService;->mUidLastForegroundElapsedTime:Landroid/util/SparseLongArray;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectElapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-virtual {p2, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0
.end method

.method public final handlePackageRemoved(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "handlePackageRemoved: %s user=%d"

    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "ShortcutService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/ShortcutService;->cleanUpPackageForAllLoadedUsers(ILjava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final handleStopUser(I)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ShortcutService"

    .line 6
    .line 7
    const-string v1, "handleStopUser: user="

    .line 8
    .line 9
    invoke-static {p1, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const-string/jumbo v0, "shortcutHandleStopUser"

    .line 13
    .line 14
    .line 15
    const-wide/32 v1, 0x80000

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->unloadUserLocked(I)V

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 28
    .line 29
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {p0, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 34
    .line 35
    .line 36
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :catchall_1
    move-exception p0

    .line 45
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    :try_start_4
    throw p0

    .line 47
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    throw p0
.end method

.method public final hasShareTargets(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "android.permission.MANAGE_APP_PREDICTIONS"

    .line 5
    .line 6
    const-string v0, "hasShareTargets"

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p1

    .line 21
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object p2, p0, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    xor-int/lit8 p0, p0, 0x1

    .line 42
    .line 43
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    return p0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    :try_start_4
    throw p0

    .line 51
    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    throw p0
.end method

.method public hasShortcutHostPermissionInner(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    monitor-exit v0

    .line 18
    return p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    monitor-exit v0

    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public injectApplicationInfoWithUninstalled(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const/4 v4, 0x3

    .line 12
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 13
    .line 14
    const-wide/32 v6, 0x200c2200

    .line 15
    .line 16
    .line 17
    invoke-interface {v5, p1, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    :try_start_1
    const-string p2, "ShortcutService"

    .line 32
    .line 33
    const-string v5, "RemoteException"

    .line 34
    .line 35
    invoke-static {p2, v5, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0

    .line 46
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public injectBinderCallingPid()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/content/pm/IShortcutService$Stub;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public injectBinderCallingUid()I
    .locals 0

    .line 1
    invoke-static {}, Landroid/content/pm/IShortcutService$Stub;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public injectChooserActivity()Landroid/content/ComponentName;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mChooserActivity:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x10402f5

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService;->mChooserActivity:Landroid/content/ComponentName;

    .line 23
    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mChooserActivity:Landroid/content/ComponentName;

    .line 25
    .line 26
    return-object p0
.end method

.method public injectCurrentTimeMillis()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public injectDipToPixel(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    float-to-int p0, p0

    .line 18
    return p0
.end method

.method public injectElapsedRealtime()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public injectGetActivityInfoWithMetadataWithUninstalled(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const/4 v4, 0x6

    .line 12
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 13
    .line 14
    const-wide/32 v6, 0x200c2280

    .line 15
    .line 16
    .line 17
    invoke-interface {v5, p1, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    :try_start_1
    const-string p2, "ShortcutService"

    .line 32
    .line 33
    const-string v5, "RemoteException"

    .line 34
    .line 35
    invoke-static {p2, v5, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    return-object p0

    .line 46
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public final injectGetDefaultMainActivity(ILjava/lang/String;)Landroid/content/ComponentName;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/16 v2, 0xb

    .line 8
    .line 9
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v4, "android.intent.action.MAIN"

    .line 12
    .line 13
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v4, "android.intent.category.LAUNCHER"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {p0, v3, p2, v4, p1}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p2, 0x0

    .line 34
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 39
    .line 40
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 43
    .line 44
    .line 45
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 47
    .line 48
    .line 49
    return-object v4

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public injectGetHomeRoleHolderAsUser(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 2
    .line 3
    const-string v0, "android.app.role.HOME"

    .line 4
    .line 5
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/String;

    .line 27
    .line 28
    :goto_0
    return-object p0
.end method

.method public final injectGetPackageUid(ILjava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 6
    .line 7
    const-wide/32 v2, 0x200c2200

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, p2, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    const-string p1, "ShortcutService"

    .line 22
    .line 23
    const-string p2, "RemoteException"

    .line 24
    .line 25
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    const/4 p0, -0x1

    .line 32
    return p0

    .line 33
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public injectGetPackagesWithUninstalled(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    const-wide/32 v0, 0x200c2200

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final injectGetResourcesForApplicationAsUser(ILjava/lang/String;)Landroid/content/res/Resources;
    .locals 9

    .line 1
    const-string v0, "Resources of package "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const/16 v5, 0x9

    .line 14
    .line 15
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 18
    .line 19
    .line 20
    move-result-object v7

    .line 21
    const/4 v8, 0x0

    .line 22
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v6, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 38
    .line 39
    .line 40
    return-object p1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    :try_start_1
    const-string v6, "ShortcutService"

    .line 44
    .line 45
    new-instance v7, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p2, " for user "

    .line 54
    .line 55
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, " not found"

    .line 62
    .line 63
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {v6, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 77
    .line 78
    .line 79
    const/4 p0, 0x0

    .line 80
    return-object p0

    .line 81
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public injectHasAccessShortcutsPermission(II)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.ACCESS_SHORTCUTS"

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public injectHasUnlimitedShortcutsApiCallsPermission(II)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.UNLIMITED_SHORTCUTS_API_CALLS"

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public injectIsActivityEnabledAndExported(Landroid/content/ComponentName;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/16 v2, 0xd

    .line 8
    .line 9
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    .line 10
    .line 11
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-lez p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 32
    .line 33
    .line 34
    return p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public injectIsLowRamDevice()Z
    .locals 0

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final injectIsMainActivity(ILandroid/content/ComponentName;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/pm/ShortcutService;->sIsEmergencyMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const/4 v0, 0x0

    .line 18
    const/16 v4, 0xc

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    :try_start_0
    const-string/jumbo p1, "null activity detected"

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 30
    .line 31
    .line 32
    return v0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :try_start_1
    const-string v5, "android.__dummy__"

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :cond_2
    :try_start_2
    new-instance v5, Landroid/content/Intent;

    .line 52
    .line 53
    const-string v6, "android.intent.action.MAIN"

    .line 54
    .line 55
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v6, "android.intent.category.LAUNCHER"

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {p0, v5, v6, p2, p1}, Lcom/android/server/pm/ShortcutService;->queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    if-lez p1, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move v1, v0

    .line 79
    :goto_0
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 80
    .line 81
    .line 82
    return v1

    .line 83
    :goto_1
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public injectPackageInfoWithUninstalled(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x2

    .line 13
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 14
    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    const/high16 v7, 0x8000000

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v7, 0x0

    .line 21
    :goto_0
    const v8, 0x200c2200

    .line 22
    .line 23
    .line 24
    or-int/2addr v7, v8

    .line 25
    int-to-long v7, v7

    .line 26
    invoke-interface {v6, p1, v7, v8, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    move v4, v5

    .line 36
    :cond_1
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 37
    .line 38
    .line 39
    return-object p1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    :try_start_1
    const-string p2, "ShortcutService"

    .line 44
    .line 45
    const-string v6, "RemoteException"

    .line 46
    .line 47
    invoke-static {p2, v6, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    if-eqz p3, :cond_2

    .line 54
    .line 55
    move v4, v5

    .line 56
    :cond_2
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return-object p0

    .line 61
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    if-eqz p3, :cond_3

    .line 65
    .line 66
    move v4, v5

    .line 67
    :cond_3
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/pm/ShortcutService;->logDurationStat(IJ)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method

.method public final injectPostToHandler(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final injectPostToHandlerDebounced(Ljava/lang/Object;Ljava/lang/Runnable;)V
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
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    const-wide/16 v1, 0x64

    .line 18
    .line 19
    invoke-virtual {p0, p2, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public injectRegisterRoleHoldersListener(Landroid/app/role/OnRoleHoldersChangedListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 10
    .line 11
    invoke-virtual {v0, p0, p1, v1}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, -0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-interface {p0, p1, p2, v0, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :catch_0
    return-void
.end method

.method public injectShortcutManagerConstants()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v0, "shortcut_manager_constants"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public injectShouldPerformVerification()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public injectSystemDataPath()Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public injectUptimeMillis()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public injectUserDataPath(I)Ljava/io/File;
    .locals 1

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string/jumbo v0, "shortcut_service"

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final isCallerSystem()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x3e8

    .line 6
    .line 7
    invoke-static {p0, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isPackageInstalled(ILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final isRequestPinItemSupported(II)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, p1, :cond_2

    .line 17
    .line 18
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->getRequestPinConfirmationActivity(II)Landroid/util/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    throw p0

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 43
    .line 44
    const-string p1, "Invalid user-ID"

    .line 45
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public final isUidForegroundLocked(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUidState:Landroid/util/SparseIntArray;

    .line 8
    .line 9
    const/16 v2, 0x14

    .line 10
    .line 11
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x5

    .line 16
    if-gt v0, v2, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-gt p0, v2, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 v1, 0x0

    .line 29
    :goto_0
    return v1
.end method

.method public final isUserUnlockedL(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public final loadBaseStateLocked()V
    .locals 9

    .line 1
    const-string v0, "Loading from "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Lcom/android/server/pm/ResilientAtomicFile;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :try_start_0
    sget-boolean v4, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    const-string v5, "ShortcutService"

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v1, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 26
    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 42
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_6

    .line 47
    .line 48
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    :cond_1
    :goto_1
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const/4 v7, 0x1

    .line 57
    if-eq v6, v7, :cond_7

    .line 58
    .line 59
    const/4 v8, 0x2

    .line 60
    if-eq v6, v8, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    if-ne v6, v7, :cond_3

    .line 72
    .line 73
    const-string/jumbo v6, "root"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_1

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v3, "Invalid root tag: "

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catch_0
    move-exception v2

    .line 107
    goto :goto_3

    .line 108
    :cond_3
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    const v7, -0x418aefa

    .line 113
    .line 114
    .line 115
    if-eq v6, v7, :cond_4

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    const-string v6, "last_reset_time"

    .line 119
    .line 120
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-eqz v6, :cond_5

    .line 125
    .line 126
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 127
    .line 128
    const-string/jumbo v7, "value"

    .line 129
    .line 130
    .line 131
    invoke-static {v4, v7, v2, v3}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 132
    .line 133
    .line 134
    move-result-wide v7

    .line 135
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v7, "Invalid tag: "

    .line 145
    .line 146
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_6
    new-instance v2, Ljava/io/FileNotFoundException;

    .line 161
    .line 162
    iget-object v3, v1, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 163
    .line 164
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    :goto_3
    :try_start_4
    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->loadBaseStateLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :catch_1
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->updateTimesLocked()V

    .line 186
    .line 187
    .line 188
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 189
    .line 190
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :catchall_1
    move-exception v0

    .line 199
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 200
    .line 201
    .line 202
    :goto_5
    throw p0
.end method

.method public final loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v1, p2, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    move-object p2, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-static {p2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :goto_1
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eq v2, v3, :cond_f

    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    if-eq v2, v4, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    sget-boolean v6, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 44
    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    filled-new-array {v6, v2, v5}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v6, "depth=%d type=%d name=%s"

    .line 60
    .line 61
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string v6, "ShortcutService"

    .line 66
    .line 67
    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_2
    if-ne p2, v3, :cond_e

    .line 71
    .line 72
    const-string/jumbo v2, "user"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_e

    .line 80
    .line 81
    new-instance p2, Lcom/android/server/pm/ShortcutUser;

    .line 82
    .line 83
    invoke-direct {p2, p0, p1}, Lcom/android/server/pm/ShortcutUser;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    .line 84
    .line 85
    .line 86
    :try_start_0
    const-string v2, "locales"

    .line 87
    .line 88
    invoke-interface {v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iput-object v2, p2, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 93
    .line 94
    const-string v2, "last-app-scan-time2"

    .line 95
    .line 96
    const-wide/16 v5, 0x0

    .line 97
    .line 98
    invoke-static {v1, v2, v5, v6}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    .line 99
    .line 100
    .line 101
    move-result-wide v7

    .line 102
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v9

    .line 106
    cmp-long v2, v7, v9

    .line 107
    .line 108
    if-gez v2, :cond_3

    .line 109
    .line 110
    move-wide v5, v7

    .line 111
    :cond_3
    iput-wide v5, p2, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    .line 112
    .line 113
    const-string v2, "last-app-scan-fp"

    .line 114
    .line 115
    invoke-interface {v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    iput-object v2, p2, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    .line 120
    .line 121
    const-string/jumbo v2, "restore-from-fp"

    .line 122
    .line 123
    .line 124
    invoke-interface {v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iput-object v2, p2, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    .line 129
    .line 130
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    const/4 v5, 0x0

    .line 135
    move v6, v5

    .line 136
    :goto_2
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-eq v7, v3, :cond_c

    .line 141
    .line 142
    const/4 v8, 0x3

    .line 143
    if-ne v7, v8, :cond_4

    .line 144
    .line 145
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    if-le v8, v2, :cond_c

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :catch_0
    move-exception p0

    .line 153
    goto/16 :goto_8

    .line 154
    .line 155
    :cond_4
    :goto_3
    if-eq v7, v4, :cond_5

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    add-int/lit8 v9, v2, 0x1

    .line 167
    .line 168
    if-ne v7, v9, :cond_b

    .line 169
    .line 170
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    const v10, -0x4457a875

    .line 175
    .line 176
    .line 177
    if-eq v9, v10, :cond_7

    .line 178
    .line 179
    const v10, -0x301acbba

    .line 180
    .line 181
    .line 182
    if-eq v9, v10, :cond_6

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_6
    const-string/jumbo v9, "package"

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    if-eqz v9, :cond_8

    .line 193
    .line 194
    move v9, v5

    .line 195
    goto :goto_5

    .line 196
    :cond_7
    const-string v9, "launcher-pins"

    .line 197
    .line 198
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v9

    .line 202
    if-eqz v9, :cond_8

    .line 203
    .line 204
    move v9, v3

    .line 205
    goto :goto_5

    .line 206
    :cond_8
    :goto_4
    const/4 v9, -0x1

    .line 207
    :goto_5
    if-eqz v9, :cond_a

    .line 208
    .line 209
    if-eq v9, v3, :cond_9

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_9
    invoke-static {v1, p2, p1, p3}, Lcom/android/server/pm/ShortcutLauncher;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    iput-object p2, v6, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 217
    .line 218
    iget-object v7, p2, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 219
    .line 220
    iget v8, v6, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 221
    .line 222
    iget-object v9, v6, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 223
    .line 224
    invoke-static {v8, v9}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    :goto_6
    move v6, v3

    .line 232
    goto :goto_2

    .line 233
    :cond_a
    invoke-static {p2, v1, p3}, Lcom/android/server/pm/ShortcutPackage;->loadFromXml(Lcom/android/server/pm/ShortcutUser;Lcom/android/modules/utils/TypedXmlPullParser;Z)Lcom/android/server/pm/ShortcutPackage;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    iget-object v7, p2, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 238
    .line 239
    iget-object v8, v6, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_b
    :goto_7
    invoke-static {v7, v8}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_c
    if-eqz v6, :cond_d

    .line 250
    .line 251
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_1

    .line 255
    .line 256
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->injectUserDataPath(I)Ljava/io/File;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    new-instance v3, Ljava/io/File;

    .line 261
    .line 262
    const-string/jumbo v4, "packages"

    .line 263
    .line 264
    .line 265
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    new-instance v4, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda1;

    .line 269
    .line 270
    invoke-direct {v4, p0, p2, p3}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;Z)V

    .line 271
    .line 272
    .line 273
    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutUser;->forMainFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V

    .line 274
    .line 275
    .line 276
    new-instance v3, Ljava/io/File;

    .line 277
    .line 278
    const-string v4, "launchers"

    .line 279
    .line 280
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    new-instance v2, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;

    .line 284
    .line 285
    invoke-direct {v2, p2, p1, p3}, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ShortcutUser;IZ)V

    .line 286
    .line 287
    .line 288
    invoke-static {v3, v2}, Lcom/android/server/pm/ShortcutUser;->forMainFilesIn(Ljava/io/File;Ljava/util/function/Consumer;)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :goto_8
    new-instance p1, Lcom/android/server/pm/ShortcutService$InvalidFileFormatException;

    .line 294
    .line 295
    const-string p2, "Unable to parse file"

    .line 296
    .line 297
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    .line 299
    .line 300
    throw p1

    .line 301
    :cond_e
    invoke-static {p2, v5}, Lcom/android/server/pm/ShortcutService;->throwForInvalidTag(ILjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw v0

    .line 305
    :cond_f
    return-object p2
.end method

.method public final loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;
    .locals 7

    .line 1
    const-string v0, "Not found "

    .line 2
    .line 3
    const-string v1, "Loading from "

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_0
    sget-boolean v4, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    const-string v5, "ShortcutService"

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_3

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 37
    .line 38
    .line 39
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_1
    move-exception v0

    .line 61
    move-object v3, v1

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 64
    .line 65
    .line 66
    return-object v3

    .line 67
    :cond_2
    const/4 v0, 0x0

    .line 68
    :try_start_3
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/pm/ShortcutService;->loadUserInternal(ILjava/io/InputStream;Z)Lcom/android/server/pm/ShortcutUser;

    .line 69
    .line 70
    .line 71
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 73
    .line 74
    .line 75
    return-object p0

    .line 76
    :goto_2
    :try_start_4
    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->loadUserLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 80
    .line 81
    .line 82
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 84
    .line 85
    .line 86
    return-object p0

    .line 87
    :goto_3
    if-eqz v2, :cond_3

    .line 88
    .line 89
    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :catchall_1
    move-exception p1

    .line 94
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_4
    throw p0
.end method

.method public final logDurationStat(IJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onApplicationActive(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "android.permission.RESET_SHORTCUT_MANAGER_THROTTLING"

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcuts(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 44
    .line 45
    const-wide/16 p1, 0x0

    .line 46
    .line 47
    iput-wide p1, p0, Lcom/android/server/pm/ShortcutPackage;->mLastResetTime:J

    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7d0

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
    new-instance v0, Ljava/lang/SecurityException;

    .line 13
    .line 14
    const-string v1, "Caller must be shell"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    :try_start_0
    new-instance v3, Lcom/android/server/pm/ShortcutService$MyShellCommand;

    .line 25
    .line 26
    move-object v0, p0

    .line 27
    invoke-direct {v3, p0}, Lcom/android/server/pm/ShortcutService$MyShellCommand;-><init>(Lcom/android/server/pm/ShortcutService;)V

    .line 28
    .line 29
    .line 30
    move-object v4, p0

    .line 31
    move-object v5, p1

    .line 32
    move-object v6, p2

    .line 33
    move-object v7, p3

    .line 34
    move-object v8, p4

    .line 35
    move-object/from16 v9, p5

    .line 36
    .line 37
    move-object/from16 v10, p6

    .line 38
    .line 39
    invoke-virtual/range {v3 .. v10}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v3, 0x0

    .line 44
    move-object/from16 v4, p6

    .line 45
    .line 46
    invoke-virtual {v4, v0, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public final openIconFileForWrite(ILandroid/content/pm/ShortcutInfo;)Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 34
    .line 35
    const-string p1, "Unable to create directory "

    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide p0

    .line 49
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const/4 p1, 0x0

    .line 54
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    if-nez p1, :cond_2

    .line 60
    .line 61
    move-object v1, p0

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const-string v1, "_"

    .line 64
    .line 65
    invoke-static {p1, p0, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :goto_2
    const-string v2, ".png"

    .line 70
    .line 71
    invoke-static {p2, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    new-instance v1, Ljava/io/File;

    .line 76
    .line 77
    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_3

    .line 85
    .line 86
    new-instance p0, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;

    .line 87
    .line 88
    invoke-direct {p0, v1}, Lcom/android/server/pm/ShortcutService$FileOutputStreamWithPath;-><init>(Ljava/io/File;)V

    .line 89
    .line 90
    .line 91
    return-object p0

    .line 92
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 93
    .line 94
    goto :goto_1
.end method

.method public final openIconFileForWriteSmartSwitch(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->getUserBitmapFilePath(I)Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const-string p1, "ShortcutService"

    .line 16
    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p2, "Unable to create directory "

    .line 35
    .line 36
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    new-instance p0, Ljava/io/IOException;

    .line 50
    .line 51
    invoke-static {v0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_1
    :goto_0
    new-instance p0, Ljava/io/File;

    .line 60
    .line 61
    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_2

    .line 69
    .line 70
    new-instance p1, Ljava/io/FileOutputStream;

    .line 71
    .line 72
    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v0, "Unable to create file - already exists "

    .line 79
    .line 80
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    new-instance p1, Ljava/io/IOException;

    .line 94
    .line 95
    invoke-static {p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method

.method public final packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V
    .locals 8

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;

    .line 5
    .line 6
    iget v3, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 7
    .line 8
    iget-object v5, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v0, p0, v5, v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutService;->injectPostToHandlerDebounced(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->removeNonKeyFields(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-static {p3}, Lcom/android/server/pm/ShortcutService;->removeNonKeyFields(Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    new-instance p2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;

    .line 29
    .line 30
    move-object v1, p2

    .line 31
    move-object v2, p0

    .line 32
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/pm/ShortcutService;ILjava/util/List;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final pushDynamicShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p1, p3}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-static {p3}, Lcom/android/server/pm/ShortcutPackage;->ensureNotImmutable(Landroid/content/pm/ShortcutInfo;)V

    .line 31
    .line 32
    .line 33
    const/4 p3, 0x1

    .line 34
    new-array p3, p3, [Landroid/content/pm/ShortcutInfo;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    aput-object p2, p3, v2

    .line 38
    .line 39
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasRank()Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-nez p3, :cond_0

    .line 51
    .line 52
    invoke-virtual {p2, v2}, Landroid/content/pm/ShortcutInfo;->setRank(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :cond_0
    :goto_0
    new-instance p3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    invoke-direct {p3, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v2}, Landroid/content/pm/ShortcutInfo;->setImplicitRank(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p2, v2, v2}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->setRankChanged()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2, v0}, Lcom/android/server/pm/ShortcutPackage;->pushDynamicShortcut(Landroid/content/pm/ShortcutInfo;Ljava/util/List;)Z

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    if-eqz p3, :cond_2

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-eqz p3, :cond_1

    .line 87
    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 90
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    check-cast p3, Landroid/content/pm/ShortcutInfo;

    .line 95
    .line 96
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    const/4 p3, 0x0

    .line 105
    :goto_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 109
    .line 110
    .line 111
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 113
    .line 114
    .line 115
    iget-object p3, p0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 116
    .line 117
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p1, p3, p2}, Lcom/android/server/pm/ShortcutPackage;->reportShortcutUsed(Landroid/app/usage/UsageStatsManagerInternal;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    throw p0
.end method

.method public final queryActivities(ILandroid/content/Intent;Z)Ljava/util/List;
    .locals 4

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0x200c2200

    invoke-virtual {v2, p2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p2, :cond_2

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_INSTALLED:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;

    invoke-interface {p2, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 9
    new-instance v0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/pm/ShortcutService;I)V

    invoke-interface {p2, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    if-eqz p3, :cond_1

    .line 10
    sget-object p0, Lcom/android/server/pm/ShortcutService;->ACTIVITY_NOT_EXPORTED:Lcom/android/server/pm/ShortcutService$1;

    invoke-interface {p2, p0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_1
    return-object p2

    .line 11
    :cond_2
    :goto_0
    sget-object p0, Lcom/android/server/pm/ShortcutService;->EMPTY_RESOLVE_INFO:Ljava/util/List;

    return-object p0

    :catchall_0
    move-exception p0

    .line 12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 13
    throw p0
.end method

.method public queryActivities(Landroid/content/Intent;Ljava/lang/String;Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/server/pm/ShortcutService;->queryActivities(ILandroid/content/Intent;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final removeAllDynamicShortcuts(Ljava/lang/String;I)V
    .locals 9

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance v7, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v8, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v8

    .line 12
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance v2, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-direct {v2, p2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v3, 0x4

    .line 28
    const/4 v6, 0x0

    .line 29
    move-object v0, p1

    .line 30
    move-object v1, v7

    .line 31
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    new-instance v0, Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->addShortcutIdsToSet(Landroid/util/ArraySet;Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Landroid/util/ArraySet;

    .line 47
    .line 48
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-static {v1, v2}, Lcom/android/server/pm/ShortcutService;->addShortcutIdsToSet(Landroid/util/ArraySet;Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1, p2, p1}, Lcom/android/server/pm/ShortcutService;->prepareChangedShortcuts(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0
.end method

.method public final removeDynamicShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .locals 12

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "shortcutIds must be provided"

    .line 5
    .line 6
    .line 7
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    const/4 v8, 0x1

    .line 28
    sub-int/2addr p3, v8

    .line 29
    const/4 v1, 0x0

    .line 30
    move-object v9, v1

    .line 31
    move-object v10, v9

    .line 32
    :goto_0
    if-ltz p3, :cond_4

    .line 33
    .line 34
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    move-object v11, v1

    .line 45
    check-cast v11, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, v11}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_0
    const/4 v3, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    move-object v1, p1

    .line 59
    move-object v2, v11

    .line 60
    move v5, v8

    .line 61
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    if-nez v9, :cond_1

    .line 68
    .line 69
    new-instance v9, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_3

    .line 77
    :cond_1
    :goto_1
    invoke-virtual {p1, v11}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    if-nez v10, :cond_3

    .line 86
    .line 87
    new-instance v10, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .line 91
    .line 92
    :cond_3
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :goto_2
    add-int/lit8 p3, p3, -0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 99
    .line 100
    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {p0, p1, v9, v10}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    throw p0
.end method

.method public final removeLongLivedShortcuts(Ljava/lang/String;Ljava/util/List;I)V
    .locals 17

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
    move/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual {v0, v3, v1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "shortcutIds must be provided"

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v4, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v4

    .line 21
    :try_start_0
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v3, v1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncludedWithIds(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v12, 0x1

    .line 36
    sub-int/2addr v3, v12

    .line 37
    const/4 v13, 0x0

    .line 38
    move-object v14, v13

    .line 39
    move-object v15, v14

    .line 40
    :goto_0
    if-ltz v3, :cond_5

    .line 41
    .line 42
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v5}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    move-object v11, v5

    .line 53
    check-cast v11, Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, v11}, Lcom/android/server/pm/ShortcutPackage;->isShortcutExistsAndVisibleToPublisher(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_0

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_0
    invoke-virtual {v1, v11}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-eqz v5, :cond_1

    .line 67
    .line 68
    new-instance v5, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-direct {v5, v6}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v11, v13, v5}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    const/4 v10, 0x0

    .line 78
    const/16 v16, 0x0

    .line 79
    .line 80
    const/4 v7, 0x0

    .line 81
    const/4 v8, 0x0

    .line 82
    const/4 v9, 0x1

    .line 83
    move-object v5, v1

    .line 84
    move-object v6, v11

    .line 85
    move-object v13, v11

    .line 86
    move/from16 v11, v16

    .line 87
    .line 88
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    if-eqz v5, :cond_3

    .line 93
    .line 94
    if-nez v15, :cond_2

    .line 95
    .line 96
    new-instance v15, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v15, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    goto :goto_3

    .line 104
    :cond_2
    :goto_1
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    if-nez v14, :cond_4

    .line 109
    .line 110
    new-instance v14, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v14, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    .line 114
    .line 115
    :cond_4
    invoke-virtual {v1, v13}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 123
    .line 124
    const/4 v13, 0x0

    .line 125
    goto :goto_0

    .line 126
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 127
    .line 128
    .line 129
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :goto_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    throw v0
.end method

.method public final reportShortcutUsed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    const-string/jumbo v0, "reportShortcutUsed: package "

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {p3, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const-string p0, "ShortcutService"

    .line 27
    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " doesn\'t have shortcut "

    .line 37
    .line 38
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    monitor-exit v1

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 57
    .line 58
    invoke-virtual {p3, p0, p2}, Lcom/android/server/pm/ShortcutPackage;->reportShortcutUsed(Landroid/app/usage/UsageStatsManagerInternal;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0
.end method

.method public final requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;III)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p7, p8}, Lcom/android/server/pm/ShortcutService;->injectHasAccessShortcutsPermission(II)Z

    .line 7
    .line 8
    .line 9
    move-result p7

    .line 10
    if-nez p7, :cond_1

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p8}, Lcom/android/server/pm/ShortcutService;->isUidForegroundLocked(I)Z

    .line 22
    .line 23
    .line 24
    move-result p7

    .line 25
    const-string p8, "Calling application must have a foreground activity or a foreground service"

    .line 26
    .line 27
    invoke-static {p7, p8}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    if-eqz p3, :cond_2

    .line 31
    .line 32
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p7

    .line 36
    invoke-virtual {p0, p2, p7}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 37
    .line 38
    .line 39
    move-result-object p7

    .line 40
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p8

    .line 44
    invoke-virtual {p7, p8}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p8

    .line 48
    if-eqz p8, :cond_2

    .line 49
    .line 50
    invoke-virtual {p8}, Landroid/content/pm/ShortcutInfo;->isVisibleToPublisher()Z

    .line 51
    .line 52
    .line 53
    move-result p8

    .line 54
    if-nez p8, :cond_2

    .line 55
    .line 56
    invoke-virtual {p3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p8

    .line 60
    invoke-virtual {p7, p8}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 61
    .line 62
    .line 63
    move-result-object p8

    .line 64
    invoke-static {p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    iget-object p8, p7, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    .line 68
    .line 69
    iget-object p8, p8, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 70
    .line 71
    const/4 p9, 0x0

    .line 72
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p8, p3, p9, v0}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 74
    .line 75
    .line 76
    const/4 p8, 0x2

    .line 77
    invoke-virtual {p3, p8}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p7, p3}, Lcom/android/server/pm/ShortcutPackage;->forceReplaceShortcutInner(Landroid/content/pm/ShortcutInfo;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p7}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 84
    .line 85
    .line 86
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object p8

    .line 90
    const/4 p9, 0x0

    .line 91
    invoke-virtual {p0, p7, p8, p9}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShortcutRequestPinProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 98
    .line 99
    move-object v1, p3

    .line 100
    move-object v2, p4

    .line 101
    move-object v3, p5

    .line 102
    move v4, p2

    .line 103
    move-object v5, p6

    .line 104
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->requestPinItemLocked(Landroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;ILandroid/content/IntentSender;)Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 110
    .line 111
    .line 112
    return p2

    .line 113
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    throw p0
.end method

.method public final requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 11

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "Shortcut must be enabled"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    move-object v4, p2

    .line 15
    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    xor-int/2addr v0, v1

    .line 20
    const-string v1, "Shortcut excluded from launcher cannot be pinned"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    const/4 v10, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    move-object v1, p0

    .line 37
    move-object v2, p1

    .line 38
    move v3, p4

    .line 39
    move-object v4, p2

    .line 40
    move-object v7, p3

    .line 41
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;III)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    move-object/from16 v1, p5

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final requestPinShortcutAsDisplay(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;IILcom/android/internal/infra/AndroidFuture;)V
    .locals 11

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "Shortcut must be enabled"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    move-object v4, p2

    .line 15
    invoke-virtual {p2, v0}, Landroid/content/pm/ShortcutInfo;->isExcludedFromSurfaces(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    xor-int/2addr v0, v1

    .line 20
    const-string v1, "Shortcut excluded from launcher cannot be pinned"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    move-object v1, p0

    .line 36
    move-object v2, p1

    .line 37
    move v3, p4

    .line 38
    move-object v4, p2

    .line 39
    move-object v7, p3

    .line 40
    move/from16 v10, p5

    .line 41
    .line 42
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/ShortcutService;->requestPinItem(Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/content/IntentSender;III)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    move-object/from16 v1, p6

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final rescanUpdatedPackagesLocked(IJ)V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 2
    .line 3
    const-string v1, "ShortcutService"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v3, "rescan updated package user="

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
    const-string v3, " last scanned="

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v6, v2, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    xor-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    new-instance v6, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;

    .line 52
    .line 53
    invoke-direct {v6, p0, v2, p1}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;I)V

    .line 54
    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    const-string v0, "forUpdatedPackages for user "

    .line 59
    .line 60
    const-string v7, ", lastScanTime="

    .line 61
    .line 62
    invoke-static {p1, v0, p2, p3, v7}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v7, " afterOta="

    .line 67
    .line 68
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getInstalledPackages(I)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    add-int/lit8 v7, v7, -0x1

    .line 90
    .line 91
    :goto_0
    if-ltz v7, :cond_5

    .line 92
    .line 93
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 98
    .line 99
    if-nez v5, :cond_2

    .line 100
    .line 101
    iget-wide v9, v8, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 102
    .line 103
    cmp-long v9, v9, p2

    .line 104
    .line 105
    if-ltz v9, :cond_4

    .line 106
    .line 107
    :cond_2
    sget-boolean v9, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 108
    .line 109
    if-eqz v9, :cond_3

    .line 110
    .line 111
    new-instance v9, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v10, "Found updated package "

    .line 114
    .line 115
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v10, " updateTime="

    .line 124
    .line 125
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-wide v10, v8, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 129
    .line 130
    invoke-static {v9, v10, v11, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 134
    .line 135
    invoke-virtual {v6, v8}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda22;->accept(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    add-int/lit8 v7, v7, -0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_5
    iput-wide v3, v2, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    .line 142
    .line 143
    sget-object p2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 144
    .line 145
    iput-object p2, v2, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public final resetThrottling()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x7d0

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 19
    .line 20
    const-string v0, "Caller must be system or shell"

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->resetThrottlingInner(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final resetThrottlingInner(I)V
    .locals 5

    .line 1
    const-string v0, "User "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const-string p0, "ShortcutService"

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, " is locked or not running"

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v2, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    add-int/lit8 v2, v2, -0x1

    .line 49
    .line 50
    :goto_0
    if-ltz v2, :cond_1

    .line 51
    .line 52
    iget-object v3, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/android/server/pm/ShortcutPackage;

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    iput v4, v3, Lcom/android/server/pm/ShortcutPackage;->mApiCallCount:I

    .line 62
    .line 63
    add-int/lit8 v2, v2, -0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 68
    .line 69
    .line 70
    const-string p0, "ShortcutService"

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, "ShortcutManager: throttling counter reset for user "

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    throw p0
.end method

.method public final restoreBitmapsFromBackupService(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "com.samsung.android.scloud.backup.lib.write"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :try_start_1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/ShortcutService;->openIconFileForWriteSmartSwitch(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    const/16 p1, 0x400

    .line 17
    .line 18
    :try_start_2
    new-array p1, p1, [B

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-lez p2, :cond_0

    .line 25
    .line 26
    const/4 p3, 0x0

    .line 27
    invoke-virtual {p0, p1, p3, p2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    .line 35
    .line 36
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_5

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    goto :goto_3

    .line 42
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :catchall_2
    move-exception p0

    .line 47
    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :goto_2
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 51
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 52
    .line 53
    .line 54
    goto :goto_4

    .line 55
    :catchall_3
    move-exception p1

    .line 56
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_4
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 60
    :catch_0
    :goto_5
    return-void
.end method

.method public saveBaseState()V
    .locals 7

    .line 1
    const-string v0, "Saving to "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->getBaseStateFile()Lcom/android/server/pm/ResilientAtomicFile;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    sget-boolean v2, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const-string v2, "ShortcutService"

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v1, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 19
    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_5

    .line 33
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 34
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 38
    .line 39
    .line 40
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 41
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    :try_start_4
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-interface {v2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v4, "root"

    .line 52
    .line 53
    .line 54
    invoke-interface {v2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    .line 56
    .line 57
    const-string v4, "last_reset_time"

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    invoke-interface {v2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    .line 78
    .line 79
    const-string/jumbo v5, "value"

    .line 80
    .line 81
    .line 82
    invoke-interface {v2, v0, v5, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    .line 84
    .line 85
    invoke-interface {v2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    .line 87
    .line 88
    :goto_1
    const-string/jumbo p0, "root"

    .line 89
    .line 90
    .line 91
    invoke-interface {v2, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    .line 93
    .line 94
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    .line 99
    .line 100
    goto :goto_4

    .line 101
    :catch_0
    move-exception p0

    .line 102
    move-object v0, v3

    .line 103
    goto :goto_3

    .line 104
    :catchall_1
    move-exception p0

    .line 105
    move-object v0, v3

    .line 106
    goto :goto_2

    .line 107
    :catchall_2
    move-exception p0

    .line 108
    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 109
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 110
    :catch_1
    move-exception p0

    .line 111
    :goto_3
    :try_start_7
    const-string v2, "ShortcutService"

    .line 112
    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v4, "Failed to write to file "

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v4, v1, Lcom/android/server/pm/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v0}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 136
    .line 137
    .line 138
    :goto_4
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :goto_5
    :try_start_8
    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 143
    .line 144
    .line 145
    goto :goto_6

    .line 146
    :catchall_3
    move-exception v0

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    :goto_6
    throw p0
.end method

.method public saveDirtyInfo()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ShortcutService"

    .line 6
    .line 7
    const-string/jumbo v1, "saveDirtyInfo"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const-wide/32 v0, 0x80000

    .line 23
    .line 24
    .line 25
    :try_start_0
    const-string/jumbo v2, "shortcutSaveDirtyInfo"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    .line 40
    .line 41
    iput-object v2, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    .line 42
    .line 43
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    add-int/lit8 v2, v2, -0x1

    .line 49
    .line 50
    :goto_0
    if-ltz v2, :cond_3

    .line 51
    .line 52
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/16 v5, -0x2710

    .line 63
    .line 64
    if-ne v3, v5, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveBaseState()V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_5

    .line 72
    :catch_0
    move-exception v2

    .line 73
    goto :goto_3

    .line 74
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ShortcutService;->saveUser(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :catchall_1
    move-exception v2

    .line 85
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    :goto_3
    :try_start_5
    const-string v3, "Exception in saveDirtyInfo"

    .line 88
    .line 89
    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :goto_4
    return-void

    .line 94
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 95
    .line 96
    .line 97
    throw p0
.end method

.method public final saveIconAndFixUpShortcutLocked(Lcom/android/server/pm/ShortcutPackage;Landroid/content/pm/ShortcutInfo;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_8

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->hasIconUri()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackageItem;->removeIcon(Landroid/content/pm/ShortcutInfo;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    .line 29
    .line 30
    .line 31
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    :try_start_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x1

    .line 45
    if-eq v4, v5, :cond_7

    .line 46
    .line 47
    const/4 v5, 0x2

    .line 48
    const/4 v6, 0x4

    .line 49
    if-eq v4, v5, :cond_5

    .line 50
    .line 51
    if-eq v4, v6, :cond_4

    .line 52
    .line 53
    const/4 v5, 0x5

    .line 54
    if-eq v4, v5, :cond_3

    .line 55
    .line 56
    const/4 p0, 0x6

    .line 57
    if-ne v4, p0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->setIconUri(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const p0, 0x8200

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    .line 71
    .line 72
    :try_start_3
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_2

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    :try_start_4
    invoke-static {}, Landroid/content/pm/ShortcutInfo;->getInvalidIconException()Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    throw p0

    .line 88
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    .line 89
    .line 90
    .line 91
    int-to-float v2, v3

    .line 92
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    const/high16 v4, 0x40000000    # 2.0f

    .line 97
    .line 98
    mul-float/2addr v3, v4

    .line 99
    const/high16 v4, 0x3f800000    # 1.0f

    .line 100
    .line 101
    add-float/2addr v3, v4

    .line 102
    mul-float/2addr v3, v2

    .line 103
    float-to-int v3, v3

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->setIconUri(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const p0, 0x8000

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 116
    .line 117
    .line 118
    :try_start_5
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_5
    :try_start_6
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    if-eqz p0, :cond_6

    .line 138
    .line 139
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResId()I

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo;->setIconResourceId(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, v6}, Landroid/content/pm/ShortcutInfo;->addFlags(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 147
    .line 148
    .line 149
    :try_start_7
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_6
    :try_start_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 157
    .line 158
    const-string p1, "Icon resource must reside in shortcut owner package"

    .line 159
    .line 160
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p0

    .line 164
    :cond_7
    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    .line 165
    .line 166
    .line 167
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 168
    .line 169
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    .line 170
    .line 171
    iget-object v4, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 172
    .line 173
    monitor-enter v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 174
    :try_start_9
    iget-object p1, p1, Lcom/android/server/pm/ShortcutPackageItem;->mShortcutBitmapSaver:Lcom/android/server/pm/ShortcutBitmapSaver;

    .line 175
    .line 176
    invoke-virtual {p1, p2, v3, v2, p0}, Lcom/android/server/pm/ShortcutBitmapSaver;->saveBitmapLocked(Landroid/content/pm/ShortcutInfo;ILandroid/graphics/Bitmap$CompressFormat;I)V

    .line 177
    .line 178
    .line 179
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 180
    :try_start_a
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 181
    .line 182
    .line 183
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :catchall_2
    move-exception p0

    .line 188
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 189
    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 190
    :goto_1
    :try_start_d
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->clearIcon()V

    .line 191
    .line 192
    .line 193
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 194
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    .line 196
    .line 197
    throw p0

    .line 198
    :cond_8
    :goto_3
    return-void
.end method

.method public final saveUser(I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "Saving to "

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/ShortcutService;->getUserFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :try_start_0
    sget-boolean v5, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    const-string v5, "ShortcutService"

    .line 16
    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    move-object v1, v0

    .line 35
    goto/16 :goto_c

    .line 36
    .line 37
    :catch_0
    move-exception v0

    .line 38
    move/from16 v6, p1

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_0
    :goto_0
    iget-object v5, v1, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v5
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 45
    .line 46
    .line 47
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 48
    move/from16 v6, p1

    .line 49
    .line 50
    :try_start_2
    invoke-virtual {v1, v4, v3, v6}, Lcom/android/server/pm/ShortcutService;->saveUserInternalLocked(Ljava/io/OutputStream;ZI)V

    .line 51
    .line 52
    .line 53
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    :try_start_3
    invoke-virtual {v2, v4}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/ShortcutService;->cleanupDanglingBitmapDirectoriesLocked(I)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :catch_1
    move-exception v0

    .line 62
    goto :goto_2

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    goto :goto_1

    .line 65
    :catchall_2
    move-exception v0

    .line 66
    move/from16 v6, p1

    .line 67
    .line 68
    :goto_1
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 69
    :try_start_5
    throw v0
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 70
    :goto_2
    :try_start_6
    const-string v5, "ShortcutService"

    .line 71
    .line 72
    new-instance v7, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v8, "Failed to write to file "

    .line 78
    .line 79
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v4}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 93
    .line 94
    .line 95
    :goto_3
    if-eqz v2, :cond_1

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    .line 98
    .line 99
    .line 100
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, v1, Lcom/android/server/pm/ShortcutService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 105
    .line 106
    move v2, v3

    .line 107
    move v4, v2

    .line 108
    move v5, v4

    .line 109
    :goto_4
    iget-object v6, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 110
    .line 111
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    const/4 v7, 0x1

    .line 116
    if-ge v2, v6, :cond_9

    .line 117
    .line 118
    iget-object v6, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 119
    .line 120
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Lcom/android/server/pm/ShortcutPackage;

    .line 125
    .line 126
    iget-object v8, v6, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 127
    .line 128
    monitor-enter v8

    .line 129
    :try_start_7
    iget-object v6, v6, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    xor-int/2addr v6, v7

    .line 136
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 137
    if-eqz v6, :cond_8

    .line 138
    .line 139
    add-int/lit8 v4, v4, 0x1

    .line 140
    .line 141
    iget-object v6, v0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 142
    .line 143
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    check-cast v6, Lcom/android/server/pm/ShortcutPackage;

    .line 148
    .line 149
    iget-object v14, v6, Lcom/android/server/pm/ShortcutPackageItem;->mPackageItemLock:Ljava/lang/Object;

    .line 150
    .line 151
    monitor-enter v14

    .line 152
    :try_start_8
    iget-object v7, v6, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    if-eqz v7, :cond_2

    .line 159
    .line 160
    monitor-exit v14

    .line 161
    move v8, v3

    .line 162
    goto :goto_9

    .line 163
    :catchall_3
    move-exception v0

    .line 164
    goto :goto_a

    .line 165
    :cond_2
    new-instance v15, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    new-instance v9, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;

    .line 171
    .line 172
    const/4 v7, 0x0

    .line 173
    invoke-direct {v9, v7}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda4;-><init>(I)V

    .line 174
    .line 175
    .line 176
    const/4 v11, 0x0

    .line 177
    const/4 v12, 0x0

    .line 178
    const/16 v10, 0x1b

    .line 179
    .line 180
    const/4 v13, 0x0

    .line 181
    move-object v7, v6

    .line 182
    move-object v8, v15

    .line 183
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 184
    .line 185
    .line 186
    move v7, v3

    .line 187
    move v8, v7

    .line 188
    :goto_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    if-ge v7, v9, :cond_7

    .line 193
    .line 194
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v9

    .line 198
    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 199
    .line 200
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    if-eqz v9, :cond_6

    .line 205
    .line 206
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    if-eqz v10, :cond_3

    .line 211
    .line 212
    goto :goto_8

    .line 213
    :cond_3
    move v10, v3

    .line 214
    :goto_6
    iget-object v11, v6, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    if-ge v10, v11, :cond_6

    .line 221
    .line 222
    iget-object v11, v6, Lcom/android/server/pm/ShortcutPackage;->mShareTargets:Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    check-cast v11, Lcom/android/server/pm/ShareTargetInfo;

    .line 229
    .line 230
    move v12, v3

    .line 231
    :goto_7
    iget-object v13, v11, Lcom/android/server/pm/ShareTargetInfo;->mCategories:[Ljava/lang/String;

    .line 232
    .line 233
    array-length v3, v13

    .line 234
    if-ge v12, v3, :cond_5

    .line 235
    .line 236
    aget-object v3, v13, v12

    .line 237
    .line 238
    invoke-interface {v9, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-nez v3, :cond_4

    .line 243
    .line 244
    add-int/lit8 v10, v10, 0x1

    .line 245
    .line 246
    const/4 v3, 0x0

    .line 247
    goto :goto_6

    .line 248
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 249
    .line 250
    const/4 v3, 0x0

    .line 251
    goto :goto_7

    .line 252
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 253
    .line 254
    :cond_6
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 255
    .line 256
    const/4 v3, 0x0

    .line 257
    goto :goto_5

    .line 258
    :cond_7
    monitor-exit v14

    .line 259
    :goto_9
    add-int/2addr v5, v8

    .line 260
    goto :goto_b

    .line 261
    :goto_a
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 262
    throw v0

    .line 263
    :cond_8
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 264
    .line 265
    const/4 v3, 0x0

    .line 266
    goto/16 :goto_4

    .line 267
    .line 268
    :catchall_4
    move-exception v0

    .line 269
    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 270
    throw v0

    .line 271
    :cond_9
    new-instance v2, Landroid/metrics/LogMaker;

    .line 272
    .line 273
    const/16 v3, 0x6b5

    .line 274
    .line 275
    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    iget v0, v0, Lcom/android/server/pm/ShortcutUser;->mUserId:I

    .line 283
    .line 284
    invoke-virtual {v3, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 289
    .line 290
    .line 291
    const/4 v0, 0x2

    .line 292
    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v0, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 301
    .line 302
    .line 303
    const/4 v0, 0x3

    .line 304
    invoke-virtual {v2, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :goto_c
    if-eqz v2, :cond_a

    .line 317
    .line 318
    :try_start_a
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 319
    .line 320
    .line 321
    goto :goto_d

    .line 322
    :catchall_5
    move-exception v0

    .line 323
    move-object v2, v0

    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 325
    .line 326
    .line 327
    :cond_a
    :goto_d
    throw v1
.end method

.method public final saveUserInternalLocked(Ljava/io/OutputStream;ZI)V
    .locals 8

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {v0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string/jumbo p3, "user"

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 35
    .line 36
    .line 37
    const-string/jumbo v1, "restore-from-fp"

    .line 38
    .line 39
    .line 40
    if-nez p2, :cond_1

    .line 41
    .line 42
    const-string v3, "locales"

    .line 43
    .line 44
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mKnownLocales:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v0, v3, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    const-string v3, "last-app-scan-time2"

    .line 50
    .line 51
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanTime:J

    .line 52
    .line 53
    invoke-static {v0, v3, v4, v5}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 54
    .line 55
    .line 56
    const-string v3, "last-app-scan-fp"

    .line 57
    .line 58
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mLastAppScanOsFingerprint:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0, v3, v4}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mRestoreFromOsFingerprint:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v0, v1, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v0, v1, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/4 v3, 0x0

    .line 86
    move v4, v3

    .line 87
    :goto_2
    if-ge v4, v1, :cond_4

    .line 88
    .line 89
    iget-object v5, p0, Lcom/android/server/pm/ShortcutUser;->mLaunchers:Landroid/util/ArrayMap;

    .line 90
    .line 91
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Lcom/android/server/pm/ShortcutPackageItem;

    .line 96
    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    iget v6, v5, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 100
    .line 101
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eq v6, v7, :cond_2

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutPackageItem;->waitForBitmapSaves()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v0, p2}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    .line 116
    .line 117
    .line 118
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 122
    .line 123
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    :goto_4
    if-ge v3, v1, :cond_7

    .line 128
    .line 129
    iget-object v4, p0, Lcom/android/server/pm/ShortcutUser;->mPackages:Landroid/util/ArrayMap;

    .line 130
    .line 131
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Lcom/android/server/pm/ShortcutPackageItem;

    .line 136
    .line 137
    if-eqz p2, :cond_6

    .line 138
    .line 139
    iget v5, v4, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    .line 140
    .line 141
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eq v5, v6, :cond_5

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackageItem;->waitForBitmapSaves()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v0, p2}, Lcom/android/server/pm/ShortcutPackageItem;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_6
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackageItem;->scheduleSave()V

    .line 156
    .line 157
    .line 158
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_7
    invoke-interface {v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    .line 163
    .line 164
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public final scheduleSaveInner(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ShortcutService"

    .line 6
    .line 7
    const-string v1, "Scheduling to save for "

    .line 8
    .line 9
    invoke-static {p1, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService;->mDirtyUserIds:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;

    .line 54
    .line 55
    iget p0, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    .line 56
    .line 57
    int-to-long v1, p0

    .line 58
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0
.end method

.method public final setDynamicShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v2

    .line 30
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutService;->fillInDefaultActivity(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    const/4 p3, 0x0

    .line 47
    invoke-virtual {p1, p3, p2}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(ILjava/util/List;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    monitor-exit v2

    .line 57
    return p3

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    new-instance v0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    invoke-direct {v0, v3}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    move v0, p3

    .line 73
    :goto_0
    if-ge v0, v1, :cond_1

    .line 74
    .line 75
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 80
    .line 81
    invoke-virtual {p0, v3, p3, p3}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    new-instance v5, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    invoke-direct {v5, v3}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;-><init>(I)V

    .line 96
    .line 97
    .line 98
    const/4 v7, 0x0

    .line 99
    const/4 v8, 0x0

    .line 100
    const/4 v6, 0x4

    .line 101
    const/4 v9, 0x0

    .line 102
    move-object v3, p1

    .line 103
    move-object v4, v0

    .line 104
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;IZ)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->deleteAllDynamicShortcuts()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    :goto_1
    if-ge p3, v1, :cond_2

    .line 112
    .line 113
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 118
    .line 119
    invoke-virtual {p1, v4}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 120
    .line 121
    .line 122
    add-int/lit8 p3, p3, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 126
    .line 127
    .line 128
    new-instance p3, Landroid/util/ArraySet;

    .line 129
    .line 130
    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-static {p3, v0}, Lcom/android/server/pm/ShortcutService;->addShortcutIdsToSet(Landroid/util/ArraySet;Ljava/util/List;)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Landroid/util/ArraySet;

    .line 137
    .line 138
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-static {v0, p2}, Lcom/android/server/pm/ShortcutService;->addShortcutIdsToSet(Landroid/util/ArraySet;Ljava/util/List;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p3, v0, v3, p1}, Lcom/android/server/pm/ShortcutService;->prepareChangedShortcuts(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Lcom/android/server/pm/ShortcutPackage;)Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 153
    .line 154
    .line 155
    const/4 p0, 0x1

    .line 156
    return p0

    .line 157
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    throw p0
.end method

.method public final throwIfUserLockedL(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "User "

    .line 11
    .line 12
    const-string v1, " is locked or not running"

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final unloadUserLocked(I)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "unloadUserLocked: user="

    .line 6
    .line 7
    .line 8
    const-string v1, "ShortcutService"

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutUser;->cancelAllInFlightTasks()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mUsers:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public updateConfigurationLocked(Ljava/lang/String;)Z
    .locals 8

    .line 1
    new-instance v0, Landroid/util/KeyValueListParser;

    .line 2
    .line 3
    const/16 v1, 0x2c

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    move p1, v2

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string v3, "ShortcutService"

    .line 17
    .line 18
    const-string v4, "Bad shortcut manager settings"

    .line 19
    .line 20
    invoke-static {v3, v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    move p1, v1

    .line 24
    :goto_0
    const-string/jumbo v3, "save_delay_ms"

    .line 25
    .line 26
    .line 27
    const-wide/16 v4, 0xbb8

    .line 28
    .line 29
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    long-to-int v3, v3

    .line 34
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iput v3, p0, Lcom/android/server/pm/ShortcutService;->mSaveDelayMillis:I

    .line 39
    .line 40
    const-string/jumbo v3, "reset_interval_sec"

    .line 41
    .line 42
    .line 43
    const-wide/32 v4, 0x15180

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    const-wide/16 v5, 0x3e8

    .line 51
    .line 52
    mul-long/2addr v3, v5

    .line 53
    const-wide/16 v5, 0x1

    .line 54
    .line 55
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    iput-wide v3, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    .line 60
    .line 61
    const-string/jumbo v3, "max_updates_per_interval"

    .line 62
    .line 63
    .line 64
    const-wide/16 v4, 0xa

    .line 65
    .line 66
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    long-to-int v3, v3

    .line 71
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    iput v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxUpdatesPerInterval:I

    .line 76
    .line 77
    const-string/jumbo v3, "max_shortcuts"

    .line 78
    .line 79
    .line 80
    const-wide/16 v4, 0xf

    .line 81
    .line 82
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    long-to-int v3, v3

    .line 87
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    iput v3, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcuts:I

    .line 92
    .line 93
    const-string/jumbo v3, "max_shortcuts_per_app"

    .line 94
    .line 95
    .line 96
    const-wide/16 v4, 0x64

    .line 97
    .line 98
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 99
    .line 100
    .line 101
    move-result-wide v6

    .line 102
    long-to-int v3, v6

    .line 103
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    iput v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxShortcutsPerApp:I

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectIsLowRamDevice()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_0

    .line 114
    .line 115
    const-string/jumbo v1, "max_icon_dimension_dp_lowram"

    .line 116
    .line 117
    .line 118
    const-wide/16 v6, 0x30

    .line 119
    .line 120
    invoke-virtual {v0, v1, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 121
    .line 122
    .line 123
    move-result-wide v6

    .line 124
    :goto_1
    long-to-int v1, v6

    .line 125
    goto :goto_2

    .line 126
    :cond_0
    const-string/jumbo v1, "max_icon_dimension_dp"

    .line 127
    .line 128
    .line 129
    const-wide/16 v6, 0x60

    .line 130
    .line 131
    invoke-virtual {v0, v1, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 132
    .line 133
    .line 134
    move-result-wide v6

    .line 135
    goto :goto_1

    .line 136
    :goto_2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->injectDipToPixel(I)I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    iput v1, p0, Lcom/android/server/pm/ShortcutService;->mMaxIconDimension:I

    .line 145
    .line 146
    const-string v1, "icon_format"

    .line 147
    .line 148
    sget-object v2, Lcom/android/server/pm/ShortcutService;->DEFAULT_ICON_PERSIST_FORMAT:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {v1}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 159
    .line 160
    const-string v1, "icon_quality"

    .line 161
    .line 162
    invoke-virtual {v0, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    .line 163
    .line 164
    .line 165
    move-result-wide v0

    .line 166
    long-to-int v0, v0

    .line 167
    iput v0, p0, Lcom/android/server/pm/ShortcutService;->mIconPersistQuality:I

    .line 168
    .line 169
    return p1
.end method

.method public updatePackageShortcutForTest(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutForTest(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p4, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final updateShortcuts(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;I)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->verifyCaller(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingPid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService;->injectHasUnlimitedShortcutsApiCallsPermission(II)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v4

    .line 36
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p3, p1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->ensureImmutableShortcutsNotIncluded(Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Lcom/android/server/pm/ShortcutPackage;->ensureNoBitmapIconIfShortcutIsLongLived(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lcom/android/server/pm/ShortcutPackage;->ensureAllShortcutsVisibleToLauncher(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    const/4 p3, 0x2

    .line 53
    invoke-virtual {p1, p3, p2}, Lcom/android/server/pm/ShortcutPackage;->enforceShortcutCountsBeforeOperation(ILjava/util/List;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutPackage;->tryApiCall(Z)Z

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    const/4 v0, 0x0

    .line 61
    if-nez p3, :cond_0

    .line 62
    .line 63
    monitor-exit v4

    .line 64
    return v0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    new-instance p3, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;

    .line 68
    .line 69
    const/4 v5, 0x1

    .line 70
    invoke-direct {p3, v5}, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda14;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p3}, Lcom/android/server/pm/ShortcutPackage;->forEachShortcutMutate(Ljava/util/function/Consumer;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->assignImplicitRanks(Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    move p3, v0

    .line 80
    :goto_0
    const/4 v5, 0x0

    .line 81
    if-ge p3, v1, :cond_1

    .line 82
    .line 83
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Landroid/content/pm/ShortcutInfo;

    .line 88
    .line 89
    invoke-virtual {p0, v6, v3, v0}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    new-instance v8, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;

    .line 97
    .line 98
    invoke-direct {v8, p0, v6, p1, v2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/ShortcutInfo;Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v7, v5, v8}, Lcom/android/server/pm/ShortcutPackage;->mutateShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Ljava/util/function/Consumer;)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 p3, p3, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 108
    .line 109
    .line 110
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-eqz p2, :cond_2

    .line 116
    .line 117
    move-object v2, v5

    .line 118
    :cond_2
    invoke-virtual {p0, p1, v2, v5}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 122
    .line 123
    .line 124
    return v3

    .line 125
    :goto_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    throw p0
.end method

.method public final updateTimesLocked()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectCurrentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v4, v2, v4

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-gez v4, :cond_1

    .line 21
    .line 22
    const-wide/32 v4, 0x54a48e00

    .line 23
    .line 24
    .line 25
    cmp-long v4, v0, v4

    .line 26
    .line 27
    if-ltz v4, :cond_2

    .line 28
    .line 29
    const-string v4, "ShortcutService"

    .line 30
    .line 31
    const-string v5, "Clock rewound"

    .line 32
    .line 33
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-wide v4, p0, Lcom/android/server/pm/ShortcutService;->mResetInterval:J

    .line 38
    .line 39
    add-long v6, v2, v4

    .line 40
    .line 41
    cmp-long v6, v6, v0

    .line 42
    .line 43
    if-gtz v6, :cond_2

    .line 44
    .line 45
    rem-long v6, v2, v4

    .line 46
    .line 47
    div-long/2addr v0, v4

    .line 48
    mul-long/2addr v0, v4

    .line 49
    add-long/2addr v0, v6

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move-wide v0, v2

    .line 52
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService;->mRawLastResetTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    .line 54
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 55
    .line 56
    .line 57
    cmp-long v0, v2, v0

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    const/16 v0, -0x2710

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService;->scheduleSaveInner(I)V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method public final verifyCaller(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "packageName"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->isCallerSystem()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne v1, p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->injectGetPackageUid(ILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ne v1, v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/ShortcutService;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 p1, 0x1

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    move p0, p1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    :goto_0
    xor-int/2addr p0, p1

    .line 47
    const-string p1, "Ephemeral apps can\'t use ShortcutManager"

    .line 48
    .line 49
    invoke-static {p0, p1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 54
    .line 55
    const-string p1, "Calling package name mismatch"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 62
    .line 63
    const-string p1, "Invalid user-ID"

    .line 64
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectBinderCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eq p1, v0, :cond_2

    .line 27
    .line 28
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 56
    .line 57
    const-string p1, "User-ID in shortcut doesn\'t match the caller"

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_2
    :goto_0
    return-void

    .line 64
    :cond_3
    const/4 p0, -0x1

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string p1, ""

    .line 70
    .line 71
    const-string p2, "109824443"

    .line 72
    .line 73
    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const p1, 0x534e4554

    .line 78
    .line 79
    .line 80
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    new-instance p0, Ljava/lang/SecurityException;

    .line 84
    .line 85
    const-string p1, "Shortcut package name mismatch"

    .line 86
    .line 87
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public final verifyShortcutInfoPackages(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/ShortcutService;->verifyShortcutInfoPackage(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public final verifyStates()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutService;->injectShouldPerformVerification()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method public waitForBitmapSavesForTest()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    invoke-direct {v1, v2}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

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

.method public final wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    new-instance p2, Ljava/lang/RuntimeException;

    .line 4
    .line 5
    const-string v0, "Stacktrace"

    .line 6
    .line 7
    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService;->mWtfLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    iput v1, p0, Lcom/android/server/pm/ShortcutService;->mWtfCount:I

    .line 18
    .line 19
    new-instance v1, Ljava/lang/Exception;

    .line 20
    .line 21
    const-string v2, "Last failure was logged here:"

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/pm/ShortcutService;->mLastWtfStacktrace:Ljava/lang/Exception;

    .line 27
    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const-string p0, "ShortcutService"

    .line 30
    .line 31
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0
.end method
