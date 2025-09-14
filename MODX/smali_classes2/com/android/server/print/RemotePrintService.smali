.class public final Lcom/android/server/print/RemotePrintService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mBinding:Z

.field public final mCallbacks:Lcom/android/server/print/UserState;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public mDiscoveryPriorityList:Ljava/util/List;

.field public mHasActivePrintJobs:Z

.field public mHasPrinterDiscoverySession:Z

.field public final mIntent:Landroid/content/Intent;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingCommands:Ljava/util/List;

.field public mPrintService:Landroid/printservice/IPrintService;

.field public final mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

.field public final mServiceConnection:Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

.field public mServiceDied:Z

.field public final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field public mTrackedPrinterList:Ljava/util/List;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/UserState;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;-><init>(Lcom/android/server/print/RemotePrintService;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p5, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/UserState;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    .line 30
    .line 31
    new-instance p1, Landroid/content/Intent;

    .line 32
    .line 33
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mIntent:Landroid/content/Intent;

    .line 41
    .line 42
    iput p3, p0, Lcom/android/server/print/RemotePrintService;->mUserId:I

    .line 43
    .line 44
    iput-object p4, p0, Lcom/android/server/print/RemotePrintService;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 45
    .line 46
    new-instance p1, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    .line 47
    .line 48
    invoke-direct {p1, p0}, Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;-><init>(Lcom/android/server/print/RemotePrintService;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService;->mPrintServiceClient:Lcom/android/server/print/RemotePrintService$RemotePrintServiceClient;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v2}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 7

    .line 1
    const-string v0, "component_name"

    .line 2
    .line 3
    const-wide v1, 0x10b00000001L

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "is_destroyed"

    .line 14
    .line 15
    const-wide v1, 0x10800000002L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    iget-boolean v3, p0, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 23
    .line 24
    .line 25
    const-string v0, "is_bound"

    .line 26
    .line 27
    const-wide v1, 0x10800000003L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 37
    .line 38
    .line 39
    const-string v0, "has_discovery_session"

    .line 40
    .line 41
    const-wide v1, 0x10800000004L

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    iget-boolean v3, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 49
    .line 50
    .line 51
    const-string v0, "has_active_print_jobs"

    .line 52
    .line 53
    const-wide v1, 0x10800000005L

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    iget-boolean v3, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 61
    .line 62
    .line 63
    const-string v0, "is_discovering_printers"

    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move v1, v2

    .line 73
    :goto_0
    const-wide v3, 0x10800000006L

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    .line 82
    .line 83
    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 85
    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    check-cast v1, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    :goto_1
    if-ge v2, v1, :cond_1

    .line 95
    .line 96
    const-string/jumbo v3, "tracked_printers"

    .line 97
    .line 98
    .line 99
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 100
    .line 101
    check-cast v4, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Landroid/print/PrinterId;

    .line 108
    .line 109
    const-wide v5, 0x20b00000007L

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    invoke-static {p1, v3, v5, v6, v4}, Lcom/android/internal/print/DumpUtils;->writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V

    .line 115
    .line 116
    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    goto :goto_2

    .line 122
    :cond_1
    monitor-exit v0

    .line 123
    return-void

    .line 124
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw p0
.end method

.method public final ensureBound()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mIntent:Landroid/content/Intent;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

    .line 20
    .line 21
    new-instance v3, Landroid/os/UserHandle;

    .line 22
    .line 23
    iget v4, p0, Lcom/android/server/print/RemotePrintService;->mUserId:I

    .line 24
    .line 25
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const v4, 0x4401001

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 39
    .line 40
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public final ensureUnbound()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mBinding:Z

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 16
    .line 17
    check-cast v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 33
    .line 34
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    :try_start_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 42
    .line 43
    invoke-interface {v2, v1}, Landroid/printservice/IPrintService;->setClient(Landroid/printservice/IPrintServiceClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    .line 45
    .line 46
    :catch_0
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 47
    .line 48
    invoke-interface {v2}, Landroid/printservice/IPrintService;->asBinder()Landroid/os/IBinder;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mServiceConnection:Lcom/android/server/print/RemotePrintService$RemoteServiceConneciton;

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    throw p0
.end method

.method public final handleBinderDied()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/printservice/IPrintService;->asBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mCallbacks:Lcom/android/server/print/UserState;

    .line 20
    .line 21
    iget-object v1, v0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 25
    .line 26
    .line 27
    iget-object v2, v0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    monitor-exit v1

    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Landroid/os/Looper;->isCurrentThread()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    new-instance v4, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-direct {v4, v5}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda1;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-static {v4, v0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-instance v3, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;

    .line 77
    .line 78
    const/4 v4, 0x2

    .line 79
    invoke-direct {v3, v4}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    .line 88
    .line 89
    iget-object v2, v0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 90
    .line 91
    iget-object v3, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    new-instance v3, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;

    .line 101
    .line 102
    const/4 v4, 0x1

    .line 103
    invoke-direct {v3, v4}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const-wide/16 v4, 0x1f4

    .line 111
    .line 112
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 113
    .line 114
    .line 115
    iget-object v0, v0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$1;

    .line 116
    .line 117
    if-nez v0, :cond_3

    .line 118
    .line 119
    monitor-exit v1

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    iget-object v0, v0, Lcom/android/server/print/UserState$1;->this$0$1:Lcom/android/server/print/UserState;

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 124
    .line 125
    .line 126
    monitor-exit v1

    .line 127
    :goto_1
    return-void

    .line 128
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    throw p0
.end method

.method public final handleCreatePrinterDiscoverySession()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/print/RemotePrintService$1;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, p0, v2}, Lcom/android/server/print/RemotePrintService$1;-><init>(Lcom/android/server/print/RemotePrintService;I)V

    .line 19
    .line 20
    .line 21
    check-cast v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 28
    .line 29
    invoke-interface {p0}, Landroid/printservice/IPrintService;->createPrinterDiscoverySession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string v0, "RemotePrintService"

    .line 35
    .line 36
    const-string v1, "Error creating printer discovery session."

    .line 37
    .line 38
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public final handleDestroyPrinterDiscoverySession()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 26
    .line 27
    new-instance v1, Lcom/android/server/print/RemotePrintService$1;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-direct {v1, p0, v2}, Lcom/android/server/print/RemotePrintService$1;-><init>(Lcom/android/server/print/RemotePrintService;I)V

    .line 31
    .line 32
    .line 33
    check-cast v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 40
    .line 41
    invoke-interface {v0}, Landroid/printservice/IPrintService;->destroyPrinterDiscoverySession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string v1, "RemotePrintService"

    .line 47
    .line 48
    const-string v2, "Error destroying printer dicovery session."

    .line 49
    .line 50
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    return-void
.end method

.method public final handleOnAllPrintJobsHandled()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mServiceDied:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 26
    .line 27
    new-instance v1, Lcom/android/server/print/RemotePrintService$1;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, p0, v2}, Lcom/android/server/print/RemotePrintService$1;-><init>(Lcom/android/server/print/RemotePrintService;I)V

    .line 31
    .line 32
    .line 33
    check-cast v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    return-void
.end method

.method public final handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintService;->mHasActivePrintJobs:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/print/RemotePrintService$2;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/print/RemotePrintService$2;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;I)V

    .line 19
    .line 20
    .line 21
    check-cast v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 28
    .line 29
    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string p1, "RemotePrintService"

    .line 35
    .line 36
    const-string v0, "Error announcing queued pring job."

    .line 37
    .line 38
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public final handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/print/RemotePrintService$2;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/print/RemotePrintService$2;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;I)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->requestCancelPrintJob(Landroid/print/PrintJobInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    const-string p1, "RemotePrintService"

    .line 32
    .line 33
    const-string v0, "Error canceling a pring job."

    .line 34
    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final handleRequestCustomPrinterIcon(Landroid/print/PrinterId;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda9;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 24
    .line 25
    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "Error requesting icon for "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v0, "RemotePrintService"

    .line 45
    .line 46
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public final handleStartPrinterDiscovery(Ljava/util/List;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 23
    .line 24
    new-instance v1, Lcom/android/server/print/RemotePrintService$6;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/print/RemotePrintService$6;-><init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;I)V

    .line 28
    .line 29
    .line 30
    check-cast v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 37
    .line 38
    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->startPrinterDiscovery(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    const-string p1, "RemotePrintService"

    .line 44
    .line 45
    const-string v0, "Error starting printer dicovery."

    .line 46
    .line 47
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public final handleStartPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 14
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
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 19
    .line 20
    check-cast v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 36
    .line 37
    new-instance v1, Lcom/android/server/print/RemotePrintService$9;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/print/RemotePrintService$9;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;I)V

    .line 41
    .line 42
    .line 43
    check-cast v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 50
    .line 51
    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p0

    .line 56
    const-string p1, "RemotePrintService"

    .line 57
    .line 58
    const-string v0, "Error requesting start printer tracking."

    .line 59
    .line 60
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .line 62
    .line 63
    :goto_1
    return-void

    .line 64
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    throw p0
.end method

.method public final handleStopPrinterDiscovery()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/print/RemotePrintService$1;

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    invoke-direct {v1, p0, v2}, Lcom/android/server/print/RemotePrintService$1;-><init>(Lcom/android/server/print/RemotePrintService;I)V

    .line 19
    .line 20
    .line 21
    check-cast v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->stopTrackingAllPrinters()V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 31
    .line 32
    invoke-interface {p0}, Landroid/printservice/IPrintService;->stopPrinterDiscovery()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    const-string v0, "RemotePrintService"

    .line 38
    .line 39
    const-string v1, "Error stopping printer discovery."

    .line 40
    .line 41
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public final handleStopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_3

    .line 29
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 40
    .line 41
    new-instance v1, Lcom/android/server/print/RemotePrintService$9;

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/print/RemotePrintService$9;-><init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;I)V

    .line 45
    .line 46
    .line 47
    check-cast v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :try_start_1
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 54
    .line 55
    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_0
    move-exception p0

    .line 60
    const-string p1, "RemotePrintService"

    .line 61
    .line 62
    const-string v0, "Error requesting stop printer tracking."

    .line 63
    .line 64
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :goto_1
    return-void

    .line 68
    :cond_3
    :goto_2
    :try_start_2
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p0
.end method

.method public final handleValidatePrinters(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->isBound()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->ensureBound()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mPendingCommands:Ljava/util/List;

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/print/RemotePrintService$6;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/print/RemotePrintService$6;-><init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;I)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Landroid/printservice/IPrintService;->validatePrinters(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    const-string p1, "RemotePrintService"

    .line 32
    .line 33
    const-string v0, "Error requesting printers validation."

    .line 34
    .line 35
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final isBound()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService;->mPrintService:Landroid/printservice/IPrintService;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final stopTrackingAllPrinters()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    check-cast v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    :goto_0
    if-ltz v1, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/print/RemotePrintService;->mTrackedPrinterList:Ljava/util/List;

    .line 23
    .line 24
    check-cast v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/print/PrinterId;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService;->mComponentName:Landroid/content/ComponentName;

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0, v2}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method
