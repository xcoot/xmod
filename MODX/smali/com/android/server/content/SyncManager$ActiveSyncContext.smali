.class public final Lcom/android/server/content/SyncManager$ActiveSyncContext;
.super Landroid/content/ISyncContext$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mBound:Z

.field public mBytesTransferredAtLastPoll:J

.field public mEventName:Ljava/lang/String;

.field public final mHistoryRowId:J

.field public mIsLinkedToDeath:Z

.field public mLastPolledTimeElapsed:J

.field public final mStartTime:J

.field public mSyncAdapter:Landroid/content/ISyncAdapter;

.field public final mSyncAdapterUid:I

.field public mSyncInfo:Landroid/content/SyncInfo;

.field public final mSyncOperation:Lcom/android/server/content/SyncOperation;

.field public final mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mTimeoutStartTime:J

.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;JI)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    .line 3
    invoke-direct {p0}, Landroid/content/ISyncContext$Stub;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 9
    iput p5, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 11
    iput-object p2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 13
    iput-wide p3, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    .line 15
    const/4 p3, 0x0

    .line 16
    iput-object p3, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide p3

    .line 22
    iput-wide p3, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    .line 24
    iput-wide p3, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    .line 26
    iget-object p1, p1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    iget-object p3, p1, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    .line 37
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object p3

    .line 41
    check-cast p3, Landroid/os/PowerManager$WakeLock;

    .line 43
    if-nez p3, :cond_0

    .line 45
    const-string p3, "*sync*/"

    .line 47
    invoke-static {p3, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object p3

    .line 51
    iget-object p4, p1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 53
    iget-object p4, p4, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-virtual {p4, v1, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p3, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 63
    iget-object p1, p1, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    .line 65
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    iput-object p3, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 70
    new-instance p0, Landroid/os/WorkSource;

    .line 72
    invoke-direct {p0, p5}, Landroid/os/WorkSource;-><init>(I)V

    .line 75
    invoke-virtual {p3, p0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 81
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p0, v1}, Lcom/android/server/content/SyncManager;->-$$Nest$msendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 7
    return-void
.end method

.method public final onFinished(Landroid/content/SyncResult;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "SyncManager"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v2, "onFinished: "

    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    .line 30
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    .line 32
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 34
    if-nez v1, :cond_1

    .line 36
    const-string/jumbo v1, "null"

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 42
    :goto_0
    const-string/jumbo v2, "onFinished result="

    .line 45
    const-string v3, " endpoint="

    .line 47
    filled-new-array {v2, p1, v3, v1}, [Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    .line 56
    invoke-static {v0, p0, p1}, Lcom/android/server/content/SyncManager;->-$$Nest$msendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 59
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    .line 3
    iget-object p1, p1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 5
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x4

    .line 10
    iput v0, p1, Landroid/os/Message;->what:I

    .line 12
    new-instance v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    .line 14
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    .line 16
    invoke-direct {v0, p0, p2}, Lcom/android/server/content/SyncManager$ServiceConnectionData;-><init>(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    .line 19
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    iget-object p0, v1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 23
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 26
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    .line 3
    iget-object p1, p1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 5
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x5

    .line 10
    iput v0, p1, Landroid/os/Message;->what:I

    .line 12
    new-instance v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    .line 14
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v0, p0, v2}, Lcom/android/server/content/SyncManager$ServiceConnectionData;-><init>(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    .line 20
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    iget-object p0, v1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 24
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    return-void
.end method

.method public final sendHeartbeat()V
    .locals 0

    .line 1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString(Ljava/lang/StringBuilder;Z)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString(Ljava/lang/StringBuilder;Z)V
    .locals 2

    .line 1
    const-string/jumbo v0, "startTime "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mTimeoutStartTime "

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mHistoryRowId "

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", syncOperation "

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    if-eqz p2, :cond_1

    if-nez p0, :cond_0

    .line 6
    const-string p0, "[null]"

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p2, v0, p2, v0}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object p0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method
