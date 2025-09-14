.class public final Lcom/android/server/alarm/AlarmManagerService$InFlight;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAlarmType:I

.field public final mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

.field public final mCreatorUid:I

.field public final mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

.field public final mListener:Landroid/os/IBinder;

.field public final mPendingIntent:Landroid/app/PendingIntent;

.field public final mPriorityClass:I

.field public final mTag:Ljava/lang/String;

.field public final mUid:I

.field public final mWhenElapsed:J

.field public final mWorkSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWhenElapsed:J

    .line 9
    .line 10
    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mListener:Landroid/os/IBinder;

    .line 21
    .line 22
    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    .line 25
    .line 26
    iget v0, p2, Lcom/android/server/alarm/Alarm;->uid:I

    .line 27
    .line 28
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mUid:I

    .line 29
    .line 30
    iget v1, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 31
    .line 32
    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mCreatorUid:I

    .line 33
    .line 34
    iget-object v1, p2, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v2, p2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    sget-object v0, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {p1, v2, v0}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    sget-object v2, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 61
    .line 62
    iget-object v2, p2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1, v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :goto_1
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 69
    .line 70
    iget-object v0, p1, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 77
    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 81
    .line 82
    invoke-direct {v0, p1, v1}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    .line 86
    .line 87
    invoke-virtual {p1, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    :cond_2
    iput-wide p3, v0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->lastTime:J

    .line 91
    .line 92
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 93
    .line 94
    iget p1, p2, Lcom/android/server/alarm/Alarm;->type:I

    .line 95
    .line 96
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mAlarmType:I

    .line 97
    .line 98
    iget p1, p2, Lcom/android/server/alarm/Alarm;->priorityClass:I

    .line 99
    .line 100
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPriorityClass:I

    .line 101
    .line 102
    return-void
.end method


# virtual methods
.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    .line 1
    const-wide v0, 0x20b00000022L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide v2, 0x10500000001L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iget v4, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mUid:I

    .line 16
    .line 17
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 18
    .line 19
    .line 20
    const-wide v2, 0x10900000002L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-wide v2, 0x10300000003L

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWhenElapsed:J

    .line 36
    .line 37
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 38
    .line 39
    .line 40
    const-wide v2, 0x10e00000004L

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    iget v4, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mAlarmType:I

    .line 46
    .line 47
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    .line 51
    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    const-wide v3, 0x10b00000005L

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1, v3, v4}, Landroid/app/PendingIntent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 63
    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    const-wide v3, 0x10b00000006L

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 75
    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    const-wide v3, 0x10b00000007L

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    .line 87
    .line 88
    if-eqz p0, :cond_3

    .line 89
    .line 90
    const-wide v2, 0x10b00000008L

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/WorkSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "InFlight{pendingIntent="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", when="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWhenElapsed:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", workSource="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", uid="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mUid:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", creatorUid="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mCreatorUid:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", tag="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", broadcastStats="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", filterStats="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", alarmType="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mAlarmType:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", priorityClass="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPriorityClass:I

    .line 99
    .line 100
    const-string/jumbo v1, "}"

    .line 101
    .line 102
    .line 103
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method
