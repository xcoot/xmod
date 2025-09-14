.class public final Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAlarmClock:Z

.field public final mFlags:I

.field public final mHash:Ljava/lang/String;

.field public final mInterval:J

.field public final mOrigWhen:J

.field public final mTag:Ljava/lang/String;

.field public final mType:I

.field public final mWhenAddedElapsed:J

.field public final mWhenAddedRtc:J

.field public final mWindowLength:J


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/Alarm;JJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mTag:Ljava/lang/String;

    .line 8
    iget v0, p1, Lcom/android/server/alarm/Alarm;->type:I

    .line 10
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mType:I

    .line 12
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    .line 14
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mFlags:I

    .line 16
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mAlarmClock:Z

    .line 25
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "PI:"

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object v1, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 38
    invoke-virtual {v1}, Landroid/app/PendingIntent;->hashCode()I

    .line 41
    move-result v1

    .line 42
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "L:"

    .line 58
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v1, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 63
    invoke-interface {v1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v1}, Landroid/os/IBinder;->hashCode()I

    .line 70
    move-result v1

    .line 71
    goto :goto_1

    .line 72
    :goto_2
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mHash:Ljava/lang/String;

    .line 74
    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->origWhen:J

    .line 76
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mOrigWhen:J

    .line 78
    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->windowLength:J

    .line 80
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWindowLength:J

    .line 82
    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 84
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mInterval:J

    .line 86
    iput-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWhenAddedRtc:J

    .line 88
    iput-wide p4, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWhenAddedElapsed:J

    .line 90
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 5

    .line 1
    const-string v0, "[tag"

    .line 3
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mTag:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 8
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mType:I

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "T"

    .line 16
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 19
    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mFlags:I

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v1

    .line 25
    const-string v2, "F"

    .line 27
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 30
    iget-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mAlarmClock:Z

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    move-result-object v1

    .line 36
    const-string v2, "AC"

    .line 38
    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 41
    const-string v1, "H"

    .line 43
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mHash:Ljava/lang/String;

    .line 45
    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 48
    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    .line 51
    move-result v0

    .line 52
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mOrigWhen:J

    .line 54
    if-eqz v0, :cond_0

    .line 56
    const-string v0, "OW="

    .line 58
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    new-instance v3, Ljava/util/Date;

    .line 68
    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 71
    invoke-virtual {p2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, " "

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 94
    move-result-object v0

    .line 95
    const-string v1, "OW"

    .line 97
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 100
    :goto_0
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWindowLength:J

    .line 102
    const-wide/16 v2, 0x0

    .line 104
    cmp-long v4, v0, v2

    .line 106
    if-eqz v4, :cond_1

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    move-result-object v0

    .line 112
    const-string v1, "WL"

    .line 114
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 117
    :cond_1
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mInterval:J

    .line 119
    cmp-long v2, v0, v2

    .line 121
    if-eqz v2, :cond_2

    .line 123
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    move-result-object v0

    .line 127
    const-string v1, "RI"

    .line 129
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 132
    :cond_2
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWhenAddedElapsed:J

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 137
    move-result-object v0

    .line 138
    const-string/jumbo v1, "elapsed"

    .line 141
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 144
    const-string/jumbo v0, "rtc="

    .line 147
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/util/Date;

    .line 152
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->mWhenAddedRtc:J

    .line 154
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 157
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 164
    const-string p0, "]"

    .line 166
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 169
    return-void
.end method
