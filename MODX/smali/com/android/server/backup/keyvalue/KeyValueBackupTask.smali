.class public final Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;
.implements Ljava/lang/Runnable;


# static fields
.field public static final NEW_STATE_FILE_SUFFIX:Ljava/lang/String; = ".new"

.field static final NO_DATA_END_SENTINEL:Ljava/lang/String; = "@end@"

.field public static final STAGING_FILE_SUFFIX:Ljava/lang/String; = ".data"

.field public static final THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public mAgent:Landroid/app/IBackupAgent;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public mBackupData:Landroid/os/ParcelFileDescriptor;

.field public mBackupDataFile:Ljava/io/File;

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mBlankStateFile:Ljava/io/File;

.field public final mCancelAcknowledged:Landroid/os/ConditionVariable;

.field public volatile mCancelled:Z

.field public final mCurrentOpToken:I

.field public mCurrentPackage:Landroid/content/pm/PackageInfo;

.field public final mDataDirectory:Ljava/io/File;

.field public mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

.field public mHasDataToBackup:Z

.field public final mJournal:Lcom/android/server/backup/DataChangedJournal;

.field public mNewState:Landroid/os/ParcelFileDescriptor;

.field public mNewStateFile:Ljava/io/File;

.field public mNonIncremental:Z

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public final mOriginalQueue:Ljava/util/List;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public volatile mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

.field public final mPendingFullBackups:Ljava/util/List;

.field public final mQueue:Ljava/util/List;

.field public final mQueueLock:Ljava/lang/Object;

.field public final mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

.field public mSavedState:Landroid/os/ParcelFileDescriptor;

.field public mSavedStateFile:Ljava/io/File;

.field public final mStateDirectory:Ljava/io/File;

.field public final mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public final mUserId:I

.field public final mUserInitiated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/ConditionVariable;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    .line 12
    iput-boolean v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 14
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 16
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 18
    iget-object p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 20
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 22
    iput-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 24
    iput-object p5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOriginalQueue:Ljava/util/List;

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    .line 28
    invoke-direct {p2, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    .line 33
    iput-object p6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 35
    iput-object p7, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 37
    iput-object p8, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 39
    iput-object p9, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 41
    iput-boolean p10, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    .line 43
    iput-boolean p11, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    .line 45
    iget-object p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 47
    const-string p3, "Timeout parameters cannot be null"

    .line 49
    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-object p3, p2

    .line 53
    check-cast p3, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 55
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 57
    new-instance p2, Ljava/io/File;

    .line 59
    iget-object p3, p1, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 61
    invoke-direct {p2, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    iput-object p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    .line 66
    iget-object p3, p1, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 68
    iput-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mDataDirectory:Ljava/io/File;

    .line 70
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    .line 73
    move-result p3

    .line 74
    iput p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    .line 76
    iget-object p3, p1, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 78
    iput-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueueLock:Ljava/lang/Object;

    .line 80
    new-instance p3, Ljava/io/File;

    .line 82
    const-string/jumbo p4, "blank_state"

    .line 85
    invoke-direct {p3, p2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    iput-object p3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    .line 90
    iget p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 92
    iput p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    .line 94
    iput-object p12, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 96
    return-void
.end method

.method public static clearStatus(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 13
    const-string p0, "Unable to remove status file for "

    .line 15
    const-string v0, "KVBT"

    .line 17
    invoke-static {p0, p1, v0}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method

.method public static start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 14

    .line 1
    new-instance v7, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 3
    new-instance v0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 5
    move-object/from16 v1, p7

    .line 7
    invoke-direct {v0, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    .line 10
    move-object v1, p0

    .line 11
    move-object/from16 v2, p6

    .line 13
    invoke-direct {v7, p0, v2, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;)V

    .line 16
    new-instance v13, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

    .line 18
    move-object v0, v13

    .line 19
    move-object v2, p1

    .line 20
    move-object/from16 v3, p2

    .line 22
    move-object/from16 v4, p3

    .line 24
    move-object/from16 v5, p4

    .line 26
    move-object/from16 v6, p5

    .line 28
    move-object/from16 v8, p8

    .line 30
    move-object/from16 v9, p9

    .line 32
    move/from16 v10, p10

    .line 34
    move/from16 v11, p11

    .line 36
    move-object/from16 v12, p12

    .line 38
    invoke-direct/range {v0 .. v12}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 41
    new-instance v0, Ljava/lang/Thread;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v2, "key-value-backup-"

    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    sget-object v2, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v13, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    const-string v1, "Spinning thread "

    .line 76
    const-string v2, "KeyValueBackupTask"

    .line 78
    invoke-static {v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method


# virtual methods
.method public final backupPackage(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "Starting key-value backup of "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "KeyValueBackupTask"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v0, 0x0

    .line 26
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 28
    iget v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    .line 30
    const/high16 v4, 0x8000000

    .line 32
    invoke-virtual {v2, p1, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 35
    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 38
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 40
    invoke-virtual {v4, v3}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    .line 43
    move-result v4

    .line 44
    const-string v5, "Package "

    .line 46
    const/16 v6, -0x7d1

    .line 48
    if-eqz v4, :cond_4

    .line 50
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 52
    invoke-virtual {v4, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_3

    .line 58
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    invoke-static {v3}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_2

    .line 69
    iput-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 71
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;)V

    .line 74
    new-instance p1, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 76
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 78
    iget-object v1, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 80
    iget-object v1, v1, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 82
    invoke-direct {p1, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    .line 85
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 87
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 89
    invoke-virtual {p1, v1, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorAgentLoggingResults(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V

    .line 92
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport(Landroid/content/pm/PackageInfo;)I

    .line 97
    move-result p1

    .line 98
    const/16 v1, -0x3ee

    .line 100
    if-eq p1, v1, :cond_1

    .line 102
    if-nez p1, :cond_0

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 107
    goto :goto_0

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 110
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 113
    throw p1

    .line 114
    :cond_1
    const/4 p1, 0x2

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V
    :try_end_1
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception p1

    .line 120
    const/4 v0, 0x1

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 124
    throw p1

    .line 125
    :cond_2
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 127
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 129
    invoke-static {p0, p1, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 132
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    .line 135
    move-result-object p0

    .line 136
    throw p0

    .line 137
    :cond_3
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v2, " performs full-backup rather than key-value, skipping"

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 159
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 164
    invoke-static {p0, p1, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 167
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    .line 170
    move-result-object p0

    .line 171
    throw p0

    .line 172
    :cond_4
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v2, " no longer supports backup, skipping"

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 194
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 199
    invoke-static {p0, p1, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 202
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    .line 205
    move-result-object p0

    .line 206
    throw p0

    .line 207
    :catch_1
    move-exception v2

    .line 208
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    const-string v3, "Package does not exist, skipping"

    .line 215
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 220
    const/16 v1, -0x7d2

    .line 222
    invoke-static {p0, p1, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 225
    new-instance p0, Lcom/android/server/backup/keyvalue/AgentException;

    .line 227
    invoke-direct {p0, v0, v2}, Lcom/android/server/backup/keyvalue/AgentException;-><init>(ZLjava/lang/Exception;)V

    .line 230
    throw p0
.end method

.method public final backupPm()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "Starting key-value backup of @pm@"

    .line 8
    const-string v1, "KeyValueBackupTask"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v0, Landroid/content/pm/PackageInfo;

    .line 15
    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 20
    const-string v2, "@pm@"

    .line 22
    iput-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 24
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractPmAgentData(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport(Landroid/content/pm/PackageInfo;)I

    .line 32
    move-result v0

    .line 33
    const/16 v2, -0x3ee

    .line 35
    if-eq v0, v2, :cond_1

    .line 37
    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 46
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 49
    throw v0

    .line 50
    :cond_1
    const/4 v0, 0x2

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 54
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :catch_1
    move-exception v0

    .line 58
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    .line 61
    move-result-object v0

    .line 62
    throw v0
    :try_end_1
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    :goto_1
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    const-string v2, "Error during PM metadata backup"

    .line 70
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->cleanUpAgent(I)V

    .line 77
    instance-of p0, v0, Lcom/android/server/backup/keyvalue/TaskException;

    .line 79
    if-eqz p0, :cond_2

    .line 81
    check-cast v0, Lcom/android/server/backup/keyvalue/TaskException;

    .line 83
    throw v0

    .line 84
    :cond_2
    invoke-static {v0}, Lcom/android/server/backup/keyvalue/TaskException;->stateCompromised(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;

    .line 87
    move-result-object p0

    .line 88
    throw p0
.end method

.method public final bindAgent(Landroid/content/pm/PackageInfo;)Landroid/app/IBackupAgent;
    .locals 6

    .line 1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, -0x3eb

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 8
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 10
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 12
    iget v4, v4, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 21
    return-object p1

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 24
    iget-object p1, p1, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 26
    invoke-static {p1, v0, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 29
    new-instance p1, Lcom/android/server/backup/keyvalue/AgentException;

    .line 31
    invoke-direct {p1, v1}, Lcom/android/server/backup/keyvalue/AgentException;-><init>(Z)V

    .line 34
    throw p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    const-string v3, "KeyValueBackupTask"

    .line 43
    const-string v4, "Error in bind/backup"

    .line 45
    invoke-static {v3, v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 50
    invoke-static {p0, v0, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 53
    new-instance p0, Lcom/android/server/backup/keyvalue/AgentException;

    .line 55
    invoke-direct {p0, v1, p1}, Lcom/android/server/backup/keyvalue/AgentException;-><init>(ZLjava/lang/Exception;)V

    .line 58
    throw p0
.end method

.method public final cleanUpAgent(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 9
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 14
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    const-string v0, "Unknown state transaction "

    .line 24
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 34
    if-eqz p1, :cond_3

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 42
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 44
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 47
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 49
    if-eqz p1, :cond_4

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 54
    :cond_4
    iget-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 59
    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 62
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 64
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 66
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 68
    const-string/jumbo v1, "old state"

    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 76
    const-string v1, "backup data"

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 83
    const-string/jumbo v1, "new state"

    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 91
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 93
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 95
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 97
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 99
    if-eqz v0, :cond_5

    .line 101
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    :try_start_0
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 108
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :catch_0
    :cond_5
    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 113
    return-void
.end method

.method public final execute()V
    .locals 0

    .line 1
    return-void
.end method

.method public final extractAgentData(Landroid/content/pm/PackageInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    new-instance v1, Landroid/os/WorkSource;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->bindAgent(Landroid/content/pm/PackageInfo;)Landroid/app/IBackupAgent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/UserBackupManagerService;->setWorkSource(Landroid/os/WorkSource;)V

    .line 5
    throw p1
.end method

.method public final extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 6
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7
    iget-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invoking agent on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "KeyValueBackupTask"

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v1, Ljava/io/File;

    iget-object v2, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    invoke-direct {v1, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    .line 10
    new-instance v1, Ljava/io/File;

    iget-object v2, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mDataDirectory:Ljava/io/File;

    const-string v3, ".data"

    .line 11
    invoke-static {v8, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 13
    new-instance v1, Ljava/io/File;

    iget-object v2, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    const-string v3, ".new"

    .line 14
    invoke-static {v8, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 16
    iget-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v10, -0x3e8

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, -0x3eb

    const/16 v14, 0xb07

    .line 17
    :try_start_0
    iget-boolean v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    if-eqz v1, :cond_0

    iget-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v12

    goto/16 :goto_5

    :cond_0
    iget-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    :goto_0
    const/high16 v2, 0x18000000

    .line 18
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 19
    iget-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    const/high16 v2, 0x3c000000    # 0.0078125f

    .line 20
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 21
    iget-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewStateFile:Ljava/io/File;

    .line 22
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 23
    iget v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    if-nez v1, :cond_1

    .line 24
    iget-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 25
    iget-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SELinux restorecon failed on "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_1
    iget-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v2, "KVBT.extractAgentData()"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v8, v12}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v4

    .line 29
    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->getTransportFlags()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    new-instance v15, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/backup/keyvalue/KeyValueBackupTask;Landroid/app/IBackupAgent;JI)V

    iget-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 31
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v1

    .line 32
    new-instance v3, Lcom/android/server/backup/remote/RemoteCall;

    iget-boolean v4, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    invoke-direct {v3, v4, v15, v1, v2}, Lcom/android/server/backup/remote/RemoteCall;-><init>(ZLcom/android/server/backup/remote/RemoteCallable;J)V

    iput-object v3, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 33
    iget-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    invoke-virtual {v1}, Lcom/android/server/backup/remote/RemoteCall;->call()Lcom/android/server/backup/remote/RemoteResult;

    move-result-object v1

    .line 34
    iget-object v2, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    .line 35
    iput-object v2, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    sget-object v2, Lcom/android/server/backup/remote/RemoteResult;->FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

    if-eq v1, v2, :cond_8

    .line 37
    sget-object v2, Lcom/android/server/backup/remote/RemoteResult;->FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

    if-eq v1, v2, :cond_7

    .line 38
    sget-object v2, Lcom/android/server/backup/remote/RemoteResult;->FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;

    const-string v3, "Agent "

    if-eq v1, v2, :cond_6

    .line 39
    iget v2, v1, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    if-nez v2, :cond_2

    move v2, v11

    goto :goto_1

    :cond_2
    move v2, v12

    .line 40
    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 41
    iget v2, v1, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    if-nez v2, :cond_3

    move v2, v11

    goto :goto_2

    :cond_3
    move v2, v12

    .line 42
    :goto_2
    const-string v4, "Can\'t obtain value of failed result"

    invoke-static {v2, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 43
    iget-wide v1, v1, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_5

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v11, v12

    .line 44
    :goto_3
    invoke-static {v11}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-void

    .line 45
    :cond_5
    iget-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 47
    iget-object v1, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v0, v13}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 48
    const-string/jumbo v1, "result error"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error in onBackup()"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lcom/android/server/backup/keyvalue/AgentException;

    invoke-direct {v0, v11}, Lcom/android/server/backup/keyvalue/AgentException;-><init>(Z)V

    .line 51
    throw v0

    .line 52
    :cond_6
    iget-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 54
    const-string v4, " timed out"

    .line 55
    invoke-static {v3, v2, v4, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {v14, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 57
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v3, "android.app.backup.extra.LOG_CANCEL_ALL"

    invoke-virtual {v2, v3, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    iget-object v1, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v3, 0x15

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 60
    new-instance v0, Lcom/android/server/backup/keyvalue/AgentException;

    invoke-direct {v0, v11}, Lcom/android/server/backup/keyvalue/AgentException;-><init>(Z)V

    .line 61
    throw v0

    .line 62
    :cond_7
    iget-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentCancelled(Landroid/content/pm/PackageInfo;)V

    .line 63
    new-instance v0, Lcom/android/server/backup/keyvalue/TaskException;

    invoke-direct {v0, v10, v12}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(IZ)V

    .line 64
    throw v0

    .line 65
    :cond_8
    iput-boolean v11, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 66
    iget-object v1, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->onAgentCancelled(Landroid/content/pm/PackageInfo;)V

    .line 67
    new-instance v0, Lcom/android/server/backup/keyvalue/TaskException;

    invoke-direct {v0, v10, v12}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(IZ)V

    .line 68
    throw v0

    :goto_4
    move v1, v11

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    .line 69
    :goto_5
    iget-object v2, v7, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    const-string v3, ": "

    if-eqz v1, :cond_9

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error invoking agent on "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v2, v2, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v2, v8, v13}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_6

    .line 73
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error before invoking agent on "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v8, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    if-eqz v1, :cond_a

    .line 75
    new-instance v1, Lcom/android/server/backup/keyvalue/AgentException;

    invoke-direct {v1, v11, v0}, Lcom/android/server/backup/keyvalue/AgentException;-><init>(ZLjava/lang/Exception;)V

    .line 76
    throw v1

    .line 77
    :cond_a
    new-instance v0, Lcom/android/server/backup/keyvalue/TaskException;

    invoke-direct {v0, v10, v12}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(IZ)V

    .line 78
    throw v0
.end method

.method public final extractPmAgentData(Landroid/content/pm/PackageInfo;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3
    const-string v1, "@pm@"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 14
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v2, Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 21
    iget-object v3, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 23
    iget v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 25
    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 28
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {v2, v0}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 33
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v2, v0}, Landroid/app/backup/BackupAgent;->onCreate(Landroid/os/UserHandle;)V

    .line 40
    invoke-virtual {v2}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->extractAgentData(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V

    .line 53
    return-void
.end method

.method public final getTopLevelSuccessStateDirectory(Z)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    .line 5
    const-string v1, "backing-up"

    .line 7
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 16
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 24
    const-string p0, "KVBT"

    .line 26
    const-string p1, "Unable to create backing-up state directory"

    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :cond_0
    return-object v0
.end method

.method public final handleCancel(Z)V
    .locals 1

    .line 1
    const-string v0, "Can\'t partially cancel a key-value backup task"

    .line 3
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->markCancel()V

    .line 9
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->waitCancel()V

    .line 12
    return-void
.end method

.method public final informTransportOfUnchangedApps(Ljava/util/Set;)V
    .locals 13

    .line 1
    const-string v0, "KVBT"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getTopLevelSuccessStateDirectory(Z)Ljava/io/File;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v2, :cond_0

    .line 11
    move-object v2, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    :goto_0
    if-nez v2, :cond_1

    .line 19
    return-void

    .line 20
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    .line 22
    if-eqz v4, :cond_2

    .line 24
    const/16 v4, 0x9

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    const/16 v4, 0x8

    .line 29
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 31
    const-string v6, "KVBT.informTransportOfEmptyBackups()"

    .line 33
    invoke-virtual {v5, v6}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 36
    move-result-object v5

    .line 37
    array-length v6, v2

    .line 38
    move v7, v1

    .line 39
    move v8, v7

    .line 40
    :goto_2
    if-ge v7, v6, :cond_9

    .line 42
    aget-object v9, v2, v7

    .line 44
    move-object v10, p1

    .line 45
    check-cast v10, Ljava/util/HashSet;

    .line 47
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 50
    move-result v10

    .line 51
    if-eqz v10, :cond_3

    .line 53
    new-instance v10, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v11, "Skipping package which was backed up this time: "

    .line 60
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v9

    .line 70
    invoke-static {v0, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_5

    .line 74
    :catch_0
    move-exception p0

    .line 75
    goto :goto_6

    .line 76
    :cond_3
    const/4 v10, 0x1

    .line 77
    :try_start_1
    iget-object v11, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 79
    invoke-virtual {v11, v9, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 82
    move-result-object v11

    .line 83
    invoke-virtual {p0, v11}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->isEligibleForNoDataCall(Landroid/content/pm/PackageInfo;)Z

    .line 86
    move-result v12

    .line 87
    if-nez v12, :cond_6

    .line 89
    invoke-virtual {p0, v10}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getTopLevelSuccessStateDirectory(Z)Ljava/io/File;

    .line 92
    move-result-object v11

    .line 93
    if-nez v11, :cond_4

    .line 95
    move-object v12, v3

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    new-instance v12, Ljava/io/File;

    .line 99
    invoke-direct {v12, v11, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    :goto_3
    if-nez v12, :cond_5

    .line 104
    goto :goto_5

    .line 105
    :cond_5
    invoke-static {v12, v9}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    goto :goto_5

    .line 109
    :cond_6
    :try_start_2
    invoke-virtual {p0, v5, v11, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendNoDataChangedTo(Lcom/android/server/backup/transport/BackupTransportClient;Landroid/content/pm/PackageInfo;I)V

    .line 112
    move v8, v10

    .line 113
    goto :goto_5

    .line 114
    :catch_1
    invoke-virtual {p0, v10}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getTopLevelSuccessStateDirectory(Z)Ljava/io/File;

    .line 117
    move-result-object v10

    .line 118
    if-nez v10, :cond_7

    .line 120
    move-object v11, v3

    .line 121
    goto :goto_4

    .line 122
    :cond_7
    new-instance v11, Ljava/io/File;

    .line 124
    invoke-direct {v11, v10, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    :goto_4
    if-nez v11, :cond_8

    .line 129
    goto :goto_5

    .line 130
    :cond_8
    invoke-static {v11, v9}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 135
    goto :goto_2

    .line 136
    :cond_9
    if-eqz v8, :cond_a

    .line 138
    new-instance p1, Landroid/content/pm/PackageInfo;

    .line 140
    invoke-direct {p1}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 143
    const-string v1, "@end@"

    .line 145
    iput-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 147
    invoke-virtual {p0, v5, p1, v4}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendNoDataChangedTo(Lcom/android/server/backup/transport/BackupTransportClient;Landroid/content/pm/PackageInfo;I)V
    :try_end_2
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    goto :goto_7

    .line 151
    :goto_6
    const-string p1, "Could not inform transport of all unchanged apps"

    .line 153
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    :cond_a
    :goto_7
    return-void
.end method

.method public final isEligibleForNoDataCall(Landroid/content/pm/PackageInfo;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 13
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 15
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, p0, p1}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsRunningAndEligibleForBackupWithTransport(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)Z

    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1
.end method

.method public markCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 9
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 11
    if-eqz p0, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/server/backup/remote/RemoteCall;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 15
    sget-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

    .line 17
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    return-void
.end method

.method public final operationComplete(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final run()V
    .locals 11

    .line 1
    const/16 v0, 0xa

    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    .line 9
    new-instance v1, Ljava/util/HashSet;

    .line 11
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 14
    const-wide/16 v2, -0x3e8

    .line 16
    const-wide/16 v4, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->startTask()V

    .line 21
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    .line 23
    check-cast v6, Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_2

    .line 31
    iget-boolean v6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 33
    if-nez v6, :cond_2

    .line 35
    iget-object v6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    .line 37
    check-cast v6, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :try_start_1
    const-string v7, "@pm@"

    .line 47
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->backupPm()V

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v1

    .line 58
    goto :goto_3

    .line 59
    :catch_1
    move-exception v7

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->backupPackage(Ljava/lang/String;)V

    .line 64
    :goto_1
    const/4 v7, 0x1

    .line 65
    invoke-virtual {p0, v6, v7}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->setSuccessState(Ljava/lang/String;Z)V

    .line 68
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/server/backup/keyvalue/AgentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    goto :goto_0

    .line 72
    :goto_2
    :try_start_2
    invoke-virtual {p0, v6, v0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->setSuccessState(Ljava/lang/String;Z)V

    .line 75
    invoke-virtual {v7}, Lcom/android/server/backup/keyvalue/AgentException;->isTransitory()Z

    .line 78
    move-result v7

    .line 79
    if-eqz v7, :cond_0

    .line 81
    iget-object v7, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 83
    invoke-virtual {v7, v6}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->informTransportOfUnchangedApps(Ljava/util/Set;)V
    :try_end_2
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_2 .. :try_end_2} :catch_0

    .line 90
    move v1, v0

    .line 91
    goto/16 :goto_6

    .line 93
    :goto_3
    invoke-virtual {v1}, Lcom/android/server/backup/keyvalue/TaskException;->isStateCompromised()Z

    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_3

    .line 99
    iget-object v6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 101
    iget-object v7, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    .line 103
    invoke-virtual {v6, v7}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 106
    :cond_3
    iget-object v6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 108
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    :try_start_3
    iget-object v6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 113
    const-string v7, "KVBT.revertTask()"

    .line 115
    invoke-virtual {v6, v7}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 118
    move-result-object v6

    .line 119
    iget-object v7, v6, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 121
    invoke-virtual {v7}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    .line 124
    move-result-object v7

    .line 125
    iget-object v8, v6, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 127
    invoke-interface {v8, v7}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime(Lcom/android/internal/infra/AndroidFuture;)V

    .line 130
    invoke-virtual {v6, v7}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 133
    move-result-object v6

    .line 134
    check-cast v6, Ljava/lang/Long;

    .line 136
    if-nez v6, :cond_4

    .line 138
    move-wide v6, v2

    .line 139
    goto :goto_4

    .line 140
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 143
    move-result-wide v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 144
    goto :goto_4

    .line 145
    :catch_2
    move-exception v6

    .line 146
    iget-object v7, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 148
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    new-instance v7, Ljava/lang/StringBuilder;

    .line 153
    const-string v8, "Unable to contact transport for recommended backoff: "

    .line 155
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v6

    .line 165
    const-string v7, "KeyValueBackupTask"

    .line 167
    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-wide v6, v4

    .line 171
    :goto_4
    iget-object v8, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 173
    iget v9, v8, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 175
    iget-object v10, v8, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 177
    invoke-static {v9, v10, v6, v7, v8}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/UserBackupManagerService;)V

    .line 180
    iget-object v6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOriginalQueue:Ljava/util/List;

    .line 182
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 185
    move-result-object v6

    .line 186
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    move-result v7

    .line 190
    if-eqz v7, :cond_5

    .line 192
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    move-result-object v7

    .line 196
    check-cast v7, Ljava/lang/String;

    .line 198
    iget-object v8, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 200
    invoke-virtual {v8, v7}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 203
    goto :goto_5

    .line 204
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/backup/keyvalue/TaskException;->getStatus()I

    .line 207
    move-result v1

    .line 208
    :goto_6
    iget-object v6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    .line 210
    check-cast v6, Ljava/util/ArrayList;

    .line 212
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    move-result-object v6

    .line 216
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    move-result v7

    .line 220
    if-eqz v7, :cond_6

    .line 222
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    move-result-object v7

    .line 226
    check-cast v7, Ljava/lang/String;

    .line 228
    iget-object v8, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 230
    invoke-virtual {v8, v7}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 233
    goto :goto_7

    .line 234
    :cond_6
    iget-object v6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 236
    if-eqz v6, :cond_7

    .line 238
    iget-object v6, v6, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    .line 240
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 243
    move-result v6

    .line 244
    if-nez v6, :cond_7

    .line 246
    iget-object v6, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 248
    iget-object v7, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 250
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    .line 255
    const-string v8, "Unable to remove backup journal file "

    .line 257
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    move-result-object v6

    .line 267
    const-string v7, "KeyValueBackupTask"

    .line 269
    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_7
    const-string v6, "KVBT.finishTask()"

    .line 274
    iget-object v7, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 276
    iget-wide v7, v7, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 278
    iget-boolean v9, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    .line 280
    const/4 v10, 0x0

    .line 281
    if-eqz v9, :cond_9

    .line 283
    if-nez v1, :cond_9

    .line 285
    cmp-long v4, v7, v4

    .line 287
    if-nez v4, :cond_9

    .line 289
    :try_start_4
    iget-object v4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 291
    invoke-virtual {v4, v6}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 294
    move-result-object v4

    .line 295
    invoke-virtual {v4}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    .line 298
    move-result-object v10

    .line 299
    iget-object v5, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 301
    iget-object v7, v4, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 303
    invoke-virtual {v7}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    .line 306
    move-result-object v7

    .line 307
    iget-object v8, v4, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 309
    invoke-interface {v8, v7}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet(Lcom/android/internal/infra/AndroidFuture;)V

    .line 312
    invoke-virtual {v4, v7}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 315
    move-result-object v4

    .line 316
    check-cast v4, Ljava/lang/Long;

    .line 318
    if-nez v4, :cond_8

    .line 320
    goto :goto_8

    .line 321
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 324
    move-result-wide v2

    .line 325
    :goto_8
    iput-wide v2, v5, Lcom/android/server/backup/UserBackupManagerService;->mCurrentToken:J

    .line 327
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 329
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 332
    goto :goto_9

    .line 333
    :catch_3
    move-exception v2

    .line 334
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 336
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    .line 341
    const-string v4, "Transport threw reporting restore set: "

    .line 343
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    move-result-object v2

    .line 353
    const-string v3, "KeyValueBackupTask"

    .line 355
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_9
    :goto_9
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueueLock:Ljava/lang/Object;

    .line 360
    monitor-enter v2

    .line 361
    :try_start_5
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 363
    iput-boolean v0, v3, Lcom/android/server/backup/UserBackupManagerService;->mBackupRunning:Z

    .line 365
    const/16 v3, -0x3e9

    .line 367
    const/16 v4, -0x3e8

    .line 369
    if-ne v1, v3, :cond_a

    .line 371
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 373
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    const/16 v3, 0xb0a

    .line 378
    invoke-static {v3, v10}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 381
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->triggerTransportInitializationLocked()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 384
    goto :goto_a

    .line 385
    :catchall_0
    move-exception p0

    .line 386
    goto/16 :goto_d

    .line 388
    :catch_4
    move-exception v1

    .line 389
    :try_start_7
    iget-object v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 391
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    .line 396
    const-string v5, "Failed to query transport name for pending init: "

    .line 398
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    move-result-object v1

    .line 408
    const-string v3, "KeyValueBackupTask"

    .line 410
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    move v1, v4

    .line 414
    :cond_a
    :goto_a
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 415
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 417
    iget v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    .line 419
    check-cast v2, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 421
    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 424
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 426
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    const-string v2, "KeyValueBackupTask"

    .line 431
    const-string v3, "K/V backup pass finished"

    .line 433
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-boolean v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 438
    if-eqz v2, :cond_b

    .line 440
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    .line 442
    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    .line 445
    :cond_b
    iget-boolean v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 447
    if-nez v2, :cond_c

    .line 449
    if-nez v1, :cond_c

    .line 451
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 453
    if-eqz v2, :cond_c

    .line 455
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 457
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 460
    move-result v2

    .line 461
    if-nez v2, :cond_c

    .line 463
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 465
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 467
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    .line 472
    const-string v2, "Starting full backups for: "

    .line 474
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    move-result-object v0

    .line 484
    const-string v1, "KeyValueBackupTask"

    .line 486
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    new-instance v0, Ljava/lang/Thread;

    .line 491
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 493
    const-string/jumbo v1, "full-transport-requested"

    .line 496
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 502
    goto :goto_c

    .line 503
    :cond_c
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 505
    if-eqz v2, :cond_d

    .line 507
    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 510
    :cond_d
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 512
    invoke-interface {v2, v6}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 517
    iget-boolean v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    .line 519
    if-eqz v3, :cond_e

    .line 521
    const/16 v0, -0x7d3

    .line 523
    goto :goto_b

    .line 524
    :cond_e
    const/16 v3, -0x3ed

    .line 526
    if-eq v1, v3, :cond_f

    .line 528
    const/16 v3, -0x3ea

    .line 530
    if-eq v1, v3, :cond_f

    .line 532
    if-eqz v1, :cond_f

    .line 534
    move v0, v4

    .line 535
    :cond_f
    :goto_b
    iget-object v1, v2, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 537
    invoke-static {v1, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 540
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 542
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 544
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 547
    :goto_c
    return-void

    .line 548
    :goto_d
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 549
    throw p0
.end method

.method public final sendDataToTransport()I
    .locals 24

    move-object/from16 v1, p0

    .line 9
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 10
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    const/4 v5, 0x3

    const/16 v6, 0xb07

    const/high16 v7, 0x10000000

    .line 11
    const-string v8, "KeyValueBackupTask"

    if-eqz v0, :cond_6

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    goto/16 :goto_6

    .line 12
    :cond_1
    invoke-static {v4, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 13
    :try_start_0
    new-instance v0, Landroid/app/backup/BackupDataInput;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 14
    :goto_1
    invoke-virtual {v0}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 15
    invoke-virtual {v0}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 16
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v11, 0xff00

    if-ge v10, v11, :cond_2

    goto :goto_3

    .line 17
    :cond_2
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v2, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 19
    const-string v7, "bad key"

    filled-new-array {v3, v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 20
    const-string v6, "android.app.backup.extra.LOG_ILLEGAL_KEY"

    .line 21
    invoke-static {v6, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 22
    iget-object v7, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/4 v10, 0x5

    invoke-virtual {v7, v10, v2, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 23
    iget-object v0, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v2, -0x3eb

    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 24
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal backup key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    invoke-interface {v0, v2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 26
    :catch_0
    :try_start_2
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v1, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error conveying failure to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :goto_2
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_4

    .line 29
    :cond_3
    :goto_3
    invoke-virtual {v0}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 30
    :cond_4
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_6

    :goto_4
    if-eqz v4, :cond_5

    .line 31
    :try_start_3
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_5
    throw v1

    .line 32
    :cond_6
    :goto_6
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 33
    iget-object v4, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 34
    iget v9, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserId:I

    invoke-static {v0, v9}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v9

    .line 35
    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    const-string v12, "_widget"

    .line 36
    invoke-static {v0, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 37
    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-nez v11, :cond_7

    if-nez v9, :cond_7

    goto/16 :goto_f

    .line 39
    :cond_7
    iget-object v14, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v9, :cond_9

    .line 40
    :try_start_4
    const-string v14, "SHA-1"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    .line 41
    invoke-virtual {v14, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v14
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1

    .line 42
    new-instance v15, Ljava/lang/StringBuilder;

    array-length v6, v14

    mul-int/2addr v6, v13

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    array-length v6, v14

    move v13, v2

    :goto_7
    if-ge v13, v6, :cond_8

    aget-byte v17, v14, v13

    .line 44
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v13, v3

    const/4 v2, 0x0

    goto :goto_7

    .line 45
    :cond_8
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 46
    :catch_1
    iget-object v2, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    const-string v2, "Unable to use SHA-1!"

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v2, "00"

    :goto_8
    if-eqz v11, :cond_a

    .line 49
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 50
    :try_start_5
    new-instance v11, Ljava/io/DataInputStream;

    invoke-direct {v11, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 51
    :try_start_6
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 52
    :try_start_7
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 53
    invoke-static {v2, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto/16 :goto_f

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 54
    :try_start_8
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_a
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v1

    :cond_9
    move-object v2, v12

    .line 55
    :cond_a
    new-instance v6, Landroid/app/backup/BackupDataOutput;

    invoke-direct {v6, v4}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 56
    const-string/jumbo v4, "\uffed\uffedwidget"

    if-eqz v9, :cond_b

    .line 57
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 58
    :try_start_b
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 59
    :try_start_c
    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 60
    :try_start_d
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 61
    array-length v2, v9

    invoke-virtual {v6, v4, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 62
    array-length v2, v9

    invoke-virtual {v6, v9, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_f

    :catchall_6
    move-exception v0

    move-object v1, v0

    goto :goto_d

    :catchall_7
    move-exception v0

    move-object v1, v0

    .line 63
    :try_start_e
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_f
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :goto_d
    :try_start_10
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v1

    :cond_b
    const/4 v2, -0x1

    .line 64
    invoke-virtual {v6, v4, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 65
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 66
    :goto_f
    iget-object v2, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mSavedStateFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v2, v9, v13

    if-nez v2, :cond_c

    move v2, v3

    goto :goto_10

    :cond_c
    const/4 v2, 0x0

    .line 67
    :goto_10
    iget-object v4, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    .line 68
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 69
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v10, v10, v13

    const/16 v11, -0x3e8

    const/16 v13, -0x3ee

    const/16 v14, 0xb06

    if-gtz v10, :cond_d

    .line 70
    iget-object v2, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 71
    iget-object v2, v2, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/4 v6, 0x7

    .line 72
    invoke-virtual {v2, v6, v4, v5, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    const/4 v3, 0x0

    goto/16 :goto_14

    .line 73
    :cond_d
    iput-boolean v3, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mHasDataToBackup:Z

    .line 74
    :try_start_11
    invoke-static {v6, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    .line 75
    :try_start_12
    iget-object v6, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v7, "KVBT.transportPerformBackup()"

    .line 76
    invoke-virtual {v6, v7}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v6

    .line 77
    iget-object v7, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    iget-boolean v7, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    if-eqz v2, :cond_e

    const/4 v10, 0x4

    move/from16 v16, v10

    goto :goto_11

    :cond_e
    const/16 v16, 0x2

    :goto_11
    or-int v7, v7, v16

    .line 79
    iget-object v10, v6, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v10}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v15
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 80
    :try_start_13
    iget-object v3, v6, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3, v4, v5, v7, v15}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V

    .line 81
    invoke-virtual {v15}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    move-result v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 82
    :try_start_14
    invoke-virtual {v10, v15}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    if-nez v3, :cond_f

    .line 83
    invoke-virtual {v6}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I

    move-result v3

    goto :goto_12

    :catchall_a
    move-exception v0

    move-object v2, v0

    goto/16 :goto_18

    :cond_f
    const/16 v4, -0x3e9

    if-ne v3, v4, :cond_10

    .line 84
    iget-object v4, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v6}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xb0a

    .line 85
    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    :cond_10
    :goto_12
    if-eqz v5, :cond_11

    .line 86
    :try_start_15
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2

    goto :goto_13

    :catch_2
    move-exception v0

    goto/16 :goto_1a

    :cond_11
    :goto_13
    if-eqz v2, :cond_13

    if-eq v3, v13, :cond_12

    goto :goto_14

    .line 87
    :cond_12
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    const-string v1, "Transport requested non-incremental but already the case"

    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v9, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 90
    invoke-static {v14, v9}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 91
    new-instance v0, Lcom/android/server/backup/keyvalue/TaskException;

    const/4 v1, 0x0

    invoke-direct {v0, v11, v1}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(IZ)V

    .line 92
    throw v0

    .line 93
    :cond_13
    :goto_14
    iget-object v2, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupDataFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v20

    if-nez v3, :cond_14

    .line 94
    iget-object v1, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 95
    iget-object v2, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    const/4 v4, 0x0

    .line 96
    invoke-static {v2, v0, v4}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 97
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v4, 0xb08

    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 98
    iget-object v1, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    goto :goto_15

    :cond_14
    if-ne v3, v13, :cond_15

    .line 99
    iget-object v2, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object v4, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    const-string v5, "Transport lost data, retrying package"

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v2, v2, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    const/16 v5, 0x33

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v4, v6, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 102
    iget-object v1, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_15
    return v3

    :cond_15
    const/4 v6, 0x1

    const/16 v2, -0x3ea

    if-eq v3, v2, :cond_19

    const/16 v2, -0x3ed

    if-ne v3, v2, :cond_17

    .line 103
    iget-object v3, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 104
    iget-object v3, v3, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 105
    invoke-static {v3, v0, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/16 v2, 0xb0d

    .line 106
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 107
    iget-object v2, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v2, :cond_16

    .line 108
    :try_start_16
    iget-object v3, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v4, "KVBT.agentDoQuotaExceeded()"

    .line 109
    invoke-virtual {v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v3

    const/4 v4, 0x0

    .line 110
    invoke-virtual {v3, v0, v4}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v22

    .line 111
    new-instance v0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    invoke-direct/range {v18 .. v23}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;-><init>(Landroid/app/IBackupAgent;JJ)V

    iget-object v2, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 112
    invoke-virtual {v2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getQuotaExceededTimeoutMillis()J

    move-result-wide v2

    .line 113
    new-instance v4, Lcom/android/server/backup/remote/RemoteCall;

    iget-boolean v5, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelled:Z

    invoke-direct {v4, v5, v0, v2, v3}, Lcom/android/server/backup/remote/RemoteCall;-><init>(ZLcom/android/server/backup/remote/RemoteCallable;J)V

    iput-object v4, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    .line 114
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;

    invoke-virtual {v0}, Lcom/android/server/backup/remote/RemoteCall;->call()Lcom/android/server/backup/remote/RemoteResult;

    .line 115
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    iput-object v12, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingCall:Lcom/android/server/backup/remote/RemoteCall;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    goto :goto_16

    :catch_3
    move-exception v0

    .line 117
    iget-object v1, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to notify about quota exceeded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_16
    :goto_16
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v0

    throw v0

    .line 120
    :cond_17
    iget-object v1, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 121
    iget-object v1, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 122
    invoke-static {v1, v0, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 123
    invoke-static {v14, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 124
    sget v0, Lcom/android/server/backup/keyvalue/TaskException;->$r8$clinit:I

    if-eqz v3, :cond_18

    goto :goto_17

    :cond_18
    const/4 v6, 0x0

    .line 125
    :goto_17
    const-string v0, "Exception based on TRANSPORT_OK"

    invoke-static {v6, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 126
    new-instance v0, Lcom/android/server/backup/keyvalue/TaskException;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(IZ)V

    .line 127
    throw v0

    .line 128
    :cond_19
    iget-object v1, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 129
    iget-object v1, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 130
    invoke-static {v1, v0, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 131
    const-string v1, "Transport rejected"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb07

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 132
    invoke-static {}, Lcom/android/server/backup/keyvalue/AgentException;->permanent()Lcom/android/server/backup/keyvalue/AgentException;

    move-result-object v0

    throw v0

    :catchall_b
    move-exception v0

    .line 133
    :try_start_17
    invoke-virtual {v10, v15}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 134
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    :goto_18
    if-eqz v5, :cond_1a

    .line 135
    :try_start_18
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    goto :goto_19

    :catchall_c
    move-exception v0

    move-object v3, v0

    :try_start_19
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_19
    throw v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_2

    .line 136
    :goto_1a
    iget-object v1, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Transport error backing up "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    iget-object v1, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v9, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 139
    invoke-static {v14, v9}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 140
    sget v1, Lcom/android/server/backup/keyvalue/TaskException;->$r8$clinit:I

    .line 141
    instance-of v1, v0, Lcom/android/server/backup/keyvalue/TaskException;

    if-eqz v1, :cond_1b

    .line 142
    check-cast v0, Lcom/android/server/backup/keyvalue/TaskException;

    goto :goto_1b

    .line 143
    :cond_1b
    new-instance v1, Lcom/android/server/backup/keyvalue/TaskException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v11}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(Ljava/lang/Exception;ZI)V

    move-object v0, v1

    .line 144
    :goto_1b
    throw v0
.end method

.method public final sendDataToTransport(Landroid/content/pm/PackageInfo;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->sendDataToTransport()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 2
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to read/write agent data for "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyValueBackupTask"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget p0, Lcom/android/server/backup/keyvalue/TaskException;->$r8$clinit:I

    .line 5
    instance-of p0, v0, Lcom/android/server/backup/keyvalue/TaskException;

    if-eqz p0, :cond_0

    .line 6
    check-cast v0, Lcom/android/server/backup/keyvalue/TaskException;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Lcom/android/server/backup/keyvalue/TaskException;

    const/4 p1, 0x0

    const/16 v1, -0x3e8

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(Ljava/lang/Exception;ZI)V

    move-object v0, p0

    .line 8
    :goto_0
    throw v0
.end method

.method public final sendNoDataChangedTo(Lcom/android/server/backup/transport/BackupTransportClient;Landroid/content/pm/PackageInfo;I)V
    .locals 4

    .line 1
    const-string v0, "KVBT"

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBlankStateFile:Ljava/io/File;

    .line 5
    const/high16 v1, 0x18000000

    .line 7
    invoke-static {p0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    iget-object v1, p1, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 13
    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 16
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    iget-object v3, p1, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 19
    invoke-interface {v3, p2, p0, p3, v2}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V

    .line 22
    invoke-virtual {v2}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    .line 25
    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :try_start_3
    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 29
    const/16 p3, -0x3e8

    .line 31
    if-eq p2, p3, :cond_1

    .line 33
    const/16 p3, -0x3e9

    .line 35
    if-ne p2, p3, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    :goto_0
    :try_start_4
    const-string p1, "Aborting informing transport of unchanged apps, transport errored"

    .line 49
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 52
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 55
    return-void

    .line 56
    :catchall_1
    move-exception p1

    .line 57
    :try_start_5
    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 60
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 61
    :goto_1
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 64
    throw p1

    .line 65
    :catch_0
    const-string p0, "Unable to find blank state file, aborting unchanged apps signal."

    .line 67
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public final setSuccessState(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-string v0, "KVBT"

    .line 3
    const-string v1, "Unable to permanently record success for "

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {p0, v2}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->getTopLevelSuccessStateDirectory(Z)Ljava/io/File;

    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 16
    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    move-object p0, v2

    .line 20
    :goto_0
    if-nez p0, :cond_1

    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 26
    move-result v2

    .line 27
    if-eq v2, p2, :cond_3

    .line 29
    if-nez p2, :cond_2

    .line 31
    invoke-static {p0, p1}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->clearStatus(Ljava/io/File;Ljava/lang/String;)V

    .line 34
    return-void

    .line 35
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_3

    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception p0

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :cond_3
    :goto_1
    return-void
.end method

.method public final startTask()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 3
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v4, "KeyValueBackupTask"

    .line 12
    if-nez v0, :cond_7

    .line 14
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 16
    new-instance v15, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 18
    iget-object v6, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 20
    iget-object v7, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 22
    iget-object v8, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    move-result v5

    .line 28
    new-array v5, v5, [Ljava/lang/String;

    .line 30
    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    move-object v9, v0

    .line 35
    check-cast v9, [Ljava/lang/String;

    .line 37
    new-instance v12, Ljava/util/concurrent/CountDownLatch;

    .line 39
    const/4 v14, 0x1

    .line 40
    invoke-direct {v12, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 43
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 45
    iget-object v13, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 47
    iget-object v0, v0, Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 49
    iget-object v0, v0, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 51
    iget-object v11, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTaskFinishedListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 53
    iget-boolean v10, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mUserInitiated:Z

    .line 55
    iget-object v5, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 57
    const/16 v16, 0x0

    .line 59
    const/16 v17, 0x0

    .line 61
    move-object/from16 v18, v5

    .line 63
    move-object v5, v15

    .line 64
    move/from16 v19, v10

    .line 66
    move/from16 v10, v16

    .line 68
    move-object/from16 v16, v11

    .line 70
    move-object/from16 v11, v17

    .line 72
    move v3, v14

    .line 73
    move-object v14, v0

    .line 74
    move-object v0, v15

    .line 75
    move-object/from16 v15, v16

    .line 77
    move/from16 v16, v19

    .line 79
    move-object/from16 v17, v18

    .line 81
    invoke-direct/range {v5 .. v17}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 84
    iput-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 86
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 88
    iget v5, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCurrentOpToken:I

    .line 90
    check-cast v0, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    .line 98
    move-result-object v6

    .line 99
    const/4 v7, 0x2

    .line 100
    invoke-virtual {v0, v5, v6, v1, v7}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->registerOperationForPackages(ILjava/util/Set;Lcom/android/server/backup/BackupRestoreTask;I)V

    .line 103
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    .line 105
    check-cast v0, Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_0

    .line 113
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 115
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_0

    .line 121
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    const-string v0, "Backup begun with an empty queue, nothing to do"

    .line 128
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 132
    :cond_0
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    .line 134
    check-cast v0, Ljava/util/ArrayList;

    .line 136
    const-string v5, "@pm@"

    .line 138
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_2

    .line 144
    iget-boolean v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    .line 146
    if-nez v0, :cond_1

    .line 148
    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    const-string v0, "Skipping backup of PM metadata"

    .line 156
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    goto :goto_1

    .line 160
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    .line 162
    check-cast v0, Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 167
    :goto_1
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 169
    iget-object v2, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mQueue:Ljava/util/List;

    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    .line 176
    const-string v6, "Beginning backup of "

    .line 178
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    check-cast v2, Ljava/util/ArrayList;

    .line 183
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 186
    move-result v2

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    const-string v2, " targets"

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object v0

    .line 199
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Ljava/io/File;

    .line 204
    iget-object v2, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    .line 206
    invoke-direct {v0, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    :try_start_0
    iget-object v2, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 211
    const-string v5, "KVBT.startTask()"

    .line 213
    invoke-virtual {v2, v5}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v2}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    .line 220
    move-result-object v5

    .line 221
    const-string v6, "EncryptedLocalTransport"

    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 226
    move-result v6

    .line 227
    if-eqz v6, :cond_3

    .line 229
    iput-boolean v3, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mNonIncremental:Z

    .line 231
    goto :goto_2

    .line 232
    :catch_0
    move-exception v0

    .line 233
    goto :goto_5

    .line 234
    :catch_1
    move-exception v0

    .line 235
    goto/16 :goto_6

    .line 237
    :cond_3
    :goto_2
    iget-object v6, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 239
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    const/16 v6, 0xb05

    .line 244
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 250
    move-result-wide v5

    .line 251
    const-wide/16 v7, 0x0

    .line 253
    cmp-long v0, v5, v7

    .line 255
    if-gtz v0, :cond_6

    .line 257
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 259
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    const-string v0, "Initializing transport and resetting backup state"

    .line 264
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 269
    iget-object v5, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    .line 271
    invoke-virtual {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 274
    iget-object v5, v2, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 276
    invoke-virtual {v5}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 279
    move-result-object v6
    :try_end_0
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :try_start_1
    iget-object v0, v2, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 282
    invoke-interface {v0, v6}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 285
    invoke-virtual {v6}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    .line 288
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :try_start_2
    invoke-virtual {v5, v6}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 292
    iget-object v2, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 294
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    if-nez v0, :cond_4

    .line 299
    const/4 v2, 0x0

    .line 300
    new-array v2, v2, [Ljava/lang/Object;

    .line 302
    const/16 v5, 0xb0b

    .line 304
    invoke-static {v5, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 307
    goto :goto_3

    .line 308
    :cond_4
    const/16 v2, 0xb06

    .line 310
    const-string v5, "(initialize)"

    .line 312
    invoke-static {v2, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 315
    const-string v2, "KeyValueBackupTask"

    .line 317
    const-string v5, "Transport error in initializeDevice()"

    .line 319
    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_3
    if-nez v0, :cond_5

    .line 324
    goto :goto_4

    .line 325
    :cond_5
    new-instance v0, Lcom/android/server/backup/keyvalue/TaskException;

    .line 327
    const/16 v2, -0x3e8

    .line 329
    invoke-direct {v0, v2, v3}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(IZ)V

    .line 332
    throw v0

    .line 333
    :catchall_0
    move-exception v0

    .line 334
    invoke-virtual {v5, v6}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 337
    throw v0
    :try_end_2
    .catch Lcom/android/server/backup/keyvalue/TaskException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 338
    :cond_6
    :goto_4
    return-void

    .line 339
    :goto_5
    iget-object v1, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 341
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    const-string v1, "Error during initialization"

    .line 346
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    new-instance v0, Lcom/android/server/backup/keyvalue/TaskException;

    .line 351
    const/16 v1, -0x3e8

    .line 353
    invoke-direct {v0, v1, v3}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(IZ)V

    .line 356
    throw v0

    .line 357
    :goto_6
    throw v0

    .line 358
    :cond_7
    iget-object v0, v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 360
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    const-string v0, "Skipping backup since one is already in progress"

    .line 365
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v0, Lcom/android/server/backup/keyvalue/TaskException;

    .line 370
    const/16 v1, -0x3e8

    .line 372
    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(IZ)V

    .line 375
    throw v0
.end method

.method public final triggerTransportInitializationLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 3
    const-string v1, "KVBT.triggerTransportInitializationLocked"

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    .line 13
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->name()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v0, Ljava/io/File;

    .line 22
    iget-object v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mStateDirectory:Ljava/io/File;

    .line 24
    const-string v2, "@pm@"

    .line 26
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 32
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 34
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService;->backupNow()V

    .line 37
    return-void
.end method

.method public final tryCloseFileDescriptor(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mReporter:Lcom/android/server/backup/keyvalue/KeyValueBackupReporter;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    const-string p1, "Error closing "

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string p1, " file-descriptor"

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    const-string p1, "KeyValueBackupTask"

    .line 33
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method public waitCancel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->mCancelAcknowledged:Landroid/os/ConditionVariable;

    .line 3
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    .line 6
    return-void
.end method
