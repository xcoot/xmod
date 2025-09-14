.class public final synthetic Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    .line 5
    .line 6
    sget v2, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;->$r8$clinit:I

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v2, "SystemFileBackupManager"

    .line 12
    .line 13
    const-string v3, "Running BackupJobServiceThread"

    .line 14
    .line 15
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-boolean v3, v2, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mSystemReady:Z

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    const-string v2, "SystemFileBackupManager"

    .line 28
    .line 29
    const-string v3, "System is not ready"

    .line 30
    .line 31
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v3, v2, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mIsBackupRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    const-string v2, "SystemFileBackupManager"

    .line 44
    .line 45
    const-string v3, "Backup is running"

    .line 46
    .line 47
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v3, v2, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mIsBackupRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v3, v2, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v3

    .line 59
    :try_start_0
    iget-object v5, v2, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mControllers:Landroid/util/ArrayMap;

    .line 60
    .line 61
    new-instance v6, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    invoke-direct {v6, v0}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 67
    .line 68
    .line 69
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v2, v2, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mIsBackupRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 73
    .line 74
    .line 75
    move v0, v4

    .line 76
    :goto_0
    xor-int/2addr v0, v4

    .line 77
    invoke-virtual {v1, p0, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    throw p0
.end method
