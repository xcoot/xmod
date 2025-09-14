.class public final Lcom/android/server/am/UserController$7;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/UserController;

.field public final synthetic val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

.field public final synthetic val$dispatchStartedTime:J

.field public final synthetic val$dispatchStartedTimeForObserver:J

.field public final synthetic val$name:Ljava/lang/String;

.field public final synthetic val$onComplete:Ljava/lang/Runnable;

.field public final synthetic val$trace:Ljava/lang/String;

.field public final synthetic val$userSwitchTimeoutMs:J

.field public final synthetic val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserController;Ljava/lang/String;Ljava/lang/String;JJJLandroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/UserController$7;->val$trace:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/android/server/am/UserController$7;->val$dispatchStartedTimeForObserver:J

    .line 8
    .line 9
    iput-wide p6, p0, Lcom/android/server/am/UserController$7;->val$dispatchStartedTime:J

    .line 10
    .line 11
    iput-wide p8, p0, Lcom/android/server/am/UserController$7;->val$userSwitchTimeoutMs:J

    .line 12
    .line 13
    iput-object p10, p0, Lcom/android/server/am/UserController$7;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 14
    .line 15
    iput-object p11, p0, Lcom/android/server/am/UserController$7;->val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    iput-object p12, p0, Lcom/android/server/am/UserController$7;->val$onComplete:Ljava/lang/Runnable;

    .line 18
    .line 19
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const-string p1, "User switch timeout: observer "

    .line 2
    .line 3
    const-string v0, "User switch slowed down by observer "

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/am/UserController$7;->val$trace:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "-"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {v2, v1}, Lcom/android/server/am/UserController;->-$$Nest$smasyncTraceEnd(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v1

    .line 38
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    iget-wide v4, p0, Lcom/android/server/am/UserController$7;->val$dispatchStartedTimeForObserver:J

    .line 43
    .line 44
    sub-long/2addr v2, v4

    .line 45
    const-wide/16 v4, 0x1f4

    .line 46
    .line 47
    cmp-long v4, v2, v4

    .line 48
    .line 49
    if-lez v4, :cond_0

    .line 50
    .line 51
    const-string v4, "ActivityManager"

    .line 52
    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ": result took "

    .line 64
    .line 65
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, " ms to process. "

    .line 72
    .line 73
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->val$trace:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v4, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    iget-wide v4, p0, Lcom/android/server/am/UserController$7;->val$dispatchStartedTime:J

    .line 96
    .line 97
    sub-long/2addr v2, v4

    .line 98
    iget-wide v4, p0, Lcom/android/server/am/UserController$7;->val$userSwitchTimeoutMs:J

    .line 99
    .line 100
    cmp-long v0, v2, v4

    .line 101
    .line 102
    if-lez v0, :cond_1

    .line 103
    .line 104
    const-string v0, "ActivityManager"

    .line 105
    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p1, "\'s result was received "

    .line 117
    .line 118
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p1, " ms after dispatchUserSwitch. "

    .line 125
    .line 126
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/android/server/am/UserController$7;->val$trace:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {v0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/UserController$7;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 142
    .line 143
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/android/server/am/UserController$7;->val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_2

    .line 155
    .line 156
    iget-object p1, p0, Lcom/android/server/am/UserController$7;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 157
    .line 158
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    .line 159
    .line 160
    iget-object v0, v0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 161
    .line 162
    if-ne p1, v0, :cond_2

    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/server/am/UserController$7;->val$onComplete:Ljava/lang/Runnable;

    .line 165
    .line 166
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 167
    .line 168
    .line 169
    :cond_2
    monitor-exit v1

    .line 170
    return-void

    .line 171
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    throw p0
.end method
