.class public final Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAlarmSnapshot:Lcom/android/server/alarm/Alarm$Snapshot;

.field public final mHash:Ljava/lang/String;

.field public final mRemoveReason:I

.field public final mWhenRemovedElapsed:J

.field public final mWhenRemovedRtc:J


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/Alarm;IJJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/alarm/Alarm$Snapshot;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/server/alarm/Alarm$Snapshot;-><init>(Lcom/android/server/alarm/Alarm;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mAlarmSnapshot:Lcom/android/server/alarm/Alarm$Snapshot;

    .line 10
    .line 11
    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mRemoveReason:I

    .line 12
    .line 13
    iput-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedRtc:J

    .line 14
    .line 15
    iput-wide p5, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedElapsed:J

    .line 16
    .line 17
    iget-object p2, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string p3, "PI:"

    .line 24
    .line 25
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/app/PendingIntent;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p3, "L:"

    .line 49
    .line 50
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 54
    .line 55
    invoke-interface {p1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    goto :goto_0

    .line 64
    :goto_1
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mHash:Ljava/lang/String;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2
    .line 3
    .line 4
    const-string v0, "H"

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mHash:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mRemoveReason:I

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    const-string/jumbo v1, "unknown:"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :pswitch_0
    const-string/jumbo v0, "uninstall_receiver"

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_1
    const-string/jumbo v0, "listener_cached"

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_2
    const-string/jumbo v0, "listener_binder_died"

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_3
    const-string/jumbo v0, "pi_cancelled"

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_4
    const-string/jumbo v0, "data_cleared"

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_5
    const-string/jumbo v0, "exact_alarm_permission_revoked"

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_6
    const-string v0, "alarm_cancelled"

    .line 49
    .line 50
    :goto_0
    const-string v1, "Reason"

    .line 51
    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 53
    .line 54
    .line 55
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedElapsed:J

    .line 56
    .line 57
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string/jumbo v3, "elapsed"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v3, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 68
    .line 69
    .line 70
    const-string v0, " rtc="

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Ljava/util/Date;

    .line 76
    .line 77
    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedRtc:J

    .line 78
    .line 79
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p4

    .line 86
    invoke-virtual {p1, p4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 90
    .line 91
    .line 92
    const-string p4, "Snapshot:"

    .line 93
    .line 94
    invoke-virtual {p1, p4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mAlarmSnapshot:Lcom/android/server/alarm/Alarm$Snapshot;

    .line 101
    .line 102
    iget p4, p0, Lcom/android/server/alarm/Alarm$Snapshot;->mType:I

    .line 103
    .line 104
    invoke-static {p4}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p4

    .line 108
    const-string/jumbo v0, "type"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0, p4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 112
    .line 113
    .line 114
    const-string/jumbo p4, "tag"

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/alarm/Alarm$Snapshot;->mTag:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p1, p4, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 123
    .line 124
    .line 125
    const-string/jumbo p4, "policyWhenElapsed:"

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const/4 p4, 0x0

    .line 132
    :goto_1
    const/4 v0, 0x5

    .line 133
    if-ge p4, v0, :cond_0

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v1, " "

    .line 138
    .line 139
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p4}, Lcom/android/server/alarm/Alarm;->policyIndexToString(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v1, "="

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/android/server/alarm/Alarm$Snapshot;->mPolicyWhenElapsed:[J

    .line 162
    .line 163
    aget-wide v0, v0, p4

    .line 164
    .line 165
    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 166
    .line 167
    .line 168
    add-int/lit8 p4, p4, 0x1

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
