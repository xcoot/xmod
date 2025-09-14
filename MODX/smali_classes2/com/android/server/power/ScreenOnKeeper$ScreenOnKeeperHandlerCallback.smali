.class public final Lcom/android/server/power/ScreenOnKeeper$ScreenOnKeeperHandlerCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ScreenOnKeeper;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ScreenOnKeeper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/ScreenOnKeeper$ScreenOnKeeperHandlerCallback;->this$0:Lcom/android/server/power/ScreenOnKeeper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper$ScreenOnKeeperHandlerCallback;->this$0:Lcom/android/server/power/ScreenOnKeeper;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/power/ScreenOnKeeper;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    const-string v1, "ScreenOnKeeper"

    .line 16
    .line 17
    const-string v2, "handleKeepScreenOnTimeout()"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/power/ScreenOnKeeper;->disableScreenOnKeeper()V

    .line 23
    .line 24
    .line 25
    monitor-exit p1

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper$ScreenOnKeeperHandlerCallback;->this$0:Lcom/android/server/power/ScreenOnKeeper;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/power/ScreenOnKeeper;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter p1

    .line 35
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/ScreenOnKeeper;->mClock:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    iget-wide v3, p0, Lcom/android/server/power/ScreenOnKeeper;->mLastScreenTouchTime:J

    .line 45
    .line 46
    iget-wide v5, p0, Lcom/android/server/power/ScreenOnKeeper;->mTouchOutCheckDuration:J

    .line 47
    .line 48
    add-long/2addr v3, v5

    .line 49
    cmp-long v1, v3, v1

    .line 50
    .line 51
    if-gtz v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/power/ScreenOnKeeper;->notifyKeepScreenOnExpiredLocked()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const-string v1, "ScreenOnKeeper"

    .line 60
    .line 61
    const-string v2, "checkKeepScreenOnDuration: wait next validation time"

    .line 62
    .line 63
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/power/ScreenOnKeeper;->mHandler:Landroid/os/Handler;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object p0, p0, Lcom/android/server/power/ScreenOnKeeper;->mHandler:Landroid/os/Handler;

    .line 73
    .line 74
    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 75
    .line 76
    .line 77
    :goto_0
    monitor-exit p1

    .line 78
    :goto_1
    return v0

    .line 79
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    throw p0
.end method
