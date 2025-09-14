.class public final Lcom/android/server/am/ActivityManagerService$22;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final val$app:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$22;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$22;->val$app:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$22;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    sget v0, Lcom/android/server/am/ActivityManagerService;->activeReadAheadPkgsIndex:I

    .line 8
    if-ltz v0, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ge v0, v1, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$22;->val$app:Ljava/lang/Object;

    .line 15
    check-cast p0, Lcom/android/server/am/ActivityManagerService;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    sget-object p0, Lcom/android/server/am/ActivityManagerService;->activeReadAheadProps:[Ljava/lang/String;

    .line 22
    sget v0, Lcom/android/server/am/ActivityManagerService;->activeReadAheadPkgsIndex:I

    .line 24
    aget-object p0, p0, v0

    .line 26
    const-string v0, "1"

    .line 28
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void

    .line 32
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$22;->val$app:Ljava/lang/Object;

    .line 34
    check-cast p0, Lcom/android/server/am/ProcessStatsService;

    .line 36
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 38
    monitor-enter v0

    .line 39
    const/4 v1, 0x0

    .line 40
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0

    .line 48
    :pswitch_1
    :try_start_1
    const-string v0, "backup"

    .line 50
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    .line 57
    move-result-object v0

    .line 58
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$22;->val$app:Ljava/lang/Object;

    .line 60
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 62
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 64
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 66
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 68
    invoke-interface {v0, v1, p0}, Landroid/app/backup/IBackupManager;->agentDisconnectedForUser(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    :catch_0
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
