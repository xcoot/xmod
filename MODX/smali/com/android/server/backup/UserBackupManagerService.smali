.class public final Lcom/android/server/backup/UserBackupManagerService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

.field public static mSplitBackupFlag:Ljava/lang/Boolean;

.field public static mSplitRestoreFlag:Ljava/lang/Boolean;


# instance fields
.field public mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAdbBackupParams:Lcom/android/server/backup/params/AdbBackupParams;

.field public final mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

.field public mAdbRestoreParams:Lcom/android/server/backup/params/AdbRestoreParams;

.field public final mAgentConnectLock:Ljava/lang/Object;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public volatile mAncestralBackupDestination:J

.field public mAncestralPackages:Ljava/util/Set;

.field public mAncestralSerialNumberFile:Ljava/io/File;

.field public mAncestralToken:J

.field public mAutoRestore:Z

.field public final mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

.field public final mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field public final mBackupParticipants:Landroid/util/SparseArray;

.field public final mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

.field public final mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

.field public final mBackupRestoreLock:Ljava/lang/Object;

.field public volatile mBackupRunning:Z

.field public final mBaseStateDir:Ljava/io/File;

.field public final mClearDataLock:Ljava/lang/Object;

.field public volatile mClearingData:Z

.field public mConnectedAgent:Landroid/app/IBackupAgent;

.field public volatile mConnecting:Z

.field public final mConstants:Lcom/android/server/backup/BackupManagerConstants;

.field public final mContext:Landroid/content/Context;

.field public mCurrentToken:J

.field public final mDataDir:Ljava/io/File;

.field public mDisableDataExtractionRule:Z

.field public mEnabled:Z

.field public mEncPassword:Ljava/lang/String;

.field public mExtraFlag:I

.field public final mFullBackupQueue:Ljava/util/ArrayList;

.field public final mFullBackupScheduleFile:Ljava/io/File;

.field public final mFullBackupScheduleWriter:Lcom/android/server/backup/UserBackupManagerService$1;

.field public mIsRestoreInProgress:Z

.field public mJournal:Lcom/android/server/backup/DataChangedJournal;

.field public final mJournalDir:Ljava/io/File;

.field public volatile mLastBackupPass:J

.field public final mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field public final mPackageTrackingReceiver:Lcom/android/server/backup/UserBackupManagerService$2;

.field public final mPendingBackups:Ljava/util/HashMap;

.field public final mPendingInits:Landroid/util/ArraySet;

.field public final mPendingRestores:Ljava/util/Queue;

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mPrivilegePkgName:[Ljava/lang/String;

.field public final mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

.field public final mQueueLock:Ljava/lang/Object;

.field public final mRegisterTransportsRequestedTime:J

.field public final mRng:Ljava/security/SecureRandom;

.field public final mRunInitIntent:Landroid/app/PendingIntent;

.field public final mRunInitReceiver:Lcom/android/server/backup/internal/RunInitializeReceiver;

.field public mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

.field public final mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public mSepTimeOut:Z

.field public mSepTimeoutMin:I

.field public mSepWakeLock:Z

.field public mSetupComplete:Z

.field public final mSetupObserver:Lcom/android/server/backup/internal/SetupObserver;

.field public mSmartSwitchBackupPath:[Ljava/lang/String;

.field public final mTokenFile:Ljava/io/File;

.field public final mTokenGenerator:Ljava/util/Random;

.field public mTransportFlagsForAdbBackup:I

.field public final mTransportManager:Lcom/android/server/backup/TransportManager;

.field public final mUserId:I

.field public final mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;


# direct methods
.method public static -$$Nest$mremovePackageParticipantsLocked(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 8
    aget-object v2, p1, v1

    .line 10
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Ljava/util/HashSet;

    .line 18
    if-eqz v3, :cond_1

    .line 20
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 26
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_0

    .line 32
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 35
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 37
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 48
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 51
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    sput-object v0, Lcom/android/server/backup/UserBackupManagerService;->mSplitBackupFlag:Ljava/lang/Boolean;

    .line 5
    sput-object v0, Lcom/android/server/backup/UserBackupManagerService;->mSplitRestoreFlag:Ljava/lang/Boolean;

    .line 7
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)V
    .locals 25

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 55
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    iput-object v14, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 56
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 57
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 58
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 59
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 60
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupRestoreLock:Ljava/lang/Object;

    .line 61
    const-string v2, ""

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    const/4 v15, 0x0

    .line 62
    iput v15, v1, Lcom/android/server/backup/UserBackupManagerService;->mExtraFlag:I

    .line 63
    iput-boolean v15, v1, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 64
    iput-boolean v15, v1, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    const/16 v2, 0x1e

    .line 65
    iput v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeoutMin:I

    .line 66
    iput v15, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportFlagsForAdbBackup:I

    .line 67
    const-string/jumbo v16, "com.sec.android.easyMover"

    const-string/jumbo v17, "com.sec.android.Kies"

    const-string/jumbo v18, "com.samsung.android.da.daagent"

    const-string/jumbo v19, "com.samsung.memorysaver"

    const-string/jumbo v20, "com.samsung.knox.bnr"

    const-string/jumbo v21, "com.samsung.knox.securefolder"

    const-string/jumbo v22, "com.samsung.android.se.unit"

    const-string/jumbo v23, "com.samsung.android.game.gamehome"

    filled-new-array/range {v16 .. v23}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mPrivilegePkgName:[Ljava/lang/String;

    .line 68
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 69
    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    iput-object v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 70
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 71
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 72
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x0

    .line 73
    iput-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    const-wide/16 v2, 0x0

    .line 74
    iput-wide v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 75
    iput-wide v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 76
    iput-boolean v15, v1, Lcom/android/server/backup/UserBackupManagerService;->mDisableDataExtractionRule:Z

    .line 77
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/android/server/backup/UserBackupManagerService$1;-><init>(ILcom/android/server/backup/UserBackupManagerService;)V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Lcom/android/server/backup/UserBackupManagerService$1;

    .line 78
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$2;

    invoke-direct {v2, v1}, Lcom/android/server/backup/UserBackupManagerService$2;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Lcom/android/server/backup/UserBackupManagerService$2;

    .line 79
    iput v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 80
    const-string/jumbo v2, "context cannot be null"

    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v9, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 82
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 83
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 84
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 85
    new-instance v6, Lcom/android/server/backup/utils/BackupEligibilityRules;

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 86
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    const/16 v16, 0x0

    move-object v2, v6

    move/from16 v5, p1

    move-object/from16 v24, v6

    move-object/from16 v6, p2

    move-object v13, v7

    move v7, v15

    move-object v13, v8

    move/from16 v8, v16

    .line 87
    invoke-direct/range {v2 .. v8}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;IZ)V

    move-object/from16 v2, v24

    .line 88
    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 89
    const-string v2, "alarm"

    invoke-virtual {v9, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 90
    const-string/jumbo v2, "power"

    invoke-virtual {v9, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 91
    const-string/jumbo v2, "parent cannot be null"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    invoke-virtual/range {p3 .. p3}, Landroid/app/backup/IBackupManager$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 93
    new-instance v2, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 94
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/backup/BackupAgentTimeoutParameters;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 95
    invoke-virtual {v2}, Landroid/util/KeyValueSettingObserver;->start()V

    .line 96
    new-instance v2, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    invoke-direct {v2, v0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;-><init>(I)V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 97
    const-string/jumbo v3, "userBackupThread cannot be null"

    invoke-static {v10, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    new-instance v8, Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {v8, v1, v2, v10}, Lcom/android/server/backup/internal/BackupHandler;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Landroid/os/HandlerThread;)V

    iput-object v8, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 101
    const-string/jumbo v4, "user_setup_complete"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    move v5, v7

    .line 102
    :cond_0
    iput-boolean v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 103
    const-string v3, "backup_auto_restore"

    invoke-static {v2, v3, v7, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v7

    goto :goto_0

    :cond_1
    move v3, v15

    :goto_0
    iput-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 104
    new-instance v3, Lcom/android/server/backup/internal/SetupObserver;

    invoke-direct {v3, v1, v8}, Lcom/android/server/backup/internal/SetupObserver;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/BackupHandler;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupObserver:Lcom/android/server/backup/internal/SetupObserver;

    .line 105
    const-string/jumbo v4, "user_setup_complete"

    .line 106
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 107
    invoke-virtual {v2, v4, v15, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 108
    const-string v2, "baseStateDir cannot be null"

    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v11, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    if-nez v0, :cond_2

    .line 109
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->mkdirs()Z

    .line 110
    invoke-static/range {p5 .. p5}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 111
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SELinux restorecon failed on "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v0, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_2
    const-string/jumbo v2, "dataDir cannot be null"

    invoke-static {v12, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v12, v1, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 115
    new-instance v2, Lcom/android/server/backup/BackupPasswordManager;

    invoke-direct {v2, v9, v11, v13}, Lcom/android/server/backup/BackupPasswordManager;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/security/SecureRandom;)V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 116
    new-instance v3, Lcom/android/server/backup/internal/RunInitializeReceiver;

    invoke-direct {v3, v1}, Lcom/android/server/backup/internal/RunInitializeReceiver;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mRunInitReceiver:Lcom/android/server/backup/internal/RunInitializeReceiver;

    .line 117
    const-string v2, "android.app.backup.intent.INIT"

    .line 118
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v5

    .line 119
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const-string v6, "android.permission.BACKUP"

    const/4 v12, 0x0

    move-object/from16 v2, p2

    move v13, v7

    move-object v7, v12

    .line 120
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 121
    const-string v2, "android.app.backup.intent.INIT"

    const/high16 v3, 0x40000000    # 2.0f

    .line 122
    invoke-static {v3, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x4000000

    .line 123
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 124
    invoke-static {v9, v15, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 125
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "pending"

    invoke-direct {v2, v11, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    .line 126
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    const/4 v2, 0x0

    .line 127
    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 128
    new-instance v2, Lcom/android/server/backup/BackupManagerConstants;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 129
    const-string v4, "backup_manager_constants"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v8, v3, v4}, Landroid/util/KeyValueSettingObserver;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 130
    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 131
    invoke-virtual {v2}, Landroid/util/KeyValueSettingObserver;->start()V

    .line 132
    monitor-enter v14

    .line 133
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 134
    invoke-virtual {v1, v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 135
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 136
    const-string/jumbo v2, "transportManager cannot be null"

    move-object/from16 v3, p7

    .line 137
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 138
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 139
    iput-object v2, v3, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mRegisterTransportsRequestedTime:J

    .line 141
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda2;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    const-wide/16 v3, 0xbb8

    .line 142
    invoke-virtual {v8, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda2;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v1}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v8, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    new-instance v2, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    invoke-direct {v2}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;-><init>()V

    .line 145
    new-instance v5, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda2;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v2}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v8, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    new-instance v2, Lcom/android/server/backup/UserBackupPreferences;

    invoke-direct {v2, v9, v11}, Lcom/android/server/backup/UserBackupPreferences;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

    .line 147
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "*backup*-"

    const-string v5, "-"

    .line 148
    invoke-static {v0, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 149
    invoke-virtual/range {p4 .. p4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-virtual {v3, v13, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;-><init>(Landroid/os/PowerManager$WakeLock;I)V

    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->isYuvaSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    const-string v0, "BackupManagerService"

    const-string v2, "Backup Manager Yuva is Supported"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 154
    :cond_3
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "fb-schedule"

    invoke-direct {v0, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 155
    new-instance v0, Ljava/io/File;

    const-string v2, "ancestral"

    invoke-direct {v0, v11, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    .line 156
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-ne v0, v13, :cond_4

    .line 158
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 159
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 160
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_4

    .line 161
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    :goto_1
    if-ge v15, v0, :cond_4

    .line 162
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 163
    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_2

    .line 164
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    .line 165
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v3
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 166
    :goto_4
    const-string v2, "BackupManagerService"

    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v4, "Unable to read token file"

    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 167
    :catch_1
    const-string v0, "BackupManagerService"

    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string v3, "No ancestral data"

    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_5
    new-instance v0, Lcom/android/server/backup/ProcessedPackagesJournal;

    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v2}, Lcom/android/server/backup/ProcessedPackagesJournal;-><init>(Ljava/io/File;)V

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    .line 169
    iget-object v2, v0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    .line 170
    monitor-enter v2

    .line 171
    :try_start_6
    invoke-virtual {v0}, Lcom/android/server/backup/ProcessedPackagesJournal;->loadFromDisk()V

    .line 172
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 173
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 174
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->readFullBackupSchedule()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 175
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 181
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Lcom/android/server/backup/UserBackupManagerService$2;

    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 182
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v0

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    .line 183
    invoke-virtual/range {p1 .. p6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 184
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 185
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 186
    invoke-static {v0, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 187
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Lcom/android/server/backup/UserBackupManagerService$2;

    iget v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 188
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v4, 0x0

    move-object/from16 p0, v2

    move-object/from16 p1, v3

    move-object/from16 p2, v1

    move-object/from16 p3, v0

    move-object/from16 p4, v4

    .line 189
    invoke-virtual/range {p0 .. p5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_2
    move-exception v0

    .line 190
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 191
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    .line 192
    :try_start_a
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/backup/internal/LifecycleOperationStorage;Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/internal/BackupHandler;Lcom/android/server/backup/BackupManagerConstants;)V
    .locals 11

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 5
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 7
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 8
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRestoreLock:Ljava/lang/Object;

    .line 9
    const-string v1, ""

    iput-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    const/4 v1, 0x0

    .line 10
    iput v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mExtraFlag:I

    .line 11
    iput-boolean v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 12
    iput-boolean v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    const/16 v2, 0x1e

    .line 13
    iput v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeoutMin:I

    .line 14
    iput v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportFlagsForAdbBackup:I

    .line 15
    const-string/jumbo v7, "com.samsung.knox.bnr"

    const-string/jumbo v8, "com.samsung.knox.securefolder"

    const-string/jumbo v3, "com.sec.android.easyMover"

    const-string/jumbo v4, "com.sec.android.Kies"

    const-string/jumbo v5, "com.samsung.android.da.daagent"

    const-string/jumbo v6, "com.samsung.memorysaver"

    const-string/jumbo v9, "com.samsung.android.se.unit"

    const-string/jumbo v10, "com.samsung.android.game.gamehome"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mPrivilegePkgName:[Ljava/lang/String;

    .line 16
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 17
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    .line 18
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 19
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 20
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    .line 21
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    const-wide/16 v3, 0x0

    .line 22
    iput-wide v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 23
    iput-wide v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 24
    iput-boolean v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mDisableDataExtractionRule:Z

    .line 25
    new-instance v5, Lcom/android/server/backup/UserBackupManagerService$1;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p0}, Lcom/android/server/backup/UserBackupManagerService$1;-><init>(ILcom/android/server/backup/UserBackupManagerService;)V

    iput-object v5, v0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Lcom/android/server/backup/UserBackupManagerService$1;

    .line 26
    new-instance v5, Lcom/android/server/backup/UserBackupManagerService$2;

    invoke-direct {v5, p0}, Lcom/android/server/backup/UserBackupManagerService$2;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    iput-object v5, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Lcom/android/server/backup/UserBackupManagerService$2;

    move-object v5, p1

    .line 27
    iput-object v5, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 28
    iput v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 29
    iput-wide v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mRegisterTransportsRequestedTime:J

    move-object v1, p2

    .line 30
    iput-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object v1, p3

    .line 31
    iput-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    move-object v1, p4

    .line 32
    iput-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    move-object/from16 v1, p5

    .line 34
    iput-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    move-object/from16 v1, p6

    .line 35
    iput-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 36
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 37
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 38
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    .line 39
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 40
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mSetupObserver:Lcom/android/server/backup/internal/SetupObserver;

    .line 41
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitReceiver:Lcom/android/server/backup/internal/RunInitializeReceiver;

    .line 42
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 43
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 44
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 45
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 46
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 47
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

    .line 48
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    .line 49
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 50
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 51
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 52
    iput-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    return-void
.end method

.method public static addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "[UserID:"

    .line 3
    const-string v1, "] "

    .line 5
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static createAndInitializeService(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)Lcom/android/server/backup/UserBackupManagerService;
    .locals 10

    .line 1
    new-instance v0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    .line 3
    invoke-direct {v0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->deleteExpiredBMMEvents()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const-string v0, "BackupManagerService"

    .line 14
    const-string v1, "BMM Events recorded for dumpsys have expired"

    .line 16
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    new-instance v0, Lcom/android/server/backup/UserBackupManagerService;

    .line 21
    move-object v2, v0

    .line 22
    move v3, p0

    .line 23
    move-object v4, p1

    .line 24
    move-object v5, p2

    .line 25
    move-object v6, p3

    .line 26
    move-object v7, p4

    .line 27
    move-object v8, p5

    .line 28
    move-object/from16 v9, p6

    .line 30
    invoke-direct/range {v2 .. v9}, Lcom/android/server/backup/UserBackupManagerService;-><init>(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerService;Landroid/os/HandlerThread;Ljava/io/File;Ljava/io/File;Lcom/android/server/backup/TransportManager;)V

    .line 33
    return-object v0
.end method

.method public static dumpBMMEvents(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;

    .line 3
    invoke-direct {v0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->deleteExpiredBMMEvents()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    const-string v0, "BACKUP MANAGER MONITOR EVENTS HAVE EXPIRED"

    .line 14
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getBMMEventsFile()Ljava/io/File;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 25
    move-result-wide v2

    .line 26
    const-wide/16 v4, 0x0

    .line 28
    cmp-long v2, v2, v4

    .line 30
    if-nez v2, :cond_1

    .line 32
    const-string v0, "NO BACKUP MANAGER MONITOR EVENTS"

    .line 34
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    return-void

    .line 38
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    .line 40
    if-nez v2, :cond_3

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 45
    move-result-wide v2

    .line 46
    invoke-virtual {v0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getBMMEventsFileSizeLimit()J

    .line 49
    move-result-wide v4

    .line 50
    cmp-long v2, v2, v4

    .line 52
    if-lez v2, :cond_2

    .line 54
    const/4 v2, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v2, 0x0

    .line 57
    :goto_0
    iput-boolean v2, v0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    .line 59
    :cond_3
    iget-boolean v0, v0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    .line 61
    if-eqz v0, :cond_4

    .line 63
    const-string v0, "BACKUP MANAGER MONITOR EVENTS FILE OVER SIZE LIMIT - future events will not be recorded"

    .line 65
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    :cond_4
    const-string v0, "START OF BACKUP MANAGER MONITOR EVENTS"

    .line 70
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 75
    new-instance v2, Ljava/io/FileReader;

    .line 77
    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 80
    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_5

    .line 89
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    goto :goto_1

    .line 93
    :catchall_0
    move-exception v1

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    goto :goto_5

    .line 99
    :catch_0
    move-exception v0

    .line 100
    goto :goto_4

    .line 101
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    goto :goto_3

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 109
    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 110
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    const-string v2, "IO Exception when reading BMM events from file: "

    .line 114
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    const-string v1, "BackupManagerService"

    .line 126
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v0, "IO Exception when reading BMM events from file"

    .line 131
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    :goto_5
    const-string v0, "END OF BACKUP MANAGER MONITOR EVENTS"

    .line 136
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    iget-object p0, p0, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public static waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    monitor-enter v0

    .line 4
    :catch_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v1, :cond_0

    .line 12
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    throw p0
.end method


# virtual methods
.method public final acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 6

    .line 1
    const-string v0, "BackupManagerService"

    .line 3
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    const-string v3, "acknowledgeAdbBackupOrRestore : token="

    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    const-string v3, " allow="

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 39
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/android/server/backup/params/AdbParams;

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 46
    if-eqz v1, :cond_0

    .line 48
    iget-boolean v0, v1, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z

    .line 50
    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 54
    const-string v1, "android.permission.BACKUP"

    .line 56
    const-string v2, "acknowledgeAdbBackupOrRestore"

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 64
    const-string v1, "android.permission.BACKUP"

    .line 66
    const-string v2, "acknowledgeAdbBackupOrRestore"

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 74
    move-result-wide v0

    .line 75
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 77
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 80
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Lcom/android/server/backup/params/AdbParams;

    .line 86
    if-eqz v3, :cond_4

    .line 88
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 90
    const/16 v5, 0x9

    .line 92
    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 95
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 97
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 100
    if-eqz p2, :cond_3

    .line 102
    instance-of p1, v3, Lcom/android/server/backup/params/AdbBackupParams;

    .line 104
    if-eqz p1, :cond_1

    .line 106
    const/4 p1, 0x2

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    const/16 p1, 0xa

    .line 110
    :goto_1
    iput-object p5, v3, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 112
    iput-object p3, v3, Lcom/android/server/backup/params/AdbParams;->curPassword:Ljava/lang/String;

    .line 114
    iput-object p4, v3, Lcom/android/server/backup/params/AdbParams;->encryptPassword:Ljava/lang/String;

    .line 116
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 118
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->isHeld()Z

    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_2

    .line 124
    iget-boolean p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 126
    if-eqz p2, :cond_2

    .line 128
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 130
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 133
    goto :goto_2

    .line 134
    :catchall_0
    move-exception p0

    .line 135
    goto :goto_4

    .line 136
    :cond_2
    :goto_2
    const/4 p2, 0x1

    .line 137
    iput-boolean p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 139
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 141
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 144
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 146
    invoke-virtual {p2, p1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 149
    move-result-object p1

    .line 150
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 152
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    goto :goto_3

    .line 156
    :cond_3
    const-string p1, "BackupManagerService"

    .line 158
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 160
    const-string p2, "User rejected full backup/restore operation"

    .line 162
    invoke-static {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 165
    move-result-object p0

    .line 166
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {v3}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 172
    goto :goto_3

    .line 173
    :cond_4
    const-string p1, "BackupManagerService"

    .line 175
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 177
    const-string p2, "Attempted to ack full backup/restore with invalid token"

    .line 179
    invoke-static {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object p0

    .line 183
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    return-void

    .line 191
    :goto_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 193
    :catchall_1
    move-exception p0

    .line 194
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    throw p0

    .line 198
    :catchall_2
    move-exception p0

    .line 199
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 200
    throw p0
.end method

.method public final adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;Z)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v0, p2

    .line 5
    move/from16 v2, p3

    .line 7
    move/from16 v3, p4

    .line 9
    move/from16 v4, p6

    .line 11
    move/from16 v5, p7

    .line 13
    move/from16 v6, p9

    .line 15
    move-object/from16 v7, p10

    .line 17
    const-string v8, "Starting backup confirmation UI, token="

    .line 19
    const-string v9, "Requesting backup: apks="

    .line 21
    iget-object v10, v1, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 23
    const-string v11, "android.permission.BACKUP"

    .line 25
    const-string v12, "adbBackup"

    .line 27
    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 33
    move-result v10

    .line 34
    if-nez v10, :cond_6

    .line 36
    if-nez v4, :cond_1

    .line 38
    if-nez v3, :cond_1

    .line 40
    if-eqz v7, :cond_0

    .line 42
    array-length v10, v7

    .line 43
    if-eqz v10, :cond_0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 48
    const-string v1, "Backup requested but neither shared nor any apps named"

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 57
    move-result v10

    .line 58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 61
    move-result-wide v11

    .line 62
    const/16 v14, 0x1e

    .line 64
    const/4 v15, 0x0

    .line 65
    :try_start_0
    iget-boolean v13, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 67
    if-nez v13, :cond_2

    .line 69
    :try_start_1
    const-string v0, "BackupManagerService"

    .line 71
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 73
    const-string v3, "Backup not supported before setup"

    .line 75
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v2

    .line 79
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    move-object v2, v0

    .line 88
    const-string v0, "BackupManagerService"

    .line 90
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    const-string v5, "IO error closing output for adb backup: "

    .line 96
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 110
    invoke-static {v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 114
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_1
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    const-string v0, "BackupManagerService"

    .line 122
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 124
    const-string v3, "Adb backup processing complete."

    .line 126
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v2

    .line 130
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-object v15, v1, Lcom/android/server/backup/UserBackupManagerService;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 135
    iput v14, v1, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeoutMin:I

    .line 137
    :goto_2
    const/4 v2, 0x0

    .line 138
    iput-boolean v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    .line 140
    return-void

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    move-object v2, v0

    .line 143
    move-wide/from16 v16, v11

    .line 145
    move-object/from16 v11, p1

    .line 147
    goto/16 :goto_8

    .line 149
    :cond_2
    :try_start_3
    const-string v13, "BackupManagerService"

    .line 151
    iget v14, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 153
    new-instance v15, Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    const-string v9, " obb="

    .line 163
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 169
    const-string v9, " shared="

    .line 171
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    const-string v9, " all="

    .line 179
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 185
    const-string v9, " system="

    .line 187
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 193
    const-string v9, " includekeyvalue="

    .line 195
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    const-string v9, " pkgs="

    .line 203
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-static/range {p10 .. p10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    move-result-object v9

    .line 210
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object v9

    .line 217
    invoke-static {v14, v9}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 220
    move-result-object v9

    .line 221
    invoke-static {v13, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v9, "BackupManagerService"

    .line 226
    iget v13, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 228
    const-string v14, "Beginning adb backup..."

    .line 230
    invoke-static {v13, v14}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 233
    move-result-object v13

    .line 234
    invoke-static {v9, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 237
    if-eqz p11, :cond_3

    .line 239
    const/4 v9, 0x2

    .line 240
    :try_start_4
    invoke-virtual {v1, v9}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 243
    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 244
    goto :goto_3

    .line 245
    :cond_3
    const/4 v9, 0x1

    .line 246
    :try_start_5
    invoke-virtual {v1, v9}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 249
    move-result-object v9

    .line 250
    :goto_3
    new-instance v13, Lcom/android/server/backup/params/AdbBackupParams;

    .line 252
    iget v14, v1, Lcom/android/server/backup/UserBackupManagerService;->mExtraFlag:I

    .line 254
    iget-object v15, v1, Lcom/android/server/backup/UserBackupManagerService;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 256
    invoke-direct {v13}, Lcom/android/server/backup/params/AdbParams;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 259
    move-wide/from16 v16, v11

    .line 261
    move-object/from16 v11, p1

    .line 263
    :try_start_6
    iput-object v11, v13, Lcom/android/server/backup/params/AdbParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 265
    iput-boolean v0, v13, Lcom/android/server/backup/params/AdbBackupParams;->includeApks:Z

    .line 267
    iput-boolean v2, v13, Lcom/android/server/backup/params/AdbBackupParams;->includeObbs:Z

    .line 269
    iput-boolean v3, v13, Lcom/android/server/backup/params/AdbBackupParams;->includeShared:Z

    .line 271
    move/from16 v0, p5

    .line 273
    iput-boolean v0, v13, Lcom/android/server/backup/params/AdbBackupParams;->doWidgets:Z

    .line 275
    iput-boolean v4, v13, Lcom/android/server/backup/params/AdbBackupParams;->allApps:Z

    .line 277
    iput-boolean v5, v13, Lcom/android/server/backup/params/AdbBackupParams;->includeSystem:Z

    .line 279
    move/from16 v0, p8

    .line 281
    iput-boolean v0, v13, Lcom/android/server/backup/params/AdbBackupParams;->doCompress:Z

    .line 283
    iput-boolean v6, v13, Lcom/android/server/backup/params/AdbBackupParams;->includeKeyValue:Z

    .line 285
    iput-object v7, v13, Lcom/android/server/backup/params/AdbBackupParams;->packages:[Ljava/lang/String;

    .line 287
    iput-object v9, v13, Lcom/android/server/backup/params/AdbBackupParams;->backupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 289
    iput v14, v13, Lcom/android/server/backup/params/AdbBackupParams;->extraFlag:I

    .line 291
    iput-object v15, v13, Lcom/android/server/backup/params/AdbBackupParams;->smartswitchBackupPath:[Ljava/lang/String;

    .line 293
    iget v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportFlagsForAdbBackup:I

    .line 295
    iput v0, v13, Lcom/android/server/backup/params/AdbBackupParams;->transportFlags:I

    .line 297
    iput-object v13, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupParams:Lcom/android/server/backup/params/AdbBackupParams;

    .line 299
    const/4 v2, 0x0

    .line 300
    iput v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mTransportFlagsForAdbBackup:I

    .line 302
    invoke-virtual {v1, v10}, Lcom/android/server/backup/UserBackupManagerService;->isPrivilegeBackupApp(I)Z

    .line 305
    move-result v0

    .line 306
    iput-boolean v0, v13, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    .line 311
    move-result v0

    .line 312
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 314
    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 315
    :try_start_7
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 317
    invoke-virtual {v3, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 321
    :try_start_8
    iget-boolean v2, v13, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z

    .line 323
    if-eqz v2, :cond_4

    .line 325
    const-string v2, ""

    .line 327
    iget-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    .line 329
    const/4 v4, 0x0

    .line 330
    const/4 v5, 0x1

    .line 331
    move-object/from16 p2, p0

    .line 333
    move/from16 p3, v0

    .line 335
    move/from16 p4, v5

    .line 337
    move-object/from16 p5, v2

    .line 339
    move-object/from16 p6, v3

    .line 341
    move-object/from16 p7, v4

    .line 343
    invoke-virtual/range {p2 .. p7}, Lcom/android/server/backup/UserBackupManagerService;->acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 346
    goto/16 :goto_6

    .line 348
    :catchall_1
    move-exception v0

    .line 349
    :goto_4
    move-object v2, v0

    .line 350
    goto/16 :goto_8

    .line 352
    :cond_4
    const-string v2, "BackupManagerService"

    .line 354
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    .line 358
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    move-result-object v4

    .line 368
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 371
    move-result-object v3

    .line 372
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string/jumbo v2, "fullback"

    .line 378
    invoke-virtual {v1, v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    .line 381
    move-result v2

    .line 382
    if-nez v2, :cond_5

    .line 384
    const-string v2, "BackupManagerService"

    .line 386
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 388
    const-string v4, "Unable to launch backup confirmation UI"

    .line 390
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 393
    move-result-object v3

    .line 394
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 399
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->delete(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 402
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 405
    goto :goto_5

    .line 406
    :catch_1
    move-exception v0

    .line 407
    move-object v2, v0

    .line 408
    const-string v0, "BackupManagerService"

    .line 410
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    .line 414
    const-string v5, "IO error closing output for adb backup: "

    .line 416
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 422
    move-result-object v2

    .line 423
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    move-result-object v2

    .line 430
    invoke-static {v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 433
    move-result-object v2

    .line 434
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 440
    const-string v0, "BackupManagerService"

    .line 442
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 444
    const-string v3, "Adb backup processing complete."

    .line 446
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 449
    move-result-object v2

    .line 450
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v2, 0x0

    .line 454
    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 456
    const/16 v2, 0x1e

    .line 458
    iput v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeoutMin:I

    .line 460
    goto/16 :goto_2

    .line 462
    :cond_5
    :try_start_a
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 464
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 467
    move-result-wide v3

    .line 468
    const/4 v5, 0x0

    .line 469
    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 472
    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 474
    const/16 v3, 0x9

    .line 476
    invoke-virtual {v2, v3, v0, v5, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 479
    move-result-object v0

    .line 480
    const-wide/32 v3, 0xea60

    .line 483
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 486
    :goto_6
    const-string v0, "BackupManagerService"

    .line 488
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 490
    const-string v3, "Waiting for backup completion..."

    .line 492
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 495
    move-result-object v2

    .line 496
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {v1, v13}, Lcom/android/server/backup/UserBackupManagerService;->startSepTimeout(Lcom/android/server/backup/params/AdbParams;)V

    .line 502
    invoke-static {v13}, Lcom/android/server/backup/UserBackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 505
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 507
    const/16 v2, 0x65

    .line 509
    invoke-virtual {v0, v2, v13}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 512
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 515
    goto :goto_7

    .line 516
    :catch_2
    move-exception v0

    .line 517
    move-object v2, v0

    .line 518
    const-string v0, "BackupManagerService"

    .line 520
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    .line 524
    const-string v5, "IO error closing output for adb backup: "

    .line 526
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 532
    move-result-object v2

    .line 533
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    move-result-object v2

    .line 540
    invoke-static {v3, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 543
    move-result-object v2

    .line 544
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :goto_7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    const-string v0, "BackupManagerService"

    .line 552
    iget v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 554
    const-string v3, "Adb backup processing complete."

    .line 556
    invoke-static {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 559
    move-result-object v2

    .line 560
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v2, 0x0

    .line 564
    iput-object v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 566
    const/16 v2, 0x1e

    .line 568
    iput v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeoutMin:I

    .line 570
    const/4 v2, 0x0

    .line 571
    iput-boolean v2, v1, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    .line 573
    return-void

    .line 574
    :catchall_2
    move-exception v0

    .line 575
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 576
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 577
    :catchall_3
    move-exception v0

    .line 578
    move-wide/from16 v16, v11

    .line 580
    move-object/from16 v11, p1

    .line 582
    goto/16 :goto_4

    .line 584
    :goto_8
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 587
    goto :goto_9

    .line 588
    :catch_3
    move-exception v0

    .line 589
    move-object v3, v0

    .line 590
    const-string v0, "BackupManagerService"

    .line 592
    iget v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 594
    new-instance v5, Ljava/lang/StringBuilder;

    .line 596
    const-string v6, "IO error closing output for adb backup: "

    .line 598
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 604
    move-result-object v3

    .line 605
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 611
    move-result-object v3

    .line 612
    invoke-static {v4, v3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 615
    move-result-object v3

    .line 616
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 622
    const-string v0, "BackupManagerService"

    .line 624
    iget v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 626
    const-string v4, "Adb backup processing complete."

    .line 628
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 631
    move-result-object v3

    .line 632
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v3, 0x0

    .line 636
    iput-object v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mSmartSwitchBackupPath:[Ljava/lang/String;

    .line 638
    const/16 v3, 0x1e

    .line 640
    iput v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeoutMin:I

    .line 642
    const/4 v3, 0x0

    .line 643
    iput-boolean v3, v1, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    .line 645
    throw v2

    .line 646
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 648
    const-string v1, "Backup supported only for the device owner"

    .line 650
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 653
    throw v0
.end method

.method public final adbRestore(Landroid/os/ParcelFileDescriptor;Z)V
    .locals 12

    .line 1
    const-string v0, "Starting restore confirmation UI, token="

    .line 3
    const-string/jumbo v1, "params.typeMigration : "

    .line 6
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 8
    const-string v3, "android.permission.BACKUP"

    .line 10
    const-string v4, "adbRestore"

    .line 12
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_4

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    move-result v2

    .line 25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    move-result-wide v3

    .line 29
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 31
    if-nez v5, :cond_0

    .line 33
    const-string p2, "BackupManagerService"

    .line 35
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 37
    const-string v1, "Full restore not permitted before setup"

    .line 39
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    const-string p2, "BackupManagerService"

    .line 53
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    const-string v2, "Error trying to close fd after adb restore: "

    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object p1

    .line 73
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    const-string p1, "BackupManagerService"

    .line 81
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 83
    const-string p2, "adb restore processing complete."

    .line 85
    invoke-static {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception p2

    .line 94
    goto/16 :goto_5

    .line 96
    :cond_0
    :try_start_2
    const-string v5, "BackupManagerService"

    .line 98
    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 100
    const-string v7, "Beginning restore..."

    .line 102
    invoke-static {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v6

    .line 106
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v5, Lcom/android/server/backup/params/AdbRestoreParams;

    .line 111
    invoke-direct {v5}, Lcom/android/server/backup/params/AdbParams;-><init>()V

    .line 114
    iput-object p1, v5, Lcom/android/server/backup/params/AdbParams;->fd:Landroid/os/ParcelFileDescriptor;

    .line 116
    iput-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbRestoreParams:Lcom/android/server/backup/params/AdbRestoreParams;

    .line 118
    invoke-virtual {p0, v2}, Lcom/android/server/backup/UserBackupManagerService;->isPrivilegeBackupApp(I)Z

    .line 121
    move-result v2

    .line 122
    iput-boolean v2, v5, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z

    .line 124
    const/4 v2, 0x0

    .line 125
    if-eqz p2, :cond_1

    .line 127
    iput-boolean v2, v5, Lcom/android/server/backup/params/AdbParams;->typeMigration:Z

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    const/4 p2, 0x1

    .line 131
    iput-boolean p2, v5, Lcom/android/server/backup/params/AdbParams;->typeMigration:Z

    .line 133
    :goto_1
    const-string p2, "BackupManagerService"

    .line 135
    iget v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    iget-boolean v1, v5, Lcom/android/server/backup/params/AdbParams;->typeMigration:Z

    .line 144
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v1

    .line 151
    invoke-static {v6, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 154
    move-result-object v1

    .line 155
    invoke-static {p2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    .line 161
    move-result v7

    .line 162
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 164
    monitor-enter p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 167
    invoke-virtual {v1, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    :try_start_4
    iget-boolean p2, v5, Lcom/android/server/backup/params/AdbParams;->privilegeApp:Z

    .line 173
    if-eqz p2, :cond_2

    .line 175
    const-string v9, ""

    .line 177
    iget-object v10, p0, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    .line 179
    const/4 v11, 0x0

    .line 180
    const/4 v8, 0x1

    .line 181
    move-object v6, p0

    .line 182
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/backup/UserBackupManagerService;->acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 185
    goto :goto_3

    .line 186
    :cond_2
    const-string p2, "BackupManagerService"

    .line 188
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    .line 192
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object v0

    .line 202
    invoke-static {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 205
    move-result-object v0

    .line 206
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string/jumbo p2, "fullrest"

    .line 212
    invoke-virtual {p0, v7, p2}, Lcom/android/server/backup/UserBackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    .line 215
    move-result p2

    .line 216
    if-nez p2, :cond_3

    .line 218
    const-string p2, "BackupManagerService"

    .line 220
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 222
    const-string v1, "Unable to launch restore confirmation"

    .line 224
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 227
    move-result-object v0

    .line 228
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    .line 233
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->delete(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 239
    goto :goto_2

    .line 240
    :catch_1
    move-exception p1

    .line 241
    const-string p2, "BackupManagerService"

    .line 243
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    .line 247
    const-string v2, "Error trying to close fd after adb restore: "

    .line 249
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    move-result-object p1

    .line 259
    invoke-static {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 262
    move-result-object p1

    .line 263
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    const-string p1, "BackupManagerService"

    .line 271
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 273
    const-string p2, "adb restore processing complete."

    .line 275
    invoke-static {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 278
    move-result-object p0

    .line 279
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void

    .line 283
    :cond_3
    :try_start_6
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 288
    move-result-wide v0

    .line 289
    invoke-virtual {p2, v0, v1, v2, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 292
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 294
    const/16 v0, 0x9

    .line 296
    invoke-virtual {p2, v0, v7, v2, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 299
    move-result-object v0

    .line 300
    const-wide/32 v6, 0xea60

    .line 303
    invoke-virtual {p2, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 306
    :goto_3
    const-string p2, "BackupManagerService"

    .line 308
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 310
    const-string v1, "Waiting for restore completion..."

    .line 312
    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 315
    move-result-object v0

    .line 316
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0, v5}, Lcom/android/server/backup/UserBackupManagerService;->startSepTimeout(Lcom/android/server/backup/params/AdbParams;)V

    .line 322
    invoke-static {v5}, Lcom/android/server/backup/UserBackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 325
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 327
    const/16 v0, 0x65

    .line 329
    invoke-virtual {p2, v0, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 332
    :try_start_7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 335
    goto :goto_4

    .line 336
    :catch_2
    move-exception p1

    .line 337
    const-string p2, "BackupManagerService"

    .line 339
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    .line 343
    const-string v5, "Error trying to close fd after adb restore: "

    .line 345
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    move-result-object p1

    .line 355
    invoke-static {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 358
    move-result-object p1

    .line 359
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    const-string p1, "BackupManagerService"

    .line 367
    iget p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 369
    const-string v0, "adb restore processing complete."

    .line 371
    invoke-static {p2, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 374
    move-result-object p2

    .line 375
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/16 p1, 0x1e

    .line 380
    iput p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeoutMin:I

    .line 382
    iput-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    .line 384
    return-void

    .line 385
    :catchall_1
    move-exception v0

    .line 386
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 387
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 388
    :goto_5
    :try_start_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 391
    goto :goto_6

    .line 392
    :catch_3
    move-exception p1

    .line 393
    const-string v0, "BackupManagerService"

    .line 395
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    .line 399
    const-string v5, "Error trying to close fd after adb restore: "

    .line 401
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    move-result-object p1

    .line 411
    invoke-static {v1, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 414
    move-result-object p1

    .line 415
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :goto_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 421
    const-string p1, "BackupManagerService"

    .line 423
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 425
    const-string v0, "adb restore processing complete."

    .line 427
    invoke-static {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 430
    move-result-object p0

    .line 431
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    throw p2

    .line 435
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 437
    const-string p1, "Restore supported only for the device owner"

    .line 439
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 442
    throw p0
.end method

.method public final addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p2

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 17
    if-eqz p1, :cond_1

    .line 19
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 27
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 29
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 31
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/util/HashSet;

    .line 39
    if-nez v2, :cond_2

    .line 41
    new-instance v2, Ljava/util/HashSet;

    .line 43
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 46
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 48
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    :cond_2
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 53
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 60
    const/16 v2, 0x10

    .line 62
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    return-void
.end method

.method public final allAgentPackages()Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3
    const/high16 v1, 0x8000000

    .line 5
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 17
    :goto_0
    if-ltz v1, :cond_2

    .line 19
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 25
    :try_start_0
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 27
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 29
    const v6, 0x8000

    .line 32
    and-int/2addr v6, v5

    .line 33
    if-eqz v6, :cond_1

    .line 35
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 37
    if-eqz v4, :cond_1

    .line 39
    const/high16 v4, 0x4000000

    .line 41
    and-int/2addr v4, v5

    .line 42
    if-eqz v4, :cond_0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 47
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 49
    const/16 v6, 0x400

    .line 51
    invoke-virtual {v4, v5, v6, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 54
    move-result-object v4

    .line 55
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 57
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 59
    iput-object v5, v3, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 61
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 63
    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 65
    goto :goto_2

    .line 66
    :cond_1
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_2

    .line 70
    :catch_0
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 73
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return-object v0
.end method

.method public final backupNow()V
    .locals 6

    .line 1
    const-string v0, "Backup pass but enabled="

    .line 3
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 5
    const-string v2, "android.permission.BACKUP"

    .line 7
    const-string v3, "backupNow"

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v1

    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 18
    const/4 v4, 0x5

    .line 19
    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    .line 22
    move-result-object v3

    .line 23
    iget-boolean v3, v3, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 25
    if-eqz v3, :cond_0

    .line 27
    const-string v0, "BackupManagerService"

    .line 29
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 31
    const-string v4, "Not running backup while in battery save mode"

    .line 33
    invoke-static {v3, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 42
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {v0, v3, p0}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/UserBackupManagerService;)V

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto/16 :goto_4

    .line 51
    :cond_0
    const-string v3, "BackupManagerService"

    .line 53
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 55
    const-string v5, "Scheduling immediate backup pass"

    .line 57
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 66
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 69
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 72
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    if-lez v4, :cond_1

    .line 75
    :try_start_2
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 77
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 79
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 84
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    goto :goto_0

    .line 88
    :catchall_1
    move-exception p0

    .line 89
    goto :goto_3

    .line 90
    :catch_0
    :try_start_3
    const-string v0, "BackupManagerService"

    .line 92
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 94
    const-string v4, "Run init intent cancelled"

    .line 96
    invoke-static {p0, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    return-void

    .line 108
    :cond_1
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 109
    :try_start_5
    iget-boolean v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 111
    if-eqz v3, :cond_3

    .line 113
    iget-boolean v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 115
    if-nez v3, :cond_2

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 120
    const/4 v3, 0x1

    .line 121
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 124
    move-result-object v0

    .line 125
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 127
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 132
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 134
    invoke-static {p0, v0}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    return-void

    .line 141
    :cond_3
    :goto_2
    :try_start_6
    const-string v3, "BackupManagerService"

    .line 143
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 152
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 155
    const-string v0, " setupComplete="

    .line 157
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-boolean p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 162
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p0

    .line 169
    invoke-static {v4, p0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 172
    move-result-object p0

    .line 173
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 176
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    return-void

    .line 180
    :goto_3
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 181
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 182
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    throw p0
.end method

.method public final bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;
    .locals 7

    .line 1
    const-string v0, "awaiting agent for "

    .line 3
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    const/4 v2, 0x1

    .line 7
    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 14
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 16
    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 18
    invoke-interface {v3, v4, p2, v5, p3}, Landroid/app/IActivityManager;->bindBackupAgent(Ljava/lang/String;III)Z

    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_2

    .line 24
    const-string p2, "BackupManagerService"

    .line 26
    iget p3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {p3, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p3

    .line 44
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    move-result-wide p2

    .line 51
    const-wide/16 v3, 0x2710

    .line 53
    add-long/2addr p2, v3

    .line 54
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    .line 56
    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 60
    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    move-result-wide v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    cmp-long v0, v3, p2

    .line 68
    if-gez v0, :cond_0

    .line 70
    :try_start_2
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 72
    const-wide/16 v3, 0x1388

    .line 74
    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    :try_start_3
    const-string v3, "BackupManagerService"

    .line 83
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    const-string v6, "Interrupted: "

    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    invoke-static {v4, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    .line 112
    iput-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    iget-boolean p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnecting:Z

    .line 117
    if-eqz p2, :cond_1

    .line 119
    const-string p2, "BackupManagerService"

    .line 121
    iget p3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    const-string v3, "Timeout waiting for agent "

    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p1

    .line 140
    invoke-static {p3, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 144
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 149
    :cond_1
    const-string p1, "BackupManagerService"

    .line 151
    iget p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 153
    new-instance p3, Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    const-string/jumbo v0, "got agent "

    .line 161
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 166
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object p3

    .line 173
    invoke-static {p2, p3}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object p2

    .line 177
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    :catch_1
    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    if-nez v2, :cond_3

    .line 185
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 187
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 189
    invoke-virtual {p1, p0}, Landroid/app/ActivityManagerInternal;->clearPendingBackup(I)V

    .line 192
    :cond_3
    return-object v2

    .line 193
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 194
    throw p0
.end method

.method public final clearApplicationDataBeforeRestore(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    .line 6
    return-void
.end method

.method public final clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 12
    if-eqz p2, :cond_0

    .line 14
    iget p2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 16
    const/16 v1, 0x1d

    .line 18
    if-lt p2, v1, :cond_0

    .line 20
    iget p2, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 22
    const/high16 v0, 0x4000000

    .line 24
    and-int/2addr p2, v0

    .line 25
    if-eqz p2, :cond_3

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget p2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    and-int/lit8 p2, p2, 0x40

    .line 32
    if-eqz p2, :cond_3

    .line 34
    :goto_0
    new-instance v7, Lcom/android/server/backup/internal/ClearDataObserver;

    .line 36
    invoke-direct {v7}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 39
    iput-object p0, v7, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 41
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 43
    monitor-enter p2

    .line 44
    const/4 v0, 0x1

    .line 45
    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    .line 47
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 49
    iget v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 51
    const/4 v6, 0x1

    .line 52
    move-object v4, p1

    .line 53
    move v5, p3

    .line 54
    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityManagerInternal;->clearApplicationUserData(Ljava/lang/String;ZZLandroid/content/pm/IPackageDataObserver;I)Z

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    move-result-wide v0

    .line 61
    const-wide/16 v3, 0x7530

    .line 63
    add-long/2addr v0, v3

    .line 64
    :goto_1
    iget-boolean p3, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    .line 66
    if-eqz p3, :cond_1

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    cmp-long p3, v3, v0

    .line 74
    if-gez p3, :cond_1

    .line 76
    :try_start_2
    iget-object p3, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 78
    const-wide/16 v3, 0x1388

    .line 80
    invoke-virtual {p3, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_2

    .line 86
    :catch_0
    move-exception p3

    .line 87
    :try_start_3
    iput-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    .line 89
    const-string v3, "BackupManagerService"

    .line 91
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string v6, "Interrupted while waiting for "

    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v6, " data to be cleared"

    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v5

    .line 115
    invoke-static {v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v4

    .line 119
    invoke-static {v3, v4, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    goto :goto_1

    .line 123
    :cond_1
    iget-boolean p3, p0, Lcom/android/server/backup/UserBackupManagerService;->mClearingData:Z

    .line 125
    if-eqz p3, :cond_2

    .line 127
    const-string p3, "BackupManagerService"

    .line 129
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    const-string v1, "Clearing app data for "

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string p1, " timed out"

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object p0

    .line 157
    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_2
    monitor-exit p2

    .line 161
    return-void

    .line 162
    :goto_2
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    throw p0

    .line 164
    :cond_3
    return-void

    .line 165
    :catch_1
    const-string p2, "BackupManagerService"

    .line 167
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 169
    new-instance p3, Ljava/lang/StringBuilder;

    .line 171
    const-string v0, "Tried to clear data for "

    .line 173
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string p1, " but not found"

    .line 181
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object p1

    .line 188
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 191
    move-result-object p0

    .line 192
    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public final clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "BackupManagerService"

    .line 3
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v3, "clearBackupData() of "

    .line 10
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v3, " on "

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 37
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 39
    const/high16 v2, 0x8000000

    .line 41
    invoke-virtual {v0, p2, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 44
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 47
    const-string v2, "android.permission.BACKUP"

    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 52
    move-result v3

    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 56
    move-result v4

    .line 57
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 60
    move-result v1

    .line 61
    const/4 v2, -0x1

    .line 62
    if-ne v1, v2, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 66
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 69
    move-result v2

    .line 70
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Ljava/util/Set;

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    .line 79
    iget-object v2, v1, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    .line 81
    monitor-enter v2

    .line 82
    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    .line 84
    iget-object v1, v1, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    .line 86
    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 89
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 90
    move-object v1, v3

    .line 91
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 99
    const/16 v2, 0xc

    .line 101
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 106
    monitor-enter v1

    .line 107
    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 109
    const-string v4, "BMS.clearBackupData()"

    .line 111
    invoke-virtual {v3, p1, v4}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    .line 114
    move-result-object v3

    .line 115
    if-nez v3, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 119
    new-instance v3, Lcom/android/server/backup/params/ClearRetryParams;

    .line 121
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, v3, Lcom/android/server/backup/params/ClearRetryParams;->transportName:Ljava/lang/String;

    .line 126
    iput-object p2, v3, Lcom/android/server/backup/params/ClearRetryParams;->packageName:Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 131
    move-result-object p1

    .line 132
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 134
    const-wide/32 v2, 0x36ee80

    .line 137
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 140
    monitor-exit v1

    .line 141
    return-void

    .line 142
    :catchall_0
    move-exception p0

    .line 143
    goto :goto_1

    .line 144
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 147
    move-result-wide p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :try_start_3
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;

    .line 150
    const/4 v4, 0x2

    .line 151
    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;I)V

    .line 154
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 156
    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 159
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 161
    new-instance v5, Lcom/android/server/backup/params/ClearParams;

    .line 163
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object v3, v5, Lcom/android/server/backup/params/ClearParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 168
    iput-object v0, v5, Lcom/android/server/backup/params/ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 170
    iput-object v2, v5, Lcom/android/server/backup/params/ClearParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 172
    const/4 v0, 0x4

    .line 173
    invoke-virtual {v4, v0, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 176
    move-result-object v0

    .line 177
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 179
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 182
    :try_start_4
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    monitor-exit v1

    .line 186
    goto :goto_2

    .line 187
    :catchall_1
    move-exception p0

    .line 188
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    throw p0

    .line 192
    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 193
    throw p0

    .line 194
    :cond_2
    :goto_2
    return-void

    .line 195
    :catchall_2
    move-exception p0

    .line 196
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 197
    throw p0

    .line 198
    :catch_0
    const-string p1, "BackupManagerService"

    .line 200
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    const-string v1, "No such package \'"

    .line 206
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string p2, "\' - not clearing backup data"

    .line 214
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object p2

    .line 221
    invoke-static {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 224
    move-result-object p0

    .line 225
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method

.method public final dataChangedImpl(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method public final dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 2

    if-nez p2, :cond_0

    .line 3
    const-string p2, "BackupManagerService"

    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    const-string/jumbo v0, "dataChanged but no participant pkg=\'"

    const-string v1, "\' uid="

    .line 4
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    new-instance p2, Lcom/android/server/backup/keyvalue/BackupRequest;

    .line 11
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p2, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p0}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/UserBackupManagerService;)V

    return-void

    .line 17
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.BACKUP"

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    move-result v2

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v3

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x1

    .line 18
    if-ne v0, v1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/util/HashSet;

    .line 35
    monitor-exit v0

    .line 36
    return-object p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0

    .line 40
    :cond_0
    const-string v0, "@pm@"

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 48
    const-string p0, "@pm@"

    .line 50
    filled-new-array {p0}, [Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 61
    monitor-enter p1

    .line 62
    :try_start_1
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    .line 66
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 69
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 72
    move-result v1

    .line 73
    const/4 v2, 0x0

    .line 74
    :goto_0
    if-ge v2, v1, :cond_3

    .line 76
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Ljava/util/HashSet;

    .line 82
    if-eqz v3, :cond_2

    .line 84
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 87
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    monitor-exit p1

    .line 91
    return-object v0

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    throw p0
.end method

.method public final dequeueFullBackupLocked(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 19
    iget-object v1, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    if-eqz p2, :cond_3

    .line 7
    :try_start_0
    array-length v2, p2

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v2, :cond_3

    .line 11
    aget-object v4, p2, v3

    .line 13
    const-string v5, "agents"

    .line 15
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :try_start_1
    const-string/jumbo v5, "transportclients"

    .line 33
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 43
    if-eqz v5, :cond_1

    .line 45
    :try_start_2
    invoke-virtual {v6, p1}, Lcom/android/server/backup/TransportManager;->dumpTransportClients(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    return-void

    .line 52
    :cond_1
    :try_start_3
    const-string/jumbo v5, "transportstats"

    .line 55
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_2

    .line 65
    invoke-virtual {v6, p1}, Lcom/android/server/backup/TransportManager;->dumpTransportStats(Ljava/io/PrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    return-void

    .line 72
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 78
    invoke-static {p1}, Lcom/android/server/backup/UserBackupManagerService;->dumpBMMEvents(Ljava/io/PrintWriter;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    return-void

    .line 85
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    throw p0
.end method

.method public final dumpAgents(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->allAgentPackages()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Defined backup agents:"

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 26
    const-string v1, "  "

    .line 28
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    const/16 v1, 0x3a

    .line 38
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(C)V

    .line 41
    const-string v1, "      "

    .line 43
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 48
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 50
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .locals 13
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1
    const-string v0, "  next scheduled: "

    .line 3
    const-string v1, "Last backup pass started: "

    .line 5
    const-string v2, "Framework scheduling is "

    .line 7
    const-string v3, "Auto-restore is "

    .line 9
    iget v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 11
    if-nez v4, :cond_0

    .line 13
    const-string v4, ""

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    const-string v5, "User "

    .line 20
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 25
    const-string v6, ":"

    .line 27
    invoke-static {v5, v4, v6}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    :goto_0
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 33
    monitor-enter v5

    .line 34
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v7, "Backup Manager is "

    .line 44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-boolean v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 49
    if-eqz v7, :cond_1

    .line 51
    const-string/jumbo v7, "enabled"

    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto/16 :goto_14

    .line 58
    :cond_1
    const-string/jumbo v7, "disabled"

    .line 61
    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v7, " / "

    .line 66
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-boolean v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 71
    if-nez v7, :cond_2

    .line 73
    const-string/jumbo v7, "not "

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const-string v7, ""

    .line 79
    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v7, "setup complete / "

    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 90
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 93
    move-result v7

    .line 94
    if-nez v7, :cond_3

    .line 96
    const-string/jumbo v7, "not "

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    const-string v7, ""

    .line 102
    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string/jumbo v7, "pending init"

    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    iget-boolean v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mAutoRestore:Z

    .line 120
    if-eqz v6, :cond_4

    .line 122
    const-string/jumbo v6, "enabled"

    .line 125
    goto :goto_4

    .line 126
    :cond_4
    const-string/jumbo v6, "disabled"

    .line 129
    :goto_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    iget-boolean v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    .line 138
    if-eqz v3, :cond_5

    .line 140
    const-string v3, "Backup currently running"

    .line 142
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_6

    .line 151
    const-string v3, "Backup in progress"

    .line 153
    goto :goto_5

    .line 154
    :cond_6
    const-string v3, "No backups running"

    .line 156
    :goto_5
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->isFrameworkSchedulingEnabled()Z

    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_7

    .line 165
    const-string/jumbo v3, "enabled"

    .line 168
    goto :goto_6

    .line 169
    :cond_7
    const-string/jumbo v3, "disabled"

    .line 172
    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    iget-wide v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mLastBackupPass:J

    .line 186
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, " (now = "

    .line 191
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 197
    move-result-wide v6

    .line 198
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 201
    const/16 v1, 0x29

    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    .line 215
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 220
    sget-object v2, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    .line 222
    const-class v2, Lcom/android/server/backup/KeyValueBackupJob;

    .line 224
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :try_start_1
    sget-object v3, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    .line 227
    invoke-virtual {v3, v0}, Landroid/util/SparseLongArray;->get(I)J

    .line 230
    move-result-wide v6

    .line 231
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 232
    :try_start_2
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    .line 244
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, "Transport whitelist:"

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 264
    iget-object v0, v0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    .line 266
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 269
    move-result-object v0

    .line 270
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    move-result v1

    .line 274
    if-eqz v1, :cond_8

    .line 276
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    move-result-object v1

    .line 280
    check-cast v1, Landroid/content/ComponentName;

    .line 282
    const-string v2, "    "

    .line 284
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    goto :goto_7

    .line 295
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 297
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, "Available transports:"

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->listAllTransports()[Ljava/lang/String;

    .line 318
    move-result-object v0

    .line 319
    array-length v1, v0

    .line 320
    const/4 v2, 0x0

    .line 321
    move v3, v2

    .line 322
    :goto_8
    if-ge v3, v1, :cond_b

    .line 324
    aget-object v6, v0, v3

    .line 326
    new-instance v7, Ljava/lang/StringBuilder;

    .line 328
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 333
    iget-object v8, v8, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 335
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    move-result v8

    .line 339
    if-eqz v8, :cond_9

    .line 341
    const-string v8, "  * "

    .line 343
    goto :goto_9

    .line 344
    :cond_9
    const-string v8, "    "

    .line 346
    :goto_9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    move-result-object v7

    .line 356
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 359
    :try_start_3
    new-instance v7, Ljava/io/File;

    .line 361
    iget-object v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 363
    iget-object v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 365
    invoke-virtual {v9, v6}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    .line 368
    move-result-object v9

    .line 369
    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 372
    new-instance v8, Ljava/lang/StringBuilder;

    .line 374
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    const-string v9, "       destination: "

    .line 379
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-object v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 384
    iget-object v10, v9, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 386
    monitor-enter v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    :try_start_4
    invoke-virtual {v9, v6}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 390
    move-result-object v9

    .line 391
    iget-object v9, v9, Lcom/android/server/backup/TransportManager$TransportDescription;->currentDestinationString:Ljava/lang/String;

    .line 393
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 394
    :try_start_5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    move-result-object v8

    .line 401
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    new-instance v8, Ljava/lang/StringBuilder;

    .line 406
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    const-string v9, "       intent: "

    .line 411
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget-object v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 416
    iget-object v10, v9, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 418
    monitor-enter v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 419
    :try_start_6
    invoke-virtual {v9, v6}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 422
    move-result-object v6

    .line 423
    iget-object v6, v6, Lcom/android/server/backup/TransportManager$TransportDescription;->configurationIntent:Landroid/content/Intent;

    .line 425
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 426
    :try_start_7
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    move-result-object v6

    .line 433
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 439
    move-result-object v6

    .line 440
    array-length v7, v6

    .line 441
    move v8, v2

    .line 442
    :goto_a
    if-ge v8, v7, :cond_a

    .line 444
    aget-object v9, v6, v8

    .line 446
    new-instance v10, Ljava/lang/StringBuilder;

    .line 448
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    const-string v11, "       "

    .line 453
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 459
    move-result-object v11

    .line 460
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v11, " - "

    .line 465
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v9}, Ljava/io/File;->length()J

    .line 471
    move-result-wide v11

    .line 472
    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 475
    const-string v9, " state bytes"

    .line 477
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    move-result-object v9

    .line 484
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 487
    add-int/lit8 v8, v8, 0x1

    .line 489
    goto :goto_a

    .line 490
    :catch_0
    move-exception v6

    .line 491
    goto :goto_b

    .line 492
    :catchall_1
    move-exception v6

    .line 493
    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 494
    :try_start_9
    throw v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 495
    :catchall_2
    move-exception v6

    .line 496
    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 497
    :try_start_b
    throw v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 498
    :goto_b
    :try_start_c
    const-string v7, "BackupManagerService"

    .line 500
    iget v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 502
    const-string v9, "Error in transport"

    .line 504
    invoke-static {v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 507
    move-result-object v8

    .line 508
    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    new-instance v7, Ljava/lang/StringBuilder;

    .line 513
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    const-string v8, "        Error: "

    .line 518
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    move-result-object v6

    .line 528
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 533
    goto/16 :goto_8

    .line 535
    :cond_b
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 537
    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->dumpTransportClients(Ljava/io/PrintWriter;)V

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    .line 542
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v1, "Pending init: "

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 555
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 558
    move-result v1

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    move-result-object v0

    .line 566
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 571
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 574
    move-result-object v0

    .line 575
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 578
    move-result v1

    .line 579
    if-eqz v1, :cond_c

    .line 581
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 584
    move-result-object v1

    .line 585
    check-cast v1, Ljava/lang/String;

    .line 587
    new-instance v3, Ljava/lang/StringBuilder;

    .line 589
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    const-string v6, "    "

    .line 594
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    move-result-object v1

    .line 604
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    goto :goto_c

    .line 608
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 610
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    const-string v1, "Ancestral: "

    .line 618
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    move-result-object v0

    .line 625
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 630
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 633
    move-result-object v0

    .line 634
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    .line 639
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const-string v1, "Current:   "

    .line 647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    move-result-object v0

    .line 654
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 659
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 662
    move-result-object v0

    .line 663
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 668
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 671
    move-result v0

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    .line 674
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 677
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    const-string v3, "Participants:"

    .line 682
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    move-result-object v1

    .line 689
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    :goto_d
    if-ge v2, v0, :cond_e

    .line 694
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 696
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 699
    move-result v1

    .line 700
    const-string v3, "  uid: "

    .line 702
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 708
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 710
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 713
    move-result-object v1

    .line 714
    check-cast v1, Ljava/util/HashSet;

    .line 716
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 719
    move-result-object v1

    .line 720
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 723
    move-result v3

    .line 724
    if-eqz v3, :cond_d

    .line 726
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 729
    move-result-object v3

    .line 730
    check-cast v3, Ljava/lang/String;

    .line 732
    new-instance v6, Ljava/lang/StringBuilder;

    .line 734
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 737
    const-string v7, "    "

    .line 739
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    move-result-object v3

    .line 749
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    goto :goto_e

    .line 753
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 755
    goto :goto_d

    .line 756
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 758
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    const-string v1, "Ancestral packages: "

    .line 766
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 771
    if-nez v1, :cond_f

    .line 773
    const-string/jumbo v1, "none"

    .line 776
    goto :goto_f

    .line 777
    :cond_f
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 780
    move-result v1

    .line 781
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 784
    move-result-object v1

    .line 785
    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 791
    move-result-object v0

    .line 792
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 797
    if-eqz v0, :cond_10

    .line 799
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 802
    move-result-object v0

    .line 803
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 806
    move-result v1

    .line 807
    if-eqz v1, :cond_10

    .line 809
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 812
    move-result-object v1

    .line 813
    check-cast v1, Ljava/lang/String;

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    .line 817
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 820
    const-string v3, "    "

    .line 822
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 831
    move-result-object v1

    .line 832
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    goto :goto_10

    .line 836
    :cond_10
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    .line 838
    iget-object v1, v0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    .line 840
    monitor-enter v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 841
    :try_start_d
    new-instance v2, Ljava/util/HashSet;

    .line 843
    iget-object v0, v0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    .line 845
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 848
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 849
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 851
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 854
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const-string v1, "Ever backed up: "

    .line 859
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 865
    move-result v1

    .line 866
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 869
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 872
    move-result-object v0

    .line 873
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 879
    move-result-object v0

    .line 880
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 883
    move-result v1

    .line 884
    if-eqz v1, :cond_11

    .line 886
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 889
    move-result-object v1

    .line 890
    check-cast v1, Ljava/lang/String;

    .line 892
    new-instance v2, Ljava/lang/StringBuilder;

    .line 894
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 897
    const-string v3, "    "

    .line 899
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 908
    move-result-object v1

    .line 909
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 912
    goto :goto_11

    .line 913
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 915
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    const-string v1, "Pending key/value backup: "

    .line 923
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 928
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 931
    move-result v1

    .line 932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 935
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 938
    move-result-object v0

    .line 939
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 944
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 947
    move-result-object v0

    .line 948
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 951
    move-result-object v0

    .line 952
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 955
    move-result v1

    .line 956
    if-eqz v1, :cond_12

    .line 958
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 961
    move-result-object v1

    .line 962
    check-cast v1, Lcom/android/server/backup/keyvalue/BackupRequest;

    .line 964
    new-instance v2, Ljava/lang/StringBuilder;

    .line 966
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 969
    const-string v3, "    "

    .line 971
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 980
    move-result-object v1

    .line 981
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 984
    goto :goto_12

    .line 985
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 987
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 990
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    const-string v1, "Full backup queue:"

    .line 995
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 1000
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1003
    move-result v1

    .line 1004
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1010
    move-result-object v0

    .line 1011
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 1016
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1019
    move-result-object v0

    .line 1020
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1023
    move-result v1

    .line 1024
    if-eqz v1, :cond_13

    .line 1026
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1029
    move-result-object v1

    .line 1030
    check-cast v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 1032
    const-string v2, "    "

    .line 1034
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1037
    iget-wide v2, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    .line 1039
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1042
    const-string v2, " : "

    .line 1044
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    iget-object v1, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    .line 1049
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    goto :goto_13

    .line 1053
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1055
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1058
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    const-string v1, "Agent timeouts:"

    .line 1063
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1069
    move-result-object v0

    .line 1070
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1075
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1078
    const-string v1, "    KvBackupAgentTimeoutMillis: "

    .line 1080
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 1085
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    .line 1088
    move-result-wide v1

    .line 1089
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1092
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1095
    move-result-object v0

    .line 1096
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1104
    const-string v1, "    FullBackupAgentTimeoutMillis: "

    .line 1106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 1111
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    .line 1114
    move-result-wide v1

    .line 1115
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1121
    move-result-object v0

    .line 1122
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1130
    const-string v1, "    SharedBackupAgentTimeoutMillis: "

    .line 1132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 1137
    iget-object v2, v1, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    .line 1139
    monitor-enter v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1140
    :try_start_f
    iget-wide v3, v1, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mSharedBackupAgentTimeoutMillis:J

    .line 1142
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1143
    :try_start_10
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1149
    move-result-object v0

    .line 1150
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1155
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1158
    const-string v1, "    RestoreAgentTimeoutMillis (system): "

    .line 1160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 1165
    const/16 v2, 0x270f

    .line 1167
    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis(I)J

    .line 1170
    move-result-wide v1

    .line 1171
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1177
    move-result-object v0

    .line 1178
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1183
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1186
    const-string v1, "    RestoreAgentTimeoutMillis: "

    .line 1188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 1193
    const/16 v2, 0x2710

    .line 1195
    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis(I)J

    .line 1198
    move-result-wide v1

    .line 1199
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1205
    move-result-object v0

    .line 1206
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1211
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1214
    const-string v1, "    RestoreAgentFinishedTimeoutMillis: "

    .line 1216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 1221
    iget-object v2, v1, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    .line 1223
    monitor-enter v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1224
    :try_start_11
    iget-wide v3, v1, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentFinishedTimeoutMillis:J

    .line 1226
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1227
    :try_start_12
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1233
    move-result-object v0

    .line 1234
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1239
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1242
    const-string v1, "    QuotaExceededTimeoutMillis: "

    .line 1244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 1249
    invoke-virtual {p0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getQuotaExceededTimeoutMillis()J

    .line 1252
    move-result-wide v1

    .line 1253
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1259
    move-result-object p0

    .line 1260
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1263
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1264
    return-void

    .line 1265
    :catchall_3
    move-exception p0

    .line 1266
    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1267
    :try_start_14
    throw p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1268
    :catchall_4
    move-exception p0

    .line 1269
    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 1270
    :try_start_16
    throw p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 1271
    :catchall_5
    move-exception p0

    .line 1272
    :try_start_17
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 1273
    :try_start_18
    throw p0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 1274
    :catchall_6
    move-exception p0

    .line 1275
    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 1276
    :try_start_1a
    throw p0

    .line 1277
    :goto_14
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 1278
    throw p0
.end method

.method public final enqueueFullBackup(JLjava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(JLjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/backup/UserBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    .line 12
    const-wide/16 v2, 0x0

    .line 14
    cmp-long p3, p1, v2

    .line 16
    if-lez p3, :cond_1

    .line 18
    iget-object p3, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result p3

    .line 24
    add-int/lit8 p3, p3, -0x1

    .line 26
    :goto_0
    if-ltz p3, :cond_2

    .line 28
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 36
    iget-wide v2, v2, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    .line 38
    cmp-long v2, v2, p1

    .line 40
    if-gtz v2, :cond_0

    .line 42
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 44
    add-int/lit8 p2, p3, 0x1

    .line 46
    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 p3, -0x1

    .line 56
    :cond_2
    :goto_1
    if-gez p3, :cond_3

    .line 58
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 60
    const/4 p2, 0x0

    .line 61
    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 64
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Lcom/android/server/backup/UserBackupManagerService$1;

    .line 67
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 69
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Lcom/android/server/backup/UserBackupManagerService$1;

    .line 74
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void

    .line 78
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0
.end method

.method public final filterUserFacingPackages(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->shouldSkipUserFacingData()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 33
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, v2}, Lcom/android/server/backup/UserBackupManagerService;->shouldSkipPackage(Ljava/lang/String;)Z

    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_1

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    const-string v3, "Will skip backup/restore for "

    .line 49
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 54
    const-string v3, "BackupManagerService"

    .line 56
    invoke-static {v2, v1, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-object v0
.end method

.method public final fullBackupAllowable(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 10
    const-string v4, "BackupManagerService"

    .line 12
    if-nez v1, :cond_0

    .line 14
    const-string p0, "Transport not registered; full data backup not performed"

    .line 16
    invoke-static {v3, p0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return v2

    .line 24
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Ljava/io/File;

    .line 30
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 32
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    new-instance p0, Ljava/io/File;

    .line 37
    const-string p1, "@pm@"

    .line 39
    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 45
    move-result-wide p0

    .line 46
    const-wide/16 v0, 0x0

    .line 48
    cmp-long p0, p0, v0

    .line 50
    if-gtz p0, :cond_1

    .line 52
    const-string p0, "Full backup requested but dataset not yet initialized"

    .line 54
    invoke-static {v3, p0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return v2

    .line 62
    :catch_0
    move-exception p0

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 p0, 0x1

    .line 65
    return p0

    .line 66
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    const-string v0, "Unable to get transport name: "

    .line 70
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    invoke-static {v3, p0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return v2
.end method

.method public final fullRestoreCustomized(Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IMemorySaverBackupRestoreObserver;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    const/high16 v1, 0x30000000

    .line 8
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 18
    iput-object p3, v1, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 20
    iput-boolean v3, v1, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    .line 22
    iput-boolean v3, v1, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    .line 24
    iput-object v2, v1, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    .line 26
    iput-object v2, v1, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    .line 28
    :cond_0
    const-string p3, "/"

    .line 30
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    array-length p3, p1

    .line 35
    const/4 v1, 0x1

    .line 36
    sub-int/2addr p3, v1

    .line 37
    aget-object p3, p1, p3

    .line 39
    array-length v4, p1

    .line 40
    sub-int/2addr v4, v1

    .line 41
    aget-object p1, p1, v4

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 46
    move-result p1

    .line 47
    add-int/lit8 p1, p1, -0x3

    .line 49
    invoke-virtual {p3, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    sget-object p3, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    .line 55
    if-eqz p3, :cond_1

    .line 57
    const-string v3, "BackupManagerYuva"

    .line 59
    const-string/jumbo v4, "restore started "

    .line 62
    iput-object p1, p3, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    .line 64
    iget-object p1, p3, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 66
    if-eqz p1, :cond_1

    .line 68
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v4, p3, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object p1, p3, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 87
    iget-object v4, p3, Lcom/android/server/backup/BackupManagerYuva;->mRestorePackageName:Ljava/lang/String;

    .line 89
    invoke-interface {p1, v4}, Landroid/app/backup/IMemorySaverBackupRestoreObserver;->onRestoreStart(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 93
    :catch_0
    const-string/jumbo p1, "full restore observer went away: startRestore"

    .line 96
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-object v2, p3, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    .line 101
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mEncPassword:Ljava/lang/String;

    .line 103
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 105
    sput-object p1, Lcom/android/server/backup/UserBackupManagerService;->mSplitRestoreFlag:Ljava/lang/Boolean;

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->adbRestore(Landroid/os/ParcelFileDescriptor;Z)V

    .line 110
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 112
    sput-object p0, Lcom/android/server/backup/UserBackupManagerService;->mSplitRestoreFlag:Ljava/lang/Boolean;

    .line 114
    return-void
.end method

.method public final generateRandomIntegerToken()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 3
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 9
    neg-int v0, v0

    .line 10
    :cond_0
    and-int/lit16 v0, v0, -0x100

    .line 12
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 17
    move-result p0

    .line 18
    and-int/lit16 p0, p0, 0xff

    .line 20
    or-int/2addr p0, v0

    .line 21
    return p0
.end method

.method public final getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.BACKUP"

    .line 5
    const-string/jumbo v2, "getAvailableRestoreToken"

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 13
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    iget-wide v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 18
    const-wide/16 v5, 0x0

    .line 20
    cmp-long v3, v3, v5

    .line 22
    if-eqz v3, :cond_0

    .line 24
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    .line 26
    iget-object v4, v3, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    .line 28
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    iget-object v3, v3, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    .line 31
    check-cast v3, Ljava/util/HashSet;

    .line 33
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    if-eqz p1, :cond_0

    .line 40
    :try_start_2
    iget-wide v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    :try_start_4
    throw p0

    .line 48
    :cond_0
    :goto_0
    monitor-exit v2

    .line 49
    return-wide v0

    .line 50
    :goto_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    throw p0
.end method

.method public getBMMEventSender(Landroid/app/backup/IBackupManagerMonitor;)Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    .line 6
    return-object p0
.end method

.method public getBackupDestinationFromTransport(Lcom/android/server/backup/transport/TransportConnection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotAvailableException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->shouldUseNewBackupEligibilityRules()Z

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v1

    .line 13
    :try_start_0
    const-string p0, "BMS.getBackupDestinationFromTransport"

    .line 15
    invoke-virtual {p1, p0}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/android/server/backup/transport/BackupTransportClient;->getTransportFlags()I

    .line 22
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    and-int/lit8 p0, p0, 0x2

    .line 25
    if-eqz p0, :cond_1

    .line 27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    return v0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    throw p0
.end method

.method public final getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 5
    new-instance v7, Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 7
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 9
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    move-object v2, v0

    .line 14
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 16
    const/4 v6, 0x0

    .line 17
    iget v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 19
    move-object v0, v7

    .line 20
    move v5, p1

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/android/server/backup/utils/BackupEligibilityRules;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;ILandroid/content/Context;IZ)V

    .line 24
    return-object v7
.end method

.method public final getMessageIdForOperationType(I)I
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v1, "getMessageIdForOperationType called on invalid operation type: "

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 23
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    const-string p1, "BackupManagerService"

    .line 29
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 p0, -0x1

    .line 33
    return p0

    .line 34
    :cond_0
    const/16 p0, 0x12

    .line 36
    return p0

    .line 37
    :cond_1
    const/16 p0, 0x11

    .line 39
    return p0
.end method

.method public getPackageTrackingReceiver()Landroid/content/BroadcastReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Lcom/android/server/backup/UserBackupManagerService$2;

    .line 3
    return-object p0
.end method

.method public final getQueueLock()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public getRequestBackupParams([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ILcom/android/server/backup/utils/BackupEligibilityRules;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/BackupParams;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object/from16 v3, p5

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 16
    array-length v6, v1

    .line 17
    const/4 v7, 0x0

    .line 18
    move v8, v7

    .line 19
    :goto_0
    if-ge v8, v6, :cond_3

    .line 21
    aget-object v9, v1, v8

    .line 23
    const-string v10, "@pm@"

    .line 25
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v10

    .line 29
    if-eqz v10, :cond_0

    .line 31
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :try_start_0
    iget-object v10, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 37
    iget v11, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 39
    const/high16 v12, 0x8000000

    .line 41
    invoke-virtual {v10, v9, v12, v11}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 44
    move-result-object v10

    .line 45
    iget-object v11, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 47
    invoke-virtual {v3, v11}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    .line 50
    move-result v11

    .line 51
    if-nez v11, :cond_1

    .line 53
    const/16 v10, -0x7d1

    .line 55
    invoke-static {p2, v9, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v3, v10}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    .line 62
    move-result v11

    .line 63
    if-eqz v11, :cond_2

    .line 65
    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 67
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 73
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_1

    .line 77
    :catch_0
    const/16 v10, -0x7d2

    .line 79
    invoke-static {p2, v9, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 82
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    array-length v0, v1

    .line 86
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 93
    move-result v1

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 101
    move-result v6

    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v6

    .line 106
    filled-new-array {v0, v1, v6}, [Ljava/lang/Object;

    .line 109
    move-result-object v0

    .line 110
    const/16 v1, 0xb0c

    .line 112
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 115
    const/4 v0, 0x1

    .line 116
    and-int/lit8 v1, p4, 0x1

    .line 118
    if-eqz v1, :cond_4

    .line 120
    move v7, v0

    .line 121
    :cond_4
    new-instance v0, Lcom/android/server/backup/params/BackupParams;

    .line 123
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 126
    move-object/from16 v1, p6

    .line 128
    iput-object v1, v0, Lcom/android/server/backup/params/BackupParams;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 130
    move-object/from16 v1, p7

    .line 132
    iput-object v1, v0, Lcom/android/server/backup/params/BackupParams;->dirName:Ljava/lang/String;

    .line 134
    iput-object v5, v0, Lcom/android/server/backup/params/BackupParams;->kvPackages:Ljava/util/ArrayList;

    .line 136
    iput-object v4, v0, Lcom/android/server/backup/params/BackupParams;->fullPackages:Ljava/util/ArrayList;

    .line 138
    iput-object v2, v0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    .line 140
    move-object/from16 v1, p3

    .line 142
    iput-object v1, v0, Lcom/android/server/backup/params/BackupParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 144
    move-object/from16 v1, p8

    .line 146
    iput-object v1, v0, Lcom/android/server/backup/params/BackupParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 148
    iput-boolean v7, v0, Lcom/android/server/backup/params/BackupParams;->nonIncrementalBackup:Z

    .line 150
    iput-object v3, v0, Lcom/android/server/backup/params/BackupParams;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 152
    return-object v0
.end method

.method public getThreadForAsyncOperation(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/Thread;

    .line 3
    invoke-direct {p0, p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 6
    return-object p0
.end method

.method public final getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 3
    return-object p0
.end method

.method public initializeBackupEnableState()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->readEnabledState()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->setBackupEnabled(ZZ)V

    .line 9
    return-void
.end method

.method public final initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.BACKUP"

    .line 5
    const-string/jumbo v2, "initializeTransport"

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string/jumbo v1, "initializeTransport(): "

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 32
    invoke-static {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    const-string v1, "BackupManagerService"

    .line 38
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 44
    move-result-wide v0

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 47
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 50
    new-instance v8, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda10;

    .line 52
    invoke-direct {v8, p0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 55
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 57
    new-instance v10, Lcom/android/server/backup/internal/PerformInitializeTask;

    .line 59
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 61
    iget-object v9, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 63
    move-object v3, v10

    .line 64
    move-object v4, p0

    .line 65
    move-object v6, p1

    .line 66
    move-object v7, p2

    .line 67
    invoke-direct/range {v3 .. v9}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/TransportManager;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/io/File;)V

    .line 70
    invoke-virtual {v2, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    throw p0
.end method

.method public final isBackupOperationInProgress()Z
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 3
    iget-object v0, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_1

    .line 16
    iget-object v3, p0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/android/server/backup/internal/Operation;

    .line 24
    iget v4, v3, Lcom/android/server/backup/internal/Operation;->type:I

    .line 26
    const/4 v5, 0x2

    .line 27
    if-ne v4, v5, :cond_0

    .line 29
    iget v3, v3, Lcom/android/server/backup/internal/Operation;->state:I

    .line 31
    if-nez v3, :cond_0

    .line 33
    monitor-exit v0

    .line 34
    const/4 v1, 0x1

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    monitor-exit v0

    .line 42
    :goto_1
    return v1

    .line 43
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final declared-synchronized isFrameworkSchedulingEnabled()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "backup_scheduling_enabled"

    .line 10
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 16
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-ne v0, v3, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    :goto_0
    monitor-exit p0

    .line 22
    return v3

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0

    .line 25
    throw v0
.end method

.method public final isPrivilegeBackupApp(I)Z
    .locals 8

    .line 1
    const-string v0, "BackupManagerService"

    .line 3
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    const-string v3, "android.uid.system:1000"

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v3, :cond_0

    .line 19
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 21
    const/16 v5, 0x3e8

    .line 23
    invoke-virtual {v3, v5, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 29
    :goto_0
    move v2, v4

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    const-string v3, "android.uid.samsungcloud:5009"

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 39
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 41
    const/16 v5, 0x1391

    .line 43
    invoke-virtual {v3, v5, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPrivilegePkgName:[Ljava/lang/String;

    .line 52
    array-length v3, p1

    .line 53
    move v5, v2

    .line 54
    :goto_1
    if-ge v5, v3, :cond_3

    .line 56
    aget-object v6, p1, v5

    .line 58
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_2

    .line 64
    iget-object v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    const-string v7, "android"

    .line 68
    invoke-virtual {v6, v7, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    if-nez v6, :cond_2

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 77
    goto :goto_1

    .line 78
    :catch_0
    const-string/jumbo p0, "isPrivilegeBackupApp() error"

    .line 81
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo p1, "isPrivilegeBackupApp() pkg name is "

    .line 89
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string p1, " value : "

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v2
.end method

.method public final isYuvaSupported()Z
    .locals 4

    .line 1
    const-string v0, "BackupManagerService"

    .line 3
    const-string/jumbo v1, "ro.product.first_api_level"

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 10
    move-result v1

    .line 11
    const/16 v3, 0x22

    .line 13
    if-ge v1, v3, :cond_0

    .line 15
    const-string/jumbo v1, "com.samsung.memorysaver"

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 20
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 22
    invoke-virtual {v3, v1, v2, p0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    const-string p0, "Memory Saver is there"

    .line 27
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :catch_0
    const-string p0, "MemorySaver not found"

    .line 34
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return v2
.end method

.method public final listAllTransports()[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.BACKUP"

    .line 5
    const-string/jumbo v2, "listAllTransports"

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 13
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 18
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 21
    move-result v1

    .line 22
    new-array v1, v1, [Ljava/lang/String;

    .line 24
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 26
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object p0

    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 47
    iget-object v3, v3, Lcom/android/server/backup/TransportManager$TransportDescription;->name:Ljava/lang/String;

    .line 49
    aput-object v3, v1, v2

    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    monitor-exit v0

    .line 57
    return-object v1

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final logBackupComplete(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "@pm@"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 12
    const-string/jumbo v1, "getBackupFinishedNotificationReceivers(...) returns "

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    const-string v2, "BackupManagerConstants"

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v1, ", "

    .line 25
    iget-object v4, v0, Lcom/android/server/backup/BackupManagerConstants;->mBackupFinishedNotificationReceivers:[Ljava/lang/String;

    .line 27
    invoke-static {v1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v1, v0, Lcom/android/server/backup/BackupManagerConstants;->mBackupFinishedNotificationReceivers:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 43
    monitor-exit v0

    .line 44
    array-length v0, v1

    .line 45
    const/4 v2, 0x0

    .line 46
    :goto_0
    if-ge v2, v0, :cond_1

    .line 48
    aget-object v3, v1, v2

    .line 50
    new-instance v4, Landroid/content/Intent;

    .line 52
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 55
    const-string v5, "android.intent.action.BACKUP_FINISHED"

    .line 57
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const v3, 0x10000020

    .line 66
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    const-string/jumbo v3, "packageName"

    .line 72
    invoke-virtual {v4, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v3, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 77
    iget v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 79
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    .line 91
    const-string v0, "Can\'t log backup of "

    .line 93
    iget-object v1, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    .line 95
    monitor-enter v1

    .line 96
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    .line 98
    check-cast v2, Ljava/util/HashSet;

    .line 100
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_2

    .line 106
    monitor-exit v1

    .line 107
    goto :goto_3

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    goto :goto_4

    .line 110
    :cond_2
    new-instance v2, Ljava/io/File;

    .line 112
    iget-object p0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mStateDirectory:Ljava/io/File;

    .line 114
    const-string/jumbo v3, "processed"

    .line 117
    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    new-instance p0, Ljava/io/RandomAccessFile;

    .line 122
    const-string/jumbo v3, "rws"

    .line 125
    invoke-direct {p0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :try_start_3
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    .line 131
    move-result-wide v3

    .line 132
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 135
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    :try_start_4
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    goto :goto_2

    .line 142
    :catchall_1
    move-exception v3

    .line 143
    :try_start_5
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 146
    goto :goto_1

    .line 147
    :catchall_2
    move-exception p0

    .line 148
    :try_start_6
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 151
    :goto_1
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 152
    :catch_0
    :try_start_7
    const-string p0, "ProcessedPackagesJournal"

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string p1, " to "

    .line 164
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_2
    monitor-exit v1

    .line 178
    :goto_3
    return-void

    .line 179
    :goto_4
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 180
    throw p0

    .line 181
    :catchall_3
    move-exception p0

    .line 182
    monitor-exit v0

    .line 183
    throw p0
.end method

.method public final prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeOut:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    iget p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeoutMin:I

    .line 8
    int-to-long p2, p2

    .line 9
    const-wide/32 v2, 0xea60

    .line 12
    mul-long/2addr p2, v2

    .line 13
    :cond_0
    if-eqz p5, :cond_1

    .line 15
    if-eq p5, v1, :cond_1

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo p3, "prepareOperationTimeout() doesn\'t support operation "

    .line 22
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string p1, " of type "

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 46
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    const-string p1, "BackupManagerService"

    .line 52
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, p1, v1, p4, p5}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->registerOperationForPackages(ILjava/util/Set;Lcom/android/server/backup/BackupRestoreTask;I)V

    .line 68
    invoke-virtual {p0, p5}, Lcom/android/server/backup/UserBackupManagerService;->getMessageIdForOperationType(I)I

    .line 71
    move-result p5

    .line 72
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 74
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, p5, p1, v0, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 82
    return-void
.end method

.method public readEnabledState()Z
    .locals 7

    .line 1
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3
    invoke-static {p0}, Lcom/android/server/backup/UserBackupManagerFiles;->getBaseStateDir(I)Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Unexpected enabled state:"

    .line 9
    new-instance v2, Ljava/io/File;

    .line 11
    const-string v3, "backup_enabled"

    .line 13
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 19
    move-result v0

    .line 20
    const-string v3, "BackupManagerService"

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v0, :cond_2

    .line 25
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 27
    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    .line 33
    move-result v2

    .line 34
    const/4 v5, 0x1

    .line 35
    if-eqz v2, :cond_0

    .line 37
    if-eq v2, v5, :cond_0

    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    .line 56
    goto :goto_2

    .line 57
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v5, v4

    .line 61
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    move v4, v5

    .line 65
    goto :goto_4

    .line 66
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    goto :goto_3

    .line 70
    :catchall_1
    move-exception v0

    .line 71
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 74
    :goto_3
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 75
    :catch_0
    const-string v0, "Cannot read enable state; assuming disabled"

    .line 77
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    goto :goto_4

    .line 81
    :cond_2
    const-string/jumbo v0, "isBackupEnabled() => false due to absent settings file"

    .line 84
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    const-string/jumbo v1, "user:"

    .line 92
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string p0, " readBackupEnableState enabled:"

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p0

    .line 110
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v4
.end method

.method public final readFullBackupSchedule()Ljava/util/ArrayList;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v0, "Package "

    .line 5
    const-string v2, "BackupManagerService"

    .line 7
    const-string v3, "Unknown backup schedule version "

    .line 9
    iget-object v4, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 11
    iget v5, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 13
    iget-object v6, v1, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 15
    invoke-static {v4, v5, v6}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)Ljava/util/List;

    .line 18
    move-result-object v4

    .line 19
    iget-object v7, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 21
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 24
    move-result v7

    .line 25
    const/4 v10, 0x1

    .line 26
    if-eqz v7, :cond_5

    .line 28
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    .line 30
    iget-object v13, v1, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 32
    invoke-direct {v7, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 35
    :try_start_1
    new-instance v13, Ljava/io/BufferedInputStream;

    .line 37
    invoke-direct {v13, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 40
    :try_start_2
    new-instance v14, Ljava/io/DataInputStream;

    .line 42
    invoke-direct {v14, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 45
    :try_start_3
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    .line 48
    move-result v15

    .line 49
    if-ne v15, v10, :cond_4

    .line 51
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    .line 54
    move-result v3

    .line 55
    new-instance v15, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    new-instance v10, Ljava/util/HashSet;

    .line 62
    invoke-direct {v10, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 65
    const/4 v12, 0x0

    .line 66
    :goto_0
    if-ge v12, v3, :cond_1

    .line 68
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 71
    move-result-object v8

    .line 72
    move/from16 v16, v12

    .line 74
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readLong()J

    .line 77
    move-result-wide v11

    .line 78
    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    :try_start_4
    iget-object v9, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 83
    const/4 v1, 0x0

    .line 84
    :try_start_5
    invoke-virtual {v9, v8, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 87
    move-result-object v9

    .line 88
    invoke-virtual {v6, v9}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    .line 91
    move-result v17

    .line 92
    if-eqz v17, :cond_0

    .line 94
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 96
    invoke-virtual {v6, v9}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    .line 99
    move-result v9

    .line 100
    if-eqz v9, :cond_0

    .line 102
    new-instance v9, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 104
    invoke-direct {v9, v11, v12, v8}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(JLjava/lang/String;)V

    .line 107
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    goto :goto_3

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    :goto_1
    move v11, v1

    .line 113
    :goto_2
    move-object v1, v0

    .line 114
    goto/16 :goto_7

    .line 116
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v11, " no longer eligible for full backup"

    .line 129
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v9

    .line 136
    invoke-static {v5, v9}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object v9

    .line 140
    invoke-static {v2, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    goto :goto_3

    .line 144
    :catchall_1
    move-exception v0

    .line 145
    const/4 v1, 0x0

    .line 146
    goto :goto_1

    .line 147
    :catch_0
    const/4 v1, 0x0

    .line 148
    :catch_1
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    .line 150
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v8, " not installed; dropping from full backup"

    .line 161
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v8

    .line 168
    invoke-static {v5, v8}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 171
    move-result-object v8

    .line 172
    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_3
    add-int/lit8 v12, v16, 0x1

    .line 177
    move-object/from16 v1, p0

    .line 179
    goto :goto_0

    .line 180
    :cond_1
    const/4 v1, 0x0

    .line 181
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 184
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 185
    move v11, v1

    .line 186
    :cond_2
    :goto_4
    :try_start_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_3

    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    move-result-object v1

    .line 196
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 198
    invoke-virtual {v6, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_2

    .line 204
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 206
    invoke-virtual {v6, v3}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    .line 209
    move-result v3

    .line 210
    if-eqz v3, :cond_2

    .line 212
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 214
    invoke-virtual {v10, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 217
    move-result v3

    .line 218
    if-nez v3, :cond_2

    .line 220
    new-instance v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 222
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 224
    const-wide/16 v8, 0x0

    .line 226
    invoke-direct {v3, v8, v9, v1}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(JLjava/lang/String;)V

    .line 229
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const/4 v11, 0x1

    .line 233
    goto :goto_4

    .line 234
    :catchall_2
    move-exception v0

    .line 235
    goto :goto_2

    .line 236
    :cond_3
    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 239
    :try_start_8
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 242
    :try_start_9
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 245
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 248
    move-object/from16 v2, p0

    .line 250
    move-object v12, v15

    .line 251
    goto/16 :goto_f

    .line 253
    :catch_2
    move-exception v0

    .line 254
    goto :goto_d

    .line 255
    :catchall_3
    move-exception v0

    .line 256
    :goto_5
    move-object v1, v0

    .line 257
    goto :goto_b

    .line 258
    :catchall_4
    move-exception v0

    .line 259
    :goto_6
    move-object v1, v0

    .line 260
    goto :goto_9

    .line 261
    :cond_4
    const/4 v1, 0x0

    .line 262
    :try_start_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 264
    new-instance v8, Ljava/lang/StringBuilder;

    .line 266
    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object v3

    .line 276
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 279
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 280
    :goto_7
    :try_start_c
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 283
    goto :goto_8

    .line 284
    :catchall_5
    move-exception v0

    .line 285
    move-object v3, v0

    .line 286
    :try_start_d
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 289
    :goto_8
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 290
    :catchall_6
    move-exception v0

    .line 291
    const/4 v1, 0x0

    .line 292
    move v11, v1

    .line 293
    goto :goto_6

    .line 294
    :goto_9
    :try_start_e
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 297
    goto :goto_a

    .line 298
    :catchall_7
    move-exception v0

    .line 299
    move-object v3, v0

    .line 300
    :try_start_f
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 303
    :goto_a
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 304
    :catchall_8
    move-exception v0

    .line 305
    const/4 v1, 0x0

    .line 306
    move v11, v1

    .line 307
    goto :goto_5

    .line 308
    :goto_b
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 311
    goto :goto_c

    .line 312
    :catchall_9
    move-exception v0

    .line 313
    move-object v3, v0

    .line 314
    :try_start_11
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 317
    :goto_c
    throw v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    .line 318
    :catch_3
    move-exception v0

    .line 319
    const/4 v1, 0x0

    .line 320
    move v11, v1

    .line 321
    :goto_d
    const-string v1, "Unable to read backup schedule"

    .line 323
    invoke-static {v5, v1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 326
    move-result-object v1

    .line 327
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    move-object/from16 v2, p0

    .line 332
    iget-object v0, v2, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    .line 334
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 337
    :goto_e
    const/4 v12, 0x0

    .line 338
    goto :goto_f

    .line 339
    :cond_5
    move-object v2, v1

    .line 340
    const/4 v1, 0x0

    .line 341
    move v11, v1

    .line 342
    goto :goto_e

    .line 343
    :goto_f
    if-nez v12, :cond_8

    .line 345
    new-instance v12, Ljava/util/ArrayList;

    .line 347
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 350
    move-result v0

    .line 351
    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 357
    move-result-object v0

    .line 358
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_7

    .line 364
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 367
    move-result-object v1

    .line 368
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 370
    invoke-virtual {v6, v1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    .line 373
    move-result v3

    .line 374
    if-eqz v3, :cond_6

    .line 376
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 378
    invoke-virtual {v6, v3}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    .line 381
    move-result v3

    .line 382
    if-eqz v3, :cond_6

    .line 384
    new-instance v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 386
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 388
    const-wide/16 v4, 0x0

    .line 390
    invoke-direct {v3, v4, v5, v1}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(JLjava/lang/String;)V

    .line 393
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    goto :goto_10

    .line 397
    :cond_6
    const-wide/16 v4, 0x0

    .line 399
    goto :goto_10

    .line 400
    :cond_7
    const/4 v10, 0x1

    .line 401
    goto :goto_11

    .line 402
    :cond_8
    move v10, v11

    .line 403
    :goto_11
    if-eqz v10, :cond_9

    .line 405
    iget-object v0, v2, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Lcom/android/server/backup/UserBackupManagerService$1;

    .line 407
    iget-object v1, v2, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 409
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 412
    iget-object v0, v2, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupScheduleWriter:Lcom/android/server/backup/UserBackupManagerService$1;

    .line 414
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    :cond_9
    return-object v12
.end method

.method public final recordInitPending(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 6
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 8
    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    new-instance p2, Ljava/io/File;

    .line 13
    const-string v2, "_need_init_"

    .line 15
    invoke-direct {p2, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    if-eqz p3, :cond_0

    .line 20
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 22
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    .line 27
    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 30
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 39
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 41
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 44
    :catch_0
    :goto_0
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    throw p0
.end method

.method public final reportDelayedRestoreResult(Ljava/lang/String;Ljava/util/List;)V
    .locals 8

    .line 1
    const-string v0, "BMS.reportDelayedRestoreResult"

    .line 3
    const-string v1, "Failed to send delayed restore logs: "

    .line 5
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 7
    iget-object v2, v2, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 9
    const-string v3, "BackupManagerService"

    .line 11
    if-nez v2, :cond_0

    .line 13
    const-string p0, "Failed to send delayed restore logs as no transport selected"

    .line 15
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v4, 0x0

    .line 20
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 22
    const-wide/16 v6, 0x0

    .line 24
    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 27
    move-result-object v6

    .line 28
    iget v7, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 30
    invoke-virtual {v5, p1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    .line 33
    move-result-object p1

    .line 34
    iget-object v5, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 36
    invoke-virtual {v5, v2, v0}, Lcom/android/server/backup/TransportManager;->getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4, v0}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupManagerMonitor()Landroid/app/backup/IBackupManagerMonitor;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/server/backup/UserBackupManagerService;->getBMMEventSender(Landroid/app/backup/IBackupManagerMonitor;)Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    new-instance v5, Landroid/os/Bundle;

    .line 57
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string v6, "android.app.backup.extra.LOG_AGENT_LOGGING_RESULTS"

    .line 62
    invoke-virtual {v5, v6, p2}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 65
    const-string p2, "android.app.backup.extra.OPERATION_TYPE"

    .line 67
    const/4 v6, 0x1

    .line 68
    invoke-virtual {v5, p2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const/16 p2, 0x34

    .line 73
    const/4 v6, 0x2

    .line 74
    invoke-virtual {v2, p2, p1, v6, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 79
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    .line 81
    invoke-virtual {p0, v4, v0}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 84
    goto :goto_1

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto :goto_2

    .line 87
    :catch_0
    move-exception p1

    .line 88
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    if-eqz v4, :cond_1

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    :goto_1
    return-void

    .line 107
    :goto_2
    if-eqz v4, :cond_2

    .line 109
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 111
    iget-object p0, p0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    .line 113
    invoke-virtual {p0, v4, v0}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 116
    :cond_2
    throw p1
.end method

.method public final resetBackupState(Ljava/io/File;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mProcessedPackagesJournal:Lcom/android/server/backup/ProcessedPackagesJournal;

    .line 6
    iget-object v2, v1, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    .line 8
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    iget-object v3, v1, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    .line 11
    check-cast v3, Ljava/util/HashSet;

    .line 13
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 16
    new-instance v3, Ljava/io/File;

    .line 18
    iget-object v1, v1, Lcom/android/server/backup/ProcessedPackagesJournal;->mStateDirectory:Ljava/io/File;

    .line 20
    const-string/jumbo v4, "processed"

    .line 23
    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 29
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    const-wide/16 v1, 0x0

    .line 32
    :try_start_2
    iput-wide v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 34
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 40
    move-result-object p1

    .line 41
    array-length v1, p1

    .line 42
    const/4 v2, 0x0

    .line 43
    move v3, v2

    .line 44
    :goto_0
    if-ge v3, v1, :cond_1

    .line 46
    aget-object v4, p1, v3

    .line 48
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 52
    const-string v6, "_need_init_"

    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_0

    .line 60
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_5

    .line 66
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 72
    monitor-enter p1

    .line 73
    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 75
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 78
    move-result v0

    .line 79
    :goto_2
    if-ge v2, v0, :cond_3

    .line 81
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 83
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Ljava/util/HashSet;

    .line 89
    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 94
    move-result-object v1

    .line 95
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_2

    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v3}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 110
    goto :goto_3

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    goto :goto_4

    .line 113
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    monitor-exit p1

    .line 117
    return-void

    .line 118
    :goto_4
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    throw p0

    .line 120
    :catchall_2
    move-exception p0

    .line 121
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 122
    :try_start_5
    throw p0

    .line 123
    :goto_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    throw p0
.end method

.method public final scheduleNextFullBackupJob(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 21
    iget-wide v1, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    move-result-wide v3

    .line 27
    sub-long/2addr v3, v1

    .line 28
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 30
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    .line 33
    move-result-wide v1

    .line 34
    cmp-long v5, v3, v1

    .line 36
    if-gez v5, :cond_0

    .line 38
    sub-long/2addr v1, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const-wide/16 v1, 0x0

    .line 42
    :goto_0
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 45
    move-result-wide p1

    .line 46
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 48
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {v1, v2, p1, p2, p0}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/UserBackupManagerService;)V

    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    const-string p1, "BackupManagerService"

    .line 58
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 60
    const-string p2, "Full backup queue empty; not scheduling"

    .line 62
    invoke-static {p0, p2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_1
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public setAncestralSerialNumberFile(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralSerialNumberFile:Ljava/io/File;

    .line 3
    return-void
.end method

.method public final setBackupEnabled(ZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.BACKUP"

    .line 5
    const-string/jumbo v2, "setBackupEnabled"

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v0, "BackupManagerService"

    .line 13
    iget v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    const-string v3, "Backup enabled => "

    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 39
    move-result-wide v0

    .line 40
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 42
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    if-eqz p2, :cond_0

    .line 45
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->writeEnabledState(Z)V

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 53
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    invoke-virtual {p0, v2, p1}, Lcom/android/server/backup/UserBackupManagerService;->updateStateOnBackupEnabled(ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    return-void

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 65
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    throw p0
.end method

.method public setPowerManager(Landroid/os/PowerManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 3
    return-void
.end method

.method public final setRunningFullBackupTask()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 4
    return-void
.end method

.method public final setSepWakeLock()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepWakeLock:Z

    .line 4
    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 3
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->mPowerManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 5
    invoke-virtual {p0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 8
    return-void
.end method

.method public shouldSkipPackage(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string/jumbo p0, "com.android.wallpaperbackup"

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public shouldSkipUserFacingData()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "backup_skip_user_facing_packages"

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_0
    return v1
.end method

.method public shouldUseNewBackupEligibilityRules()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v0, "settings_use_new_backup_eligibility_rules"

    .line 6
    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final startConfirmationUi(ILjava/lang/String;)Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    const-string/jumbo p2, "com.android.backupconfirm"

    .line 9
    const-string/jumbo v1, "com.android.backupconfirm.BackupRestoreConfirmation"

    .line 12
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const-string/jumbo p2, "conftoken"

    .line 18
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    const/high16 p1, 0x20000000

    .line 23
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 28
    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 30
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :catch_0
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final startSepTimeout(Lcom/android/server/backup/params/AdbParams;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mSepTimeoutMin:I

    .line 3
    const v1, 0xea60

    .line 6
    mul-int/2addr v0, v1

    .line 7
    const-string v1, "Posting MSG_SEP_TIMEOUT msg, "

    .line 9
    const-string v2, "BackupManagerService"

    .line 11
    invoke-static {v0, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 16
    const/16 v1, 0x65

    .line 18
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 21
    move-result-object p1

    .line 22
    int-to-long v0, v0

    .line 23
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 26
    return-void
.end method

.method public final tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 6
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 9
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 11
    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 17
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 19
    const-string/jumbo v1, "com.android.backupconfirm"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 30
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 32
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 34
    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 40
    const-string p1, "Lost app trying to shut down"

    .line 42
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    const-string p1, "BackupManagerService"

    .line 48
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public tearDownService()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 3
    invoke-virtual {v0}, Landroid/util/KeyValueSettingObserver;->stop()V

    .line 6
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 8
    invoke-virtual {v0}, Landroid/util/KeyValueSettingObserver;->stop()V

    .line 11
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupObserver:Lcom/android/server/backup/internal/SetupObserver;

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 22
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 24
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitReceiver:Lcom/android/server/backup/internal/RunInitializeReceiver;

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 29
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 31
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mPackageTrackingReceiver:Lcom/android/server/backup/UserBackupManagerService$2;

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 36
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 38
    invoke-virtual {p0}, Lcom/android/server/backup/internal/BackupHandler;->stop()V

    .line 41
    return-void
.end method

.method public final updateStateForTransport(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "backup_transport"

    .line 9
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 11
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 14
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 16
    const-string v1, "BMS.updateStateForTransport()"

    .line 18
    invoke-virtual {v0, p1, v1}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    .line 21
    move-result-object v3

    .line 22
    const-string v4, "Transport "

    .line 24
    const-string v5, "BackupManagerService"

    .line 26
    const-wide/16 v6, 0x0

    .line 28
    if-eqz v3, :cond_1

    .line 30
    :try_start_0
    invoke-virtual {v3, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 33
    move-result-object v8

    .line 34
    iget-object v9, v8, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 36
    invoke-virtual {v9}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    .line 39
    move-result-object v9

    .line 40
    iget-object v10, v8, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 42
    invoke-interface {v10, v9}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet(Lcom/android/internal/infra/AndroidFuture;)V

    .line 45
    invoke-virtual {v8, v9}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 48
    move-result-object v8

    .line 49
    check-cast v8, Ljava/lang/Long;

    .line 51
    if-nez v8, :cond_0

    .line 53
    const-wide/16 v8, -0x3e8

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 59
    move-result-wide v8

    .line 60
    :goto_0
    iput-wide v8, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    iput-wide v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string p1, " not available: current token = 0"

    .line 75
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    invoke-static {v2, p0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_1
    iget-object p0, v0, Lcom/android/server/backup/TransportManager;->mTransportConnectionManager:Lcom/android/server/backup/transport/TransportConnectionManager;

    .line 91
    invoke-virtual {p0, v3, v1}, Lcom/android/server/backup/transport/TransportConnectionManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V

    .line 94
    goto :goto_2

    .line 95
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string p1, " not registered: current token = 0"

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    invoke-static {v2, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-wide v6, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 121
    :goto_2
    return-void
.end method

.method public updateStateOnBackupEnabled(ZZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    if-eqz p2, :cond_0

    .line 6
    if-nez p1, :cond_0

    .line 8
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 14
    iget-object p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {p1, p2, p0}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/UserBackupManagerService;)V

    .line 19
    const-wide/16 p1, 0x0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    if-nez p2, :cond_2

    .line 29
    iget p2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 31
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {v1, p2}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;I)V

    .line 36
    if-eqz p1, :cond_2

    .line 38
    iget-boolean p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 40
    if-eqz p1, :cond_2

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    .line 44
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    .line 49
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 54
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;

    .line 56
    const/4 v3, 0x1

    .line 57
    invoke-direct {v2, p0, p1, p2, v3}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/util/List;Ljava/util/List;I)V

    .line 60
    invoke-virtual {v1, v2}, Lcom/android/server/backup/TransportManager;->forEachRegisteredTransport(Ljava/util/function/Consumer;)V

    .line 63
    const/4 v1, 0x0

    .line 64
    move v2, v1

    .line 65
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 68
    move-result v3

    .line 69
    if-ge v2, v3, :cond_1

    .line 71
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ljava/lang/String;

    .line 77
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/String;

    .line 83
    const/4 v5, 0x1

    .line 84
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->recordInitPending(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/android/server/backup/UserBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    move-result-wide v2

    .line 96
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 98
    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 101
    :cond_2
    :goto_1
    monitor-exit v0

    .line 102
    return-void

    .line 103
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0
.end method

.method public updateTransportAttributes(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 4
    const-string v2, "android.permission.BACKUP"

    .line 6
    const-string/jumbo v3, "updateTransportAttributes"

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string/jumbo v1, "transportComponent can\'t be null"

    .line 15
    move-object v3, p2

    .line 16
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    const-string/jumbo v1, "name can\'t be null"

    .line 22
    move-object v4, p3

    .line 23
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    const-string/jumbo v1, "currentDestinationString can\'t be null"

    .line 29
    move-object/from16 v6, p5

    .line 31
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    const/4 v1, 0x1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-nez p6, :cond_0

    .line 38
    move v5, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v5, v2

    .line 41
    :goto_0
    if-nez p7, :cond_1

    .line 43
    move v7, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v7, v2

    .line 46
    :goto_1
    if-ne v5, v7, :cond_2

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move v1, v2

    .line 50
    :goto_2
    const-string/jumbo v5, "dataManagementLabel should be null iff dataManagementIntent is null"

    .line 53
    invoke-static {v1, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 56
    :try_start_0
    iget-object v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 65
    move-result-object v5

    .line 66
    iget v7, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 68
    invoke-virtual {v1, v5, v2, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    .line 71
    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    move v2, p1

    .line 73
    if-ne v2, v1, :cond_3

    .line 75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 78
    move-result-wide v9

    .line 79
    :try_start_1
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 81
    move-object v3, p2

    .line 82
    move-object v4, p3

    .line 83
    move-object v5, p4

    .line 84
    move-object/from16 v6, p5

    .line 86
    move-object/from16 v7, p6

    .line 88
    move-object/from16 v8, p7

    .line 90
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/backup/TransportManager;->updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    throw v0

    .line 102
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/SecurityException;

    .line 104
    const-string v1, "Only the transport can change its description"

    .line 106
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 109
    throw v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/SecurityException;

    .line 113
    const-string v2, "Transport package not found"

    .line 115
    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    throw v1
.end method

.method public final waitUntilOperationComplete(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 3
    new-instance v1, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2, p0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;-><init>(ILcom/android/server/backup/UserBackupManagerService;)V

    .line 9
    iget-object p0, v0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    .line 11
    monitor-enter p0

    .line 12
    :goto_0
    :try_start_0
    iget-object v2, v0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperations:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/backup/internal/Operation;

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_0

    .line 23
    move v4, v3

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget v4, v2, Lcom/android/server/backup/internal/Operation;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-nez v4, :cond_1

    .line 29
    :try_start_1
    iget-object v2, v0, Lcom/android/server/backup/internal/LifecycleOperationStorage;->mOperationsLock:Ljava/lang/Object;

    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    :catch_0
    move-exception v2

    .line 38
    :try_start_2
    const-string v3, "LifecycleOperationStorage"

    .line 40
    const-string v4, "Waiting on mOperationsLock: "

    .line 42
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    invoke-virtual {v0, p1}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 50
    if-eqz v2, :cond_2

    .line 52
    iget p0, v2, Lcom/android/server/backup/internal/Operation;->type:I

    .line 54
    invoke-virtual {v1, p0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;->accept(I)V

    .line 57
    :cond_2
    const/4 p0, 0x1

    .line 58
    if-ne v4, p0, :cond_3

    .line 60
    move v3, p0

    .line 61
    :cond_3
    return v3

    .line 62
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    throw p1
.end method

.method public writeEnabledState(Z)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3
    invoke-static {p0, p1}, Lcom/android/server/backup/UserBackupManagerFilePersistedSettings;->writeBackupEnableState(IZ)V

    .line 6
    return-void
.end method

.method public final writeRestoreTokens()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 3
    const-string v1, "BackupManagerService"

    .line 5
    const-string v2, "Ancestral packages:  "

    .line 7
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    .line 9
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mTokenFile:Ljava/io/File;

    .line 11
    const-string/jumbo v5, "rwd"

    .line 14
    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    const/4 v4, 0x1

    .line 18
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 21
    iget-wide v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 23
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 26
    iget-wide v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 28
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 31
    iget-object v4, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 33
    if-nez v4, :cond_0

    .line 35
    const/4 p0, -0x1

    .line 36
    invoke-virtual {v3, p0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 45
    move-result v4

    .line 46
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 56
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 59
    move-result v2

    .line 60
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-static {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 76
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object p0

    .line 80
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Ljava/lang/String;

    .line 92
    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    goto :goto_5

    .line 100
    :catch_0
    move-exception p0

    .line 101
    goto :goto_4

    .line 102
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    goto :goto_3

    .line 106
    :catchall_1
    move-exception v2

    .line 107
    :try_start_4
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 110
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 111
    :goto_4
    const-string v2, "Unable to write token file:"

    .line 113
    invoke-static {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :goto_5
    return-void
.end method

.method public final writeToJournalLocked(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 4
    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournalDir:Ljava/io/File;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string/jumbo v2, "journal"

    .line 14
    invoke-static {v2, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/android/server/backup/DataChangedJournal;

    .line 20
    invoke-direct {v2, v1}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    .line 23
    iput-object v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 35
    iget-object v1, v1, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    .line 37
    const-string/jumbo v3, "rws"

    .line 40
    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    .line 46
    move-result-wide v3

    .line 47
    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 50
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    goto :goto_3

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    goto :goto_1

    .line 62
    :catchall_1
    move-exception v2

    .line 63
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 66
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 67
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    const-string v3, "Can\'t write "

    .line 71
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string p1, " to backup journal"

    .line 79
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    iget v2, p0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 88
    invoke-static {v2, p1}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    const-string v2, "BackupManagerService"

    .line 94
    invoke-static {v2, p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    iput-object v0, p0, Lcom/android/server/backup/UserBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 99
    :goto_3
    return-void
.end method
