.class public final Lcom/android/server/alarm/Alarm;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NUM_POLICIES:I = 0x5


# instance fields
.field public final alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

.field public count:I

.field public final creatorUid:I

.field public final exactAllowReason:I

.field public final flags:I

.field public final listener:Landroid/app/IAlarmListener;

.field public final listenerTag:Ljava/lang/String;

.field public final mIdleOptions:Landroid/os/Bundle;

.field public mMaxWhenElapsed:J

.field public final mPolicyWhenElapsed:[J

.field public mUsingReserveQuota:Z

.field public mWhenElapsed:J

.field public final operation:Landroid/app/PendingIntent;

.field public origType:I

.field public final origWhen:J

.field public final packageName:Ljava/lang/String;

.field public priorityClass:I

.field public final repeatInterval:J

.field public final sourcePackage:Ljava/lang/String;

.field public final statsTag:Ljava/lang/String;

.field public final type:I

.field public final uid:I

.field public final wakeup:Z

.field public final windowLength:J

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(IIIIJJJJLandroid/app/AlarmManager$AlarmClockInfo;Landroid/app/IAlarmListener;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move-wide/from16 v2, p7

    .line 5
    move-object/from16 v4, p15

    .line 7
    move-object/from16 v5, p18

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v1, v0, Lcom/android/server/alarm/Alarm;->type:I

    .line 14
    iput v1, v0, Lcom/android/server/alarm/Alarm;->origType:I

    .line 16
    move-wide v6, p5

    .line 17
    iput-wide v6, v0, Lcom/android/server/alarm/Alarm;->origWhen:J

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x2

    .line 21
    if-eq v1, v7, :cond_1

    .line 23
    if-nez v1, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v8, v6

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 v8, 0x1

    .line 29
    :goto_1
    iput-boolean v8, v0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    .line 31
    const/4 v8, 0x5

    .line 32
    new-array v8, v8, [J

    .line 34
    iput-object v8, v0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    .line 36
    aput-wide v2, v8, v6

    .line 38
    iput-wide v2, v0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 40
    move-wide/from16 v8, p9

    .line 42
    iput-wide v8, v0, Lcom/android/server/alarm/Alarm;->windowLength:J

    .line 44
    invoke-static/range {p7 .. p10}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    .line 47
    move-result-wide v2

    .line 48
    iput-wide v2, v0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 50
    move-wide/from16 v2, p11

    .line 52
    iput-wide v2, v0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 54
    iput-object v4, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 56
    move-object/from16 v2, p14

    .line 58
    iput-object v2, v0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 60
    iput-object v5, v0, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    .line 62
    if-eq v1, v7, :cond_3

    .line 64
    if-nez v1, :cond_2

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const-string v1, "*alarm*:"

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    :goto_2
    const-string v1, "*walarm*:"

    .line 72
    :goto_3
    if-eqz v4, :cond_4

    .line 74
    invoke-virtual {v4, v1}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    goto :goto_4

    .line 79
    :cond_4
    invoke-static {v1, v5}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    :goto_4
    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    .line 85
    move-object/from16 v1, p17

    .line 87
    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    .line 89
    move v1, p2

    .line 90
    iput v1, v0, Lcom/android/server/alarm/Alarm;->flags:I

    .line 92
    move-object/from16 v1, p13

    .line 94
    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 96
    move v1, p3

    .line 97
    iput v1, v0, Lcom/android/server/alarm/Alarm;->uid:I

    .line 99
    move-object/from16 v2, p19

    .line 101
    iput-object v2, v0, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 103
    move-object/from16 v3, p16

    .line 105
    iput-object v3, v0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    .line 107
    move v3, p4

    .line 108
    iput v3, v0, Lcom/android/server/alarm/Alarm;->exactAllowReason:I

    .line 110
    if-eqz v4, :cond_5

    .line 112
    invoke-virtual/range {p15 .. p15}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 115
    move-result-object v2

    .line 116
    :cond_5
    iput-object v2, v0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 118
    if-eqz v4, :cond_6

    .line 120
    invoke-virtual/range {p15 .. p15}, Landroid/app/PendingIntent;->getCreatorUid()I

    .line 123
    move-result v1

    .line 124
    :cond_6
    iput v1, v0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 126
    iput-boolean v6, v0, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 128
    iput v7, v0, Lcom/android/server/alarm/Alarm;->priorityClass:I

    .line 130
    return-void
.end method

.method public static policyIndexToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_4

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_3

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 15
    const-string v0, "--unknown("

    .line 17
    const-string v1, ")--"

    .line 19
    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    const-string/jumbo p0, "gms_manager"

    .line 27
    return-object p0

    .line 28
    :cond_1
    const-string p0, "battery_saver"

    .line 30
    return-object p0

    .line 31
    :cond_2
    const-string/jumbo p0, "device_idle"

    .line 34
    return-object p0

    .line 35
    :cond_3
    const-string p0, "app_standby"

    .line 37
    return-object p0

    .line 38
    :cond_4
    const-string/jumbo p0, "requester"

    .line 41
    return-object p0
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 12
    const-string p0, "--unknown--"

    .line 14
    return-object p0

    .line 15
    :cond_0
    const-string p0, "ELAPSED"

    .line 17
    return-object p0

    .line 18
    :cond_1
    const-string p0, "ELAPSED_WAKEUP"

    .line 20
    return-object p0

    .line 21
    :cond_2
    const-string p0, "RTC"

    .line 23
    return-object p0

    .line 24
    :cond_3
    const-string p0, "RTC_WAKEUP"

    .line 26
    return-object p0
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/android/server/alarm/Alarm;->type:I

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v1, v2, :cond_1

    .line 7
    if-nez v1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v2, v0

    .line 11
    :cond_1
    :goto_0
    const-string/jumbo v3, "tag="

    .line 14
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 17
    iget-object v3, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 22
    const-string/jumbo v3, "type="

    .line 25
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 28
    invoke-static {v1}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 35
    iget v3, p0, Lcom/android/server/alarm/Alarm;->origType:I

    .line 37
    if-eq v1, v3, :cond_2

    .line 39
    const-string v1, " origType="

    .line 41
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 44
    iget v1, p0, Lcom/android/server/alarm/Alarm;->origType:I

    .line 46
    invoke-static {v1}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 53
    :cond_2
    const-string v1, " origWhen="

    .line 55
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 58
    iget-wide v3, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    .line 60
    if-eqz v2, :cond_3

    .line 62
    new-instance v1, Ljava/util/Date;

    .line 64
    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 67
    invoke-virtual {p4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-static {v3, v4, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 78
    :goto_1
    const-string v1, " window="

    .line 80
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 83
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    .line 85
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 88
    iget v1, p0, Lcom/android/server/alarm/Alarm;->exactAllowReason:I

    .line 90
    const/4 v2, -0x1

    .line 91
    if-eq v1, v2, :cond_4

    .line 93
    const-string v2, " exactAllowReason="

    .line 95
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 98
    packed-switch v1, :pswitch_data_0

    .line 101
    const-string v1, "--unknown--"

    .line 103
    goto :goto_2

    .line 104
    :pswitch_0
    const-string/jumbo v1, "prioritized"

    .line 107
    goto :goto_2

    .line 108
    :pswitch_1
    const-string/jumbo v1, "listener"

    .line 111
    goto :goto_2

    .line 112
    :pswitch_2
    const-string/jumbo v1, "policy_permission"

    .line 115
    goto :goto_2

    .line 116
    :pswitch_3
    const-string/jumbo v1, "compat"

    .line 119
    goto :goto_2

    .line 120
    :pswitch_4
    const-string v1, "allow-listed"

    .line 122
    goto :goto_2

    .line 123
    :pswitch_5
    const-string/jumbo v1, "permission"

    .line 126
    goto :goto_2

    .line 127
    :pswitch_6
    const-string v1, "N/A"

    .line 129
    :goto_2
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 132
    :cond_4
    const-string v1, " repeatInterval="

    .line 134
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 137
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 139
    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 142
    const-string v1, " count="

    .line 144
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 147
    iget v1, p0, Lcom/android/server/alarm/Alarm;->count:I

    .line 149
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 152
    const-string v1, " flags=0x"

    .line 154
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 157
    iget v1, p0, Lcom/android/server/alarm/Alarm;->flags:I

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v1, "policyWhenElapsed:"

    .line 169
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 172
    :goto_3
    const/4 v1, 0x5

    .line 173
    if-ge v0, v1, :cond_5

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    const-string v2, " "

    .line 179
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-static {v0}, Lcom/android/server/alarm/Alarm;->policyIndexToString(I)Ljava/lang/String;

    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v2, "="

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    .line 203
    aget-wide v1, v1, v0

    .line 205
    invoke-static {v1, v2, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    .line 210
    goto :goto_3

    .line 211
    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 214
    const-string/jumbo v0, "whenElapsed="

    .line 217
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 220
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 222
    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 225
    const-string v0, " maxWhenElapsed="

    .line 227
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 230
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 232
    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 235
    iget-boolean p2, p0, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 237
    if-eqz p2, :cond_6

    .line 239
    const-string p2, " usingReserveQuota=true"

    .line 241
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 244
    :cond_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 247
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 249
    if-eqz p2, :cond_7

    .line 251
    const-string p2, "Alarm clock:"

    .line 253
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 256
    const-string p2, "  triggerTime="

    .line 258
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 261
    new-instance p2, Ljava/util/Date;

    .line 263
    iget-object p3, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 265
    invoke-virtual {p3}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    .line 268
    move-result-wide v0

    .line 269
    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 272
    invoke-virtual {p4, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 275
    move-result-object p2

    .line 276
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 279
    const-string p2, "  showIntent="

    .line 281
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 284
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 286
    invoke-virtual {p2}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    .line 289
    move-result-object p2

    .line 290
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 293
    :cond_7
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 295
    if-eqz p2, :cond_8

    .line 297
    const-string/jumbo p2, "operation="

    .line 300
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 303
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 305
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 308
    :cond_8
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 310
    if-eqz p2, :cond_9

    .line 312
    const-string/jumbo p2, "listener="

    .line 315
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 320
    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    .line 323
    move-result-object p2

    .line 324
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 327
    :cond_9
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    .line 329
    if-eqz p2, :cond_a

    .line 331
    const-string/jumbo p2, "idle-options="

    .line 334
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 337
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    .line 339
    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 342
    move-result-object p0

    .line 343
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 346
    :cond_a
    return-void

    .line 347
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 4
    move-result-wide p2

    .line 5
    const-wide v0, 0x10900000001L

    .line 10
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 15
    const-wide v0, 0x10e00000002L

    .line 20
    iget v2, p0, Lcom/android/server/alarm/Alarm;->type:I

    .line 22
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 25
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 27
    sub-long/2addr v0, p4

    .line 28
    const-wide p4, 0x10300000003L

    .line 33
    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 36
    const-wide p4, 0x10300000004L

    .line 41
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    .line 43
    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 46
    const-wide p4, 0x10300000005L

    .line 51
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 53
    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 56
    const-wide p4, 0x10500000006L

    .line 61
    iget v0, p0, Lcom/android/server/alarm/Alarm;->count:I

    .line 63
    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 66
    const-wide p4, 0x10500000007L

    .line 71
    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    .line 73
    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 76
    iget-object p4, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 78
    if-eqz p4, :cond_0

    .line 80
    const-wide v0, 0x10b00000008L

    .line 85
    invoke-virtual {p4, p1, v0, v1}, Landroid/app/AlarmManager$AlarmClockInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 88
    :cond_0
    iget-object p4, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 90
    if-eqz p4, :cond_1

    .line 92
    const-wide v0, 0x10b00000009L

    .line 97
    invoke-virtual {p4, p1, v0, v1}, Landroid/app/PendingIntent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 100
    :cond_1
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 102
    if-eqz p0, :cond_2

    .line 104
    invoke-interface {p0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    .line 107
    move-result-object p0

    .line 108
    invoke-interface {p0}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    const-wide p4, 0x1090000000aL

    .line 117
    invoke-virtual {p1, p4, p5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 120
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 123
    return-void
.end method

.method public getPolicyElapsed(I)J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    .line 3
    aget-wide p0, p0, p1

    .line 5
    return-wide p0
.end method

.method public final setPolicyElapsed(IJ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    .line 3
    aput-wide p2, v0, p1

    .line 5
    iget-wide p1, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 7
    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 11
    const/4 p3, 0x0

    .line 12
    move v1, p3

    .line 13
    :goto_0
    const/4 v2, 0x5

    .line 14
    if-ge v1, v2, :cond_0

    .line 16
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 18
    aget-wide v4, v0, v1

    .line 20
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 23
    move-result-wide v2

    .line 24
    iput-wide v2, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 31
    aget-wide v3, v0, p3

    .line 33
    iget-wide v5, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    .line 35
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    .line 38
    move-result-wide v3

    .line 39
    iget-wide v5, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 41
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 44
    move-result-wide v3

    .line 45
    iput-wide v3, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 47
    iget-wide v5, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 49
    cmp-long p0, p1, v5

    .line 51
    if-nez p0, :cond_1

    .line 53
    cmp-long p0, v1, v3

    .line 55
    if-eqz p0, :cond_2

    .line 57
    :cond_1
    const/4 p3, 0x1

    .line 58
    :cond_2
    return p3
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x80

    .line 3
    const-string v1, "Alarm{"

    .line 5
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, " type "

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget v1, p0, Lcom/android/server/alarm/Alarm;->type:I

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    iget v2, p0, Lcom/android/server/alarm/Alarm;->origType:I

    .line 32
    if-eq v1, v2, :cond_0

    .line 34
    const-string v1, " origType "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget v1, p0, Lcom/android/server/alarm/Alarm;->origType:I

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    :cond_0
    const-string v1, " origWhen "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, " whenElapsed "

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 61
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, " "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/16 p0, 0x7d

    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method
