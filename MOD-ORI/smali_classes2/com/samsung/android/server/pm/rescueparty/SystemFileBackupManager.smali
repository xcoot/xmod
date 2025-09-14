.class public final Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_BACKUP_PERIOD:J

.field public static final sFileBackupServiceName:Landroid/content/ComponentName;

.field public static sInstance:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;


# instance fields
.field public final mControllers:Landroid/util/ArrayMap;

.field public final mIsBackupRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mLock:Ljava/lang/Object;

.field public mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->DEFAULT_BACKUP_PERIOD:J

    .line 10
    .line 11
    new-instance v0, Landroid/content/ComponentName;

    .line 12
    .line 13
    const-class v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager$BackupJobService;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "android"

    .line 20
    .line 21
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sFileBackupServiceName:Landroid/content/ComponentName;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mControllers:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mSystemReady:Z

    .line 20
    .line 21
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mIsBackupRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;
    .locals 2

    .line 1
    const-class v0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sInstance:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sInstance:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->sInstance:Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public final registerController(Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;->getControllerName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v1, "SystemFileBackupManager"

    .line 13
    .line 14
    const-string v2, "Controller "

    .line 15
    .line 16
    const-string v3, " is registered"

    .line 17
    .line 18
    invoke-static {v2, v0, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->mControllers:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method
