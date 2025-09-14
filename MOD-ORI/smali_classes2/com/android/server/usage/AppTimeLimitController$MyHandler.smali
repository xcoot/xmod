.class public final Lcom/android/server/usage/AppTimeLimitController$MyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->onLimitReached()V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    invoke-virtual {p1, v1, v2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->checkTimeout(J)V

    .line 46
    .line 47
    .line 48
    monitor-exit v0

    .line 49
    :goto_0
    return-void

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    throw p0
.end method
