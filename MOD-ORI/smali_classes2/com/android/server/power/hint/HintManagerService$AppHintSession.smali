.class final Lcom/android/server/power/hint/HintManagerService$AppHintSession;
.super Landroid/os/IHintSession$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mHalSessionPtr:J

.field public mNewThreadIds:[I

.field public final mPid:I

.field public mPowerEfficient:Z

.field public mShouldForcePause:Z

.field public final mShouldForcePauseBySPL:Z

.field public mTargetDurationNanos:J

.field public mThreadIds:[I

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I

.field public mUpdateAllowedByProcState:Z

.field public final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method public static -$$Nest$mdump(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Ljava/io/PrintWriter;)V
    .locals 8

    .line 1
    const-string v0, "    PowerEfficient: "

    .line 2
    .line 3
    const-string v1, "    SessionForcePaused: "

    .line 4
    .line 5
    const-string v2, "    SessionAllowedByProcState: "

    .line 6
    .line 7
    const-string v3, "    SessionTargetDurationNanos: "

    .line 8
    .line 9
    const-string v4, "    SessionTIDs: "

    .line 10
    .line 11
    const-string v5, "    SessionUID: "

    .line 12
    .line 13
    const-string v6, "    SessionPID: "

    .line 14
    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPid:I

    .line 22
    .line 23
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    .line 39
    .line 40
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    .line 56
    .line 57
    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-wide v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    .line 77
    .line 78
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    .line 94
    .line 95
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    .line 111
    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPowerEfficient:Z

    .line 123
    .line 124
    if-eqz v1, :cond_0

    .line 125
    .line 126
    const-string/jumbo v1, "true"

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :catchall_0
    move-exception p1

    .line 131
    goto :goto_1

    .line 132
    :cond_0
    const-string v1, "false"

    .line 133
    .line 134
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    monitor-exit p0

    .line 142
    return-void

    .line 143
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    throw p1
.end method

.method public constructor <init>(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/os/IBinder;JJ)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IHintSession$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePauseBySPL:Z

    .line 8
    .line 9
    iput p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    .line 10
    .line 11
    iput p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPid:I

    .line 12
    .line 13
    iput-object p5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    .line 16
    .line 17
    iput-wide p6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 18
    .line 19
    iput-wide p8, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    .line 20
    .line 21
    const/4 p3, 0x1

    .line 22
    iput-boolean p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPowerEfficient:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    .line 27
    .line 28
    iget-object p4, p1, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    .line 29
    .line 30
    invoke-virtual {p4, p2}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;->isUidForeground(I)Z

    .line 31
    .line 32
    .line 33
    move-result p4

    .line 34
    invoke-virtual {p0, p4}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->updateHintAllowedByProcState(Z)Z

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-interface {p5, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    iget p1, p1, Lcom/android/server/power/hint/HintManagerService;->mSystemUiUid:I

    .line 41
    .line 42
    if-lez p1, :cond_0

    .line 43
    .line 44
    if-ne p1, p2, :cond_0

    .line 45
    .line 46
    const-string p1, "HintManagerService"

    .line 47
    .line 48
    const-string p2, "SystemUI make new AppHintSession but force pause"

    .line 49
    .line 50
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iput-boolean p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePauseBySPL:Z

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->pause()V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void

    .line 59
    :catch_0
    move-exception p2

    .line 60
    iget-wide p3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 61
    .line 62
    iget-object p0, p1, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 63
    .line 64
    invoke-virtual {p0, p3, p4}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCloseHintSession(J)V

    .line 65
    .line 66
    .line 67
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string p1, "Client already dead"

    .line 70
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public static validateWorkDuration(Landroid/hardware/power/WorkDuration;)V
    .locals 7

    .line 1
    iget-wide v0, p0, Landroid/hardware/power/WorkDuration;->durationNanos:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_4

    .line 8
    .line 9
    iget-wide v0, p0, Landroid/hardware/power/WorkDuration;->workPeriodStartTimestampNanos:J

    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-ltz v0, :cond_3

    .line 14
    .line 15
    iget-wide v0, p0, Landroid/hardware/power/WorkDuration;->cpuDurationNanos:J

    .line 16
    .line 17
    cmp-long v4, v0, v2

    .line 18
    .line 19
    if-ltz v4, :cond_2

    .line 20
    .line 21
    iget-wide v4, p0, Landroid/hardware/power/WorkDuration;->gpuDurationNanos:J

    .line 22
    .line 23
    cmp-long v6, v4, v2

    .line 24
    .line 25
    if-ltz v6, :cond_1

    .line 26
    .line 27
    add-long/2addr v0, v4

    .line 28
    cmp-long v0, v0, v2

    .line 29
    .line 30
    if-lez v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    iget-wide v1, p0, Landroid/hardware/power/WorkDuration;->cpuDurationNanos:J

    .line 36
    .line 37
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-wide v2, p0, Landroid/hardware/power/WorkDuration;->gpuDurationNanos:J

    .line 42
    .line 43
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v1, "The actual CPU duration (%d) and the actual GPU duration (%d) should not both be 0"

    .line 52
    .line 53
    invoke-static {v1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    iget-wide v1, p0, Landroid/hardware/power/WorkDuration;->gpuDurationNanos:J

    .line 64
    .line 65
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string v1, "Actual GPU duration (%d) should greater than or equal to 0"

    .line 74
    .line 75
    invoke-static {v1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    iget-wide v1, p0, Landroid/hardware/power/WorkDuration;->cpuDurationNanos:J

    .line 86
    .line 87
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const-string v1, "Actual CPU duration (%d) should be greater than or equal to 0"

    .line 96
    .line 97
    invoke-static {v1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    iget-wide v1, p0, Landroid/hardware/power/WorkDuration;->workPeriodStartTimestampNanos:J

    .line 108
    .line 109
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    const-string v1, "Work period start timestamp (%d) should be greater than 0"

    .line 118
    .line 119
    invoke-static {v1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    iget-wide v1, p0, Landroid/hardware/power/WorkDuration;->durationNanos:J

    .line 130
    .line 131
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    const-string v1, "Actual total duration (%d) should be greater than 0"

    .line 140
    .line 141
    invoke-static {v1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->close()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final close()V
    .locals 8

    .line 1
    const-string v0, "Death link does not exist for session with UID "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long v5, v1, v3

    .line 9
    .line 10
    if-nez v5, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 18
    .line 19
    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 20
    .line 21
    invoke-virtual {v5, v1, v2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCloseHintSession(J)V

    .line 22
    .line 23
    .line 24
    iput-wide v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    :try_start_1
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    .line 28
    .line 29
    invoke-interface {v2, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    :try_start_2
    const-string v2, "HintManagerService"

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v0

    .line 58
    :try_start_3
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 59
    .line 60
    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 61
    .line 62
    iget v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    .line 63
    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Landroid/util/ArrayMap;

    .line 73
    .line 74
    if-nez v2, :cond_1

    .line 75
    .line 76
    const-string v1, "HintManagerService"

    .line 77
    .line 78
    const-string v2, "UID %d is not present in active session map"

    .line 79
    .line 80
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    .line 81
    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    monitor-exit v0

    .line 94
    return-void

    .line 95
    :catchall_1
    move-exception p0

    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Landroid/util/ArraySet;

    .line 105
    .line 106
    if-nez v3, :cond_2

    .line 107
    .line 108
    const-string v1, "HintManagerService"

    .line 109
    .line 110
    const-string v2, "Token %s is not present in token map"

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    .line 113
    .line 114
    invoke-interface {p0}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {v1, v2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    monitor-exit v0

    .line 126
    return-void

    .line 127
    :cond_2
    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_3

    .line 135
    .line 136
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mToken:Landroid/os/IBinder;

    .line 137
    .line 138
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    :cond_3
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_4

    .line 146
    .line 147
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 148
    .line 149
    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 150
    .line 151
    iget v3, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUid:I

    .line 152
    .line 153
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    :cond_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    invoke-static {}, Lcom/android/server/power/hint/Flags;->powerhintThreadCleanup()Z

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 165
    .line 166
    iget-object v2, v0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    .line 167
    .line 168
    monitor-enter v2

    .line 169
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTidsInternal()[I

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    array-length v3, v0

    .line 174
    :goto_1
    if-ge v1, v3, :cond_6

    .line 175
    .line 176
    aget v4, v0, v1

    .line 177
    .line 178
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 179
    .line 180
    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    .line 181
    .line 182
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    check-cast v5, Ljava/util/HashMap;

    .line 187
    .line 188
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-eqz v5, :cond_5

    .line 193
    .line 194
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 195
    .line 196
    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    .line 197
    .line 198
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    check-cast v5, Ljava/util/HashMap;

    .line 203
    .line 204
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    check-cast v5, Ljava/util/Set;

    .line 209
    .line 210
    iget-wide v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 211
    .line 212
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 220
    .line 221
    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    .line 222
    .line 223
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    check-cast v5, Ljava/util/HashMap;

    .line 228
    .line 229
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    check-cast v5, Ljava/util/Set;

    .line 234
    .line 235
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-eqz v5, :cond_5

    .line 240
    .line 241
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 242
    .line 243
    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    .line 244
    .line 245
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    check-cast v5, Ljava/util/HashMap;

    .line 250
    .line 251
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    goto :goto_2

    .line 255
    :catchall_2
    move-exception p0

    .line 256
    goto :goto_3

    .line 257
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_6
    monitor-exit v2

    .line 261
    return-void

    .line 262
    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 263
    throw p0

    .line 264
    :goto_4
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 265
    throw p0

    .line 266
    :goto_5
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 267
    throw v0
.end method

.method public getTidsInternal()[I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0
.end method

.method public final isHintAllowed()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePauseBySPL:Z

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final pause()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 17
    .line 18
    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halPauseHintSession(J)V

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0
.end method

.method public final reportActualWorkDuration([J[J)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_3

    .line 12
    :cond_0
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v0, v1

    .line 20
    :goto_0
    const-string/jumbo v3, "the count of hint durations shouldn\'t be 0."

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    array-length v0, p1

    .line 27
    array-length v3, p2

    .line 28
    if-ne v0, v3, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    move v2, v1

    .line 32
    :goto_1
    const-string v0, "The length of durations and timestamps should be the same."

    .line 33
    .line 34
    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :goto_2
    array-length v0, p1

    .line 38
    if-ge v1, v0, :cond_4

    .line 39
    .line 40
    aget-wide v2, p1, v1

    .line 41
    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .line 44
    cmp-long v0, v2, v4

    .line 45
    .line 46
    if-lez v0, :cond_3

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string v0, "durations[%d]=%d should be greater than 0"

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    aget-wide v3, p1, v1

    .line 60
    .line 61
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p2

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 80
    .line 81
    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halReportActualWorkDuration(J[J[J)V

    .line 84
    .line 85
    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 88
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p1
.end method

.method public final reportActualWorkDuration2([Landroid/hardware/power/WorkDuration;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_2

    .line 12
    :cond_0
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v0, v1

    .line 19
    :goto_0
    const-string/jumbo v2, "the count of work durations shouldn\'t be 0."

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :goto_1
    array-length v0, p1

    .line 26
    if-ge v1, v0, :cond_2

    .line 27
    .line 28
    aget-object v0, p1, v1

    .line 29
    .line 30
    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->validateWorkDuration(Landroid/hardware/power/WorkDuration;)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 39
    .line 40
    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halReportActualWorkDuration(J[Landroid/hardware/power/WorkDuration;)V

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p1
.end method

.method public final resume()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v2, v0, v2

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 17
    .line 18
    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halResumeHintSession(J)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 28
    .line 29
    iget-wide v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 30
    .line 31
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halSetThreads(J[I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    .line 40
    .line 41
    :cond_1
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw v0
.end method

.method public final sendHint(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-ltz p1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    const-string/jumbo v1, "the hint ID value should be greater than zero."

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 26
    .line 27
    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halSendHint(JI)V

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p1
.end method

.method public final setMode(IZ)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    if-ltz p1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    const-string/jumbo v1, "the mode Id value should be greater than zero."

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    iput-boolean p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mPowerEfficient:Z

    .line 26
    .line 27
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 30
    .line 31
    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halSetMode(JIZ)V

    .line 34
    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1
.end method

.method public final setThreadsInternal([IZ)V
    .locals 8

    .line 1
    array-length v0, p1

    .line 2
    if-eqz v0, :cond_7

    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string p2, "HintManagerService"

    .line 24
    .line 25
    const-string/jumbo v0, "update hint not allowed, storing tids."

    .line 26
    .line 27
    .line 28
    invoke-static {p2, v0}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :cond_1
    if-eqz p2, :cond_4

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-static {v0}, Landroid/os/Process;->getThreadGroupLeader(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {}, Lcom/android/server/power/hint/Flags;->powerhintThreadCleanup()Z

    .line 52
    .line 53
    .line 54
    new-instance v2, Landroid/util/IntArray;

    .line 55
    .line 56
    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :try_start_1
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 64
    .line 65
    invoke-static {v5, p2, v0, p1, v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/util/IntArray;)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    invoke-static {}, Lcom/android/server/power/hint/Flags;->powerhintThreadCleanup()Z

    .line 72
    .line 73
    .line 74
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 75
    .line 76
    iget-object p2, p2, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    .line 77
    .line 78
    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 79
    :try_start_2
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    add-int/lit8 v0, v0, -0x1

    .line 84
    .line 85
    :goto_0
    if-ltz v0, :cond_2

    .line 86
    .line 87
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 88
    .line 89
    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    .line 90
    .line 91
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    new-instance v7, Landroid/util/ArraySet;

    .line 100
    .line 101
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 102
    .line 103
    .line 104
    check-cast v5, Ljava/util/HashMap;

    .line 105
    .line 106
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    iget-object v5, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 110
    .line 111
    iget-object v5, v5, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    .line 112
    .line 113
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v5, Ljava/util/HashMap;

    .line 122
    .line 123
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    check-cast v5, Ljava/util/Set;

    .line 128
    .line 129
    iget-wide v6, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 130
    .line 131
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    add-int/lit8 v0, v0, -0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :catchall_1
    move-exception p1

    .line 142
    goto :goto_1

    .line 143
    :cond_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :goto_1
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 149
    :try_start_5
    throw p1

    .line 150
    :catchall_2
    move-exception p1

    .line 151
    goto :goto_2

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 153
    .line 154
    invoke-static {v1, p2, p1, v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mformatTidCheckErrMsg(Lcom/android/server/power/hint/HintManagerService;I[ILjava/lang/Integer;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string p2, "HintManagerService"

    .line 159
    .line 160
    invoke-static {p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    new-instance p2, Ljava/lang/SecurityException;

    .line 164
    .line 165
    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 169
    :goto_2
    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_4
    :goto_3
    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 174
    .line 175
    iget-object p2, p2, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 176
    .line 177
    iget-wide v2, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 178
    .line 179
    invoke-virtual {p2, v2, v3, p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halSetThreads(J[I)V

    .line 180
    .line 181
    .line 182
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mThreadIds:[I

    .line 183
    .line 184
    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mNewThreadIds:[I

    .line 186
    .line 187
    iget-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    .line 188
    .line 189
    if-eqz p1, :cond_6

    .line 190
    .line 191
    iget-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePauseBySPL:Z

    .line 192
    .line 193
    if-nez p1, :cond_5

    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->resume()V

    .line 196
    .line 197
    .line 198
    :cond_5
    iput-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    .line 199
    .line 200
    :cond_6
    monitor-exit p0

    .line 201
    return-void

    .line 202
    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 203
    throw p1

    .line 204
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 205
    .line 206
    const-string p1, "Thread id list can\'t be empty."

    .line 207
    .line 208
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p0
.end method

.method public updateHintAllowedByProcState(Z)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePause:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mShouldForcePauseBySPL:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->resume()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->pause()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mUpdateAllowedByProcState:Z

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return p1

    .line 35
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p1
.end method

.method public final updateTargetWorkDuration(J)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->isHintAllowed()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long v0, p1, v0

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    const-string v1, "Expected the target duration to be greater than 0."

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->this$0:Lcom/android/server/power/hint/HintManagerService;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 29
    .line 30
    iget-wide v1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mHalSessionPtr:J

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halUpdateTargetWorkDuration(JJ)V

    .line 33
    .line 34
    .line 35
    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->mTargetDurationNanos:J

    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1
.end method
