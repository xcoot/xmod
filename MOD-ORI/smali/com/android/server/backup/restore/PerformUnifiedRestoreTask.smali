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

    .line 2
    .line 3
    new-instance p0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string v0, "android.app.backup.extra.OPERATION_TYPE"

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public createVToUList(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string p0, ","

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
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

    .line 2
    .line 3
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1e

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/16 v9, 0xb10

    .line 14
    .line 15
    const/4 v10, 0x2

    .line 16
    const/4 v2, 0x3

    .line 17
    const/4 v11, 0x1

    .line 18
    if-eq v0, v11, :cond_10

    .line 19
    .line 20
    if-eq v0, v10, :cond_a

    .line 21
    .line 22
    if-eq v0, v2, :cond_9

    .line 23
    .line 24
    const/4 v3, 0x4

    .line 25
    if-eq v0, v3, :cond_8

    .line 26
    .line 27
    const/4 v3, 0x5

    .line 28
    if-eq v0, v3, :cond_0

    .line 29
    .line 30
    goto/16 :goto_16

    .line 31
    .line 32
    :cond_0
    iget-boolean v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    .line 33
    .line 34
    if-nez v0, :cond_7

    .line 35
    .line 36
    const-string v3, "PerformUnifiedRestoreTask.finalizeRestore()"

    .line 37
    .line 38
    :try_start_0
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v4, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 47
    .line 48
    .line 49
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    iget-object v0, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 51
    .line 52
    invoke-interface {v0, v5}, Lcom/android/internal/backup/IBackupTransport;->finishRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    :try_start_2
    invoke-virtual {v4, v5}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    invoke-virtual {v4, v5}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 64
    .line 65
    .line 66
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v4, "BackupManagerService"

    .line 69
    .line 70
    const-string v5, "Error finishing restore"

    .line 71
    .line 72
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    :goto_0
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    :try_start_3
    iget v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 80
    .line 81
    invoke-interface {v0, v4}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_1
    const-string v0, "BackupManagerService"

    .line 86
    .line 87
    const-string v4, "Restore observer went away: endRestore"

    .line 88
    .line 89
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    iput-object v8, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 93
    .line 94
    :cond_1
    :goto_1
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 97
    .line 98
    const/16 v4, 0x8

    .line 99
    .line 100
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    .line 102
    .line 103
    iget v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmToken:I

    .line 104
    .line 105
    if-lez v0, :cond_2

    .line 106
    .line 107
    :try_start_4
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 108
    .line 109
    iget-object v4, v4, Lcom/android/server/backup/UserBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 110
    .line 111
    iget-boolean v5, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 112
    .line 113
    invoke-interface {v4, v0, v5}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_2
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreSessionTimeoutMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v5

    .line 123
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 126
    .line 127
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 128
    .line 129
    .line 130
    :catch_2
    :goto_2
    iget-boolean v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    .line 131
    .line 132
    if-eqz v0, :cond_3

    .line 133
    .line 134
    iget v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 135
    .line 136
    invoke-static {v0}, Lcom/android/server/AppWidgetBackupBridge;->systemRestoreFinished(I)V

    .line 137
    .line 138
    .line 139
    :cond_3
    iget-boolean v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    .line 140
    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 144
    .line 145
    if-eqz v0, :cond_5

    .line 146
    .line 147
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 148
    .line 149
    iget-object v0, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 150
    .line 151
    if-nez v0, :cond_4

    .line 152
    .line 153
    const-string v0, "PMBA"

    .line 154
    .line 155
    const-string/jumbo v5, "getRestoredPackages() before metadata read!"

    .line 156
    .line 157
    .line 158
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-object v0, v8

    .line 162
    goto :goto_3

    .line 163
    :cond_4
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    :goto_3
    iput-object v0, v4, Lcom/android/server/backup/UserBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 168
    .line 169
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 170
    .line 171
    iget-wide v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    .line 172
    .line 173
    iput-wide v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralToken:J

    .line 174
    .line 175
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 176
    .line 177
    iget v4, v4, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    .line 178
    .line 179
    int-to-long v4, v4

    .line 180
    iput-wide v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mAncestralBackupDestination:J

    .line 181
    .line 182
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->writeRestoreTokens()V

    .line 185
    .line 186
    .line 187
    :cond_5
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 188
    .line 189
    iget-object v4, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 190
    .line 191
    monitor-enter v4

    .line 192
    :try_start_5
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 193
    .line 194
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 195
    .line 196
    check-cast v0, Ljava/util/ArrayDeque;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-lez v0, :cond_6

    .line 203
    .line 204
    const-string v0, "BackupManagerService"

    .line 205
    .line 206
    const-string v1, "Starting next pending restore."

    .line 207
    .line 208
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 212
    .line 213
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    .line 214
    .line 215
    check-cast v0, Ljava/util/ArrayDeque;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    .line 222
    .line 223
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 224
    .line 225
    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 226
    .line 227
    const/16 v5, 0x14

    .line 228
    .line 229
    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    .line 235
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

    .line 240
    .line 241
    iput-boolean v1, v0, Lcom/android/server/backup/UserBackupManagerService;->mIsRestoreInProgress:Z

    .line 242
    .line 243
    :goto_4
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 244
    const-string v0, "BackupManagerService"

    .line 245
    .line 246
    const-string v1, "Restore complete."

    .line 247
    .line 248
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 256
    .line 257
    const/16 v4, 0x44

    .line 258
    .line 259
    invoke-virtual {v1, v4, v8, v2, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 260
    .line 261
    .line 262
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 263
    .line 264
    invoke-interface {v0, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 265
    .line 266
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

    .line 271
    .line 272
    const-string v1, "Duplicate finish"

    .line 273
    .line 274
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    :goto_6
    iput-boolean v11, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mFinished:Z

    .line 278
    .line 279
    goto/16 :goto_16

    .line 280
    .line 281
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string/jumbo v1, "restoreFinished packageName="

    .line 284
    .line 285
    .line 286
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 290
    .line 291
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 292
    .line 293
    const-string v12, "BackupManagerService"

    .line 294
    .line 295
    invoke-static {v0, v1, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    :try_start_7
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 299
    .line 300
    iget-object v1, v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    .line 301
    .line 302
    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 303
    :try_start_8
    iget-wide v3, v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentFinishedTimeoutMillis:J

    .line 304
    .line 305
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 306
    :try_start_9
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 307
    .line 308
    iget v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 309
    .line 310
    const/4 v6, 0x1

    .line 311
    move-object/from16 v5, p0

    .line 312
    .line 313
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 314
    .line 315
    .line 316
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 317
    .line 318
    iget v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 319
    .line 320
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 321
    .line 322
    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 323
    .line 324
    invoke-interface {v0, v1, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 325
    .line 326
    .line 327
    goto/16 :goto_16

    .line 328
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

    .line 335
    .line 336
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 337
    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    const-string v3, "Unable to finalize restore of "

    .line 341
    .line 342
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-static {v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    iget-object v3, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 360
    .line 361
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 362
    .line 363
    const/16 v5, 0x45

    .line 364
    .line 365
    invoke-virtual {v4, v5, v3, v10, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-static {v9, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 377
    .line 378
    .line 379
    invoke-virtual {v7, v11}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 380
    .line 381
    .line 382
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 383
    .line 384
    invoke-virtual {v7, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 385
    .line 386
    .line 387
    goto/16 :goto_16

    .line 388
    .line 389
    :cond_9
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 390
    .line 391
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    iget-object v3, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 396
    .line 397
    const/16 v4, 0x3b

    .line 398
    .line 399
    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 400
    .line 401
    .line 402
    :try_start_c
    new-instance v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;

    .line 403
    .line 404
    invoke-direct {v0, v7}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask$StreamFeederThread;-><init>(Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;)V

    .line 405
    .line 406
    .line 407
    new-instance v1, Ljava/lang/Thread;

    .line 408
    .line 409
    const-string/jumbo v4, "unified-stream-feeder"

    .line 410
    .line 411
    .line 412
    invoke-direct {v1, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 416
    .line 417
    .line 418
    goto/16 :goto_16

    .line 419
    .line 420
    :catch_4
    const-string v0, "BackupManagerService"

    .line 421
    .line 422
    const-string v1, "Unable to construct pipes for stream restore!"

    .line 423
    .line 424
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    const/16 v1, 0x40

    .line 432
    .line 433
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 434
    .line 435
    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 436
    .line 437
    .line 438
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 439
    .line 440
    invoke-virtual {v7, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_16

    .line 444
    .line 445
    :cond_a
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 446
    .line 447
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 448
    .line 449
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 454
    .line 455
    const/16 v5, 0x3a

    .line 456
    .line 457
    invoke-virtual {v4, v5, v0, v2, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 458
    .line 459
    .line 460
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 461
    .line 462
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 463
    .line 464
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 465
    .line 466
    sget-object v3, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 467
    .line 468
    if-eqz v0, :cond_f

    .line 469
    .line 470
    const-string v5, ""

    .line 471
    .line 472
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    if-eqz v0, :cond_b

    .line 477
    .line 478
    goto/16 :goto_9

    .line 479
    .line 480
    :cond_b
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 481
    .line 482
    iget-object v0, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 483
    .line 484
    if-nez v0, :cond_c

    .line 485
    .line 486
    const-string v0, "PMBA"

    .line 487
    .line 488
    const-string/jumbo v5, "getRestoredMetadata() before metadata read!"

    .line 489
    .line 490
    .line 491
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    move-object v0, v8

    .line 495
    goto :goto_8

    .line 496
    :cond_c
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    check-cast v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    .line 501
    .line 502
    :goto_8
    const-class v5, Landroid/content/pm/PackageManagerInternal;

    .line 503
    .line 504
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v5

    .line 508
    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    .line 509
    .line 510
    iget-object v6, v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    .line 511
    .line 512
    iget-object v12, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 513
    .line 514
    invoke-static {v6, v12, v5}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    .line 515
    .line 516
    .line 517
    move-result v5

    .line 518
    const-string v6, "BackupManagerService"

    .line 519
    .line 520
    if-nez v5, :cond_d

    .line 521
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    const-string v5, "Signature mismatch restoring "

    .line 525
    .line 526
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    const/16 v5, 0x1d

    .line 544
    .line 545
    iget-object v6, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 546
    .line 547
    invoke-virtual {v4, v5, v6, v2, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 548
    .line 549
    .line 550
    const-string v0, "Signature mismatch"

    .line 551
    .line 552
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-static {v9, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 557
    .line 558
    .line 559
    invoke-virtual {v7, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 560
    .line 561
    .line 562
    goto/16 :goto_16

    .line 563
    .line 564
    :cond_d
    iget-object v5, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 565
    .line 566
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 567
    .line 568
    iget-object v12, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 569
    .line 570
    iget v12, v12, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    .line 571
    .line 572
    iget-object v13, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 573
    .line 574
    invoke-virtual {v13, v5, v10, v12}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    .line 575
    .line 576
    .line 577
    move-result-object v5

    .line 578
    iput-object v5, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 579
    .line 580
    if-nez v5, :cond_e

    .line 581
    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    const-string v5, "Can\'t find backup agent for "

    .line 585
    .line 586
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    .line 598
    .line 599
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    const/16 v5, 0x1e

    .line 604
    .line 605
    iget-object v6, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 606
    .line 607
    invoke-virtual {v4, v5, v6, v2, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 608
    .line 609
    .line 610
    const-string v0, "Restore agent missing"

    .line 611
    .line 612
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-static {v9, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 617
    .line 618
    .line 619
    invoke-virtual {v7, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_16

    .line 623
    .line 624
    :cond_e
    iput-boolean v11, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mDidLaunch:Z

    .line 625
    .line 626
    :try_start_d
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 627
    .line 628
    iget-wide v11, v0, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    .line 629
    .line 630
    invoke-virtual {v7, v1, v11, v12}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 631
    .line 632
    .line 633
    goto/16 :goto_16

    .line 634
    .line 635
    :catch_5
    move-exception v0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    .line 637
    .line 638
    const-string v2, "Error when attempting restore: "

    .line 639
    .line 640
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    .line 656
    .line 657
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    const/16 v1, 0x3d

    .line 662
    .line 663
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 664
    .line 665
    invoke-virtual {v4, v1, v2, v10, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v7, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 672
    .line 673
    .line 674
    goto/16 :goto_16

    .line 675
    .line 676
    :cond_f
    :goto_9
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    const/16 v2, 0x1c

    .line 681
    .line 682
    iget-object v5, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 683
    .line 684
    invoke-virtual {v4, v2, v5, v10, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 685
    .line 686
    .line 687
    const-string v0, "Package has no agent"

    .line 688
    .line 689
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    invoke-static {v9, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 694
    .line 695
    .line 696
    invoke-virtual {v7, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 697
    .line 698
    .line 699
    goto/16 :goto_16

    .line 700
    .line 701
    :cond_10
    iget v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 702
    .line 703
    iget-object v3, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 704
    .line 705
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 706
    .line 707
    const-string v5, "BackupManagerService"

    .line 708
    .line 709
    const-string v6, "Can\'t get next restore target from transport; halting: "

    .line 710
    .line 711
    const-string v12, "Package not present: "

    .line 712
    .line 713
    const-string v13, "Unrecognized restore type "

    .line 714
    .line 715
    const-string v14, " : Package not eligible for V to U downgrade scenario"

    .line 716
    .line 717
    const-string v15, "Package "

    .line 718
    .line 719
    const-string v10, "No metadata for "

    .line 720
    .line 721
    const-string v9, "Next restore package: "

    .line 722
    .line 723
    sget-object v2, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 724
    .line 725
    :try_start_e
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 726
    .line 727
    const-string v11, "PerformUnifiedRestoreTask.dispatchNextRestore()"

    .line 728
    .line 729
    invoke-virtual {v1, v11}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 730
    .line 731
    .line 732
    move-result-object v1

    .line 733
    iget-object v11, v1, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 734
    .line 735
    invoke-virtual {v11}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    .line 736
    .line 737
    .line 738
    move-result-object v11

    .line 739
    iget-object v8, v1, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 740
    .line 741
    invoke-interface {v8, v11}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage(Lcom/android/internal/infra/AndroidFuture;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v1, v11}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v1

    .line 748
    check-cast v1, Landroid/app/backup/RestoreDescription;

    .line 749
    .line 750
    iput-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 751
    .line 752
    if-eqz v1, :cond_11

    .line 753
    .line 754
    :try_start_f
    invoke-virtual {v1}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    .line 755
    .line 756
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

    .line 762
    .line 763
    :catch_6
    move-exception v0

    .line 764
    move-object/from16 v16, v2

    .line 765
    .line 766
    move-object/from16 v17, v6

    .line 767
    .line 768
    goto/16 :goto_14

    .line 769
    .line 770
    :cond_11
    const/4 v1, 0x0

    .line 771
    :goto_a
    if-nez v1, :cond_12

    .line 772
    .line 773
    const/4 v8, 0x0

    .line 774
    invoke-static {v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    const/16 v1, 0x38

    .line 779
    .line 780
    const/4 v3, 0x1

    .line 781
    invoke-virtual {v4, v1, v8, v3, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 782
    .line 783
    .line 784
    const-string v0, "Failure getting next package name"

    .line 785
    .line 786
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .line 788
    .line 789
    const/4 v1, 0x0

    .line 790
    new-array v0, v1, [Ljava/lang/Object;

    .line 791
    .line 792
    const/16 v1, 0xb0f

    .line 793
    .line 794
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 795
    .line 796
    .line 797
    :goto_b
    invoke-virtual {v7, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 798
    .line 799
    .line 800
    goto/16 :goto_16

    .line 801
    .line 802
    :cond_12
    :try_start_10
    iget-object v8, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    .line 803
    .line 804
    sget-object v11, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 805
    .line 806
    if-ne v8, v11, :cond_13

    .line 807
    .line 808
    :try_start_11
    const-string v0, "No more packages; finishing restore"

    .line 809
    .line 810
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    .line 812
    .line 813
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 814
    .line 815
    .line 816
    move-result-wide v0

    .line 817
    iget-wide v8, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStartRealtime:J

    .line 818
    .line 819
    sub-long/2addr v0, v8

    .line 820
    long-to-int v0, v0

    .line 821
    iget v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreAttemptedAppsCount:I

    .line 822
    .line 823
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 824
    .line 825
    .line 826
    move-result-object v1

    .line 827
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    const/16 v1, 0xb12

    .line 836
    .line 837
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 838
    .line 839
    .line 840
    goto :goto_b

    .line 841
    :cond_13
    :try_start_12
    new-instance v8, Ljava/lang/StringBuilder;

    .line 842
    .line 843
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    iget-object v9, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    .line 847
    .line 848
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v8

    .line 855
    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    .line 857
    .line 858
    iget v8, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreAttemptedAppsCount:I

    .line 859
    .line 860
    const/4 v9, 0x1

    .line 861
    add-int/2addr v8, v9

    .line 862
    iput v8, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreAttemptedAppsCount:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 863
    .line 864
    :try_start_13
    iget-object v9, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 865
    .line 866
    if-eqz v9, :cond_14

    .line 867
    .line 868
    :try_start_14
    invoke-interface {v9, v8, v1}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 869
    .line 870
    .line 871
    goto :goto_c

    .line 872
    :catch_7
    :try_start_15
    const-string v8, "Restore observer died in onUpdate"

    .line 873
    .line 874
    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    .line 876
    .line 877
    const/4 v8, 0x0

    .line 878
    iput-object v8, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 879
    .line 880
    :cond_14
    :goto_c
    :try_start_16
    iget-object v8, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 881
    .line 882
    iget-object v8, v8, Lcom/android/server/backup/PackageManagerBackupAgent;->mRestoredSignatures:Ljava/util/HashMap;

    .line 883
    .line 884
    if-nez v8, :cond_15

    .line 885
    .line 886
    const-string v8, "PMBA"

    .line 887
    .line 888
    const-string/jumbo v9, "getRestoredMetadata() before metadata read!"

    .line 889
    .line 890
    .line 891
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    .line 893
    .line 894
    const/4 v8, 0x0

    .line 895
    goto :goto_d

    .line 896
    :cond_15
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v8

    .line 900
    check-cast v8, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 901
    .line 902
    :goto_d
    sget-object v9, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 903
    .line 904
    if-nez v8, :cond_16

    .line 905
    .line 906
    :try_start_17
    new-instance v0, Landroid/content/pm/PackageInfo;

    .line 907
    .line 908
    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 909
    .line 910
    .line 911
    iput-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 912
    .line 913
    const/4 v3, 0x0

    .line 914
    invoke-static {v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 915
    .line 916
    .line 917
    move-result-object v8

    .line 918
    const/16 v3, 0x18

    .line 919
    .line 920
    const/4 v11, 0x3

    .line 921
    invoke-virtual {v4, v3, v0, v11, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v10, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    .line 930
    .line 931
    const-string v0, "Package metadata missing"

    .line 932
    .line 933
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    const/16 v1, 0xb10

    .line 938
    .line 939
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 940
    .line 941
    .line 942
    goto/16 :goto_12

    .line 943
    .line 944
    :cond_16
    :try_start_18
    iget-object v10, v3, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 945
    .line 946
    const/high16 v11, 0x8000000

    .line 947
    .line 948
    invoke-virtual {v10, v1, v11, v0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 949
    .line 950
    .line 951
    move-result-object v10

    .line 952
    iput-object v10, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 953
    .line 954
    const/4 v10, 0x0

    .line 955
    invoke-static {v10}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 956
    .line 957
    .line 958
    move-result-object v11

    .line 959
    iget-object v10, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_18} :catch_9
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 960
    .line 961
    move-object/from16 v16, v2

    .line 962
    .line 963
    const/16 v2, 0x43

    .line 964
    .line 965
    move-object/from16 v17, v6

    .line 966
    .line 967
    const/4 v6, 0x3

    .line 968
    :try_start_19
    invoke-virtual {v4, v2, v10, v6, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_19} :catch_a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 969
    .line 970
    .line 971
    :try_start_1a
    iget-wide v10, v8, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    .line 972
    .line 973
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 974
    .line 975
    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 976
    .line 977
    .line 978
    move-result-wide v18

    .line 979
    cmp-long v2, v10, v18

    .line 980
    .line 981
    if-lez v2, :cond_18

    .line 982
    .line 983
    iget-boolean v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    .line 984
    .line 985
    if-eqz v2, :cond_1a

    .line 986
    .line 987
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 988
    .line 989
    iget v2, v2, Lcom/android/server/backup/PackageManagerBackupAgent;->mStoredSdkVersion:I

    .line 990
    .line 991
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 992
    .line 993
    invoke-virtual {v7, v2, v6}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->isVToUDowngrade(II)Z

    .line 994
    .line 995
    .line 996
    move-result v2

    .line 997
    if-eqz v2, :cond_1a

    .line 998
    .line 999
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAreVToUListsSet:Ljava/lang/Boolean;

    .line 1000
    .line 1001
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1002
    .line 1003
    .line 1004
    move-result v2

    .line 1005
    if-nez v2, :cond_17

    .line 1006
    .line 1007
    iget-object v2, v3, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 1008
    .line 1009
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v2

    .line 1013
    const-string/jumbo v6, "v_to_u_restore_allowlist"

    .line 1014
    .line 1015
    .line 1016
    invoke-static {v2, v6, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v2

    .line 1020
    invoke-virtual {v7, v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->createVToUList(Ljava/lang/String;)Ljava/util/List;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v2

    .line 1024
    iput-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUAllowlist:Ljava/util/List;

    .line 1025
    .line 1026
    iget-object v2, v3, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 1027
    .line 1028
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v2

    .line 1032
    const-string/jumbo v3, "v_to_u_restore_denylist"

    .line 1033
    .line 1034
    .line 1035
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v0

    .line 1039
    invoke-virtual {v7, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->createVToUList(Ljava/lang/String;)Ljava/util/List;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    iput-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUDenylist:Ljava/util/List;

    .line 1044
    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->logVToUListsToBMM()V

    .line 1046
    .line 1047
    .line 1048
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1049
    .line 1050
    iput-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAreVToUListsSet:Ljava/lang/Boolean;

    .line 1051
    .line 1052
    goto :goto_f

    .line 1053
    :catchall_4
    move-exception v0

    .line 1054
    :goto_e
    move-object/from16 v1, v16

    .line 1055
    .line 1056
    goto/16 :goto_15

    .line 1057
    .line 1058
    :catch_8
    move-exception v0

    .line 1059
    goto/16 :goto_14

    .line 1060
    .line 1061
    :cond_17
    :goto_f
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 1062
    .line 1063
    invoke-virtual {v7, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->isPackageEligibleForVToURestore(Landroid/content/pm/PackageInfo;)Z

    .line 1064
    .line 1065
    .line 1066
    move-result v0

    .line 1067
    if-eqz v0, :cond_19

    .line 1068
    .line 1069
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 1070
    .line 1071
    const/4 v2, 0x0

    .line 1072
    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v3

    .line 1076
    const/16 v2, 0x46

    .line 1077
    .line 1078
    const/4 v6, 0x3

    .line 1079
    invoke-virtual {v4, v2, v0, v6, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1080
    .line 1081
    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    const-string v1, " is eligible for V to U downgrade scenario"

    .line 1091
    .line 1092
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v0

    .line 1099
    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    .line 1101
    .line 1102
    :cond_18
    :goto_10
    const/4 v1, 0x0

    .line 1103
    goto :goto_11

    .line 1104
    :cond_19
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 1105
    .line 1106
    const/4 v2, 0x0

    .line 1107
    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v3

    .line 1111
    const/16 v2, 0x47

    .line 1112
    .line 1113
    const/4 v6, 0x3

    .line 1114
    invoke-virtual {v4, v2, v0, v6, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1115
    .line 1116
    .line 1117
    const-string v0, "Package not eligible for V to U downgrade scenario"

    .line 1118
    .line 1119
    invoke-virtual {v1, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v2

    .line 1123
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    .line 1125
    .line 1126
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    const/16 v1, 0xb10

    .line 1131
    .line 1132
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1133
    .line 1134
    .line 1135
    goto :goto_12

    .line 1136
    :cond_1a
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 1137
    .line 1138
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1139
    .line 1140
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1141
    .line 1142
    const/high16 v1, 0x20000

    .line 1143
    .line 1144
    and-int/2addr v0, v1

    .line 1145
    if-nez v0, :cond_1b

    .line 1146
    .line 1147
    const/4 v1, 0x0

    .line 1148
    invoke-virtual {v7, v1, v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->logDowngradeScenario(ZLcom/android/server/backup/PackageManagerBackupAgent$Metadata;)V

    .line 1149
    .line 1150
    .line 1151
    goto :goto_12

    .line 1152
    :cond_1b
    const/4 v1, 0x1

    .line 1153
    invoke-virtual {v7, v1, v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->logDowngradeScenario(ZLcom/android/server/backup/PackageManagerBackupAgent$Metadata;)V

    .line 1154
    .line 1155
    .line 1156
    goto :goto_10

    .line 1157
    :goto_11
    iput-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 1158
    .line 1159
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    .line 1160
    .line 1161
    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getDataType()I

    .line 1162
    .line 1163
    .line 1164
    move-result v0

    .line 1165
    const/4 v1, 0x1

    .line 1166
    if-ne v0, v1, :cond_1c

    .line 1167
    .line 1168
    sget-object v9, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1169
    .line 1170
    goto :goto_12

    .line 1171
    :cond_1c
    const/4 v1, 0x2

    .line 1172
    if-ne v0, v1, :cond_1d

    .line 1173
    .line 1174
    sget-object v9, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 1175
    .line 1176
    goto :goto_12

    .line 1177
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    .line 1191
    .line 1192
    const/4 v1, 0x0

    .line 1193
    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v0

    .line 1197
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 1198
    .line 1199
    const/16 v2, 0x39

    .line 1200
    .line 1201
    const/4 v3, 0x3

    .line 1202
    invoke-virtual {v4, v2, v1, v3, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 1203
    .line 1204
    .line 1205
    :goto_12
    invoke-virtual {v7, v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1206
    .line 1207
    .line 1208
    goto :goto_16

    .line 1209
    :catchall_5
    move-exception v0

    .line 1210
    :goto_13
    move-object/from16 v16, v2

    .line 1211
    .line 1212
    goto/16 :goto_e

    .line 1213
    .line 1214
    :catch_9
    move-object/from16 v16, v2

    .line 1215
    .line 1216
    move-object/from16 v17, v6

    .line 1217
    .line 1218
    :catch_a
    :try_start_1b
    invoke-virtual {v12, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v0

    .line 1222
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    .line 1224
    .line 1225
    const/4 v2, 0x0

    .line 1226
    invoke-static {v2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v0

    .line 1230
    new-instance v2, Landroid/content/pm/PackageInfo;

    .line 1231
    .line 1232
    invoke-direct {v2}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 1233
    .line 1234
    .line 1235
    iput-object v1, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1236
    .line 1237
    const/16 v3, 0x1a

    .line 1238
    .line 1239
    const/4 v6, 0x3

    .line 1240
    invoke-virtual {v4, v3, v2, v6, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1241
    .line 1242
    .line 1243
    const-string v0, "Package missing on device"

    .line 1244
    .line 1245
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v0

    .line 1249
    const/16 v1, 0xb10

    .line 1250
    .line 1251
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 1252
    .line 1253
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

    .line 1258
    .line 1259
    move-object/from16 v2, v17

    .line 1260
    .line 1261
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1262
    .line 1263
    .line 1264
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v0

    .line 1268
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    .line 1270
    .line 1271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v0

    .line 1275
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    .line 1277
    .line 1278
    const/4 v1, 0x0

    .line 1279
    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v0

    .line 1283
    const/16 v2, 0x3c

    .line 1284
    .line 1285
    const/4 v3, 0x3

    .line 1286
    invoke-virtual {v4, v2, v1, v3, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 1287
    .line 1288
    .line 1289
    const/4 v1, 0x0

    .line 1290
    new-array v0, v1, [Ljava/lang/Object;

    .line 1291
    .line 1292
    const/16 v1, 0xb0f

    .line 1293
    .line 1294
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1295
    .line 1296
    .line 1297
    const/16 v0, -0x3e8

    .line 1298
    .line 1299
    iput v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 1300
    .line 1301
    move-object/from16 v1, v16

    .line 1302
    .line 1303
    invoke-virtual {v7, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1304
    .line 1305
    .line 1306
    goto :goto_16

    .line 1307
    :goto_15
    invoke-virtual {v7, v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 1308
    .line 1309
    .line 1310
    throw v0

    .line 1311
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->startRestore()V

    .line 1312
    .line 1313
    .line 1314
    :goto_16
    return-void
.end method

.method public executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 6
    .line 7
    const/16 v1, 0x14

    .line 8
    .line 9
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object p1, p1, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
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

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/server/backup/Flags;->enableMaxSizeWritesToPipes()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/high16 v1, 0x10000

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v1, 0x2000

    .line 15
    .line 16
    :goto_0
    new-array v1, v1, [B

    .line 17
    .line 18
    :goto_1
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const-string v4, "BackupManagerService"

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v5, "Skipping blocked key "

    .line 45
    .line 46
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const-string/jumbo v5, "\uffed\uffedwidget"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    const/4 v6, 0x0

    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    const-string v2, "Restoring widget state for "

    .line 74
    .line 75
    invoke-static {v2, p1, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-array v2, v3, [B

    .line 79
    .line 80
    iput-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 81
    .line 82
    invoke-virtual {p2, v2, v6, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    array-length v4, v1

    .line 87
    if-le v3, v4, :cond_3

    .line 88
    .line 89
    new-array v1, v3, [B

    .line 90
    .line 91
    :cond_3
    invoke-virtual {p2, v1, v6, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, v2, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, v1, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 98
    .line 99
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

    .line 2
    .line 3
    return-object p0
.end method

.method public getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupPreferences:Lcom/android/server/backup/UserBackupPreferences;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/backup/UserBackupPreferences;->mPreferences:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final handleCancel(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "Timeout restoring application "

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 18
    .line 19
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "BackupManagerService"

    .line 29
    .line 30
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-static {p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 41
    .line 42
    const/16 v2, 0x1f

    .line 43
    .line 44
    const/4 v3, 0x2

    .line 45
    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 49
    .line 50
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 51
    .line 52
    const-string/jumbo v0, "restore timeout"

    .line 53
    .line 54
    .line 55
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/16 v0, 0xb10

    .line 60
    .line 61
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 66
    .line 67
    .line 68
    sget-object p1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final initiateOneRestore(Landroid/content/pm/PackageInfo;J)V
    .locals 24

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    sget-object v8, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 6
    .line 7
    iget-object v9, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 8
    .line 9
    const-string v1, "Error getting restore data for "

    .line 10
    .line 11
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v3, "initiateOneRestore packageName="

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v11, "BackupManagerService"

    .line 29
    .line 30
    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    new-instance v2, Ljava/io/File;

    .line 34
    .line 35
    iget-object v12, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 36
    .line 37
    iget-object v3, v12, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 38
    .line 39
    const-string v4, ".restore"

    .line 40
    .line 41
    invoke-static {v10, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 49
    .line 50
    new-instance v2, Ljava/io/File;

    .line 51
    .line 52
    iget-object v3, v12, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 53
    .line 54
    const-string v4, ".stage"

    .line 55
    .line 56
    invoke-static {v10, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    .line 64
    .line 65
    new-instance v2, Ljava/io/File;

    .line 66
    .line 67
    iget-object v3, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    .line 68
    .line 69
    const-string v4, ".new"

    .line 70
    .line 71
    invoke-static {v10, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iput-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    .line 79
    .line 80
    invoke-virtual {v7, v10}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->shouldStageBackupData(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    iget-object v3, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    iget-object v3, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 90
    .line 91
    :goto_0
    const/4 v13, 0x0

    .line 92
    const/4 v14, 0x0

    .line 93
    :try_start_0
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 94
    .line 95
    const-string v5, "PerformUnifiedRestoreTask.initiateOneRestore()"

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const/high16 v5, 0x3c000000    # 0.0078125f

    .line 102
    .line 103
    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    iget-object v15, v4, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 108
    .line 109
    invoke-virtual {v15}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 110
    .line 111
    .line 112
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    iget-object v4, v4, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 114
    .line 115
    invoke-interface {v4, v6, v5}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    .line 119
    .line 120
    .line 121
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :try_start_2
    invoke-virtual {v15, v5}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 123
    .line 124
    .line 125
    const/4 v15, 0x1

    .line 126
    if-eqz v4, :cond_2

    .line 127
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    invoke-static {v13}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 148
    .line 149
    const/16 v2, 0x3f

    .line 150
    .line 151
    invoke-virtual {v9, v2, v1, v15, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 152
    .line 153
    .line 154
    new-array v0, v14, [Ljava/lang/Object;

    .line 155
    .line 156
    const/16 v1, 0xb0f

    .line 157
    .line 158
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 165
    .line 166
    .line 167
    const-string/jumbo v0, "unified_restore_continue_after_transport_failure_in_kv_restore"

    .line 168
    .line 169
    .line 170
    const-string v1, "backup_and_restore"

    .line 171
    .line 172
    invoke-static {v1, v0, v15}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_1

    .line 177
    .line 178
    move-object v0, v8

    .line 179
    goto :goto_1

    .line 180
    :cond_1
    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 181
    .line 182
    :goto_1
    invoke-virtual {v7, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    goto/16 :goto_2

    .line 188
    .line 189
    :cond_2
    const/high16 v1, 0x10000000

    .line 190
    .line 191
    if-eqz v2, :cond_3

    .line 192
    .line 193
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 194
    .line 195
    .line 196
    invoke-static {v3, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 201
    .line 202
    const/high16 v3, 0x3c000000    # 0.0078125f

    .line 203
    .line 204
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    iput-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 209
    .line 210
    new-instance v2, Landroid/app/backup/BackupDataInput;

    .line 211
    .line 212
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    invoke-direct {v2, v3}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 217
    .line 218
    .line 219
    new-instance v3, Landroid/app/backup/BackupDataOutput;

    .line 220
    .line 221
    iget-object v4, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 222
    .line 223
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-direct {v3, v4}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7, v10, v2, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->filterExcludedKeys(Ljava/lang/String;Landroid/app/backup/BackupDataInput;Landroid/app/backup/BackupDataOutput;)V

    .line 231
    .line 232
    .line 233
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 234
    .line 235
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 236
    .line 237
    .line 238
    :cond_3
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 239
    .line 240
    .line 241
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 242
    .line 243
    invoke-static {v2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    iput-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 248
    .line 249
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    .line 250
    .line 251
    const/high16 v2, 0x3c000000    # 0.0078125f

    .line 252
    .line 253
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    iput-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 258
    .line 259
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 260
    .line 261
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 262
    .line 263
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 264
    .line 265
    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis(I)J

    .line 266
    .line 267
    .line 268
    move-result-wide v3

    .line 269
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 270
    .line 271
    iget v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 272
    .line 273
    const/4 v6, 0x1

    .line 274
    move-object/from16 v5, p0

    .line 275
    .line 276
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 277
    .line 278
    .line 279
    :try_start_3
    iget-object v0, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 280
    .line 281
    iget-object v1, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 282
    .line 283
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 284
    .line 285
    iget v3, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 286
    .line 287
    iget-object v4, v12, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 288
    .line 289
    new-instance v5, Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-virtual {v7, v10}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 296
    .line 297
    .line 298
    move-object/from16 v16, v0

    .line 299
    .line 300
    move-object/from16 v17, v1

    .line 301
    .line 302
    move-wide/from16 v18, p2

    .line 303
    .line 304
    move-object/from16 v20, v2

    .line 305
    .line 306
    move/from16 v21, v3

    .line 307
    .line 308
    move-object/from16 v22, v4

    .line 309
    .line 310
    move-object/from16 v23, v5

    .line 311
    .line 312
    invoke-interface/range {v16 .. v23}, Landroid/app/IBackupAgent;->doRestoreWithExcludedKeys(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 313
    .line 314
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

    .line 321
    .line 322
    .line 323
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 324
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string v2, "Unable to call app for restore: "

    .line 327
    .line 328
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-static {v11, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .line 340
    .line 341
    invoke-static {v13}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    iget-object v2, v7, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 346
    .line 347
    const/4 v3, 0x2

    .line 348
    const/16 v4, 0x3d

    .line 349
    .line 350
    invoke-virtual {v9, v4, v2, v3, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    filled-new-array {v10, v0}, [Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    const/16 v1, 0xb10

    .line 362
    .line 363
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 364
    .line 365
    .line 366
    invoke-virtual {v7, v14}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v7, v8}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 370
    .line 371
    .line 372
    :goto_3
    return-void
.end method

.method public initiateOneRestoreForTesting(Landroid/content/pm/PackageInfo;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public isPackageEligibleForVToURestore(Landroid/content/pm/PackageInfo;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUDenylist:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "BackupManagerService"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, " : Package is in V to U denylist"

    .line 21
    .line 22
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0

    .line 27
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 28
    .line 29
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 30
    .line 31
    const/high16 v2, 0x20000

    .line 32
    .line 33
    and-int/2addr v0, v2

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 42
    .line 43
    const-string v3, " : Package has restoreAnyVersion=false and is in V to U allowlist"

    .line 44
    .line 45
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUAllowlist:Ljava/util/List;

    .line 49
    .line 50
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 63
    .line 64
    const-string v0, " : Package has restoreAnyVersion=true and is not in V to U denylist"

    .line 65
    .line 66
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    return p0
.end method

.method public isVToUDowngrade(II)Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/backup/Flags;->enableVToURestoreForSystemComponentsInAllowlist()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/16 p0, 0x22

    .line 8
    .line 9
    if-le p1, p0, :cond_0

    .line 10
    .line 11
    if-ne p2, p0, :cond_0

    .line 12
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

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    :catch_0
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 25
    .line 26
    .line 27
    :catch_1
    :cond_1
    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 38
    .line 39
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    :try_start_2
    iget-object v3, v2, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 46
    .line 47
    invoke-interface {v3, v1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 51
    .line 52
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 53
    .line 54
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 55
    .line 56
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 57
    .line 58
    invoke-static {v1}, Landroid/os/UserHandle;->isCore(I)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/app/backup/RestoreDescription;->getDataType()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const/4 v4, 0x2

    .line 71
    if-eq v1, v4, :cond_2

    .line 72
    .line 73
    const/high16 v1, 0x10000

    .line 74
    .line 75
    and-int/2addr v1, v3

    .line 76
    if-eqz v1, :cond_3

    .line 77
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

    .line 82
    .line 83
    if-nez v3, :cond_4

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    const-string v1, "BackupManagerService"

    .line 88
    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 95
    .line 96
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 97
    .line 98
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    iget-object v0, v2, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 113
    .line 114
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 115
    .line 116
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 117
    .line 118
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 119
    .line 120
    invoke-interface {v0, v3, v1}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    .line 122
    .line 123
    :catch_2
    :cond_4
    iget-object v0, v2, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 124
    .line 125
    const/16 v1, 0x12

    .line 126
    .line 127
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final keyValueAgentErrorCleanup(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 4
    .line 5
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;ZZ)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final logDowngradeScenario(ZLcom/android/server/backup/PackageManagerBackupAgent$Metadata;)V
    .locals 6

    .line 1
    iget-wide v0, p2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v3, "android.app.backup.extra.LOG_RESTORE_VERSION"

    .line 9
    .line 10
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 11
    .line 12
    .line 13
    iget-wide v0, p2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:J

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    const-string v3, " > installed version "

    .line 17
    .line 18
    const-string v4, "Source version "

    .line 19
    .line 20
    const-string v5, "android.app.backup.extra.LOG_RESTORE_ANYWAY"

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, " but restoreAnyVersion"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 p1, 0x0

    .line 58
    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 86
    .line 87
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 88
    .line 89
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const/16 v1, 0xb10

    .line 94
    .line 95
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 96
    .line 97
    .line 98
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v1, "Package "

    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 106
    .line 107
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, ": "

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string v0, "BackupManagerService"

    .line 125
    .line 126
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    const-string p1, "android.app.backup.extra.OPERATION_TYPE"

    .line 130
    .line 131
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 135
    .line 136
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 137
    .line 138
    const/16 p2, 0x1b

    .line 139
    .line 140
    const/4 v0, 0x3

    .line 141
    invoke-virtual {p0, p2, p1, v0, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final logVToUListsToBMM()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUAllowlist:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.app.backup.extra.V_TO_U_ALLOWLIST"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "android.app.backup.extra.OPERATION_TYPE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 20
    .line 21
    const/16 v4, 0x48

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x3

    .line 25
    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mVToUDenylist:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v0, "android.app.backup.extra.V_TO_U_DENYLIST"

    .line 35
    .line 36
    invoke-static {v0, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v4, v5, v6, p0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final operationComplete(J)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 4
    .line 5
    iget p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mEphemeralOpToken:I

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    sget-object p2, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    if-eq p1, v0, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    if-eq p1, v1, :cond_0

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p2, "Unexpected restore callback into state "

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p2, "BackupManagerService"

    .line 46
    .line 47
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup(Z)V

    .line 52
    .line 53
    .line 54
    sget-object p2, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    long-to-int p1, v1

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-static {v1}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 72
    .line 73
    const/16 v4, 0x3e

    .line 74
    .line 75
    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 79
    .line 80
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const/16 v0, 0xb11

    .line 91
    .line 92
    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 98
    .line 99
    invoke-virtual {v3, p1, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorAgentLoggingResults(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 106
    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 110
    .line 111
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 114
    .line 115
    iget v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 116
    .line 117
    invoke-static {v0, p1, v1}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    sget-object p2, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 122
    .line 123
    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public setCurrentUnifiedRestoreStateForTesting(Lcom/android/server/backup/restore/UnifiedRestoreState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 2
    .line 3
    return-void
.end method

.method public setStateDirForTesting(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    .line 2
    .line 3
    return-void
.end method

.method public shouldStageBackupData(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "android"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->getExcludedKeysForPackage(Ljava/lang/String;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
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

    .line 2
    .line 3
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 4
    .line 5
    const-string v2, "@pm@"

    .line 6
    .line 7
    sget-object v3, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    .line 8
    .line 9
    iget-object v4, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 10
    .line 11
    iget-object v5, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    iget-object v7, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 20
    .line 21
    const-string v8, "BackupManagerService"

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    :try_start_0
    invoke-interface {v7, v6}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    const-string v6, "Restore observer went away: startRestore"

    .line 31
    .line 32
    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iput-object v9, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 36
    .line 37
    :cond_0
    :goto_0
    const/4 v7, 0x1

    .line 38
    :try_start_1
    iget-object v11, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 39
    .line 40
    iget-object v12, v0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    .line 41
    .line 42
    invoke-virtual {v11, v12}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    new-instance v12, Ljava/io/File;

    .line 47
    .line 48
    iget-object v13, v4, Lcom/android/server/backup/UserBackupManagerService;->mBaseStateDir:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .line 50
    iget-object v14, v4, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 51
    .line 52
    :try_start_2
    invoke-direct {v12, v13, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-object v12, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    .line 56
    .line 57
    new-instance v11, Landroid/content/pm/PackageInfo;

    .line 58
    .line 59
    invoke-direct {v11}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v2, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v12, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 65
    .line 66
    const/4 v13, 0x0

    .line 67
    invoke-interface {v12, v13, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v11, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 71
    .line 72
    new-array v12, v13, [Landroid/content/pm/PackageInfo;

    .line 73
    .line 74
    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    check-cast v11, [Landroid/content/pm/PackageInfo;

    .line 79
    .line 80
    const-string v12, "PerformUnifiedRestoreTask.startRestore()"

    .line 81
    .line 82
    invoke-virtual {v0, v12}, Lcom/android/server/backup/transport/TransportConnection;->connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v12, v5, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 87
    .line 88
    if-nez v12, :cond_1

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupManagerMonitor()Landroid/app/backup/IBackupManagerMonitor;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    iput-object v12, v5, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_1
    move-exception v0

    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/server/backup/Flags;->enableIncreasedBmmLoggingForRestoreAtInstall()Z

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    const/4 v13, 0x3

    .line 105
    if-eqz v12, :cond_2

    .line 106
    .line 107
    iget-object v12, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v15

    .line 117
    if-eqz v15, :cond_2

    .line 118
    .line 119
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v15

    .line 123
    check-cast v15, Landroid/content/pm/PackageInfo;

    .line 124
    .line 125
    invoke-static {v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    const/16 v10, 0x4b

    .line 130
    .line 131
    invoke-virtual {v5, v10, v15, v13, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_2
    iget-boolean v6, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    .line 136
    .line 137
    if-eqz v6, :cond_3

    .line 138
    .line 139
    iget v6, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mUserId:I

    .line 140
    .line 141
    invoke-static {v6}, Lcom/android/server/AppWidgetBackupBridge;->systemRestoreStarting(I)V

    .line 142
    .line 143
    .line 144
    invoke-static {v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    const/16 v10, 0x35

    .line 149
    .line 150
    invoke-virtual {v5, v10, v9, v13, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 151
    .line 152
    .line 153
    :goto_3
    move-object v6, v14

    .line 154
    goto :goto_4

    .line 155
    :cond_3
    invoke-static {v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    const/16 v10, 0x36

    .line 160
    .line 161
    invoke-virtual {v5, v10, v9, v13, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :goto_4
    iget-wide v13, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mToken:J

    .line 166
    .line 167
    iget-object v12, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 168
    .line 169
    invoke-virtual {v12}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 170
    .line 171
    .line 172
    move-result-object v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 173
    :try_start_3
    iget-object v10, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 174
    .line 175
    invoke-interface {v10, v13, v14, v11, v15}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v15}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I

    .line 179
    .line 180
    .line 181
    move-result v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    :try_start_4
    invoke-virtual {v12, v15}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 183
    .line 184
    .line 185
    iput v10, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 186
    .line 187
    if-eqz v10, :cond_4

    .line 188
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v2, "Transport error "

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 200
    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v2, "; no restore possible"

    .line 205
    .line 206
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    invoke-static {v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 221
    .line 222
    const/16 v6, 0x37

    .line 223
    .line 224
    invoke-virtual {v5, v6, v2, v7, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 225
    .line 226
    .line 227
    const/16 v2, -0x3e8

    .line 228
    .line 229
    iput v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 230
    .line 231
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :cond_4
    iget-object v10, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportFutures:Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;

    .line 236
    .line 237
    invoke-virtual {v10}, Lcom/android/server/backup/transport/BackupTransportClient$TransportFutures;->newFuture()Lcom/android/internal/infra/AndroidFuture;

    .line 238
    .line 239
    .line 240
    move-result-object v10

    .line 241
    iget-object v11, v0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 242
    .line 243
    invoke-interface {v11, v10}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage(Lcom/android/internal/infra/AndroidFuture;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v10}, Lcom/android/server/backup/transport/BackupTransportClient;->getFutureResult(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Landroid/app/backup/RestoreDescription;

    .line 251
    .line 252
    if-nez v0, :cond_5

    .line 253
    .line 254
    const-string v0, "No restore metadata available; halting"

    .line 255
    .line 256
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    invoke-static {v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 264
    .line 265
    const/16 v6, 0x16

    .line 266
    .line 267
    const/4 v10, 0x3

    .line 268
    invoke-virtual {v5, v6, v2, v10, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 269
    .line 270
    .line 271
    const/16 v2, -0x3e8

    .line 272
    .line 273
    iput v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 274
    .line 275
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :cond_5
    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v11

    .line 283
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v11

    .line 287
    if-nez v11, :cond_6

    .line 288
    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    const-string v6, "Required package metadata but got "

    .line 295
    .line 296
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    invoke-static {v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    iget-object v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 318
    .line 319
    const/16 v6, 0x17

    .line 320
    .line 321
    const/4 v10, 0x3

    .line 322
    invoke-virtual {v5, v6, v2, v10, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 323
    .line 324
    .line 325
    const/16 v2, -0x3e8

    .line 326
    .line 327
    iput v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 328
    .line 329
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :cond_6
    new-instance v0, Landroid/content/pm/PackageInfo;

    .line 334
    .line 335
    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 336
    .line 337
    .line 338
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 339
    .line 340
    iput-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 341
    .line 342
    new-instance v11, Landroid/content/pm/ApplicationInfo;

    .line 343
    .line 344
    invoke-direct {v11}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 345
    .line 346
    .line 347
    iput-object v11, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 348
    .line 349
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 350
    .line 351
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 352
    .line 353
    const/16 v11, 0x3e8

    .line 354
    .line 355
    iput v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 356
    .line 357
    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 358
    .line 359
    iget-object v11, v4, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 360
    .line 361
    iget v12, v4, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 362
    .line 363
    invoke-direct {v0, v11, v12}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;I)V

    .line 364
    .line 365
    .line 366
    iget-object v11, v4, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 367
    .line 368
    invoke-virtual {v0, v11}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 369
    .line 370
    .line 371
    invoke-static {v12}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 372
    .line 373
    .line 374
    move-result-object v11

    .line 375
    invoke-virtual {v0, v11}, Landroid/app/backup/BackupAgent;->onCreate(Landroid/os/UserHandle;)V

    .line 376
    .line 377
    .line 378
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 379
    .line 380
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onBind()Landroid/os/IBinder;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-static {v0}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    iput-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 389
    .line 390
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 391
    .line 392
    const-wide/16 v11, 0x0

    .line 393
    .line 394
    invoke-virtual {v1, v0, v11, v12}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;J)V

    .line 395
    .line 396
    .line 397
    const/16 v0, 0x12

    .line 398
    .line 399
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    .line 401
    .line 402
    iget-object v0, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 403
    .line 404
    iget-boolean v0, v0, Lcom/android/server/backup/PackageManagerBackupAgent;->mHasMetadata:Z

    .line 405
    .line 406
    if-nez v0, :cond_7

    .line 407
    .line 408
    const-string v0, "PM agent has no metadata, so not restoring"

    .line 409
    .line 410
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    invoke-static {v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    iget-object v11, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 418
    .line 419
    const/16 v12, 0x18

    .line 420
    .line 421
    const/4 v10, 0x3

    .line 422
    invoke-virtual {v5, v12, v11, v10, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 423
    .line 424
    .line 425
    const-string v0, "Package manager restore metadata missing"

    .line 426
    .line 427
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    const/16 v2, 0xb10

    .line 432
    .line 433
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 434
    .line 435
    .line 436
    const/16 v2, -0x3e8

    .line 437
    .line 438
    iput v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 439
    .line 440
    const/16 v2, 0x14

    .line 441
    .line 442
    invoke-virtual {v6, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 446
    .line 447
    .line 448
    :cond_7
    return-void

    .line 449
    :catchall_0
    move-exception v0

    .line 450
    invoke-virtual {v12, v15}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 451
    .line 452
    .line 453
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 454
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    const-string v6, "Unable to contact transport for restore: "

    .line 457
    .line 458
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .line 474
    .line 475
    invoke-static {v9}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->addRestoreOperationTypeToEvent(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    const/16 v2, 0x19

    .line 480
    .line 481
    invoke-virtual {v5, v2, v9, v7, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 482
    .line 483
    .line 484
    const/16 v2, -0x3e8

    .line 485
    .line 486
    iput v2, v1, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->mStatus:I

    .line 487
    .line 488
    iget-object v0, v4, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    .line 489
    .line 490
    const/16 v2, 0x14

    .line 491
    .line 492
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/restore/UnifiedRestoreState;)V

    .line 496
    .line 497
    .line 498
    return-void
.end method
