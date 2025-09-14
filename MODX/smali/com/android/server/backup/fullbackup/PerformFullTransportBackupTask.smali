.class public final Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field public final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

.field public final mBackupObserver:Landroid/app/backup/IBackupObserver;

.field public mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

.field public final mBackupRunnerOpToken:I

.field public volatile mCancelAll:Z

.field public final mCancelLock:Ljava/lang/Object;

.field public final mCurrentOpToken:I

.field public final mCurrentPackage:Landroid/content/pm/PackageInfo;

.field public volatile mIsDoingBackup:Z

.field public final mJob:Lcom/android/server/backup/FullBackupJob;

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public final mOperationStorage:Lcom/android/server/backup/OperationStorage;

.field public final mPackages:Ljava/util/List;

.field public final mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public mUpdateSchedule:Z

.field public final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mUserId:I

.field public final mUserInitiated:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 5
    new-instance v1, Ljava/lang/Object;

    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 14
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 16
    iput-object p3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 18
    iput-boolean p5, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    .line 20
    iput-object p7, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 22
    iput-object p6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    .line 24
    new-instance p2, Ljava/util/ArrayList;

    .line 26
    array-length p3, p4

    .line 27
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 32
    iput-object p8, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 34
    if-eqz p10, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-object p10, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener$$ExternalSyntheticLambda0;

    .line 39
    :goto_0
    iput-object p10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 41
    iput-boolean p11, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 43
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    .line 46
    move-result p2

    .line 47
    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 49
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    .line 52
    move-result p2

    .line 53
    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 55
    new-instance p2, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 57
    invoke-direct {p2, p9}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V

    .line 60
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 62
    iget-object p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 64
    const-string p3, "Timeout parameters cannot be null"

    .line 66
    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 71
    iget p2, p1, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 73
    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 75
    iput-object p12, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 77
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->isBackupOperationInProgress()Z

    .line 80
    move-result p2

    .line 81
    const-string p3, "PFTBT"

    .line 83
    if-eqz p2, :cond_1

    .line 85
    const-string p1, "Skipping full backup. A backup is already in progress."

    .line 87
    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 93
    return-void

    .line 94
    :cond_1
    array-length p2, p4

    .line 95
    const/4 p5, 0x0

    .line 96
    :goto_1
    if-ge p5, p2, :cond_5

    .line 98
    aget-object p6, p4, p5

    .line 100
    const/4 p7, 0x3

    .line 101
    :try_start_0
    iget-object p8, p1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 103
    iget p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    .line 105
    const/high16 p10, 0x8000000

    .line 107
    invoke-virtual {p8, p6, p10, p9}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 110
    move-result-object p8

    .line 111
    iput-object p8, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 113
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 115
    iget-object p10, p8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 117
    invoke-virtual {p9, p10}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    .line 120
    move-result p9

    .line 121
    const/16 p10, -0x7d1

    .line 123
    if-nez p9, :cond_2

    .line 125
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 127
    const/16 p11, 0x9

    .line 129
    invoke-virtual {p9, p11, p8, p7, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 132
    iget-object p8, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 134
    invoke-static {p8, p6, p10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 137
    goto :goto_2

    .line 138
    :cond_2
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 140
    invoke-virtual {p9, p8}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    .line 143
    move-result p9

    .line 144
    if-nez p9, :cond_3

    .line 146
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 148
    const/16 p11, 0xa

    .line 150
    invoke-virtual {p9, p11, p8, p7, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 153
    iget-object p8, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 155
    invoke-static {p8, p6, p10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 158
    goto :goto_2

    .line 159
    :cond_3
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 161
    iget-object p11, p8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 163
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    invoke-static {p11}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    .line 169
    move-result p9

    .line 170
    if-eqz p9, :cond_4

    .line 172
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 174
    const/16 p11, 0xb

    .line 176
    invoke-virtual {p9, p11, p8, p7, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 179
    iget-object p8, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 181
    invoke-static {p8, p6, p10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 184
    goto :goto_2

    .line 185
    :cond_4
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 187
    invoke-interface {p9, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    goto :goto_2

    .line 191
    :catch_0
    const-string p8, "Requested package "

    .line 193
    const-string p9, " not found; ignoring"

    .line 195
    invoke-static {p8, p6, p9, p3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 200
    const/16 p8, 0xc

    .line 202
    iget-object p9, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 204
    invoke-virtual {p6, p8, p9, p7, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 207
    :goto_2
    add-int/lit8 p5, p5, 0x1

    .line 209
    goto :goto_1

    .line 210
    :cond_5
    iget-object p2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 212
    invoke-virtual {p1, p2}, Lcom/android/server/backup/UserBackupManagerService;->filterUserFacingPackages(Ljava/util/List;)Ljava/util/List;

    .line 215
    move-result-object p1

    .line 216
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    .line 218
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    .line 221
    move-result-object p2

    .line 222
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 225
    move-result-object p1

    .line 226
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    move-result p4

    .line 230
    if-eqz p4, :cond_6

    .line 232
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    move-result-object p4

    .line 236
    check-cast p4, Landroid/content/pm/PackageInfo;

    .line 238
    iget-object p4, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 240
    invoke-interface {p2, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    goto :goto_3

    .line 244
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 246
    const-string p4, "backupmanager pftbt token="

    .line 248
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    iget p4, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 253
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 256
    move-result-object p4

    .line 257
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    move-result-object p1

    .line 264
    invoke-static {p3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 269
    iget p3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 271
    const/4 p4, 0x2

    .line 272
    check-cast p1, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 274
    invoke-virtual {p1, p3, p2, p0, p4}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->registerOperationForPackages(ILjava/util/Set;Lcom/android/server/backup/BackupRestoreTask;I)V

    .line 277
    return-void
.end method

.method public static cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .locals 5

    .line 1
    if-eqz p0, :cond_1

    .line 3
    const/4 v0, 0x0

    .line 4
    aget-object v1, p0, v0

    .line 6
    const-string v2, "Unable to close pipe!"

    .line 8
    const-string v3, "PFTBT"

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 13
    aput-object v4, p0, v0

    .line 15
    :try_start_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 23
    aget-object v1, p0, v0

    .line 25
    if-eqz v1, :cond_1

    .line 27
    aput-object v4, p0, v0

    .line 29
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 32
    goto :goto_1

    .line 33
    :catch_1
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 0

    .line 1
    return-void
.end method

.method public final handleCancel(Z)V
    .locals 6

    .line 1
    const-string v0, "Error calling cancelFullBackup() on transport: "

    .line 3
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    if-nez p1, :cond_0

    .line 8
    :try_start_0
    const-string v2, "PFTBT"

    .line 10
    const-string v3, "Expected cancelAll to be true."

    .line 12
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 20
    if-eqz v2, :cond_1

    .line 22
    const-string p0, "PFTBT"

    .line 24
    const-string p1, "Ignoring duplicate cancel call."

    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :cond_1
    const/4 v2, 0x1

    .line 32
    iput-boolean v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    .line 34
    iget-boolean v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    .line 36
    if-eqz v2, :cond_2

    .line 38
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 40
    iget v3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    new-instance v4, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-direct {v4, v5, v2}, Lcom/android/server/backup/UserBackupManagerService$$ExternalSyntheticLambda14;-><init>(ILcom/android/server/backup/UserBackupManagerService;)V

    .line 51
    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 53
    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->cancelOperation(IZLjava/util/function/IntConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    .line 58
    invoke-virtual {p0}, Lcom/android/server/backup/transport/TransportConnection;->getConnectedTransport()Lcom/android/server/backup/transport/BackupTransportClient;

    .line 61
    move-result-object p0

    .line 62
    iget-object p1, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    .line 64
    invoke-virtual {p1}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    .line 67
    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    .line 70
    invoke-interface {p0, v2}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 73
    invoke-virtual {v2}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    :try_start_3
    invoke-virtual {p1, v2}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 79
    goto :goto_1

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    invoke-virtual {p1, v2}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 84
    throw p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :catch_0
    move-exception p0

    .line 86
    :try_start_4
    const-string p1, "PFTBT"

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    :goto_1
    monitor-exit v1

    .line 104
    return-void

    .line 105
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    throw p0
.end method

.method public final operationComplete(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final run()V
    .locals 32

    move-object/from16 v10, p0

    .line 1
    const-string/jumbo v1, "full backup requested but enabled="

    const/4 v14, 0x0

    const-wide/16 v8, 0x0

    const/4 v15, 0x0

    .line 2
    :try_start_0
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12
    .catchall {:try_start_0 .. :try_end_0} :catchall_1f

    .line 3
    :try_start_1
    iget-boolean v3, v2, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_1e

    if-eqz v3, :cond_0

    .line 4
    :try_start_2
    iget-boolean v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    if-nez v2, :cond_1

    :cond_0
    const/16 v3, -0x7d3

    const/16 v6, -0x3e8

    goto/16 :goto_2c

    .line 5
    :cond_1
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    const-string v2, "PFTBT.run()"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_18

    const/4 v7, 0x1

    if-nez v6, :cond_5

    .line 6
    :try_start_3
    const-string v1, "PFTBT"

    const-string v2, "Transport not present; full data backup not performed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 7
    :try_start_4
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2, v7, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 8
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_2

    const/16 v12, -0x7d3

    goto :goto_0

    :cond_2
    const/16 v12, -0x3e8

    .line 9
    :goto_0
    const-string v1, "PFTBT"

    const-string v2, "Full backup completed with status: "

    .line 10
    invoke-static {v12, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v12}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 13
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v1, :cond_3

    .line 14
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 15
    :cond_3
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 16
    :try_start_5
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    .line 17
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 18
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 19
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 20
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_4

    .line 21
    :goto_1
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 22
    :cond_4
    :goto_2
    const-string v1, "PFTBT"

    const-string v2, "Full data backup pass finished."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 24
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v25, v14

    const/16 v3, -0x7d3

    const/16 v12, -0x3e8

    goto/16 :goto_38

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v25, v14

    :goto_3
    const/16 v3, -0x7d3

    :goto_4
    const/16 v6, -0x3e8

    goto/16 :goto_35

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v25, v14

    move v12, v15

    const/16 v3, -0x7d3

    goto/16 :goto_38

    .line 25
    :cond_5
    :try_start_7
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    .line 26
    iget-object v2, v1, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_18

    if-nez v2, :cond_6

    .line 27
    :try_start_8
    invoke-virtual {v6}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupManagerMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    .line 28
    iput-object v2, v1, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5

    .line 29
    :catch_1
    :try_start_9
    const-string v1, "PFTBT"

    const-string v2, "Failed to retrieve monitor from transport"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 30
    :cond_6
    :goto_5
    :try_start_a
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 31
    invoke-static {}, Lcom/android/server/backup/Flags;->enableMaxSizeWritesToPipes()Z

    move-result v1

    if-eqz v1, :cond_7

    const/high16 v1, 0x10000

    goto :goto_6

    :cond_7
    const/16 v1, 0x2000

    .line 32
    :goto_6
    new-array v4, v1, [B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_18

    move-wide/from16 v16, v8

    move-object v1, v14

    move-object v2, v1

    move v3, v15

    :goto_7
    if-ge v3, v5, :cond_8

    .line 33
    :try_start_b
    iput-object v14, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 34
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 35
    iget-object v8, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 36
    const-string v12, "PFTBT"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Initiating full-data transport backup of "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " token: "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v11, 0xb18

    .line 37
    invoke-static {v11, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 38
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v11
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_16

    .line 39
    :try_start_c
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    .line 40
    iget-object v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_15

    .line 41
    :try_start_d
    iget-boolean v13, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_12

    if-eqz v13, :cond_9

    .line 42
    :try_start_e
    monitor-exit v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object v2, v11

    :cond_8
    const/16 v3, -0x7d3

    goto/16 :goto_29

    :catchall_3
    move-exception v0

    move-object v14, v1

    move-object/from16 v25, v11

    :goto_8
    const/16 v3, -0x7d3

    const/16 v6, -0x3e8

    :goto_9
    move-object v1, v0

    goto/16 :goto_26

    .line 43
    :cond_9
    :try_start_f
    aget-object v13, v11, v15

    invoke-virtual {v6, v9, v13, v2}, Lcom/android/server/backup/transport/BackupTransportClient;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v13
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_12

    if-nez v13, :cond_a

    .line 44
    :try_start_10
    iget-object v2, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/android/server/backup/transport/BackupTransportClient;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v20

    .line 45
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v22
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 46
    :try_start_11
    new-instance v2, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    aget-object v23, v22, v7

    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

    iget v15, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    .line 47
    invoke-virtual {v6}, Lcom/android/server/backup/transport/BackupTransportClient;->getTransportFlags()I

    move-result v24
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    move-object/from16 v25, v1

    move-object v1, v2

    move-object v14, v2

    move-object/from16 v2, p0

    move/from16 v26, v3

    move-object/from16 v3, v23

    move-object/from16 v27, v4

    move-object v4, v9

    move/from16 v23, v5

    move-object/from16 v5, v25

    move-object/from16 v28, v6

    move-object/from16 v25, v11

    move v11, v7

    move-wide/from16 v6, v20

    move-object/from16 v29, v8

    move v8, v15

    move-object v15, v9

    move/from16 v9, v24

    :try_start_12
    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportConnection;JII)V

    iput-object v14, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    .line 48
    aget-object v1, v22, v11

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v1, 0x0

    .line 49
    aput-object v1, v22, v11

    .line 50
    iput-boolean v11, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-wide/from16 v2, v20

    move-object/from16 v1, v22

    goto :goto_b

    :catchall_4
    move-exception v0

    :goto_a
    move-object v1, v0

    move-object/from16 v14, v22

    const/16 v3, -0x7d3

    const/16 v6, -0x3e8

    goto/16 :goto_26

    :catchall_5
    move-exception v0

    move-object/from16 v25, v11

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object/from16 v25, v11

    move-object v14, v1

    goto :goto_8

    :cond_a
    move/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v23, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v8

    move-object v15, v9

    move-object/from16 v25, v11

    move v11, v7

    const-wide v20, 0x7fffffffffffffffL

    move-wide/from16 v2, v20

    .line 51
    :goto_b
    :try_start_13
    monitor-exit v12
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    if-nez v13, :cond_16

    const/4 v5, 0x0

    .line 52
    :try_start_14
    aget-object v6, v25, v5

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v6, 0x0

    .line 53
    aput-object v6, v25, v5

    .line 54
    new-instance v5, Ljava/lang/Thread;

    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const-string/jumbo v7, "package-backup-bridge"

    invoke-direct {v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 55
    new-instance v5, Ljava/io/FileInputStream;

    const/4 v6, 0x0

    aget-object v7, v1, v6

    .line 56
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 57
    new-instance v6, Ljava/io/FileOutputStream;

    aget-object v7, v25, v11

    .line 58
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 59
    iget-object v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v7}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    move-result-wide v7

    const-wide/16 v11, 0x0

    cmp-long v14, v7, v11

    if-gez v14, :cond_b

    .line 60
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v5, "android.app.backup.extra.LOG_PREFLIGHT_ERROR"
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 61
    :try_start_15
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 62
    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    const/16 v5, 0x10

    const/4 v13, 0x3

    .line 63
    :try_start_16
    invoke-virtual {v2, v5, v3, v13, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    long-to-int v2, v7

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    const/4 v14, 0x1

    goto/16 :goto_18

    :catchall_7
    move-exception v0

    :goto_c
    move-object v2, v0

    move-object v14, v1

    move-wide/from16 v8, v16

    :goto_d
    const/16 v3, -0x7d3

    :goto_e
    const/4 v12, 0x0

    goto/16 :goto_38

    :catch_2
    move-exception v0

    :goto_f
    move-object v2, v0

    move-object v14, v1

    move-wide/from16 v8, v16

    goto/16 :goto_3

    :catchall_8
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_f

    :cond_b
    move-wide/from16 v18, v11

    move-object/from16 v9, v27

    .line 64
    :goto_10
    invoke-virtual {v5, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_e

    const/4 v12, 0x0

    .line 65
    invoke-virtual {v6, v9, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 66
    iget-object v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 67
    :try_start_17
    iget-boolean v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-nez v4, :cond_c

    move-object/from16 v4, v28

    .line 68
    invoke-virtual {v4, v11}, Lcom/android/server/backup/transport/BackupTransportClient;->sendBackupData(I)I

    move-result v13

    goto :goto_11

    :catchall_9
    move-exception v0

    move-object v2, v0

    goto :goto_13

    :cond_c
    move-object/from16 v4, v28

    .line 69
    :goto_11
    monitor-exit v12
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    move-object/from16 v22, v5

    move-object/from16 v24, v6

    int-to-long v5, v11

    add-long v5, v18, v5

    .line 70
    :try_start_18
    iget-object v12, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v12, :cond_d

    if-lez v14, :cond_d

    move-object/from16 v27, v9

    .line 71
    new-instance v9, Landroid/app/backup/BackupProgress;

    invoke-direct {v9, v7, v8, v5, v6}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    move-wide/from16 v18, v5

    move-object/from16 v5, v29

    .line 72
    invoke-static {v12, v5, v9}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_12

    :cond_d
    move-wide/from16 v18, v5

    move-object/from16 v27, v9

    goto :goto_14

    :goto_12
    move-wide/from16 v30, v7

    move-wide/from16 v6, v18

    move-wide/from16 v18, v30

    goto :goto_15

    .line 73
    :goto_13
    :try_start_19
    monitor-exit v12
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    :try_start_1a
    throw v2

    :cond_e
    move-object/from16 v22, v5

    move-object/from16 v24, v6

    move-object/from16 v27, v9

    move-object/from16 v4, v28

    :goto_14
    move-object/from16 v5, v29

    goto :goto_12

    :goto_15
    if-lez v11, :cond_f

    if-eqz v13, :cond_10

    :cond_f
    const/16 v8, -0x3ed

    goto :goto_16

    :cond_10
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v5, v22

    move-object/from16 v9, v27

    move-wide/from16 v30, v6

    move-object/from16 v6, v24

    move-wide/from16 v7, v18

    move-wide/from16 v18, v30

    goto :goto_10

    :goto_16
    if-ne v13, v8, :cond_11

    .line 74
    const-string v8, "PFTBT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package hit quota limit in-flight "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " of "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v9, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v11, 0x12

    const/4 v12, 0x0

    const/4 v14, 0x1

    invoke-virtual {v8, v11, v9, v14, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V

    .line 76
    iget-object v8, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v8, v6, v7, v2, v3}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V

    goto :goto_17

    :cond_11
    const/4 v14, 0x1

    :goto_17
    move v2, v13

    .line 77
    :goto_18
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v3}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    move-result v3

    .line 78
    iget-object v6, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    const/4 v7, 0x0

    .line 79
    :try_start_1b
    iput-boolean v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    .line 80
    iget-boolean v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-nez v7, :cond_13

    if-nez v3, :cond_12

    .line 81
    invoke-virtual {v4}, Lcom/android/server/backup/transport/BackupTransportClient;->finishBackup()I

    move-result v7

    if-nez v2, :cond_13

    move v2, v7

    goto :goto_19

    :catchall_a
    move-exception v0

    move-object v2, v0

    goto/16 :goto_1b

    .line 82
    :cond_12
    iget-object v7, v4, Lcom/android/server/backup/transport/BackupTransportClient;->mCallbackPool:Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;

    invoke-virtual {v7}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->acquire()Lcom/android/server/backup/transport/TransportStatusCallback;

    move-result-object v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    .line 83
    :try_start_1c
    iget-object v9, v4, Lcom/android/server/backup/transport/BackupTransportClient;->mTransportBinder:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v9, v8}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V

    .line 84
    invoke-virtual {v8}, Lcom/android/server/backup/transport/TransportStatusCallback;->getOperationStatus()I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    .line 85
    :try_start_1d
    invoke-virtual {v7, v8}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    goto :goto_19

    :catchall_b
    move-exception v0

    move-object v2, v0

    invoke-virtual {v7, v8}, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V

    .line 86
    throw v2

    .line 87
    :cond_13
    :goto_19
    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    if-nez v2, :cond_14

    if-eqz v3, :cond_14

    move v13, v3

    goto :goto_1a

    :cond_14
    move v13, v2

    :goto_1a
    if-eqz v13, :cond_15

    .line 88
    :try_start_1e
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " backing up "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_15
    invoke-virtual {v4}, Lcom/android/server/backup/transport/BackupTransportClient;->requestFullBackupTime()J

    move-result-wide v8
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_2
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 90
    :try_start_1f
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transport suggested backoff="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_4
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    goto :goto_1c

    :catchall_c
    move-exception v0

    move-object v2, v0

    move-object v14, v1

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v14, v1

    goto/16 :goto_3

    .line 91
    :goto_1b
    :try_start_20
    monitor-exit v6
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    :try_start_21
    throw v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_2
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    :cond_16
    move v14, v11

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    move-wide/from16 v8, v16

    .line 92
    :goto_1c
    :try_start_22
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    if-eqz v2, :cond_17

    .line 93
    :try_start_23
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 95
    invoke-virtual {v2, v6, v7, v5}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(JLjava/lang/String;)V

    :cond_17
    const/16 v2, -0x3ea

    if-ne v13, v2, :cond_19

    .line 96
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 97
    invoke-static {v3, v5, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 98
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transport rejected backup of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", skipping"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string/jumbo v2, "transport rejected"

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0xb19

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 100
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    if-eqz v2, :cond_18

    .line 101
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    :cond_18
    :goto_1d
    const/16 v3, -0x7d3

    :goto_1e
    const/16 v6, -0x3e8

    goto/16 :goto_24

    :cond_19
    const/16 v2, -0x3ed

    if-ne v13, v2, :cond_1a

    .line 102
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 103
    invoke-static {v3, v5, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 104
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transport quota exceeded for package: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xb1d

    .line 105
    invoke-static {v2, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 106
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_1d

    :cond_1a
    const/16 v2, -0x3eb

    if-ne v13, v2, :cond_1b

    .line 107
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 108
    invoke-static {v3, v5, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 109
    const-string v2, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application failure for package: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xb07

    .line 110
    invoke-static {v2, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 111
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_4
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    goto :goto_1d

    :cond_1b
    const/16 v3, -0x7d3

    if-ne v13, v3, :cond_1c

    .line 112
    :try_start_24
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    .line 113
    invoke-static {v2, v5, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 114
    const-string v2, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Backup cancelled. package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", cancelAll="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xb1e

    .line 115
    invoke-static {v2, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 116
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v6}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_5
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    goto/16 :goto_1e

    :catchall_d
    move-exception v0

    :goto_1f
    move-object v2, v0

    move-object v14, v1

    goto/16 :goto_e

    :catch_5
    move-exception v0

    move-object v2, v0

    move-object v14, v1

    goto/16 :goto_4

    :cond_1c
    if-eqz v13, :cond_1f

    .line 117
    :try_start_25
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_7
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    const/16 v6, -0x3e8

    .line 118
    :try_start_26
    invoke-static {v2, v5, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 119
    const-string v2, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transport failed; aborting backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 120
    new-array v4, v2, [Ljava/lang/Object;

    const/16 v2, 0xb1a

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_6
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    .line 121
    :try_start_27
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Lcom/android/server/backup/UserBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_6
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    .line 122
    iget-boolean v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v2, :cond_1d

    move v12, v3

    goto :goto_20

    :cond_1d
    move v12, v6

    .line 123
    :goto_20
    const-string v2, "PFTBT"

    const-string v3, "Full backup completed with status: "

    .line 124
    invoke-static {v12, v3, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v2, v12}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 126
    invoke-static/range {v25 .. v25}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 127
    invoke-static {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 129
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v1, :cond_1e

    .line 130
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 131
    :cond_1e
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 132
    :try_start_28
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    .line 133
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    .line 134
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 135
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 136
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_4

    goto/16 :goto_1

    :catchall_e
    move-exception v0

    move-object v1, v0

    .line 137
    :try_start_29
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    throw v1

    :catchall_f
    move-exception v0

    move-object v2, v0

    move-object v14, v1

    :goto_21
    move v12, v6

    goto/16 :goto_38

    :catch_6
    move-exception v0

    :goto_22
    move-object v2, v0

    move-object v14, v1

    goto/16 :goto_35

    :catch_7
    move-exception v0

    :goto_23
    const/16 v6, -0x3e8

    goto :goto_22

    :cond_1f
    const/16 v6, -0x3e8

    .line 138
    :try_start_2a
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/4 v7, 0x0

    .line 139
    invoke-static {v2, v5, v7}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/16 v2, 0xb1b

    .line 140
    invoke-static {v2, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 141
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/backup/UserBackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    .line 142
    :goto_24
    invoke-static/range {v25 .. v25}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 143
    invoke-static {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 144
    iget-object v2, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_20

    .line 145
    const-string v2, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unbinding agent in "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_6
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    .line 146
    :try_start_2b
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 147
    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 148
    iget-object v5, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v2, v5}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_6
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    :catch_8
    :cond_20
    add-int/lit8 v2, v26, 0x1

    move v3, v2

    move-object v6, v4

    move-wide/from16 v16, v8

    move v7, v14

    move/from16 v5, v23

    move-object/from16 v2, v25

    move-object/from16 v4, v27

    const-wide/16 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_7

    :catchall_10
    move-exception v0

    const/16 v3, -0x7d3

    goto/16 :goto_1f

    :catch_9
    move-exception v0

    const/16 v3, -0x7d3

    goto :goto_23

    :catchall_11
    move-exception v0

    :goto_25
    const/16 v3, -0x7d3

    const/16 v6, -0x3e8

    move-object v14, v1

    goto/16 :goto_9

    :catchall_12
    move-exception v0

    move-object/from16 v25, v11

    goto :goto_25

    .line 149
    :goto_26
    :try_start_2c
    monitor-exit v12
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_14

    :try_start_2d
    throw v1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_a
    .catchall {:try_start_2d .. :try_end_2d} :catchall_13

    :catchall_13
    move-exception v0

    move-object v2, v0

    :goto_27
    move-wide/from16 v8, v16

    goto/16 :goto_e

    :catch_a
    move-exception v0

    move-object v2, v0

    :goto_28
    move-wide/from16 v8, v16

    goto/16 :goto_35

    :catchall_14
    move-exception v0

    goto/16 :goto_9

    :catchall_15
    move-exception v0

    move-object/from16 v25, v11

    const/16 v3, -0x7d3

    move-object v2, v0

    move-object v14, v1

    goto :goto_27

    :catch_b
    move-exception v0

    move-object/from16 v25, v11

    const/16 v3, -0x7d3

    const/16 v6, -0x3e8

    move-object v2, v0

    move-object v14, v1

    goto :goto_28

    :catchall_16
    move-exception v0

    const/16 v3, -0x7d3

    move-object v14, v1

    move-object/from16 v25, v2

    move-wide/from16 v8, v16

    const/4 v12, 0x0

    move-object v2, v0

    goto/16 :goto_38

    :catch_c
    move-exception v0

    const/16 v3, -0x7d3

    const/16 v6, -0x3e8

    move-object v14, v1

    move-object/from16 v25, v2

    move-wide/from16 v8, v16

    move-object v2, v0

    goto/16 :goto_35

    .line 150
    :goto_29
    iget-boolean v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v4, :cond_21

    move v13, v3

    goto :goto_2a

    :cond_21
    const/4 v13, 0x0

    .line 151
    :goto_2a
    const-string v3, "PFTBT"

    const-string v4, "Full backup completed with status: "

    .line 152
    invoke-static {v13, v4, v3}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v3, v13}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 154
    invoke-static {v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 155
    invoke-static {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 157
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v1, :cond_22

    .line 158
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 159
    :cond_22
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 160
    :try_start_2e
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    .line 161
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_17

    .line 162
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 163
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 164
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_23

    .line 165
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-wide/from16 v8, v16

    :goto_2b
    invoke-virtual {v1, v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 166
    :cond_23
    const-string v1, "PFTBT"

    const-string v2, "Full data backup pass finished."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    goto/16 :goto_37

    :catchall_17
    move-exception v0

    move-object v2, v0

    .line 168
    :try_start_2f
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_17

    throw v2

    :catchall_18
    move-exception v0

    const/16 v3, -0x7d3

    move-object v2, v0

    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v25, 0x0

    goto/16 :goto_38

    :catch_d
    move-exception v0

    const/16 v3, -0x7d3

    const/16 v6, -0x3e8

    move-object v2, v0

    const-wide/16 v8, 0x0

    const/4 v14, 0x0

    const/16 v25, 0x0

    goto/16 :goto_35

    .line 169
    :goto_2c
    :try_start_30
    const-string v2, "PFTBT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_f
    .catchall {:try_start_30 .. :try_end_30} :catchall_1c

    .line 170
    :try_start_31
    iget-boolean v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_10
    .catchall {:try_start_31 .. :try_end_31} :catchall_1d

    .line 171
    :try_start_32
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " setupComplete="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_f
    .catchall {:try_start_32 .. :try_end_32} :catchall_1c

    .line 172
    :try_start_33
    iget-boolean v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_10
    .catchall {:try_start_33 .. :try_end_33} :catchall_1d

    .line 173
    :try_start_34
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; ignoring"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_f
    .catchall {:try_start_34 .. :try_end_34} :catchall_1c

    .line 176
    :try_start_35
    iget-boolean v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_10
    .catchall {:try_start_35 .. :try_end_35} :catchall_1d

    if-eqz v1, :cond_24

    const/16 v1, 0xd

    goto :goto_2d

    :cond_24
    const/16 v1, 0xe

    .line 177
    :goto_2d
    :try_start_36
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_f
    .catchall {:try_start_36 .. :try_end_36} :catchall_1c

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 178
    :try_start_37
    invoke-virtual {v2, v1, v5, v4, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_e
    .catchall {:try_start_37 .. :try_end_37} :catchall_1b

    const/4 v1, 0x0

    .line 179
    :try_start_38
    iput-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_e
    .catchall {:try_start_38 .. :try_end_38} :catchall_1a

    .line 180
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_25

    move v13, v3

    goto :goto_2e

    :cond_25
    const/16 v13, -0x7d1

    .line 181
    :goto_2e
    const-string v1, "PFTBT"

    const-string v2, "Full backup completed with status: "

    .line 182
    invoke-static {v13, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v13}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 185
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v1, :cond_26

    .line 186
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 187
    :cond_26
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 188
    :try_start_39
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    .line 189
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_19

    .line 190
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 191
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 192
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_4

    .line 193
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto/16 :goto_2

    :catchall_19
    move-exception v0

    move-object v1, v0

    .line 194
    :try_start_3a
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_19

    throw v1

    :catchall_1a
    move-exception v0

    :goto_2f
    const-wide/16 v7, 0x0

    :goto_30
    move-object v2, v0

    move v12, v1

    move-object v14, v5

    :goto_31
    move-object/from16 v25, v14

    move-wide v8, v7

    goto/16 :goto_38

    :catch_e
    move-exception v0

    :goto_32
    const-wide/16 v7, 0x0

    :goto_33
    move-object v2, v0

    move-object v14, v5

    :goto_34
    move-object/from16 v25, v14

    move-wide v8, v7

    goto :goto_35

    :catchall_1b
    move-exception v0

    const/4 v1, 0x0

    goto :goto_2f

    :catchall_1c
    move-exception v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_2f

    :catch_f
    move-exception v0

    const/4 v5, 0x0

    goto :goto_32

    :catchall_1d
    move-exception v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    goto :goto_2f

    :catch_10
    move-exception v0

    const/4 v5, 0x0

    goto :goto_32

    :catchall_1e
    move-exception v0

    move-wide v7, v8

    move-object v5, v14

    move v1, v15

    const/16 v3, -0x7d3

    goto :goto_30

    :catch_11
    move-exception v0

    move-wide v7, v8

    move-object v5, v14

    const/16 v3, -0x7d3

    const/16 v6, -0x3e8

    goto :goto_33

    :catchall_1f
    move-exception v0

    move-wide v7, v8

    move-object v5, v14

    move v1, v15

    const/16 v3, -0x7d3

    move-object v2, v0

    move v12, v1

    goto :goto_31

    :catch_12
    move-exception v0

    move-wide v7, v8

    move-object v5, v14

    const/16 v3, -0x7d3

    const/16 v6, -0x3e8

    move-object v2, v0

    goto :goto_34

    .line 195
    :goto_35
    :try_start_3b
    const-string v1, "PFTBT"

    const-string v4, "Exception trying full transport backup"

    invoke-static {v1, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupManagerMonitorEventSender:Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    iget-object v4, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v5, "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP"

    .line 197
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {v5, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->putMonitoringExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/16 v5, 0x13

    const/4 v7, 0x3

    .line 199
    invoke-virtual {v1, v5, v4, v7, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;->monitorEvent(ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_21

    .line 200
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_27

    move v12, v3

    goto :goto_36

    :cond_27
    move v12, v6

    .line 201
    :goto_36
    const-string v1, "PFTBT"

    const-string v2, "Full backup completed with status: "

    .line 202
    invoke-static {v12, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v12}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 204
    invoke-static/range {v25 .. v25}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 205
    invoke-static {v14}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 207
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v1, :cond_28

    .line 208
    iget v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 209
    :cond_28
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 210
    :try_start_3c
    iget-object v2, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    .line 211
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_20

    .line 212
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v2, "PFTBT.run()"

    invoke-interface {v1, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 213
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 214
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_23

    .line 215
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    goto/16 :goto_2b

    :goto_37
    return-void

    :catchall_20
    move-exception v0

    move-object v2, v0

    .line 216
    :try_start_3d
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_20

    throw v2

    :catchall_21
    move-exception v0

    move-object v2, v0

    goto/16 :goto_21

    .line 217
    :goto_38
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_29

    move v13, v3

    goto :goto_39

    :cond_29
    move v13, v12

    .line 218
    :goto_39
    const-string v1, "PFTBT"

    const-string v3, "Full backup completed with status: "

    .line 219
    invoke-static {v13, v3, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v13}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 221
    invoke-static/range {v25 .. v25}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 222
    invoke-static {v14}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 224
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v1, :cond_2a

    .line 225
    iget v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserId:I

    invoke-virtual {v1, v3}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass(I)V

    .line 226
    :cond_2a
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 227
    :try_start_3e
    iget-object v3, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/UserBackupManagerService;->setRunningFullBackupTask()V

    .line 228
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_22

    .line 229
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    const-string v3, "PFTBT.run()"

    invoke-interface {v1, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 230
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 231
    iget-boolean v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v1, :cond_2b

    .line 232
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 233
    :cond_2b
    const-string v1, "PFTBT"

    const-string v3, "Full data backup pass finished."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, v10, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 235
    throw v2

    :catchall_22
    move-exception v0

    move-object v2, v0

    .line 236
    :try_start_3f
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_22

    throw v2
.end method

.method public final unregisterTask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mOperationStorage:Lcom/android/server/backup/OperationStorage;

    .line 3
    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    .line 5
    check-cast v0, Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    .line 10
    return-void
.end method
