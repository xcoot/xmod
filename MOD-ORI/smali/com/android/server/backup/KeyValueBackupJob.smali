.class public Lcom/android/server/backup/KeyValueBackupJob;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MAX_JOB_ID:I = 0x31fd950

.field public static final MIN_JOB_ID:I = 0x31fd568

.field public static final sKeyValueJobService:Landroid/content/ComponentName;

.field public static final sNextScheduledForUserId:Landroid/util/SparseLongArray;

.field public static final sScheduledForUserId:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-class v1, Lcom/android/server/backup/KeyValueBackupJob;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android"

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    .line 15
    .line 16
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    .line 22
    .line 23
    new-instance v0, Landroid/util/SparseLongArray;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static cancel(Landroid/content/Context;I)V
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "jobscheduler"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/app/job/JobScheduler;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/server/backup/KeyValueBackupJob;->getJobIdForUserId(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public static getJobIdForUserId(I)I
    .locals 1

    .line 1
    const v0, 0x31fd568

    .line 2
    .line 3
    .line 4
    add-int/2addr v0, p0

    .line 5
    const p0, 0x31fd950

    .line 6
    .line 7
    .line 8
    if-gt v0, p0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    const-string v0, "No job IDs available in the given range"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public static isScheduled(I)Z
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public static schedule(ILandroid/content/Context;JLcom/android/server/backup/UserBackupManagerService;)V
    .locals 11

    .line 2
    const-string v0, "Scheduling k/v pass in "

    const-class v1, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v2, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4
    invoke-virtual {p4}, Lcom/android/server/backup/UserBackupManagerService;->isFrameworkSchedulingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object p4, p4, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 6
    monitor-enter p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-virtual {p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    move-result-wide v3

    .line 8
    const-string/jumbo v5, "getKeyValueBackupFuzzMilliseconds(...) returns "

    monitor-enter p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    const-string v6, "BackupManagerConstants"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p4, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupFuzzMilliseconds:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-wide v5, p4, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupFuzzMilliseconds:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    monitor-exit p4

    .line 11
    const-string/jumbo v7, "getKeyValueBackupRequiredNetworkType(...) returns "

    monitor-enter p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    :try_start_4
    const-string v8, "BackupManagerConstants"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p4, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequiredNetworkType:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget v7, p4, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequiredNetworkType:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    monitor-exit p4

    .line 14
    const-string/jumbo v8, "getKeyValueBackupRequireCharging(...) returns "

    monitor-enter p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 15
    :try_start_6
    const-string v9, "BackupManagerConstants"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p4, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequireCharging:Z

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-boolean v8, p4, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequireCharging:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit p4

    .line 17
    monitor-exit p4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const-wide/16 v9, 0x0

    cmp-long p4, p2, v9

    if-gtz p4, :cond_1

    .line 18
    :try_start_8
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    long-to-int p3, v5

    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    int-to-long p2, p2

    add-long/2addr p2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 19
    :cond_1
    :goto_0
    const-string p4, "KeyValueBackupJob"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    div-long v4, p2, v4

    const-wide/16 v9, 0x3c

    div-long/2addr v4, v9

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " minutes"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance p4, Landroid/app/job/JobInfo$Builder;

    invoke-static {p0}, Lcom/android/server/backup/KeyValueBackupJob;->getJobIdForUserId(I)I

    move-result v0

    sget-object v3, Lcom/android/server/backup/KeyValueBackupJob;->sKeyValueJobService:Landroid/content/ComponentName;

    invoke-direct {p4, v0, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 21
    invoke-virtual {p4, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p4

    .line 22
    invoke-virtual {p4, v7}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p4

    .line 23
    invoke-virtual {p4, v8}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p4

    const-wide/32 v3, 0x5265c00

    .line 24
    invoke-virtual {p4, v3, v4}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p4

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    const-string/jumbo v3, "userId"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    invoke-virtual {p4, v0}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    .line 28
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    .line 29
    invoke-virtual {p4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    const/4 p1, 0x1

    .line 30
    invoke-virtual {v2, p0, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 31
    sget-object p1, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {p1, p0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 32
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return-void

    :catchall_1
    move-exception p0

    goto :goto_1

    :catchall_2
    move-exception p0

    .line 33
    :try_start_9
    monitor-exit p4

    throw p0

    :catchall_3
    move-exception p0

    .line 34
    monitor-exit p4

    throw p0

    :catchall_4
    move-exception p0

    .line 35
    monitor-exit p4

    throw p0

    .line 36
    :goto_1
    monitor-exit p4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p0

    .line 37
    :cond_2
    :goto_2
    monitor-exit v1

    return-void

    .line 38
    :goto_3
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p0
.end method

.method public static schedule(ILandroid/content/Context;Lcom/android/server/backup/UserBackupManagerService;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/UserBackupManagerService;)V

    return-void
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo p1, "userId"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const-class p1, Lcom/android/server/backup/KeyValueBackupJob;

    .line 13
    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    sget-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sScheduledForUserId:Landroid/util/SparseBooleanArray;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/android/server/backup/KeyValueBackupJob;->sNextScheduledForUserId:Landroid/util/SparseLongArray;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->delete(I)V

    .line 23
    .line 24
    .line 25
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    sget-object p1, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/android/server/backup/BackupManagerService;->backupNowForUser(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    const/4 p0, 0x0

    .line 35
    return p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
