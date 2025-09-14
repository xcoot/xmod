.class public final Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field public final backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mAcceptSet:Ljava/util/List;

.field public mAgent:Landroid/app/IBackupAgent;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public mAreVToUListsSet:Ljava/lang/Boolean;

.field public mBackupData:Landroid/os/ParcelFileDescriptor;

.field public mBackupDataName:Ljava/io/File;

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

.field public mCurrentPackage:Landroid/content/pm/PackageInfo;

.field public mDidLaunch:Z

.field public final mEphemeralOpToken:I

.field public mFinished:Z

.field public final mIsSystemRestore:Z

.field public final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public mNewState:Landroid/os/ParcelFileDescriptor;

.field public mNewStateName:Ljava/io/File;

.field public mObserver:Landroid/app/backup/IRestoreObserver;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

.field public final mPmToken:I

.field public mRestoreAttemptedAppsCount:I

.field public mRestoreDescription:Landroid/app/backup/RestoreDescription;

.field public mStageName:Ljava/io/File;

.field public final mStartRealtime:J

.field public mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public mStateDir:Ljava/io/File;

.field public mStatus:I

.field public final mTargetPackage:Landroid/content/pm/PackageInfo;

.field public final mToken:J

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public final mTransportManager:Lcom/android/server/backup/TransportManager;

.field public final mUserId:I

.field public mVToUAllowlist:Ljava/util/List;

.field public mVToUDenylist:Ljava/util/List;

.field public mWidgetData:[B


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Lcom/android/server/backup/transport/TransportConnection;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAreVToUListsSet:Ljava/lang/Boolean;

    .line 17
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 18
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 19
    iget p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 20
    iput p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 21
    iget-object v0, p1, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 22
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 23
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStartRealtime:J

    .line 25
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 26
    iput-object p4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 27
    new-instance p3, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-direct {p3, p5}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    iput-object p3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 28
    iput-wide p6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    .line 29
    iput p9, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmToken:I

    .line 30
    iput-object p8, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    .line 31
    iput-boolean p10, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    const/4 p3, 0x0

    .line 32
    iput-boolean p3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    .line 33
    iput-boolean p3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 34
    iput-object p12, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 35
    iget-object p4, p1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    const-string p5, "Timeout parameters cannot be null"

    invoke-static {p4, p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 36
    iput-object p13, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    if-eqz p8, :cond_0

    .line 37
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 38
    invoke-virtual {p2, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_0
    if-nez p11, :cond_2

    .line 39
    iget-object p4, p1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 40
    invoke-static {p4, p2, p13}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;ILcom/android/server/backup/utils/BackupEligibilityRules;)Ljava/util/List;

    move-result-object p2

    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    .line 42
    new-array p11, p4, [Ljava/lang/String;

    move p5, p3

    :goto_0
    if-ge p5, p4, :cond_1

    .line 43
    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/pm/PackageInfo;

    iget-object p6, p6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object p6, p11, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 44
    :cond_1
    const-string p2, "Full restore; asking about "

    const-string p5, " apps"

    const-string p6, "BackupManagerService"

    .line 45
    invoke-static {p4, p2, p5, p6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    array-length p4, p11

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    move p2, p3

    move p4, p2

    move p5, p4

    .line 47
    :goto_1
    array-length p6, p11

    const-string/jumbo p7, "com.android.providers.settings"

    const-string p8, "android"

    if-ge p2, p6, :cond_9

    .line 48
    :try_start_0
    iget-object p6, p1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 49
    aget-object p9, p11, p2

    iget p10, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    invoke-virtual {p6, p9, p3, p10}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p6

    .line 50
    iget-object p9, p6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p8, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    const/4 p9, 0x1

    if-eqz p8, :cond_3

    move p4, p9

    goto :goto_3

    .line 51
    :cond_3
    iget-object p8, p6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p7, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_4

    move p5, p9

    goto :goto_3

    .line 52
    :cond_4
    iget-object p7, p6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 53
    invoke-virtual {p13, p7}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result p8

    if-eqz p8, :cond_8

    .line 54
    invoke-static {}, Lcom/android/server/backup/Flags;->enableSkippingRestoreLaunchedApps()Z

    move-result p8

    if-eqz p8, :cond_7

    .line 55
    iget-boolean p8, p13, Lcom/android/server/backup/utils/BackupEligibilityRules;->mSkipRestoreForLaunchedApps:Z

    if-nez p8, :cond_5

    goto :goto_2

    .line 56
    :cond_5
    iget-object p8, p7, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz p8, :cond_6

    goto :goto_2

    .line 57
    :cond_6
    iget-object p7, p7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p8, p13, Lcom/android/server/backup/utils/BackupEligibilityRules;->mUserId:I

    iget-object p10, p13, Lcom/android/server/backup/utils/BackupEligibilityRules;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p10, p8, p7}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(ILjava/lang/String;)Z

    move-result p7

    xor-int/2addr p9, p7

    :goto_2
    if-nez p9, :cond_7

    goto :goto_3

    .line 58
    :cond_7
    iget-object p7, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-interface {p7, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_9
    if-eqz p4, :cond_a

    .line 59
    :try_start_1
    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 60
    iget-object p4, p1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    iget p6, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 62
    invoke-virtual {p4, p8, p3, p6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p4

    .line 63
    invoke-interface {p2, p3, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_a
    if-eqz p5, :cond_b

    .line 64
    :try_start_2
    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 65
    iget-object p4, p1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    iget p5, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 67
    invoke-virtual {p4, p7, p3, p5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p3

    .line 68
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 69
    :catch_2
    :cond_b
    :goto_4
    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->filterUserFacingPackages(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAreVToUListsSet:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 4
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 5
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 6
    iput-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 7
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    const/4 p2, 0x0

    .line 8
    iput p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 9
    iput p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 10
    iput-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 11
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 12
    new-instance p1, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-direct {p1, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 13
    invoke-virtual {p0, p3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->createVToUList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUAllowlist:Ljava/util/List;

    .line 14
    invoke-virtual {p0, p4}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->createVToUList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUDenylist:Ljava/util/List;

    return-void
.end method

.method public static addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    new-instance p0, Landroid/os/Bundle;

    .line 5
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 8
    :cond_0
    const-string v0, "android.app.backup.extra.OPERATION_TYPE"

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    return-object p0
.end method


# virtual methods
.method public createVToUList(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-eqz p1, :cond_0

    .line 8
    const-string p0, ","

    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    :cond_0
    return-object p0
.end method

.method public final execute()V
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 3
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1e

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/16 v9, 0xb10

    .line 15
    const/4 v10, 0x2

    .line 16
    const/4 v2, 0x3

    .line 17
    const/4 v11, 0x1

    .line 18
    if-eq v0, v11, :cond_10

    .line 20
    if-eq v0, v10, :cond_a

    .line 22
    if-eq v0, v2, :cond_9

    .line 24
    const/4 v3, 0x4

    .line 25
    if-eq v0, v3, :cond_8

    .line 27
    const/4 v3, 0x5

    .line 28
    if-eq v0, v3, :cond_0

    .line 30
    goto/16 :goto_16

    .line 32
    :cond_0
    iget-boolean v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    .line 34
    if-nez v0, :cond_7

    .line 36
    const-string v3, "PerformUnifiedRestoreTask.finalizeRestore()"

    .line 38
    :try_start_0
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 40
    invoke-virtual {v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 43
    move-result-object v0

    .line 44
    iget-object v4, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 46
    invoke-virtual {v4}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 49
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    iget-object v0, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 52
    invoke-interface {v0, v5}, Lcom/android/internal/backup/IBackupTransport;->finishRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 55
    invoke-virtual {v5}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    invoke-virtual {v4, v5}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    invoke-virtual {v4, v5}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 66
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v4, "BackupManagerService"

    .line 70
    const-string v5, "Error finishing restore"

    .line 72
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :goto_0
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 77
    if-eqz v0, :cond_1

    .line 79
    :try_start_3
    iget v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 81
    invoke-interface {v0, v4}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 84
    goto :goto_1

    .line 85
    :catch_1
    const-string v0, "BackupManagerService"

    .line 87
    const-string v4, "Restore observer went away: endRestore"

    .line 89
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-object v8, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 94
    :cond_1
    :goto_1
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 96
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 98
    const/16 v4, 0x8

    .line 100
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    iget v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmToken:I

    .line 105
    if-lez v0, :cond_2

    .line 107
    :try_start_4
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 109
    iget-object v4, v4, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 111
    iget-boolean v5, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 113
    invoke-interface {v4, v0, v5}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 119
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreSessionTimeoutMillis()J

    .line 122
    move-result-wide v5

    .line 123
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 125
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 127
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 130
    :catch_2
    :goto_2
    iget-boolean v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    .line 132
    if-eqz v0, :cond_3

    .line 134
    iget v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 136
    invoke-static {v0}, Lcom/android/server/AppWidgetBackupBridge;->systemRestoreFinished(I)V

    .line 139
    :cond_3
    iget-boolean v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    .line 141
    if-eqz v0, :cond_5

    .line 143
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 145
    if-eqz v0, :cond_5

    .line 147
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 149
    iget-object v0, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 151
    if-nez v0, :cond_4

    .line 153
    const-string v0, "PMBA"

    .line 155
    const-string/jumbo v5, "getRestoredPackages() before metadata read!"

    .line 158
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    move-object v0, v8

    .line 162
    goto :goto_3

    .line 163
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 166
    move-result-object v0

    .line 167
    :goto_3
    iput-object v0, v4, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 169
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 171
    iget-wide v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    .line 173
    iput-wide v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 175
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 177
    iget v4, v4, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    .line 179
    int-to-long v4, v4

    .line 180
    iput-wide v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralBackupDestination:J

    .line 182
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 184
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V

    .line 187
    :cond_5
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 189
    iget-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 191
    monitor-enter v4

    .line 192
    :try_start_5
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 194
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 196
    check-cast v0, Ljava/util/ArrayDeque;

    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 201
    move-result v0

    .line 202
    if-lez v0, :cond_6

    .line 204
    const-string v0, "BackupManagerService"

    .line 206
    const-string v1, "Starting next pending restore."

    .line 208
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 213
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 215
    check-cast v0, Ljava/util/ArrayDeque;

    .line 217
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 223
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 225
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 227
    const/16 v5, 0x14

    .line 229
    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    goto :goto_4

    .line 237
    :catchall_1
    move-exception v0

    .line 238
    goto :goto_5

    .line 239
    :cond_6
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 241
    iput-boolean v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mIsRestoreInProgress:Z

    .line 243
    :goto_4
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 244
    const-string v0, "BackupManagerService"

    .line 246
    const-string v1, "Restore complete."

    .line 248
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 254
    move-result-object v0

    .line 255
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 257
    const/16 v4, 0x44

    .line 259
    invoke-virtual {v1, v4, v8, v2, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 262
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 264
    invoke-interface {v0, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 267
    goto :goto_6

    .line 268
    :goto_5
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 269
    throw v0

    .line 270
    :cond_7
    const-string v0, "BackupManagerService"

    .line 272
    const-string v1, "Duplicate finish"

    .line 274
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_6
    iput-boolean v11, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    .line 279
    goto/16 :goto_16

    .line 281
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 283
    const-string/jumbo v1, "restoreFinished packageName="

    .line 286
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 291
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 293
    const-string v12, "BackupManagerService"

    .line 295
    invoke-static {v0, v1, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :try_start_7
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 300
    iget-object v1, v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    .line 302
    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 303
    :try_start_8
    iget-wide v3, v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentFinishedTimeoutMillis:J

    .line 305
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 306
    :try_start_9
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 308
    iget v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 310
    const/4 v6, 0x1

    .line 311
    move-object/from16 v5, p0

    .line 313
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 316
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 318
    iget v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 320
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 322
    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 324
    invoke-interface {v0, v1, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 327
    goto/16 :goto_16

    .line 329
    :catch_3
    move-exception v0

    .line 330
    goto :goto_7

    .line 331
    :catchall_2
    move-exception v0

    .line 332
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 333
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 334
    :goto_7
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 336
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    .line 340
    const-string v3, "Unable to finalize restore of "

    .line 342
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    move-result-object v2

    .line 352
    invoke-static {v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 358
    move-result-object v2

    .line 359
    iget-object v3, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 361
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 363
    const/16 v5, 0x45

    .line 365
    invoke-virtual {v4, v5, v3, v10, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 368
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 371
    move-result-object v0

    .line 372
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 375
    move-result-object v0

    .line 376
    invoke-static {v9, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 379
    invoke-virtual {v7, v11}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 382
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 384
    invoke-virtual {v7, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 387
    goto/16 :goto_16

    .line 389
    :cond_9
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 391
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 394
    move-result-object v1

    .line 395
    iget-object v3, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 397
    const/16 v4, 0x3b

    .line 399
    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 402
    :try_start_c
    new-instance v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;

    .line 404
    invoke-direct {v0, v7}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;-><init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)V

    .line 407
    new-instance v1, Ljava/lang/Thread;

    .line 409
    const-string/jumbo v4, "unified-stream-feeder"

    .line 412
    invoke-direct {v1, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 418
    goto/16 :goto_16

    .line 420
    :catch_4
    const-string v0, "BackupManagerService"

    .line 422
    const-string v1, "Unable to construct pipes for stream restore!"

    .line 424
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 430
    move-result-object v0

    .line 431
    const/16 v1, 0x40

    .line 433
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 435
    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 438
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 440
    invoke-virtual {v7, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 443
    goto/16 :goto_16

    .line 445
    :cond_a
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 447
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 449
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 452
    move-result-object v3

    .line 453
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 455
    const/16 v5, 0x3a

    .line 457
    invoke-virtual {v4, v5, v0, v2, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 460
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 462
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 464
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 466
    sget-object v3, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 468
    if-eqz v0, :cond_f

    .line 470
    const-string v5, ""

    .line 472
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 475
    move-result v0

    .line 476
    if-eqz v0, :cond_b

    .line 478
    goto/16 :goto_9

    .line 480
    :cond_b
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 482
    iget-object v0, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 484
    if-nez v0, :cond_c

    .line 486
    const-string v0, "PMBA"

    .line 488
    const-string/jumbo v5, "getRestoredMetadata() before metadata read!"

    .line 491
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    move-object v0, v8

    .line 495
    goto :goto_8

    .line 496
    :cond_c
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    move-result-object v0

    .line 500
    check-cast v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    .line 502
    :goto_8
    const-class v5, Landroid/content/pm/PackageManagerInternal;

    .line 504
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 507
    move-result-object v5

    .line 508
    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    .line 510
    iget-object v6, v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    .line 512
    iget-object v12, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 514
    invoke-static {v6, v12, v5}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    .line 517
    move-result v5

    .line 518
    const-string v6, "BackupManagerService"

    .line 520
    if-nez v5, :cond_d

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    .line 524
    const-string v5, "Signature mismatch restoring "

    .line 526
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    move-result-object v0

    .line 536
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 542
    move-result-object v0

    .line 543
    const/16 v5, 0x1d

    .line 545
    iget-object v6, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 547
    invoke-virtual {v4, v5, v6, v2, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 550
    const-string v0, "Signature mismatch"

    .line 552
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 555
    move-result-object v0

    .line 556
    invoke-static {v9, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 559
    invoke-virtual {v7, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 562
    goto/16 :goto_16

    .line 564
    :cond_d
    iget-object v5, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 566
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 568
    iget-object v12, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 570
    iget v12, v12, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    .line 572
    iget-object v13, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 574
    invoke-virtual {v13, v5, v10, v12}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    .line 577
    move-result-object v5

    .line 578
    iput-object v5, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 580
    if-nez v5, :cond_e

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    .line 584
    const-string v5, "Can\'t find backup agent for "

    .line 586
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    move-result-object v0

    .line 596
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 602
    move-result-object v0

    .line 603
    const/16 v5, 0x1e

    .line 605
    iget-object v6, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 607
    invoke-virtual {v4, v5, v6, v2, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 610
    const-string v0, "Restore agent missing"

    .line 612
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 615
    move-result-object v0

    .line 616
    invoke-static {v9, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 619
    invoke-virtual {v7, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 622
    goto/16 :goto_16

    .line 624
    :cond_e
    iput-boolean v11, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 626
    :try_start_d
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 628
    iget-wide v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    .line 630
    invoke-virtual {v7, v1, v11, v12}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 633
    goto/16 :goto_16

    .line 635
    :catch_5
    move-exception v0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    .line 638
    const-string v2, "Error when attempting restore: "

    .line 640
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 646
    move-result-object v0

    .line 647
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    move-result-object v0

    .line 654
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 660
    move-result-object v0

    .line 661
    const/16 v1, 0x3d

    .line 663
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 665
    invoke-virtual {v4, v1, v2, v10, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    .line 671
    invoke-virtual {v7, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 674
    goto/16 :goto_16

    .line 676
    :cond_f
    :goto_9
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 679
    move-result-object v0

    .line 680
    const/16 v2, 0x1c

    .line 682
    iget-object v5, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 684
    invoke-virtual {v4, v2, v5, v10, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 687
    const-string v0, "Package has no agent"

    .line 689
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 692
    move-result-object v0

    .line 693
    invoke-static {v9, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 696
    invoke-virtual {v7, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 699
    goto/16 :goto_16

    .line 701
    :cond_10
    iget v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 703
    iget-object v3, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 705
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 707
    const-string v5, "BackupManagerService"

    .line 709
    const-string v6, "Can\'t get next restore target from transport; halting: "

    .line 711
    const-string v12, "Package not present: "

    .line 713
    const-string v13, "Unrecognized restore type "

    .line 715
    const-string v14, " : Package not eligible for V to U downgrade scenario"

    .line 717
    const-string v15, "Package "

    .line 719
    const-string v10, "No metadata for "

    .line 721
    const-string v9, "Next restore package: "

    .line 723
    sget-object v2, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 725
    :try_start_e
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 727
    const-string v11, "PerformUnifiedRestoreTask.dispatchNextRestore()"

    .line 729
    invoke-virtual {v1, v11}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 732
    move-result-object v1

    .line 733
    iget-object v11, v1, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 735
    invoke-virtual {v11}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    .line 738
    move-result-object v11

    .line 739
    iget-object v8, v1, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 741
    invoke-interface {v8, v11}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage(Lcom/android/internal/infra/AndroidFuture;)V

    .line 744
    invoke-virtual {v1, v11}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 747
    move-result-object v1

    .line 748
    check-cast v1, Landroid/app/backup/RestoreDescription;

    .line 750
    iput-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 752
    if-eqz v1, :cond_11

    .line 754
    :try_start_f
    invoke-virtual {v1}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    .line 757
    move-result-object v1

    .line 758
    goto :goto_a

    .line 759
    :catchall_3
    move-exception v0

    .line 760
    move-object v1, v2

    .line 761
    goto/16 :goto_15

    .line 763
    :catch_6
    move-exception v0

    .line 764
    move-object/from16 v16, v2

    .line 766
    move-object/from16 v17, v6

    .line 768
    goto/16 :goto_14

    .line 770
    :cond_11
    const/4 v1, 0x0

    .line 771
    :goto_a
    if-nez v1, :cond_12

    .line 773
    const/4 v8, 0x0

    .line 774
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 777
    move-result-object v0

    .line 778
    const/16 v1, 0x38

    .line 780
    const/4 v3, 0x1

    .line 781
    invoke-virtual {v4, v1, v8, v3, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 784
    const-string v0, "Failure getting next package name"

    .line 786
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/4 v1, 0x0

    .line 790
    new-array v0, v1, [Ljava/lang/Object;

    .line 792
    const/16 v1, 0xb0f

    .line 794
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 797
    :goto_b
    invoke-virtual {v7, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 800
    goto/16 :goto_16

    .line 802
    :cond_12
    :try_start_10
    iget-object v8, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    .line 804
    sget-object v11, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 806
    if-ne v8, v11, :cond_13

    .line 808
    :try_start_11
    const-string v0, "No more packages; finishing restore"

    .line 810
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 816
    move-result-wide v0

    .line 817
    iget-wide v8, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStartRealtime:J

    .line 819
    sub-long/2addr v0, v8

    .line 820
    long-to-int v0, v0

    .line 821
    iget v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreAttemptedAppsCount:I

    .line 823
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 826
    move-result-object v1

    .line 827
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 830
    move-result-object v0

    .line 831
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 834
    move-result-object v0

    .line 835
    const/16 v1, 0xb12

    .line 837
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 840
    goto :goto_b

    .line 841
    :cond_13
    :try_start_12
    new-instance v8, Ljava/lang/StringBuilder;

    .line 843
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 846
    iget-object v9, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    .line 848
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 851
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 854
    move-result-object v8

    .line 855
    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget v8, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreAttemptedAppsCount:I

    .line 860
    const/4 v9, 0x1

    .line 861
    add-int/2addr v8, v9

    .line 862
    iput v8, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreAttemptedAppsCount:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 864
    :try_start_13
    iget-object v9, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 866
    if-eqz v9, :cond_14

    .line 868
    :try_start_14
    invoke-interface {v9, v8, v1}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 871
    goto :goto_c

    .line 872
    :catch_7
    :try_start_15
    const-string v8, "Restore observer died in onUpdate"

    .line 874
    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    const/4 v8, 0x0

    .line 878
    iput-object v8, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 880
    :cond_14
    :goto_c
    :try_start_16
    iget-object v8, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 882
    iget-object v8, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 884
    if-nez v8, :cond_15

    .line 886
    const-string v8, "PMBA"

    .line 888
    const-string/jumbo v9, "getRestoredMetadata() before metadata read!"

    .line 891
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v8, 0x0

    .line 895
    goto :goto_d

    .line 896
    :cond_15
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    move-result-object v8

    .line 900
    check-cast v8, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 902
    :goto_d
    sget-object v9, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 904
    if-nez v8, :cond_16

    .line 906
    :try_start_17
    new-instance v0, Landroid/content/pm/PackageInfo;

    .line 908
    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 911
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 913
    const/4 v3, 0x0

    .line 914
    invoke-static {v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 917
    move-result-object v8

    .line 918
    const/16 v3, 0x18

    .line 920
    const/4 v11, 0x3

    .line 921
    invoke-virtual {v4, v3, v0, v11, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 924
    invoke-virtual {v10, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 927
    move-result-object v0

    .line 928
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const-string v0, "Package metadata missing"

    .line 933
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 936
    move-result-object v0

    .line 937
    const/16 v1, 0xb10

    .line 939
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 942
    goto/16 :goto_12

    .line 944
    :cond_16
    :try_start_18
    iget-object v10, v3, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 946
    const/high16 v11, 0x8000000

    .line 948
    invoke-virtual {v10, v1, v11, v0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 951
    move-result-object v10

    .line 952
    iput-object v10, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 954
    const/4 v10, 0x0

    .line 955
    invoke-static {v10}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 958
    move-result-object v11

    .line 959
    iget-object v10, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_18} :catch_9
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 961
    move-object/from16 v16, v2

    .line 963
    const/16 v2, 0x43

    .line 965
    move-object/from16 v17, v6

    .line 967
    const/4 v6, 0x3

    .line 968
    :try_start_19
    invoke-virtual {v4, v2, v10, v6, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_19} :catch_a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 971
    :try_start_1a
    iget-wide v10, v8, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    .line 973
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 975
    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 978
    move-result-wide v18

    .line 979
    cmp-long v2, v10, v18

    .line 981
    if-lez v2, :cond_18

    .line 983
    iget-boolean v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    .line 985
    if-eqz v2, :cond_1a

    .line 987
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 989
    iget v2, v2, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 991
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 993
    invoke-virtual {v7, v2, v6}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->isVToUDowngrade(II)Z

    .line 996
    move-result v2

    .line 997
    if-eqz v2, :cond_1a

    .line 999
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAreVToUListsSet:Ljava/lang/Boolean;

    .line 1001
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1004
    move-result v2

    .line 1005
    if-nez v2, :cond_17

    .line 1007
    iget-object v2, v3, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 1009
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1012
    move-result-object v2

    .line 1013
    const-string/jumbo v6, "v_to_u_restore_allowlist"

    .line 1016
    invoke-static {v2, v6, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 1019
    move-result-object v2

    .line 1020
    invoke-virtual {v7, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->createVToUList(Ljava/lang/String;)Ljava/util/List;

    .line 1023
    move-result-object v2

    .line 1024
    iput-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUAllowlist:Ljava/util/List;

    .line 1026
    iget-object v2, v3, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 1028
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1031
    move-result-object v2

    .line 1032
    const-string/jumbo v3, "v_to_u_restore_denylist"

    .line 1035
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 1038
    move-result-object v0

    .line 1039
    invoke-virtual {v7, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->createVToUList(Ljava/lang/String;)Ljava/util/List;

    .line 1042
    move-result-object v0

    .line 1043
    iput-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUDenylist:Ljava/util/List;

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->logVToUListsToBMM()V

    .line 1048
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1050
    iput-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAreVToUListsSet:Ljava/lang/Boolean;

    .line 1052
    goto :goto_f

    .line 1053
    :catchall_4
    move-exception v0

    .line 1054
    :goto_e
    move-object/from16 v1, v16

    .line 1056
    goto/16 :goto_15

    .line 1058
    :catch_8
    move-exception v0

    .line 1059
    goto/16 :goto_14

    .line 1061
    :cond_17
    :goto_f
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 1063
    invoke-virtual {v7, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->isPackageEligibleForVToURestore(Landroid/content/pm/PackageInfo;)Z

    .line 1066
    move-result v0

    .line 1067
    if-eqz v0, :cond_19

    .line 1069
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 1071
    const/4 v2, 0x0

    .line 1072
    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1075
    move-result-object v3

    .line 1076
    const/16 v2, 0x46

    .line 1078
    const/4 v6, 0x3

    .line 1079
    invoke-virtual {v4, v2, v0, v6, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1084
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    const-string v1, " is eligible for V to U downgrade scenario"

    .line 1092
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1098
    move-result-object v0

    .line 1099
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_18
    :goto_10
    const/4 v1, 0x0

    .line 1103
    goto :goto_11

    .line 1104
    :cond_19
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 1106
    const/4 v2, 0x0

    .line 1107
    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1110
    move-result-object v3

    .line 1111
    const/16 v2, 0x47

    .line 1113
    const/4 v6, 0x3

    .line 1114
    invoke-virtual {v4, v2, v0, v6, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1117
    const-string v0, "Package not eligible for V to U downgrade scenario"

    .line 1119
    invoke-virtual {v1, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1122
    move-result-object v2

    .line 1123
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 1129
    move-result-object v0

    .line 1130
    const/16 v1, 0xb10

    .line 1132
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1135
    goto :goto_12

    .line 1136
    :cond_1a
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 1138
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1140
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1142
    const/high16 v1, 0x20000

    .line 1144
    and-int/2addr v0, v1

    .line 1145
    if-nez v0, :cond_1b

    .line 1147
    const/4 v1, 0x0

    .line 1148
    invoke-virtual {v7, v1, v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->logDowngradeScenario(ZLcom/android/server/backup/PackageManagerBackupAgent$Metadata;)V

    .line 1151
    goto :goto_12

    .line 1152
    :cond_1b
    const/4 v1, 0x1

    .line 1153
    invoke-virtual {v7, v1, v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->logDowngradeScenario(ZLcom/android/server/backup/PackageManagerBackupAgent$Metadata;)V

    .line 1156
    goto :goto_10

    .line 1157
    :goto_11
    iput-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 1159
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    .line 1161
    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getDataType()I

    .line 1164
    move-result v0

    .line 1165
    const/4 v1, 0x1

    .line 1166
    if-ne v0, v1, :cond_1c

    .line 1168
    sget-object v9, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1170
    goto :goto_12

    .line 1171
    :cond_1c
    const/4 v1, 0x2

    .line 1172
    if-ne v0, v1, :cond_1d

    .line 1174
    sget-object v9, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1176
    goto :goto_12

    .line 1177
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1179
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1188
    move-result-object v0

    .line 1189
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/4 v1, 0x0

    .line 1193
    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1196
    move-result-object v0

    .line 1197
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 1199
    const/16 v2, 0x39

    .line 1201
    const/4 v3, 0x3

    .line 1202
    invoke-virtual {v4, v2, v1, v3, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 1205
    :goto_12
    invoke-virtual {v7, v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1208
    goto :goto_16

    .line 1209
    :catchall_5
    move-exception v0

    .line 1210
    :goto_13
    move-object/from16 v16, v2

    .line 1212
    goto/16 :goto_e

    .line 1214
    :catch_9
    move-object/from16 v16, v2

    .line 1216
    move-object/from16 v17, v6

    .line 1218
    :catch_a
    :try_start_1b
    invoke-virtual {v12, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1221
    move-result-object v0

    .line 1222
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    const/4 v2, 0x0

    .line 1226
    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1229
    move-result-object v0

    .line 1230
    new-instance v2, Landroid/content/pm/PackageInfo;

    .line 1232
    invoke-direct {v2}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 1235
    iput-object v1, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1237
    const/16 v3, 0x1a

    .line 1239
    const/4 v6, 0x3

    .line 1240
    invoke-virtual {v4, v3, v2, v6, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1243
    const-string v0, "Package missing on device"

    .line 1245
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 1248
    move-result-object v0

    .line 1249
    const/16 v1, 0xb10

    .line 1251
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 1254
    goto :goto_12

    .line 1255
    :catchall_6
    move-exception v0

    .line 1256
    goto :goto_13

    .line 1257
    :goto_14
    :try_start_1c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1259
    move-object/from16 v2, v17

    .line 1261
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1267
    move-result-object v0

    .line 1268
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1274
    move-result-object v0

    .line 1275
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const/4 v1, 0x0

    .line 1279
    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1282
    move-result-object v0

    .line 1283
    const/16 v2, 0x3c

    .line 1285
    const/4 v3, 0x3

    .line 1286
    invoke-virtual {v4, v2, v1, v3, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1289
    const/4 v1, 0x0

    .line 1290
    new-array v0, v1, [Ljava/lang/Object;

    .line 1292
    const/16 v1, 0xb0f

    .line 1294
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1297
    const/16 v0, -0x3e8

    .line 1299
    iput v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 1301
    move-object/from16 v1, v16

    .line 1303
    invoke-virtual {v7, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1306
    goto :goto_16

    .line 1307
    :goto_15
    invoke-virtual {v7, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1310
    throw v0

    .line 1311
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->startRestore()V

    .line 1314
    :goto_16
    return-void
.end method

.method public executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 3
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 5
    iget-object v0, p1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 7
    const/16 v1, 0x14

    .line 9
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    move-result-object p0

    .line 13
    iget-object p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 15
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 18
    return-void
.end method

.method public filterExcludedKeys(Ljava/lang/String;Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/server/backup/Flags;->enableMaxSizeWritesToPipes()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    const/high16 v1, 0x10000

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v1, 0x2000

    .line 16
    :goto_0
    new-array v1, v1, [B

    .line 18
    :goto_1
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_4

    .line 24
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    .line 31
    move-result v3

    .line 32
    const-string v4, "BackupManagerService"

    .line 34
    if-eqz v0, :cond_1

    .line 36
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    const-string v5, "Skipping blocked key "

    .line 46
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const-string/jumbo v5, "\uffed\uffedwidget"

    .line 66
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v5

    .line 70
    const/4 v6, 0x0

    .line 71
    if-eqz v5, :cond_2

    .line 73
    const-string v2, "Restoring widget state for "

    .line 75
    invoke-static {v2, p1, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-array v2, v3, [B

    .line 80
    iput-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 82
    invoke-virtual {p2, v2, v6, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    array-length v4, v1

    .line 87
    if-le v3, v4, :cond_3

    .line 89
    new-array v1, v3, [B

    .line 91
    :cond_3
    invoke-virtual {p2, v1, v6, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 94
    invoke-virtual {p3, v2, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 97
    invoke-virtual {p3, v1, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    return-void
.end method

.method public getCurrentUnifiedRestoreStateForTesting()Lcom/android/server/backup/restore/UnifiedRestoreState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 3
    return-object p0
.end method

.method public getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

    .line 5
    iget-object p0, p0, Lcom/android/server/backup/UserBackupPreferences;->mPreferences:Landroid/content/SharedPreferences;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final handleCancel(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 3
    check-cast p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 5
    iget v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    const-string v0, "Timeout restoring application "

    .line 14
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 19
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const-string v0, "BackupManagerService"

    .line 30
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-static {p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 40
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 42
    const/16 v2, 0x1f

    .line 44
    const/4 v3, 0x2

    .line 45
    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 48
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 50
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "restore timeout"

    .line 55
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    const/16 v0, 0xb10

    .line 61
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 64
    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 68
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 73
    return-void
.end method

.method public final initiateOneRestore(Landroid/content/pm/PackageInfo;J)V
    .locals 24

    .line 1
    move-object/from16 v7, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    sget-object v8, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 7
    iget-object v9, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 9
    const-string v1, "Error getting restore data for "

    .line 11
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v3, "initiateOneRestore packageName="

    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    const-string v11, "BackupManagerService"

    .line 30
    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v2, Ljava/io/File;

    .line 35
    iget-object v12, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 37
    iget-object v3, v12, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 39
    const-string v4, ".restore"

    .line 41
    invoke-static {v10, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    iput-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 50
    new-instance v2, Ljava/io/File;

    .line 52
    iget-object v3, v12, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 54
    const-string v4, ".stage"

    .line 56
    invoke-static {v10, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    iput-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    .line 65
    new-instance v2, Ljava/io/File;

    .line 67
    iget-object v3, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    .line 69
    const-string v4, ".new"

    .line 71
    invoke-static {v10, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v4

    .line 75
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    iput-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    .line 80
    invoke-virtual {v7, v10}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->shouldStageBackupData(Ljava/lang/String;)Z

    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_0

    .line 86
    iget-object v3, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    iget-object v3, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 91
    :goto_0
    const/4 v13, 0x0

    .line 92
    const/4 v14, 0x0

    .line 93
    :try_start_0
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 95
    const-string v5, "PerformUnifiedRestoreTask.initiateOneRestore()"

    .line 97
    invoke-virtual {v4, v5}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 100
    move-result-object v4

    .line 101
    const/high16 v5, 0x3c000000    # 0.0078125f

    .line 103
    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 106
    move-result-object v6

    .line 107
    iget-object v15, v4, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 109
    invoke-virtual {v15}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 112
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    iget-object v4, v4, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 115
    invoke-interface {v4, v6, v5}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 118
    invoke-virtual {v5}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    .line 121
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :try_start_2
    invoke-virtual {v15, v5}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 125
    const/4 v15, 0x1

    .line 126
    if-eqz v4, :cond_2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v13}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 146
    move-result-object v0

    .line 147
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 149
    const/16 v2, 0x3f

    .line 151
    invoke-virtual {v9, v2, v1, v15, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 154
    new-array v0, v14, [Ljava/lang/Object;

    .line 156
    const/16 v1, 0xb0f

    .line 158
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 161
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 164
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 167
    const-string/jumbo v0, "unified_restore_continue_after_transport_failure_in_kv_restore"

    .line 170
    const-string v1, "backup_and_restore"

    .line 172
    invoke-static {v1, v0, v15}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_1

    .line 178
    move-object v0, v8

    .line 179
    goto :goto_1

    .line 180
    :cond_1
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 182
    :goto_1
    invoke-virtual {v7, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 185
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    goto/16 :goto_2

    .line 189
    :cond_2
    const/high16 v1, 0x10000000

    .line 191
    if-eqz v2, :cond_3

    .line 193
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 196
    invoke-static {v3, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 199
    move-result-object v6

    .line 200
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 202
    const/high16 v3, 0x3c000000    # 0.0078125f

    .line 204
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 207
    move-result-object v2

    .line 208
    iput-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 210
    new-instance v2, Landroid/app/backup/BackupDataInput;

    .line 212
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 215
    move-result-object v3

    .line 216
    invoke-direct {v2, v3}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 219
    new-instance v3, Landroid/app/backup/BackupDataOutput;

    .line 221
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 223
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 226
    move-result-object v4

    .line 227
    invoke-direct {v3, v4}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 230
    invoke-virtual {v7, v10, v2, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->filterExcludedKeys(Ljava/lang/String;Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V

    .line 233
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 235
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 238
    :cond_3
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 241
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 243
    invoke-static {v2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 246
    move-result-object v1

    .line 247
    iput-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 249
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    .line 251
    const/high16 v2, 0x3c000000    # 0.0078125f

    .line 253
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 256
    move-result-object v1

    .line 257
    iput-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 259
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 261
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 263
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 265
    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis(I)J

    .line 268
    move-result-wide v3

    .line 269
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 271
    iget v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 273
    const/4 v6, 0x1

    .line 274
    move-object/from16 v5, p0

    .line 276
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    :try_start_3
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 281
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 283
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 285
    iget v3, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 287
    iget-object v4, v12, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 289
    new-instance v5, Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v7, v10}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    .line 294
    move-result-object v6

    .line 295
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 298
    move-object/from16 v16, v0

    .line 300
    move-object/from16 v17, v1

    .line 302
    move-wide/from16 v18, p2

    .line 304
    move-object/from16 v20, v2

    .line 306
    move/from16 v21, v3

    .line 308
    move-object/from16 v22, v4

    .line 310
    move-object/from16 v23, v5

    .line 312
    invoke-interface/range {v16 .. v23}, Landroid/app/IBackupAgent;->doRestoreWithExcludedKeys(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 315
    goto :goto_3

    .line 316
    :catch_1
    move-exception v0

    .line 317
    move v14, v15

    .line 318
    goto :goto_2

    .line 319
    :catchall_0
    move-exception v0

    .line 320
    :try_start_4
    invoke-virtual {v15, v5}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 323
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 324
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 326
    const-string v2, "Unable to call app for restore: "

    .line 328
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    move-result-object v1

    .line 338
    invoke-static {v11, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    invoke-static {v13}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 344
    move-result-object v1

    .line 345
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 347
    const/4 v3, 0x2

    .line 348
    const/16 v4, 0x3d

    .line 350
    invoke-virtual {v9, v4, v2, v3, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 353
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 356
    move-result-object v0

    .line 357
    filled-new-array {v10, v0}, [Ljava/lang/Object;

    .line 360
    move-result-object v0

    .line 361
    const/16 v1, 0xb10

    .line 363
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 366
    invoke-virtual {v7, v14}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 369
    invoke-virtual {v7, v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 372
    :goto_3
    return-void
.end method

.method public initiateOneRestoreForTesting(Landroid/content/pm/PackageInfo;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;J)V

    .line 4
    return-void
.end method

.method public isPackageEligibleForVToURestore(Landroid/content/pm/PackageInfo;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUDenylist:Ljava/util/List;

    .line 3
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    const-string v1, "BackupManagerService"

    .line 11
    if-eqz v0, :cond_0

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 20
    const-string v0, " : Package is in V to U denylist"

    .line 22
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 29
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 31
    const/high16 v2, 0x20000

    .line 33
    and-int/2addr v0, v2

    .line 34
    if-nez v0, :cond_1

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 43
    const-string v3, " : Package has restoreAnyVersion=false and is in V to U allowlist"

    .line 45
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUAllowlist:Ljava/util/List;

    .line 50
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 52
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 55
    move-result p0

    .line 56
    return p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 64
    const-string v0, " : Package has restoreAnyVersion=true and is not in V to U denylist"

    .line 66
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 p0, 0x1

    .line 70
    return p0
.end method

.method public isVToUDowngrade(II)Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/backup/Flags;->enableVToURestoreForSystemComponentsInAllowlist()Z

    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/16 p0, 0x22

    .line 9
    if-le p1, p0, :cond_0

    .line 11
    if-ne p2, p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final keyValueAgentCleanup()V
    .locals 5

    .line 1
    const-string v0, "Restore complete, killing host process of "

    .line 3
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 8
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 22
    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    :catch_1
    :cond_1
    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 30
    iput-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 32
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 37
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 39
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 41
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 43
    if-eqz v1, :cond_4

    .line 45
    :try_start_2
    iget-object v3, v2, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 47
    invoke-interface {v3, v1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 50
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 52
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 54
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 56
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 58
    invoke-static {v1}, Landroid/os/UserHandle;->isCore(I)Z

    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 64
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    .line 66
    invoke-virtual {v1}, Landroid/app/backup/RestoreDescription;->getDataType()I

    .line 69
    move-result v1

    .line 70
    const/4 v4, 0x2

    .line 71
    if-eq v1, v4, :cond_2

    .line 73
    const/high16 v1, 0x10000

    .line 75
    and-int/2addr v1, v3

    .line 76
    if-eqz v1, :cond_3

    .line 78
    :cond_2
    const/4 v1, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    const/4 v1, 0x0

    .line 81
    :goto_0
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    .line 83
    if-nez v3, :cond_4

    .line 85
    if-eqz v1, :cond_4

    .line 87
    const-string v1, "BackupManagerService"

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 96
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 98
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, v2, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 112
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 114
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 116
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 118
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 120
    invoke-interface {v0, v3, v1}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    :catch_2
    :cond_4
    iget-object v0, v2, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 125
    const/16 v1, 0x12

    .line 127
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 130
    return-void
.end method

.method public final keyValueAgentErrorCleanup(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 5
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    .line 17
    return-void
.end method

.method public final logDowngradeScenario(ZLcom/android/server/backup/PackageManagerBackupAgent$Metadata;)V
    .locals 6

    .line 1
    iget-wide v0, p2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8
    const-string v3, "android.app.backup.extra.LOG_RESTORE_VERSION"

    .line 10
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 13
    iget-wide v0, p2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    .line 15
    const/4 p2, 0x1

    .line 16
    const-string v3, " > installed version "

    .line 18
    const-string v4, "Source version "

    .line 20
    const-string v5, "android.app.backup.extra.LOG_RESTORE_ANYWAY"

    .line 22
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {v2, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 40
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 43
    move-result-wide v0

    .line 44
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    const-string v0, " but restoreAnyVersion"

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 p1, 0x0

    .line 58
    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 74
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 77
    move-result-wide v0

    .line 78
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 87
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 89
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 93
    const/16 v1, 0xb10

    .line 95
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 98
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "Package "

    .line 102
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 107
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ": "

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    const-string v0, "BackupManagerService"

    .line 126
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string p1, "android.app.backup.extra.OPERATION_TYPE"

    .line 131
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 136
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 138
    const/16 p2, 0x1b

    .line 140
    const/4 v0, 0x3

    .line 141
    invoke-virtual {p0, p2, p1, v0, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 144
    return-void
.end method

.method public final logVToUListsToBMM()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUAllowlist:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.app.backup.extra.V_TO_U_ALLOWLIST"

    .line 9
    invoke-static {v1, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "android.app.backup.extra.OPERATION_TYPE"

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 21
    const/16 v4, 0x48

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x3

    .line 25
    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 28
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUDenylist:Ljava/util/List;

    .line 30
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    const-string v0, "android.app.backup.extra.V_TO_U_DENYLIST"

    .line 36
    invoke-static {v0, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    invoke-virtual {v3, v4, v5, v6, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method public final operationComplete(J)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 3
    check-cast p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 5
    iget p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 10
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result p1

    .line 16
    sget-object p2, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 18
    if-eqz p1, :cond_2

    .line 20
    const/4 v0, 0x2

    .line 21
    if-eq p1, v0, :cond_1

    .line 23
    const/4 v0, 0x3

    .line 24
    if-eq p1, v0, :cond_1

    .line 26
    const/4 v1, 0x4

    .line 27
    if-eq p1, v1, :cond_0

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    const-string p2, "Unexpected restore callback into state "

    .line 33
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    const-string p2, "BackupManagerService"

    .line 47
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 54
    sget-object p2, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 62
    move-result-wide v1

    .line 63
    long-to-int p1, v1

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 68
    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 71
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 73
    const/16 v4, 0x3e

    .line 75
    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 78
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 80
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object p1

    .line 86
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 90
    const/16 v0, 0xb11

    .line 92
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 95
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 97
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 99
    invoke-virtual {v3, p1, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorAgentLoggingResults(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    .line 105
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 107
    if-eqz p1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 111
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 115
    iget v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 117
    invoke-static {v0, p1, v1}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 120
    goto :goto_0

    .line 121
    :cond_1
    sget-object p2, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 123
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 126
    return-void
.end method

.method public setCurrentUnifiedRestoreStateForTesting(Lcom/android/server/backup/restore/UnifiedRestoreState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 3
    return-void
.end method

.method public setStateDirForTesting(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    .line 3
    return-void
.end method

.method public shouldStageBackupData(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "android"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    :goto_1
    return p0
.end method

.method public final startRestore()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 5
    const-string v2, "@pm@"

    .line 7
    sget-object v3, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 9
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 11
    iget-object v5, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 13
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 15
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 18
    move-result v6

    .line 19
    iget-object v7, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 21
    const-string v8, "BackupManagerService"

    .line 23
    const/4 v9, 0x0

    .line 24
    if-eqz v7, :cond_0

    .line 26
    :try_start_0
    invoke-interface {v7, v6}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    const-string v6, "Restore observer went away: startRestore"

    .line 32
    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-object v9, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 37
    :cond_0
    :goto_0
    const/4 v7, 0x1

    .line 38
    :try_start_1
    iget-object v11, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 40
    iget-object v12, v0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    .line 42
    invoke-virtual {v11, v12}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 45
    move-result-object v11

    .line 46
    new-instance v12, Ljava/io/File;

    .line 48
    iget-object v13, v4, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    iget-object v14, v4, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 52
    :try_start_2
    invoke-direct {v12, v13, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    iput-object v12, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    .line 57
    new-instance v11, Landroid/content/pm/PackageInfo;

    .line 59
    invoke-direct {v11}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 62
    iput-object v2, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 64
    iget-object v12, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 66
    const/4 v13, 0x0

    .line 67
    invoke-interface {v12, v13, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 70
    iget-object v11, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 72
    new-array v12, v13, [Landroid/content/pm/PackageInfo;

    .line 74
    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 77
    move-result-object v11

    .line 78
    check-cast v11, [Landroid/content/pm/PackageInfo;

    .line 80
    const-string v12, "PerformUnifiedRestoreTask.startRestore()"

    .line 82
    invoke-virtual {v0, v12}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 85
    move-result-object v0

    .line 86
    iget-object v12, v5, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 88
    if-nez v12, :cond_1

    .line 90
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupManagerMonitor()Landroid/app/backup/IBackupManagerMonitor;

    .line 93
    move-result-object v12

    .line 94
    iput-object v12, v5, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 96
    goto :goto_1

    .line 97
    :catch_1
    move-exception v0

    .line 98
    goto/16 :goto_5

    .line 100
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/server/backup/Flags;->enableIncreasedBmmLoggingForRestoreAtInstall()Z

    .line 103
    move-result v12

    .line 104
    const/4 v13, 0x3

    .line 105
    if-eqz v12, :cond_2

    .line 107
    iget-object v12, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 109
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 112
    move-result-object v12

    .line 113
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    move-result v15

    .line 117
    if-eqz v15, :cond_2

    .line 119
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    move-result-object v15

    .line 123
    check-cast v15, Landroid/content/pm/PackageInfo;

    .line 125
    invoke-static {v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 128
    move-result-object v6

    .line 129
    const/16 v10, 0x4b

    .line 131
    invoke-virtual {v5, v10, v15, v13, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 134
    goto :goto_2

    .line 135
    :cond_2
    iget-boolean v6, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    .line 137
    if-eqz v6, :cond_3

    .line 139
    iget v6, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 141
    invoke-static {v6}, Lcom/android/server/AppWidgetBackupBridge;->systemRestoreStarting(I)V

    .line 144
    invoke-static {v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 147
    move-result-object v6

    .line 148
    const/16 v10, 0x35

    .line 150
    invoke-virtual {v5, v10, v9, v13, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 153
    :goto_3
    move-object v6, v14

    .line 154
    goto :goto_4

    .line 155
    :cond_3
    invoke-static {v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 158
    move-result-object v6

    .line 159
    const/16 v10, 0x36

    .line 161
    invoke-virtual {v5, v10, v9, v13, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 164
    goto :goto_3

    .line 165
    :goto_4
    iget-wide v13, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    .line 167
    iget-object v12, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 169
    invoke-virtual {v12}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 172
    move-result-object v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 173
    :try_start_3
    iget-object v10, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 175
    invoke-interface {v10, v13, v14, v11, v15}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 178
    invoke-virtual {v15}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    .line 181
    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    :try_start_4
    invoke-virtual {v12, v15}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 185
    iput v10, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 187
    if-eqz v10, :cond_4

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    const-string v2, "Transport error "

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v2, "; no restore possible"

    .line 206
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object v0

    .line 213
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 219
    move-result-object v0

    .line 220
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 222
    const/16 v6, 0x37

    .line 224
    invoke-virtual {v5, v6, v2, v7, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 227
    const/16 v2, -0x3e8

    .line 229
    iput v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 231
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 234
    return-void

    .line 235
    :cond_4
    iget-object v10, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 237
    invoke-virtual {v10}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    .line 240
    move-result-object v10

    .line 241
    iget-object v11, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 243
    invoke-interface {v11, v10}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage(Lcom/android/internal/infra/AndroidFuture;)V

    .line 246
    invoke-virtual {v0, v10}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Landroid/app/backup/RestoreDescription;

    .line 252
    if-nez v0, :cond_5

    .line 254
    const-string v0, "No restore metadata available; halting"

    .line 256
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 262
    move-result-object v0

    .line 263
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 265
    const/16 v6, 0x16

    .line 267
    const/4 v10, 0x3

    .line 268
    invoke-virtual {v5, v6, v2, v10, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 271
    const/16 v2, -0x3e8

    .line 273
    iput v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 275
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 278
    return-void

    .line 279
    :cond_5
    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    .line 282
    move-result-object v11

    .line 283
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    move-result v11

    .line 287
    if-nez v11, :cond_6

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    .line 291
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    const-string v6, "Required package metadata but got "

    .line 296
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    move-result-object v0

    .line 310
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 316
    move-result-object v0

    .line 317
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 319
    const/16 v6, 0x17

    .line 321
    const/4 v10, 0x3

    .line 322
    invoke-virtual {v5, v6, v2, v10, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 325
    const/16 v2, -0x3e8

    .line 327
    iput v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 329
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 332
    return-void

    .line 333
    :cond_6
    new-instance v0, Landroid/content/pm/PackageInfo;

    .line 335
    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 338
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 340
    iput-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 342
    new-instance v11, Landroid/content/pm/ApplicationInfo;

    .line 344
    invoke-direct {v11}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 347
    iput-object v11, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 349
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 351
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 353
    const/16 v11, 0x3e8

    .line 355
    iput v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 357
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 359
    iget-object v11, v4, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 361
    iget v12, v4, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 363
    invoke-direct {v0, v11, v12}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;I)V

    .line 366
    iget-object v11, v4, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 368
    invoke-virtual {v0, v11}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 371
    invoke-static {v12}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 374
    move-result-object v11

    .line 375
    invoke-virtual {v0, v11}, Landroid/app/backup/BackupAgent;->onCreate(Landroid/os/UserHandle;)V

    .line 378
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 380
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    .line 383
    move-result-object v0

    .line 384
    invoke-static {v0}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    .line 387
    move-result-object v0

    .line 388
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 390
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 392
    const-wide/16 v11, 0x0

    .line 394
    invoke-virtual {v1, v0, v11, v12}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;J)V

    .line 397
    const/16 v0, 0x12

    .line 399
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 404
    iget-boolean v0, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 406
    if-nez v0, :cond_7

    .line 408
    const-string v0, "PM agent has no metadata, so not restoring"

    .line 410
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 416
    move-result-object v0

    .line 417
    iget-object v11, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 419
    const/16 v12, 0x18

    .line 421
    const/4 v10, 0x3

    .line 422
    invoke-virtual {v5, v12, v11, v10, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 425
    const-string v0, "Package manager restore metadata missing"

    .line 427
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 430
    move-result-object v0

    .line 431
    const/16 v2, 0xb10

    .line 433
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 436
    const/16 v2, -0x3e8

    .line 438
    iput v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 440
    const/16 v2, 0x14

    .line 442
    invoke-virtual {v6, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 445
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 448
    :cond_7
    return-void

    .line 449
    :catchall_0
    move-exception v0

    .line 450
    invoke-virtual {v12, v15}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 453
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 454
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 456
    const-string v6, "Unable to contact transport for restore: "

    .line 458
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    move-result-object v0

    .line 472
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-static {v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 478
    move-result-object v0

    .line 479
    const/16 v2, 0x19

    .line 481
    invoke-virtual {v5, v2, v9, v7, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 484
    const/16 v2, -0x3e8

    .line 486
    iput v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 488
    iget-object v0, v4, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 490
    const/16 v2, 0x14

    .line 492
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 495
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 498
    return-void
.end method
