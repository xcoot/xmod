.class public final Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field public final mBackupLatch:Ljava/util/concurrent/CountDownLatch;

.field public volatile mBackupResult:I

.field public final mCurrentOpToken:I

.field public mEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

.field public final mEphemeralToken:I

.field public volatile mIsCancelled:Z

.field public final mOutput:Landroid/os/ParcelFileDescriptor;

.field public final mPreflight:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

.field public final mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

.field public volatile mPreflightResult:I

.field public final mQuota:J

.field public final mTarget:Landroid/content/pm/PackageInfo;

.field public final mTransportFlags:I

.field public final synthetic this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportConnection;JII)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    .line 17
    .line 18
    iput p7, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mCurrentOpToken:I

    .line 19
    .line 20
    iget-object p2, p1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    iput v5, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEphemeralToken:I

    .line 27
    .line 28
    new-instance p2, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    .line 29
    .line 30
    move-object v0, p2

    .line 31
    move-object v1, p1

    .line 32
    move-object v2, p4

    .line 33
    move-wide v3, p5

    .line 34
    move v6, p8

    .line 35
    invoke-direct/range {v0 .. v6}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Lcom/android/server/backup/transport/TransportConnection;JII)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflight:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    .line 39
    .line 40
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    .line 41
    .line 42
    const/4 p4, 0x1

    .line 43
    invoke-direct {p2, p4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    .line 47
    .line 48
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    .line 49
    .line 50
    invoke-direct {p2, p4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    .line 54
    .line 55
    const/16 p2, -0x3eb

    .line 56
    .line 57
    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I

    .line 58
    .line 59
    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupResult:I

    .line 60
    .line 61
    iput-wide p5, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mQuota:J

    .line 62
    .line 63
    iput p8, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTransportFlags:I

    .line 64
    .line 65
    iget-object p2, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 66
    .line 67
    filled-new-array {p2}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p2}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget-object p1, p1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 76
    .line 77
    check-cast p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 78
    .line 79
    const/4 p3, 0x0

    .line 80
    invoke-virtual {p1, p7, p2, p0, p3}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->registerOperationForPackages(ILjava/util/Set;Lcom/android/server/backup/BackupRestoreTask;I)V

    .line 81
    .line 82
    .line 83
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getBackupResultBlocking()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    .line 10
    .line 11
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mIsCancelled:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/16 p0, -0x7d3

    .line 21
    .line 22
    return p0

    .line 23
    :cond_0
    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupResult:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    return p0

    .line 26
    :catch_0
    const/16 p0, -0x3eb

    .line 27
    .line 28
    return p0
.end method

.method public final getPreflightResultBlocking()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    .line 10
    .line 11
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mIsCancelled:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-wide/16 v0, -0x7d3

    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_0
    iget v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflight:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 38
    .line 39
    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->mResult:Ljava/util/concurrent/atomic/AtomicLong;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    const-wide/16 v0, -0x1

    .line 50
    .line 51
    :goto_0
    return-wide v0

    .line 52
    :cond_1
    :try_start_2
    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 53
    .line 54
    int-to-long v0, p0

    .line 55
    return-wide v0

    .line 56
    :catch_1
    const-wide/16 v0, -0x3eb

    .line 57
    .line 58
    return-wide v0
.end method

.method public final handleCancel(Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Full backup cancel of "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "PFTBT"

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x4

    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mIsCancelled:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 35
    .line 36
    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEphemeralToken:I

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v2, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {v2, v3, v0}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;-><init>(ILcom/android/server/backup/UserBackupManagerService;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 48
    .line 49
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->cancelOperation(IZLjava/util/function/IntConsumer;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    .line 57
    .line 58
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 76
    .line 77
    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mCurrentOpToken:I

    .line 78
    .line 79
    check-cast p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final operationComplete(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    const-string v14, "Error closing transport pipe in runner"

    .line 4
    .line 5
    const-string v13, "PFTBT"

    .line 6
    .line 7
    const-string v12, "Exception during full package backup of "

    .line 8
    .line 9
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 22
    .line 23
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 24
    .line 25
    :cond_0
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->updateBackupServicePkg(IZ)V

    .line 43
    .line 44
    .line 45
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    .line 46
    .line 47
    iget-object v0, v15, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 57
    .line 58
    iget-object v1, v15, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 59
    .line 60
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 61
    .line 62
    iget-object v4, v15, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflight:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    .line 63
    .line 64
    iget-object v5, v15, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    .line 65
    .line 66
    iget-wide v8, v15, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mQuota:J

    .line 67
    .line 68
    iget v10, v15, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mCurrentOpToken:I

    .line 69
    .line 70
    iget v11, v15, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTransportFlags:I

    .line 71
    .line 72
    iget-object v7, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 73
    .line 74
    iget-object v6, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 75
    .line 76
    const/16 v16, 0x0

    .line 77
    .line 78
    const/16 v17, 0x0

    .line 79
    .line 80
    const/16 v18, 0x0

    .line 81
    .line 82
    move-object v1, v0

    .line 83
    move-object/from16 v19, v6

    .line 84
    .line 85
    move/from16 v6, v18

    .line 86
    .line 87
    move-object/from16 v18, v7

    .line 88
    .line 89
    move-object/from16 v7, p0

    .line 90
    .line 91
    move-object/from16 v20, v12

    .line 92
    .line 93
    move-object/from16 v12, v18

    .line 94
    .line 95
    move-object/from16 v21, v13

    .line 96
    .line 97
    move/from16 v13, v16

    .line 98
    .line 99
    move-object/from16 v22, v14

    .line 100
    .line 101
    move-object/from16 v14, v17

    .line 102
    .line 103
    move-object/from16 v15, v19

    .line 104
    .line 105
    invoke-direct/range {v1 .. v15}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIILcom/android/server/backup/utils/BackupEligibilityRules;I[Ljava/lang/String;Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;)V

    .line 106
    .line 107
    .line 108
    move-object/from16 v1, p0

    .line 109
    .line 110
    iput-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 111
    .line 112
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mIsCancelled:Z

    .line 113
    .line 114
    if-nez v0, :cond_2

    .line 115
    .line 116
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->preflightCheck()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    move-object/from16 v3, v21

    .line 127
    .line 128
    move-object/from16 v2, v22

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 134
    .line 135
    .line 136
    iget v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I

    .line 137
    .line 138
    if-nez v0, :cond_3

    .line 139
    .line 140
    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mIsCancelled:Z

    .line 141
    .line 142
    if-nez v0, :cond_3

    .line 143
    .line 144
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    iput v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupResult:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :catchall_1
    move-exception v0

    .line 154
    move-object/from16 v3, v21

    .line 155
    .line 156
    move-object/from16 v2, v22

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :catch_0
    move-exception v0

    .line 160
    move-object/from16 v3, v21

    .line 161
    .line 162
    move-object/from16 v2, v22

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 166
    .line 167
    iget-object v0, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 168
    .line 169
    iget v2, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mCurrentOpToken:I

    .line 170
    .line 171
    check-cast v0, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 172
    .line 173
    invoke-virtual {v0, v2}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 174
    .line 175
    .line 176
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 179
    .line 180
    .line 181
    :try_start_2
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    .line 182
    .line 183
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :catch_1
    move-object/from16 v3, v21

    .line 188
    .line 189
    move-object/from16 v2, v22

    .line 190
    .line 191
    :catch_2
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :goto_2
    :try_start_3
    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 198
    .line 199
    .line 200
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 201
    :catchall_2
    move-exception v0

    .line 202
    goto :goto_5

    .line 203
    :catch_3
    move-exception v0

    .line 204
    :goto_3
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    move-object/from16 v5, v20

    .line 207
    .line 208
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object v5, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    .line 212
    .line 213
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 223
    .line 224
    .line 225
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 226
    .line 227
    iget-object v0, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 228
    .line 229
    iget v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mCurrentOpToken:I

    .line 230
    .line 231
    check-cast v0, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 232
    .line 233
    invoke-virtual {v0, v4}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 234
    .line 235
    .line 236
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 239
    .line 240
    .line 241
    :try_start_5
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    .line 242
    .line 243
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 244
    .line 245
    .line 246
    :goto_4
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 247
    .line 248
    iget-object v0, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 249
    .line 250
    if-eqz v0, :cond_4

    .line 251
    .line 252
    iget-object v1, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    .line 253
    .line 254
    if-eqz v1, :cond_4

    .line 255
    .line 256
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 257
    .line 258
    if-eqz v1, :cond_4

    .line 259
    .line 260
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 261
    .line 262
    const/4 v2, 0x0

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->updateBackupServicePkg(IZ)V

    .line 264
    .line 265
    .line 266
    :cond_4
    return-void

    .line 267
    :goto_5
    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 268
    .line 269
    iget-object v4, v4, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 270
    .line 271
    iget v5, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mCurrentOpToken:I

    .line 272
    .line 273
    check-cast v4, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 274
    .line 275
    invoke-virtual {v4, v5}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 276
    .line 277
    .line 278
    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    .line 279
    .line 280
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 281
    .line 282
    .line 283
    :try_start_6
    iget-object v1, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    .line 284
    .line 285
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 286
    .line 287
    .line 288
    goto :goto_6

    .line 289
    :catch_4
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    :goto_6
    throw v0
.end method

.method public final sendQuotaExceeded(JJ)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->initializeAgent()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance v6, Lcom/android/server/backup/fullbackup/FullBackupEngine$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v1, p0

    .line 13
    move-wide v2, p1

    .line 14
    move-wide v4, p3

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/android/server/backup/fullbackup/FullBackupEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;JJ)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getQuotaExceededTimeoutMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    new-instance p2, Lcom/android/server/backup/remote/RemoteCall;

    .line 25
    .line 26
    const/4 p3, 0x0

    .line 27
    invoke-direct {p2, p3, v6, p0, p1}, Lcom/android/server/backup/remote/RemoteCall;-><init>(ZLcom/android/server/backup/remote/RemoteCallable;J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/android/server/backup/remote/RemoteCall;->call()Lcom/android/server/backup/remote/RemoteResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const-string p0, "BackupManagerService"

    .line 35
    .line 36
    const-string p1, "Remote exception while telling agent about quota exceeded"

    .line 37
    .line 38
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    return-void
.end method
