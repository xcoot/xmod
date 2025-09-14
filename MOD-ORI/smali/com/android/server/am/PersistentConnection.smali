.class public abstract Lcom/android/server/am/PersistentConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBindForBackoffRunnable:Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

.field public mBound:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsConnected:Z

.field public mLastConnectedTime:J

.field public final mLock:Ljava/lang/Object;

.field public mNextBackoffMs:J

.field public mNumBindingDied:I

.field public mNumConnected:I

.field public mNumDisconnected:I

.field public final mRebindBackoffIncrease:D

.field public final mRebindBackoffMs:J

.field public final mRebindMaxBackoffMs:J

.field public mRebindScheduled:Z

.field public mReconnectTime:J

.field public final mResetBackoffDelay:J

.field public mService:Ljava/lang/Object;

.field public final mServiceConnection:Lcom/android/server/am/PersistentConnection$1;

.field public mShouldBeBound:Z

.field public final mStableCheck:Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

.field public final mTag:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJJ)V
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
    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/am/PersistentConnection$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/am/PersistentConnection$1;-><init>(Lcom/android/server/am/PersistentConnection;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Lcom/android/server/am/PersistentConnection$1;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/PersistentConnection;I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    new-instance v0, Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/PersistentConnection;I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    iput p4, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 41
    .line 42
    iput-object p5, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    .line 43
    .line 44
    const-wide/16 p1, 0x3e8

    .line 45
    .line 46
    mul-long/2addr p6, p1

    .line 47
    iput-wide p6, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    .line 48
    .line 49
    iput-wide p8, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffIncrease:D

    .line 50
    .line 51
    mul-long/2addr p10, p1

    .line 52
    iput-wide p10, p0, Lcom/android/server/am/PersistentConnection;->mRebindMaxBackoffMs:J

    .line 53
    .line 54
    mul-long/2addr p12, p1

    .line 55
    iput-wide p12, p0, Lcom/android/server/am/PersistentConnection;->mResetBackoffDelay:J

    .line 56
    .line 57
    iput-wide p6, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public abstract asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
.end method

.method public final bindInnerLocked(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->resetBackoffLocked()V

    .line 25
    .line 26
    .line 27
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->getBindFlags()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    or-int/lit8 v5, v1, 0x1

    .line 45
    .line 46
    iget v0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 47
    .line 48
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    iget-object v4, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Lcom/android/server/am/PersistentConnection$1;

    .line 53
    .line 54
    iget-object v6, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    .line 55
    .line 56
    move-object v3, p1

    .line 57
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "Binding: "

    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p1, " u"

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p1, " failed."

    .line 86
    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :cond_2
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, " u"

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 22
    .line 23
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 24
    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-string v1, " [bound]"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    const-string v1, " [not bound]"

    .line 36
    .line 37
    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    const-string v1, " [connected]"

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string v1, " [not connected]"

    .line 48
    .line 49
    :goto_1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    const-string v1, " reconnect in "

    .line 57
    .line 58
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    sub-long/2addr v1, v3

    .line 68
    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v1, "  Next backoff(sec): "

    .line 78
    .line 79
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 83
    .line 84
    const-wide/16 v3, 0x3e8

    .line 85
    .line 86
    div-long/2addr v1, v3

    .line 87
    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string p1, "  Connected: "

    .line 97
    .line 98
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget p1, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    .line 102
    .line 103
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 104
    .line 105
    .line 106
    const-string p1, "  Disconnected: "

    .line 107
    .line 108
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget p1, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 114
    .line 115
    .line 116
    const-string p1, "  Died: "

    .line 117
    .line 118
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget p1, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    .line 122
    .line 123
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 124
    .line 125
    .line 126
    iget-boolean p1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    .line 127
    .line 128
    if-eqz p1, :cond_3

    .line 129
    .line 130
    const-string p1, "  Duration: "

    .line 131
    .line 132
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v1

    .line 139
    iget-wide p0, p0, Lcom/android/server/am/PersistentConnection;->mLastConnectedTime:J

    .line 140
    .line 141
    sub-long/2addr v1, p0

    .line 142
    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 143
    .line 144
    .line 145
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 146
    .line 147
    .line 148
    monitor-exit v0

    .line 149
    return-void

    .line 150
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    throw p0
.end method

.method public abstract getBindFlags()I
.end method

.method public getBindForBackoffRunnableForTest()Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNextBackoffMs()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-wide v1

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public getNextBackoffMsForTest()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getNumBindingDied()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getNumDisconnected()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public getReconnectTimeForTest()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getServiceConnectionForTest()Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Lcom/android/server/am/PersistentConnection$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStableCheckRunnableForTest()Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    return-object p0
.end method

.method public injectPostAtTime(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public injectRemoveCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public injectUptimeMillis()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final resetBackoffLocked()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Backoff reset to "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final scheduleRebindLocked()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unbindLocked()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Scheduling to reconnect in "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 16
    .line 17
    const-string v3, " ms (uptime)"

    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 33
    .line 34
    add-long/2addr v0, v2

    .line 35
    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/am/PersistentConnection;->injectPostAtTime(Ljava/lang/Runnable;J)V

    .line 40
    .line 41
    .line 42
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 43
    .line 44
    long-to-double v0, v0

    .line 45
    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffIncrease:D

    .line 46
    .line 47
    mul-double/2addr v0, v2

    .line 48
    double-to-long v0, v0

    .line 49
    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mRebindMaxBackoffMs:J

    .line 50
    .line 51
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 56
    .line 57
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public shouldBeBoundForTest()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 2
    .line 3
    return p0
.end method

.method public final unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unbindLocked()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final unbindLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Stopping: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, " u"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v2, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Lcom/android/server/am/PersistentConnection$1;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 56
    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Lcom/android/server/am/PersistentConnection$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
