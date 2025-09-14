.class public final Lcom/android/server/print/RemotePrintSpooler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BIND_SPOOLER_SERVICE_TIMEOUT:J


# instance fields
.field public final mCallbacks:Lcom/android/server/print/UserState;

.field public mCanUnbind:Z

.field public final mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

.field public final mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

.field public final mContext:Landroid/content/Context;

.field public final mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

.field public mDestroyed:Z

.field public final mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

.field public final mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

.field public final mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

.field public final mIntent:Landroid/content/Intent;

.field public mIsBinding:Z

.field public mIsLowPriority:Z

.field public final mLock:Ljava/lang/Object;

.field public mRemoteInstance:Landroid/print/IPrintSpooler;

.field public final mServiceConnection:Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;

.field public final mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

.field public final mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static -$$Nest$monPrintJobStateChanged(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/UserState;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v0, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/List;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    monitor-exit v1

    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_0
    if-ge v3, v2, :cond_2

    .line 34
    .line 35
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Landroid/print/PrintJobInfo;

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v4, v5}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    invoke-interface {v0, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_1
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-direct {v1, v2}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-static {p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainSupplier(I)Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/32 v0, 0x1d4c0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-wide/16 v0, 0x2710

    .line 10
    .line 11
    :goto_0
    sput-wide v0, Lcom/android/server/print/RemotePrintSpooler;->BIND_SPOOLER_SERVICE_TIMEOUT:J

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLcom/android/server/print/UserState;)V
    .locals 2

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
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-direct {v0, v1}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 18
    .line 19
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-direct {v0, v1}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 28
    .line 29
    const/4 v1, 0x6

    .line 30
    invoke-direct {v0, v1}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 34
    .line 35
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {v0, v1}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 42
    .line 43
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 44
    .line 45
    const/4 v1, 0x5

    .line 46
    invoke-direct {v0, v1}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>(I)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 50
    .line 51
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-direct {v0, v1}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 58
    .line 59
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    invoke-direct {v0, v1}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>(I)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 66
    .line 67
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;-><init>(Lcom/android/server/print/RemotePrintSpooler;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    new-instance p1, Landroid/os/UserHandle;

    .line 77
    .line 78
    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    .line 82
    .line 83
    iput-object p4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/UserState;

    .line 84
    .line 85
    iput-boolean p3, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    .line 86
    .line 87
    new-instance p1, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    .line 88
    .line 89
    invoke-direct {p1, p0}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;-><init>(Lcom/android/server/print/RemotePrintSpooler;)V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    .line 93
    .line 94
    new-instance p1, Landroid/content/Intent;

    .line 95
    .line 96
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    .line 100
    .line 101
    new-instance p0, Landroid/content/ComponentName;

    .line 102
    .line 103
    const-string p2, "com.android.printspooler"

    .line 104
    .line 105
    const-string p3, "com.android.printspooler.model.PrintSpoolerService"

    .line 106
    .line 107
    invoke-direct {p0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    return-void
.end method


# virtual methods
.method public final bindLocked()V
    .locals 9

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    move v3, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const v3, 0x4000001

    .line 27
    .line 28
    .line 29
    :goto_1
    iget-object v4, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v5, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    .line 32
    .line 33
    iget-object v6, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;

    .line 34
    .line 35
    iget-object v7, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    .line 36
    .line 37
    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    :goto_2
    iget-object v5, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    .line 45
    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    sub-long/2addr v5, v3

    .line 63
    sget-wide v7, Lcom/android/server/print/RemotePrintSpooler;->BIND_SPOOLER_SERVICE_TIMEOUT:J

    .line 64
    .line 65
    sub-long/2addr v7, v5

    .line 66
    const-wide/16 v5, 0x0

    .line 67
    .line 68
    cmp-long v5, v7, v5

    .line 69
    .line 70
    if-lez v5, :cond_4

    .line 71
    .line 72
    invoke-virtual {v1, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    .line 77
    .line 78
    const-string v3, "Cannot get spooler!"

    .line 79
    .line 80
    invoke-direct {v0, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 87
    .line 88
    .line 89
    throw v0
.end method

.method public final clearCustomPrinterIconCache()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 14
    const/4 v0, 0x1

    .line 15
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->clearCustomPrinterIconCache(Landroid/print/IPrintSpooler;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v1

    .line 27
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0

    .line 39
    :catchall_1
    move-exception v1

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception v1

    .line 42
    :try_start_3
    const-string v2, "RemotePrintSpooler"

    .line 43
    .line 44
    const-string v3, "Error clearing custom printer icon cache."

    .line 45
    .line 46
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v1

    .line 52
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 57
    .line 58
    .line 59
    monitor-exit v1

    .line 60
    :goto_0
    return-void

    .line 61
    :catchall_2
    move-exception p0

    .line 62
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 63
    throw p0

    .line 64
    :goto_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v2

    .line 67
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 72
    .line 73
    .line 74
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 75
    throw v1

    .line 76
    :catchall_3
    move-exception p0

    .line 77
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 78
    throw p0

    .line 79
    :catchall_4
    move-exception p0

    .line 80
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 81
    throw p0
.end method

.method public final getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 14
    const/4 v0, 0x1

    .line 15
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->getPrintJobInfo(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter p2

    .line 28
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 33
    .line 34
    .line 35
    monitor-exit p2

    .line 36
    return-object p1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0

    .line 40
    :catchall_1
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    .line 44
    .line 45
    const-string v1, "Error getting print job info."

    .line 46
    .line 47
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter p1

    .line 53
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 58
    .line 59
    .line 60
    monitor-exit p1

    .line 61
    const/4 p0, 0x0

    .line 62
    return-object p0

    .line 63
    :catchall_2
    move-exception p0

    .line 64
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 65
    throw p0

    .line 66
    :goto_0
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter p2

    .line 69
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 74
    .line 75
    .line 76
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 77
    throw p1

    .line 78
    :catchall_3
    move-exception p0

    .line 79
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 80
    throw p0

    .line 81
    :catchall_4
    move-exception p0

    .line 82
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 83
    throw p0
.end method

.method public final getPrintJobInfos(IILandroid/content/ComponentName;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 14
    const/4 v0, 0x1

    .line 15
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2, p3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->getPrintJobInfos(Landroid/print/IPrintSpooler;Landroid/content/ComponentName;II)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter p2

    .line 28
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 33
    .line 34
    .line 35
    monitor-exit p2

    .line 36
    return-object p1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0

    .line 40
    :catchall_1
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    .line 44
    .line 45
    const-string p3, "Error getting print jobs."

    .line 46
    .line 47
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter p1

    .line 53
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 58
    .line 59
    .line 60
    monitor-exit p1

    .line 61
    const/4 p0, 0x0

    .line 62
    return-object p0

    .line 63
    :catchall_2
    move-exception p0

    .line 64
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 65
    throw p0

    .line 66
    :goto_0
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter p2

    .line 69
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 74
    .line 75
    .line 76
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 77
    throw p1

    .line 78
    :catchall_3
    move-exception p0

    .line 79
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 80
    throw p0

    .line 81
    :catchall_4
    move-exception p0

    .line 82
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 83
    throw p0
.end method

.method public final getRemoteInstanceLazy()Landroid/print/IPrintSpooler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->bindLocked()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 14
    const/4 v0, 0x1

    .line 15
    :try_start_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->onCustomPrinterIconLoaded(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter p1

    .line 27
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 32
    .line 33
    .line 34
    monitor-exit p1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    throw p0

    .line 39
    :catchall_1
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    .line 43
    .line 44
    const-string v1, "Error loading new custom printer icon."

    .line 45
    .line 46
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter p1

    .line 52
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 57
    .line 58
    .line 59
    monitor-exit p1

    .line 60
    :goto_0
    return-void

    .line 61
    :catchall_2
    move-exception p0

    .line 62
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 63
    throw p0

    .line 64
    :goto_1
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter p2

    .line 67
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 72
    .line 73
    .line 74
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 75
    throw p1

    .line 76
    :catchall_3
    move-exception p0

    .line 77
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 78
    throw p0

    .line 79
    :catchall_4
    move-exception p0

    .line 80
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 81
    throw p0
.end method

.method public final pruneApprovedPrintServices(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 14
    const/4 v0, 0x1

    .line 15
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1, p1}, Landroid/print/IPrintSpooler;->pruneApprovedPrintServices(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter p1

    .line 25
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 30
    .line 31
    .line 32
    monitor-exit p1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw p0

    .line 37
    :catchall_1
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    :try_start_3
    const-string v1, "RemotePrintSpooler"

    .line 41
    .line 42
    const-string v2, "Error pruning approved print services."

    .line 43
    .line 44
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter p1

    .line 50
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 55
    .line 56
    .line 57
    monitor-exit p1

    .line 58
    :goto_0
    return-void

    .line 59
    :catchall_2
    move-exception p0

    .line 60
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 61
    throw p0

    .line 62
    :goto_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter v1

    .line 65
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 70
    .line 71
    .line 72
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 73
    throw p1

    .line 74
    :catchall_3
    move-exception p0

    .line 75
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 76
    throw p0

    .line 77
    :catchall_4
    move-exception p0

    .line 78
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 79
    throw p0
.end method

.method public final setPrintJobCancelling(Landroid/print/PrintJobId;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 14
    const/4 v0, 0x1

    .line 15
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1, p1, v0}, Landroid/print/IPrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter p1

    .line 25
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 30
    .line 31
    .line 32
    monitor-exit p1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw p0

    .line 37
    :catchall_1
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    :try_start_3
    const-string v1, "RemotePrintSpooler"

    .line 41
    .line 42
    const-string v2, "Error setting print job cancelling."

    .line 43
    .line 44
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter p1

    .line 50
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 55
    .line 56
    .line 57
    monitor-exit p1

    .line 58
    :goto_0
    return-void

    .line 59
    :catchall_2
    move-exception p0

    .line 60
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 61
    throw p0

    .line 62
    :goto_1
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter v1

    .line 65
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 70
    .line 71
    .line 72
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 73
    throw p1

    .line 74
    :catchall_3
    move-exception p0

    .line 75
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 76
    throw p0

    .line 77
    :catchall_4
    move-exception p0

    .line 78
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 79
    throw p0
.end method

.method public final setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 14
    const/4 v0, 0x1

    .line 15
    :try_start_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->setPrintJobState(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;ILjava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter p2

    .line 28
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 33
    .line 34
    .line 35
    monitor-exit p2

    .line 36
    return p1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0

    .line 40
    :catchall_1
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    .line 44
    .line 45
    const-string p3, "Error setting print job state."

    .line 46
    .line 47
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter p1

    .line 53
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 58
    .line 59
    .line 60
    monitor-exit p1

    .line 61
    return v1

    .line 62
    :catchall_2
    move-exception p0

    .line 63
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 64
    throw p0

    .line 65
    :goto_0
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 66
    .line 67
    monitor-enter p2

    .line 68
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 73
    .line 74
    .line 75
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 76
    throw p1

    .line 77
    :catchall_3
    move-exception p0

    .line 78
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 79
    throw p0

    .line 80
    :catchall_4
    move-exception p0

    .line 81
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 82
    throw p0
.end method

.method public final setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 14
    const/4 v0, 0x1

    .line 15
    :try_start_1
    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->setPrintJobTag(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter p2

    .line 28
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 33
    .line 34
    .line 35
    monitor-exit p2

    .line 36
    return p1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0

    .line 40
    :catchall_1
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    .line 44
    .line 45
    const-string v2, "Error setting print job tag."

    .line 46
    .line 47
    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter p1

    .line 53
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 58
    .line 59
    .line 60
    monitor-exit p1

    .line 61
    return v1

    .line 62
    :catchall_2
    move-exception p0

    .line 63
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 64
    throw p0

    .line 65
    :goto_0
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 66
    .line 67
    monitor-enter p2

    .line 68
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 73
    .line 74
    .line 75
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 76
    throw p1

    .line 77
    :catchall_3
    move-exception p0

    .line 78
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 79
    throw p0

    .line 80
    :catchall_4
    move-exception p0

    .line 81
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 82
    throw p0
.end method

.method public final setProgress(Landroid/print/PrintJobId;F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 14
    const/4 v0, 0x1

    .line 15
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setProgress(Landroid/print/PrintJobId;F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter p1

    .line 25
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 30
    .line 31
    .line 32
    monitor-exit p1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw p0

    .line 37
    :catchall_1
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    .line 41
    .line 42
    const-string v1, "Error setting progress."

    .line 43
    .line 44
    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter p1

    .line 50
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 55
    .line 56
    .line 57
    monitor-exit p1

    .line 58
    :goto_0
    return-void

    .line 59
    :catchall_2
    move-exception p0

    .line 60
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 61
    throw p0

    .line 62
    :goto_1
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter p2

    .line 65
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 70
    .line 71
    .line 72
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 73
    throw p1

    .line 74
    :catchall_3
    move-exception p0

    .line 75
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 76
    throw p0

    .line 77
    :catchall_4
    move-exception p0

    .line 78
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 79
    throw p0
.end method

.method public final setStatus(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 24
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    .line 28
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/print/IPrintSpooler;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 30
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 31
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 32
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 33
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    const-string p3, "Error setting status."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 35
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 36
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 37
    monitor-exit p1

    :goto_0
    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 38
    :goto_1
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 39
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 40
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 41
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 42
    throw p1

    :catchall_3
    move-exception p0

    .line 43
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 44
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public final setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 2
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x1

    .line 6
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 8
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 9
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    :try_start_3
    const-string p2, "RemotePrintSpooler"

    const-string v1, "Error setting status."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 13
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 14
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 15
    monitor-exit p1

    :goto_0
    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    .line 16
    :goto_1
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 17
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 18
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 19
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 20
    throw p1

    :catchall_3
    move-exception p0

    .line 21
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    .line 22
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method

.method public final throwIfCalledOnMainThread()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eq v0, p0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    const-string v0, "Cannot invoke on the main thread"

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final throwIfDestroyedLocked()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Cannot interact with a destroyed instance."

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method public final unbindLocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :catch_0
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    .line 12
    .line 13
    invoke-interface {v1, v0}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catch_1
    move-exception v1

    .line 18
    const-string v2, "RemotePrintSpooler"

    .line 19
    .line 20
    const-string v3, "Error clearing print spooler client"

    .line 21
    .line 22
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    :goto_1
    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0
.end method

.method public final writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 14
    const/4 v0, 0x1

    .line 15
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter p2

    .line 28
    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 33
    .line 34
    .line 35
    monitor-exit p2

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw p0

    .line 40
    :catchall_1
    move-exception p2

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p2

    .line 43
    :try_start_3
    const-string v1, "RemotePrintSpooler"

    .line 44
    .line 45
    const-string v2, "Error writing print job data."

    .line 46
    .line 47
    invoke-static {v1, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter p2

    .line 56
    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 61
    .line 62
    .line 63
    monitor-exit p2

    .line 64
    :goto_0
    return-void

    .line 65
    :catchall_2
    move-exception p0

    .line 66
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 67
    throw p0

    .line 68
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter p1

    .line 74
    :try_start_5
    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 79
    .line 80
    .line 81
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 82
    throw p2

    .line 83
    :catchall_3
    move-exception p0

    .line 84
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 85
    throw p0

    .line 86
    :catchall_4
    move-exception p0

    .line 87
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 88
    throw p0
.end method
