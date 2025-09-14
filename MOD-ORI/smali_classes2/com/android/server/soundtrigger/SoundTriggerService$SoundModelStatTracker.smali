.class public final Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mModelStats:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/TreeMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->mModelStats:Ljava/util/TreeMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final declared-synchronized onStart(Ljava/util/UUID;)V
    .locals 6

    .line 1
    const-string v0, "error onStart(): Model "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->mModelStats:Ljava/util/TreeMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    iput-wide v2, v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mStartCount:J

    .line 22
    .line 23
    iput-wide v2, v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mTotalTimeMsec:J

    .line 24
    .line 25
    iput-wide v2, v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStartTimestampMsec:J

    .line 26
    .line 27
    iput-wide v2, v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStopTimestampMsec:J

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iput-boolean v2, v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->mModelStats:Ljava/util/TreeMap;

    .line 33
    .line 34
    invoke-virtual {v2, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    iget-boolean v2, v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    const-string v1, "SoundTriggerService"

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, " already started"

    .line 55
    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :cond_1
    :try_start_1
    iget-wide v2, v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mStartCount:J

    .line 69
    .line 70
    const-wide/16 v4, 0x1

    .line 71
    .line 72
    add-long/2addr v2, v4

    .line 73
    iput-wide v2, v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mStartCount:J

    .line 74
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    iput-wide v2, v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStartTimestampMsec:J

    .line 80
    .line 81
    const/4 p1, 0x1

    .line 82
    iput-boolean p1, v1, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 86
    :goto_1
    monitor-exit p0

    .line 87
    throw p1
.end method

.method public final declared-synchronized onStop(Ljava/util/UUID;)V
    .locals 7

    .line 1
    const-string v0, "error onStop(): Model "

    .line 2
    .line 3
    const-string v1, "error onStop(): Model "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->mModelStats:Ljava/util/TreeMap;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string v0, "SoundTriggerService"

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " has no stats available"

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    :try_start_1
    iget-boolean v1, v2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    const-string v1, "SoundTriggerService"

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, " already stopped"

    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    monitor-exit p0

    .line 69
    return-void

    .line 70
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    iput-wide v0, v2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStopTimestampMsec:J

    .line 75
    .line 76
    iget-wide v3, v2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mTotalTimeMsec:J

    .line 77
    .line 78
    iget-wide v5, v2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStartTimestampMsec:J

    .line 79
    .line 80
    sub-long/2addr v0, v5

    .line 81
    add-long/2addr v0, v3

    .line 82
    iput-wide v0, v2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mTotalTimeMsec:J

    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    iput-boolean p1, v2, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 89
    :goto_0
    monitor-exit p0

    .line 90
    throw p1
.end method
