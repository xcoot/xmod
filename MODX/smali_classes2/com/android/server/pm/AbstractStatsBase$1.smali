.class public final Lcom/android/server/pm/AbstractStatsBase$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/AbstractStatsBase;

.field public final synthetic val$data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/AbstractStatsBase;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/pm/AbstractStatsBase$1;->val$data:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/android/server/pm/AbstractStatsBase$1;->val$data:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {v1, v2}, Lcom/android/server/pm/AbstractStatsBase;->writeImpl(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/pm/AbstractStatsBase;->mLastTimeWritten:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/pm/AbstractStatsBase;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    iget-object p0, p0, Lcom/android/server/pm/AbstractStatsBase$1;->this$0:Lcom/android/server/pm/AbstractStatsBase;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/pm/AbstractStatsBase;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    .line 35
    .line 36
    throw v1
.end method
