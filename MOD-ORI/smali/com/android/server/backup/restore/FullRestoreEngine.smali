.class public final Lcom/android/server/backup/restore/FullRestoreEngine;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field public mAgent:Landroid/app/IBackupAgent;

.field public mAgentPackage:Ljava/lang/String;

.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public final mAllowApks:Z

.field public final mApkCount:Ljava/util/HashMap;

.field public mAppVersion:J

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mBuffer:[B

.field public final mClearedPackages:Ljava/util/HashSet;

.field public final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field public final mEphemeralOpToken:I

.field public final mIsAdbRestore:Z

.field public final mManifestSignatures:Ljava/util/HashMap;

.field public final mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field public final mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

.field public mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field public final mOnlyPackage:Landroid/content/pm/PackageInfo;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public final mPackageInstallers:Ljava/util/HashMap;

.field public final mPackagePolicies:Ljava/util/HashMap;

.field public mPipes:[Landroid/os/ParcelFileDescriptor;

.field public mPipesClosed:Z

.field public final mPipesLock:Ljava/lang/Object;

.field public mPrivilegeApp:Z

.field public mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

.field public final mSessionFlag:Ljava/util/HashMap;

.field public final mSessionId:Ljava/util/HashMap;

.field public mTargetApp:Landroid/content/pm/ApplicationInfo;

.field public final mUserId:I

.field public mWidgetData:[B

.field public restorePass:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 38
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 47
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    .line 48
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->restorePass:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    .line 51
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 52
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 54
    iput v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 55
    iput v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 56
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 57
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 58
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 59
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 60
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 61
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 62
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 63
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZIZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 2
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 11
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->restorePass:Z

    .line 14
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    .line 15
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 16
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 17
    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 18
    iput p8, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 19
    iput-object p3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 20
    iput-object p4, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 21
    iput-object p5, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 22
    new-instance p2, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-direct {p2, p5}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 23
    iput-object p6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 24
    iput-boolean p7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 25
    iget-object p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 26
    const-string p3, "Timeout parameters cannot be null"

    .line 27
    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 28
    iput-boolean p9, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    .line 29
    iget p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    iput p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 30
    iput-object p10, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 31
    invoke-static {}, Lcom/android/server/backup/Flags;->enableMaxSizeWritesToPipes()Z

    move-result p2

    if-eqz p2, :cond_0

    const/high16 p2, 0x10000

    .line 32
    new-array p2, p2, [B

    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    goto :goto_0

    :cond_0
    const p2, 0x8000

    .line 33
    new-array p2, p2, [B

    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 34
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->isYuvaSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 35
    const-string p0, "BackupManagerService"

    const-string p1, "Backup Manager Yuva is Supported"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object p0

    sput-object p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    :cond_1
    return-void
.end method

.method public static isCanonicalFilePath(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, ".."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "//"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method


# virtual methods
.method public final isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 10
    .line 11
    const-string/jumbo v1, "c"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    const-string/jumbo p0, "r"

    .line 23
    .line 24
    .line 25
    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    iget-object p0, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 34
    .line 35
    const-string/jumbo p1, "no_backup/"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    return v1

    .line 45
    :cond_2
    return v0
.end method

.method public final logBMMEvent(ILandroid/content/pm/PackageInfo;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/backup/Flags;->enableIncreasedBmmLoggingForRestoreAtInstall()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "android.app.backup.extra.OPERATION_TYPE"

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v1, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)V
    .locals 42

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v11, p4

    .line 1
    iget-boolean v12, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mIsAdbRestore:Z

    const-string v4, "Restoring key-value file for "

    const-string v5, "Restoring OBB file for "

    const-string v6, "Restoring data for "

    const-string v7, "Unable to create agent for "

    const-string v8, "APK file; installing; copying "

    const-string v9, "Expected data for "

    .line 2
    iget-object v10, v1, Lcom/android/server/backup/restore/RestoreEngine;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    .line 3
    const-string v13, "BackupManagerService"

    if-nez v10, :cond_0

    .line 4
    const-string v1, "Restore engine used after halting"

    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    new-instance v10, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;-><init>()V

    .line 6
    new-instance v15, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v14, p7

    invoke-direct {v15, v2, v10, v14}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;Landroid/app/backup/IBackupManagerMonitor;)V

    .line 7
    :try_start_0
    invoke-virtual {v15}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v14

    if-eqz v14, :cond_6

    const/4 v3, 0x1

    .line 8
    iput-boolean v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->restorePass:Z

    move-object/from16 v19, v7

    .line 9
    iget-object v7, v14, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 10
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_32
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_31

    move-object/from16 v20, v6

    sget-object v6, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    if-nez v3, :cond_3

    if-eqz v11, :cond_1

    .line 11
    :try_start_1
    iget-object v3, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v2, 0x4c

    .line 12
    invoke-virtual {v1, v2, v11}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but saw "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    .line 14
    :try_start_2
    iget-object v2, v1, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v3, -0x3

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v9, 0x0

    .line 15
    :try_start_4
    invoke-virtual {v1, v9}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object v2, v0

    move/from16 v16, v12

    :goto_1
    move-object v4, v13

    goto/16 :goto_33

    :catch_1
    move-exception v0

    :goto_2
    move-object v2, v0

    move-object v6, v11

    move/from16 v16, v12

    :goto_3
    move-object v4, v13

    goto/16 :goto_35

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    const/4 v9, 0x0

    goto :goto_0

    :catch_4
    move-exception v0

    const/4 v3, -0x3

    :goto_4
    const/4 v9, 0x0

    goto :goto_2

    :catch_5
    move-exception v0

    const/4 v9, 0x0

    goto :goto_0

    :catch_6
    move-exception v0

    const/4 v3, -0x3

    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    .line 16
    :try_start_5
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_7

    if-nez v3, :cond_2

    .line 17
    :try_start_6
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0

    .line 18
    :cond_2
    :try_start_7
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v3, :cond_4

    .line 19
    const-string v3, "Saw new package; finalizing old one"

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 21
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v3, v12}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_7

    const/4 v3, 0x0

    .line 22
    :try_start_8
    iput-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 23
    iput-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_5

    :catch_7
    move-exception v0

    const/4 v3, 0x0

    goto :goto_0

    :catch_8
    move-exception v0

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 24
    :cond_4
    :goto_5
    :try_start_9
    iget-object v3, v14, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v9, "_manifest"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_32
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_31

    iget-object v9, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    if-eqz v3, :cond_7

    .line 25
    :try_start_a
    invoke-virtual {v15, v14}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 26
    iget-wide v3, v14, Lcom/android/server/backup/FileMetadata;->version:J

    iput-wide v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    .line 27
    const-class v3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageManagerInternal;

    .line 28
    iget-object v3, v9, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 29
    iget v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 30
    iget-object v6, v9, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 31
    iget-boolean v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_9

    move-object/from16 p7, v14

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v14, v15

    move-object/from16 v25, v15

    move-object v15, v3

    move/from16 v16, p5

    move-object/from16 v17, p7

    move-object/from16 v18, v2

    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v8

    .line 32
    :try_start_b
    invoke-virtual/range {v14 .. v22}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;ILcom/android/server/backup/utils/BackupEligibilityRules;Landroid/content/Context;Z)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v3

    .line 33
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v14, p7

    iget-object v5, v14, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v3, v14, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v2, Lcom/android/server/backup/UserBackupManagerService;->mSplitRestoreFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v9, :cond_5

    .line 37
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    iget v3, v14, Lcom/android/server/backup/FileMetadata;->splitCount:I

    add-int/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_5
    iget-wide v2, v14, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v15, v25

    invoke-virtual {v15, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 40
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v2, v7}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_0

    :cond_6
    move/from16 v16, v12

    goto/16 :goto_36

    :catch_9
    move-exception v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_2

    .line 41
    :cond_7
    :try_start_c
    iget-object v3, v14, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_32
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_31

    move/from16 v16, v12

    :try_start_d
    const-string v12, "_meta"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_2f

    if-eqz v3, :cond_8

    .line 42
    :try_start_e
    invoke-virtual {v15, v14}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 43
    invoke-virtual {v15}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 44
    invoke-virtual {v15}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()V

    .line 45
    iget-wide v2, v14, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v15, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_b

    goto/16 :goto_36

    :catch_b
    move-exception v0

    :goto_6
    move-object v2, v0

    goto/16 :goto_1

    :catch_c
    move-exception v0

    :goto_7
    move-object v2, v0

    move-object v6, v11

    goto/16 :goto_3

    .line 46
    :cond_8
    :try_start_f
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/restore/RestorePolicy;

    .line 47
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_2f

    const/4 v12, 0x2

    if-eqz v3, :cond_13

    move-object/from16 v17, v5

    const-string v5, "a"

    move-object/from16 v18, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_11

    if-eq v3, v12, :cond_9

    .line 48
    :try_start_10
    const-string v3, "Invalid policy from manifest"

    invoke-static {v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_b

    move-object v11, v7

    move-object v4, v13

    const/4 v3, 0x0

    move-object v13, v6

    goto/16 :goto_11

    .line 50
    :cond_9
    :try_start_11
    iget-object v3, v14, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    .line 53
    iget-boolean v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPrivilegeApp:Z

    invoke-static {v3}, Lcom/android/server/backup/utils/RestoreUtils;->setPrivilegeApp(Z)V

    .line 54
    sget-object v3, Lcom/android/server/backup/UserBackupManagerService;->mSplitRestoreFlag:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_11

    sget-object v12, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    .line 55
    :try_start_12
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_d

    if-nez v3, :cond_a

    .line 56
    :try_start_13
    iget-object v3, v9, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {v3, v8}, Lcom/android/server/backup/utils/RestoreUtils;->createSession(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 58
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionFlag:Ljava/util/HashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_b

    .line 60
    :cond_a
    :try_start_14
    iget-object v3, v9, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 61
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    .line 62
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 63
    invoke-static {v3, v2, v14, v10, v4}, Lcom/android/server/backup/utils/RestoreUtils;->writeSession(Landroid/content/Context;Ljava/io/InputStream;Lcom/android/server/backup/FileMetadata;Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;I)Z

    move-result v2

    .line 64
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_d

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :try_start_15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_b

    .line 65
    const-string v2, "APK file; copy error"

    invoke-static {v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 67
    :cond_b
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mApkCount:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_d

    .line 68
    iget-object v2, v9, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 69
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    iget v9, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mSessionId:Ljava/util/HashMap;

    .line 70
    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v8

    move-object/from16 v22, v14

    move/from16 v23, v9

    .line 71
    invoke-static/range {v18 .. v24}, Lcom/android/server/backup/utils/RestoreUtils;->installApkSplitSupport(Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;II)Z

    move-result v2

    .line 72
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v2, :cond_c

    move-object v6, v12

    :cond_c
    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_b

    :cond_d
    :goto_8
    move-object/from16 v25, v13

    goto :goto_a

    :catch_d
    move-exception v0

    const/4 v5, 0x1

    goto/16 :goto_6

    :catch_e
    move-exception v0

    const/4 v5, 0x1

    goto/16 :goto_7

    :cond_e
    move v5, v4

    .line 73
    :try_start_16
    iget-object v3, v9, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 74
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v9, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 p7, v6

    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 p3, v12

    iget v12, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_11

    move-object/from16 v2, p1

    move v11, v5

    move-object v5, v9

    move-object/from16 v9, p7

    move-object v11, v7

    move-object v7, v14

    move-object/from16 v25, v13

    move-object v13, v9

    move-object v9, v10

    move v10, v12

    .line 75
    :try_start_17
    invoke-static/range {v2 .. v10}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/restore/FullRestoreEngine$$ExternalSyntheticLambda0;I)Z

    move-result v2

    .line 76
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v2, :cond_f

    move-object/from16 v6, p3

    goto :goto_9

    :cond_f
    move-object v6, v13

    :goto_9
    invoke-virtual {v3, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_a
    iget-wide v2, v14, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v15, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    return-void

    :catch_f
    move-exception v0

    :goto_b
    move-object v2, v0

    move-object/from16 v4, v25

    goto/16 :goto_33

    :catch_10
    move-exception v0

    :goto_c
    move-object/from16 v6, p4

    move-object v2, v0

    move-object/from16 v4, v25

    goto/16 :goto_35

    :catch_11
    move-exception v0

    move-object/from16 v25, v13

    goto :goto_b

    :catch_12
    move-exception v0

    move-object/from16 v25, v13

    goto :goto_c

    :cond_10
    move-object v11, v7

    move-object/from16 v25, v13

    move-object v13, v6

    .line 78
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_f

    move-object/from16 v4, v25

    :goto_d
    const/4 v3, 0x0

    goto :goto_11

    :cond_11
    move-object v11, v7

    move-object/from16 v25, v13

    move-object v13, v6

    .line 79
    :try_start_18
    iget-object v3, v14, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 80
    const-string v3, "apk present but ACCEPT"
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_15

    move-object/from16 v4, v25

    :try_start_19
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catch_13
    move-exception v0

    :goto_e
    move-object v2, v0

    goto/16 :goto_33

    :catch_14
    move-exception v0

    :goto_f
    move-object/from16 v6, p4

    :goto_10
    move-object v2, v0

    goto/16 :goto_35

    :catch_15
    move-exception v0

    move-object/from16 v4, v25

    goto :goto_e

    :catch_16
    move-exception v0

    move-object/from16 v4, v25

    goto :goto_f

    :cond_12
    move-object/from16 v4, v25

    const/4 v3, 0x1

    goto :goto_11

    :cond_13
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move-object v11, v7

    move-object v4, v13

    move-object v13, v6

    goto :goto_d

    .line 81
    :goto_11
    invoke-virtual {v1, v14}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, v14, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v5
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_13

    if-nez v5, :cond_15

    :cond_14
    const/4 v3, 0x0

    .line 82
    :cond_15
    const-string/jumbo v5, "k"

    if-eqz v3, :cond_1c

    :try_start_1a
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_1e

    if-nez v6, :cond_1c

    .line 83
    :try_start_1b
    iget-object v6, v9, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_1b} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_19

    .line 84
    :try_start_1c
    iget v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_1c} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_17

    const/4 v8, 0x0

    .line 85
    :try_start_1d
    invoke-virtual {v6, v11, v8, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 86
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 87
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z

    move-result v6

    .line 88
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v7, :cond_16

    if-eqz v6, :cond_17

    .line 89
    :cond_16
    const-string v6, "Clearing app data preparatory to full restore"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v9, v11}, Lcom/android/server/backup/UserBackupManagerService;->clearApplicationDataBeforeRestore(Ljava/lang/String;)V

    .line 91
    :cond_17
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    .line 93
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 94
    iget-object v7, v14, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    goto :goto_12

    :cond_19
    const/4 v12, 0x3

    .line 95
    :goto_12
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 96
    iget v7, v7, Lcom/android/server/backup/utils/BackupEligibilityRules;->mBackupDestination:I

    .line 97
    invoke-virtual {v9, v6, v12, v7}, Lcom/android/server/backup/UserBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;II)Landroid/app/IBackupAgent;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 98
    iput-object v11, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_1d} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_1d} :catch_13

    :cond_1a
    const/4 v7, 0x1

    goto :goto_15

    :catch_17
    move-exception v0

    :goto_13
    const/4 v8, 0x0

    goto/16 :goto_e

    :catch_18
    const/4 v8, 0x0

    goto :goto_14

    :catch_19
    move-exception v0

    goto :goto_13

    .line 99
    :catch_1a
    :goto_14
    :try_start_1e
    sget-object v6, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_1c

    if-eqz v6, :cond_1a

    const/4 v7, 0x1

    .line 100
    :try_start_1f
    iput-boolean v7, v6, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    .line 101
    :goto_15
    iget-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_13

    if-nez v6, :cond_1b

    const/16 v3, 0x4d

    move-object/from16 v6, p4

    .line 102
    :try_start_20
    invoke-virtual {v1, v3, v6}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    move-object/from16 v3, v19

    .line 103
    invoke-virtual {v3, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 105
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v8

    goto :goto_16

    :catch_1b
    move-exception v0

    goto/16 :goto_10

    :cond_1b
    move-object/from16 v6, p4

    goto :goto_16

    :catch_1c
    move-exception v0

    const/4 v7, 0x1

    goto/16 :goto_e

    :catch_1d
    move-exception v0

    move-object/from16 v6, p4

    const/4 v7, 0x1

    goto/16 :goto_10

    :cond_1c
    move-object/from16 v6, p4

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_16

    :catch_1e
    move-exception v0

    const/4 v7, 0x1

    goto :goto_13

    :catch_1f
    move-exception v0

    move-object/from16 v6, p4

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_10

    :goto_16
    if-eqz v3, :cond_1d

    .line 106
    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v10, v20

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " but agent is for "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    .line 108
    :cond_1d
    invoke-virtual {v1, v14}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldSkipReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z

    move-result v10
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_13

    if-eqz v10, :cond_1e

    move v3, v8

    :cond_1e
    const-wide/16 v25, 0x0

    if-eqz v3, :cond_2c

    .line 109
    :try_start_21
    iget-wide v7, v14, Lcom/android/server/backup/FileMetadata;->size:J

    .line 110
    const-string/jumbo v12, "com.android.sharedstoragebackup"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_2e
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_21} :catch_29

    .line 111
    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    if-eqz v12, :cond_1f

    .line 112
    :try_start_22
    iget-object v12, v10, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    .line 113
    monitor-enter v12
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_22} :catch_13

    move-wide/from16 v27, v7

    .line 114
    :try_start_23
    iget-wide v7, v10, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mSharedBackupAgentTimeoutMillis:J

    monitor-exit v12

    :goto_17
    move-wide/from16 v21, v7

    goto :goto_18

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 115
    monitor-exit v12
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    :try_start_24
    throw v2
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_24} :catch_13

    :cond_1f
    move-wide/from16 v27, v7

    .line 116
    :try_start_25
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v7}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis(I)J

    move-result-wide v7
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_2e
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_25} :catch_29

    goto :goto_17

    .line 117
    :goto_18
    :try_start_26
    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    const/16 v24, 0x1

    move-object/from16 v19, v7

    move/from16 v20, p6

    move-object/from16 v23, v8

    invoke-virtual/range {v19 .. v24}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 118
    const-string/jumbo v7, "obb"

    iget-object v8, v14, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_26} :catch_29

    const-string v8, " : "

    if-nez v7, :cond_23

    .line 119
    :try_start_27
    iget-object v7, v14, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_27} :catch_24

    if-eqz v5, :cond_20

    .line 120
    :try_start_28
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v7, v18

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v14, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-wide v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAppVersion:J

    iput-wide v7, v14, Lcom/android/server/backup/FileMetadata;->version:J

    .line 122
    new-instance v5, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 123
    iget-object v8, v7, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;

    .line 124
    iget-object v10, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v12, 0x0

    aget-object v22, v10, v12

    iget-object v12, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v14

    move-object/from16 v23, v12

    move/from16 v24, p6

    invoke-direct/range {v18 .. v24}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    .line 125
    new-instance v7, Ljava/lang/Thread;

    const-string/jumbo v8, "restore-key-value-runner"

    invoke-direct {v7, v5, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_28} :catch_13

    :goto_19
    move/from16 v18, v3

    move-object/from16 v21, v13

    goto/16 :goto_1a

    :catch_20
    move-object/from16 v21, v13

    :catch_21
    const/4 v2, 0x0

    goto/16 :goto_1e

    :catch_22
    move-object/from16 v21, v13

    :catch_23
    const/4 v2, 0x0

    goto/16 :goto_20

    .line 126
    :cond_20
    :try_start_29
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v7, "system"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_29} :catch_24

    if-eqz v5, :cond_21

    .line 127
    :try_start_2a
    const-string/jumbo v5, "system process agent - spinning a thread"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v5, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v8, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v12, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v10, 0x0

    aget-object v22, v12, v10

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v14

    move/from16 v23, p6

    invoke-direct/range {v18 .. v23}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 129
    new-instance v7, Ljava/lang/Thread;

    const-string/jumbo v8, "restore-sys-runner"

    invoke-direct {v7, v5, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_2a} :catch_13

    goto :goto_19

    .line 130
    :cond_21
    :try_start_2b
    iget-boolean v5, v9, Lcom/android/server/backup/UserBackupManagerService;->mDisableDataExtractionRule:Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_2b} :catch_24

    if-eqz v5, :cond_22

    .line 131
    :try_start_2c
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/app/IBackupAgent;->doDisableDataExtractionRules(Z)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_22
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_2c} :catch_13

    .line 132
    :cond_22
    :try_start_2d
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v8, 0x0

    aget-object v30, v7, v8

    iget-wide v7, v14, Lcom/android/server/backup/FileMetadata;->size:J

    iget v12, v14, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v10, v14, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    move/from16 v18, v3

    iget-object v3, v14, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-wide v1, v14, Lcom/android/server/backup/FileMetadata;->mode:J

    move-wide/from16 v19, v1

    iget-wide v1, v14, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_2d .. :try_end_2d} :catch_24

    move-object/from16 v21, v13

    .line 133
    :try_start_2e
    iget-object v13, v9, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v29, v5

    move-wide/from16 v31, v7

    move/from16 v33, v12

    move-object/from16 v34, v10

    move-object/from16 v35, v3

    move-wide/from16 v36, v19

    move-wide/from16 v38, v1

    move/from16 v40, p6

    move-object/from16 v41, v13

    .line 134
    invoke-interface/range {v29 .. v41}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_2e .. :try_end_2e} :catch_24

    :goto_1a
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v1, p0

    goto :goto_21

    :catch_24
    move-exception v0

    :goto_1b
    move-object/from16 v1, p0

    goto/16 :goto_e

    :catch_25
    :goto_1c
    const/4 v2, 0x0

    move-object/from16 v1, p0

    goto :goto_1e

    :catch_26
    :goto_1d
    const/4 v2, 0x0

    move-object/from16 v1, p0

    goto :goto_20

    :catch_27
    move-object/from16 v21, v13

    goto :goto_1c

    :catch_28
    move-object/from16 v21, v13

    goto :goto_1d

    :cond_23
    move-object/from16 v21, v13

    .line 135
    :try_start_2f
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_2f .. :try_end_2f} :catch_2a

    move-object/from16 v1, p0

    .line 136
    :try_start_30
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 137
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_30} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_30} :catch_29

    const/4 v2, 0x0

    .line 138
    :try_start_31
    throw v2
    :try_end_31
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_31} :catch_13

    :catch_29
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_e

    :catch_2a
    move-exception v0

    const/4 v2, 0x0

    goto :goto_1b

    :goto_1e
    const/16 v3, 0x4e

    .line 139
    :try_start_32
    invoke-virtual {v1, v3, v6}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    .line 140
    const-string v3, "Agent crashed during full restore"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    const/4 v3, 0x0

    const/16 v18, 0x0

    goto :goto_21

    .line 141
    :goto_20
    const-string v3, "Couldn\'t establish restore"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :goto_21
    if-eqz v18, :cond_28

    .line 142
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    .line 143
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-wide/from16 v7, v27

    const/4 v5, 0x1

    :goto_22
    cmp-long v12, v7, v25

    if-lez v12, :cond_27

    move-object/from16 v12, p3

    .line 144
    array-length v13, v12

    move-object/from16 v17, v11

    int-to-long v10, v13

    cmp-long v10, v7, v10

    if-lez v10, :cond_24

    .line 145
    array-length v10, v12

    :goto_23
    move-object/from16 v11, p1

    const/4 v13, 0x0

    goto :goto_24

    :cond_24
    long-to-int v10, v7

    goto :goto_23

    .line 146
    :goto_24
    invoke-virtual {v11, v12, v13, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_32 .. :try_end_32} :catch_13

    if-gtz v10, :cond_25

    goto :goto_26

    :cond_25
    move-object/from16 p5, v3

    int-to-long v2, v10

    sub-long/2addr v7, v2

    if-eqz v5, :cond_26

    move-object/from16 v2, p5

    .line 147
    :try_start_33
    invoke-virtual {v2, v12, v13, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_2b
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_33} :catch_13

    goto :goto_25

    :catch_2b
    move-exception v0

    move-object v3, v0

    .line 148
    :try_start_34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to write to restore pipe: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x4f

    .line 151
    invoke-virtual {v1, v3, v6}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    const/4 v5, 0x0

    goto :goto_25

    :cond_26
    move-object/from16 v2, p5

    :goto_25
    move-object v3, v2

    move-object/from16 v11, v17

    const/4 v2, 0x0

    goto :goto_22

    :cond_27
    move-object/from16 v12, p3

    move-object/from16 v17, v11

    move-object/from16 v11, p1

    .line 152
    :goto_26
    iget-wide v2, v14, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v15, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    move/from16 v2, p6

    .line 153
    invoke-virtual {v9, v2}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v3
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_34 .. :try_end_34} :catch_13

    goto :goto_27

    :cond_28
    move-object/from16 v12, p3

    move-object/from16 v17, v11

    move-object/from16 v11, p1

    :goto_27
    if-nez v3, :cond_2a

    const/16 v2, 0x50

    .line 154
    :try_start_35
    invoke-virtual {v1, v2, v6}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Agent failure restoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; ending restore"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, v9, Lcom/android/server/backup/UserBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v5, 0x12

    .line 157
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 159
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_2e
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_35} :catch_29

    const/4 v2, 0x0

    .line 160
    :try_start_36
    iput-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 161
    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v7, v21

    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v3, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v3, :cond_29

    const/4 v5, 0x1

    .line 163
    iput-boolean v5, v3, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_36 .. :try_end_36} :catch_13

    :cond_29
    if-eqz v6, :cond_2b

    .line 164
    :try_start_37
    iget-object v3, v1, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, -0x2

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_2d
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_37} :catch_2c

    const/4 v3, 0x0

    .line 165
    :try_start_38
    invoke-virtual {v1, v3}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    return-void

    :goto_28
    move-object v3, v0

    goto :goto_2a

    :goto_29
    move-object v3, v0

    goto :goto_2b

    :catch_2c
    move-exception v0

    goto :goto_28

    :goto_2a
    move-object v2, v3

    goto/16 :goto_33

    :catch_2d
    move-exception v0

    goto :goto_29

    :goto_2b
    move-object v2, v3

    goto/16 :goto_35

    :catch_2e
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_2a
    const/4 v2, 0x0

    :cond_2b
    move/from16 v3, v18

    goto :goto_2c

    :cond_2c
    move-object/from16 v12, p3

    move-object v11, v2

    move/from16 v18, v3

    const/4 v2, 0x0

    :goto_2c
    if-nez v3, :cond_32

    .line 166
    iget-wide v7, v14, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v17, 0x1ff

    add-long v7, v7, v17

    const-wide/16 v17, -0x200

    and-long v7, v7, v17

    :goto_2d
    cmp-long v3, v7, v25

    if-lez v3, :cond_2f

    .line 167
    array-length v3, v12

    int-to-long v2, v3

    cmp-long v2, v7, v2

    if-lez v2, :cond_2d

    .line 168
    array-length v2, v12

    :goto_2e
    const/4 v3, 0x0

    goto :goto_2f

    :cond_2d
    long-to-int v2, v7

    goto :goto_2e

    .line 169
    :goto_2f
    invoke-virtual {v11, v12, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    int-to-long v2, v2

    cmp-long v5, v2, v25

    if-gtz v5, :cond_2e

    goto :goto_30

    :cond_2e
    sub-long/2addr v7, v2

    const/4 v2, 0x0

    goto :goto_2d

    .line 170
    :cond_2f
    :goto_30
    sget-object v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_32

    const/4 v3, 0x1

    .line 171
    iput-boolean v3, v2, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_38 .. :try_end_38} :catch_13

    goto :goto_36

    :catch_2f
    move-exception v0

    :goto_31
    move-object v4, v13

    goto/16 :goto_e

    :catch_30
    move-exception v0

    move-object v6, v11

    :goto_32
    move-object v4, v13

    goto/16 :goto_10

    :catch_31
    move-exception v0

    move/from16 v16, v12

    goto :goto_31

    :catch_32
    move-exception v0

    move-object v6, v11

    move/from16 v16, v12

    goto :goto_32

    .line 172
    :goto_33
    const-string v3, "NullPointerException  exception on restore "

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    sget-object v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_30

    const/4 v3, 0x1

    .line 174
    iput-boolean v3, v2, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    :cond_30
    :goto_34
    const/4 v14, 0x0

    goto :goto_36

    .line 175
    :goto_35
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "io exception on restore socket read: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object v2, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v2, :cond_31

    const/4 v3, 0x1

    .line 177
    iput-boolean v3, v2, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverRestoreFail:Z

    :cond_31
    const/16 v2, 0x51

    .line 178
    invoke-virtual {v1, v2, v6}, Lcom/android/server/backup/restore/FullRestoreEngine;->logBMMEvent(ILandroid/content/pm/PackageInfo;)V

    .line 179
    iget-object v2, v1, Lcom/android/server/backup/restore/RestoreEngine;->mResult:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_34

    :cond_32
    :goto_36
    if-nez v14, :cond_33

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    const/4 v2, 0x0

    .line 181
    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/RestoreEngine;->setRunning(Z)V

    if-eqz p2, :cond_33

    .line 182
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move/from16 v3, v16

    invoke-virtual {v1, v2, v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V

    :cond_33
    return-void
.end method

.method public final setUpPipes()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

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

.method public final shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "packages_to_clear_data_before_full_restore"

    .line 10
    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mUserId:I

    .line 13
    .line 14
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_0
    const-string v0, ";"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final shouldSkipReadOnlyDir(Lcom/android/server/backup/FileMetadata;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v3, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, v0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iget-object v2, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 29
    .line 30
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v0, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    return v1

    .line 50
    :cond_1
    iget v0, p1, Lcom/android/server/backup/FileMetadata;->type:I

    .line 51
    .line 52
    const/4 v2, 0x2

    .line 53
    if-ne v0, v2, :cond_2

    .line 54
    .line 55
    iget-wide v2, p1, Lcom/android/server/backup/FileMetadata;->mode:J

    .line 56
    .line 57
    sget v0, Landroid/system/OsConstants;->S_IWUSR:I

    .line 58
    .line 59
    int-to-long v4, v0

    .line 60
    and-long/2addr v2, v4

    .line 61
    const-wide/16 v4, 0x0

    .line 62
    .line 63
    cmp-long v0, v2, v4

    .line 64
    .line 65
    if-nez v0, :cond_2

    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 68
    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v0, "Skipping restore of "

    .line 72
    .line 73
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 77
    .line 78
    const-string v0, " and its contents as read-only dirs are currently not supported."

    .line 79
    .line 80
    const-string v2, "BackupManagerService"

    .line 81
    .line 82
    invoke-static {p0, p1, v0, v2}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return v1

    .line 86
    :cond_2
    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mReadOnlyParent:Lcom/android/server/backup/FileMetadata;

    .line 88
    .line 89
    const/4 p0, 0x0

    .line 90
    return p0
.end method

.method public final tearDownAgent(Landroid/content/pm/ApplicationInfo;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    new-instance v7, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 22
    .line 23
    invoke-direct {v7, v0, v1, p2}, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    move v2, p2

    .line 30
    move-object v5, v7

    .line 31
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 35
    .line 36
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 37
    .line 38
    const-string/jumbo v2, "system"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    new-instance v1, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 50
    .line 51
    invoke-direct {v1, v2, p2, v0}, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;-><init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/UserBackupManagerService;)V

    .line 52
    .line 53
    .line 54
    new-instance p2, Ljava/lang/Thread;

    .line 55
    .line 56
    const-string/jumbo v2, "restore-sys-finished-runner"

    .line 57
    .line 58
    .line 59
    invoke-direct {p2, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 67
    .line 68
    iget-object v2, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 69
    .line 70
    invoke-interface {v1, p2, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object p2, v7, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    :try_start_1
    iget-object p2, v7, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 80
    .line 81
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 82
    .line 83
    invoke-virtual {p2, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    :try_start_2
    const-string p2, "AdbRestoreFinishedLatch"

    .line 88
    .line 89
    const-string v1, "Interrupted!"

    .line 90
    .line 91
    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catch_1
    const-string p1, "BackupManagerService"

    .line 99
    .line 100
    const-string p2, "Lost app trying to shut down"

    .line 101
    .line 102
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :goto_2
    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 107
    .line 108
    :cond_2
    return-void
.end method

.method public final tearDownPipes()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_1
    aget-object v1, v1, v2

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    aget-object v1, v1, v2

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 24
    .line 25
    .line 26
    iput-boolean v2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipesClosed:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception p0

    .line 32
    :try_start_2
    const-string v1, "BackupManagerService"

    .line 33
    .line 34
    const-string v2, "Couldn\'t close agent pipes"

    .line 35
    .line 36
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw p0
.end method
