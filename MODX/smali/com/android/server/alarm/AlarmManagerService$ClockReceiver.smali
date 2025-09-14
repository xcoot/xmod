.class Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    const-string v0, "android.intent.action.DATE_CHANGED"

    .line 8
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.DATE_CHANGED"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 16
    :cond_0
    return-void
.end method

.method public final scheduleDateChangedEvent()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 9
    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    move-result-wide v2

    .line 18
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 21
    const/16 v2, 0xb

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 27
    const/16 v2, 0xc

    .line 29
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 32
    const/16 v2, 0xd

    .line 34
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 37
    const/16 v2, 0xe

    .line 39
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 42
    const/4 v2, 0x5

    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 47
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 49
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 52
    move-result-wide v6

    .line 53
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 55
    iget-object v12, v0, Lcom/android/server/alarm/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 57
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 60
    move-result v18

    .line 61
    const/16 v20, 0x0

    .line 63
    const/16 v21, 0x1

    .line 65
    const/4 v5, 0x1

    .line 66
    const-wide/16 v8, 0x0

    .line 68
    const-wide/16 v10, 0x0

    .line 70
    const/4 v13, 0x0

    .line 71
    const/4 v14, 0x0

    .line 72
    const/4 v15, 0x1

    .line 73
    const/16 v16, 0x0

    .line 75
    const/16 v17, 0x0

    .line 77
    const-string v19, "android"

    .line 79
    invoke-virtual/range {v4 .. v21}, Lcom/android/server/alarm/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 82
    return-void
.end method

.method public final scheduleTimeTickEvent()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide v1

    .line 14
    const-wide/32 v3, 0xea60

    .line 17
    div-long v5, v1, v3

    .line 19
    const-wide/16 v7, 0x1

    .line 21
    add-long/2addr v5, v7

    .line 22
    mul-long/2addr v5, v3

    .line 23
    sub-long/2addr v5, v1

    .line 24
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 26
    iget-object v3, v7, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 28
    iget-boolean v3, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->TIME_TICK_ALLOWED_WHILE_IDLE:Z

    .line 30
    if-eqz v3, :cond_0

    .line 32
    const/16 v3, 0x8

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v3, 0x0

    .line 36
    :goto_0
    or-int/lit8 v18, v3, 0x1

    .line 38
    iget-object v3, v7, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 40
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    move-result-wide v3

    .line 47
    add-long v9, v3, v5

    .line 49
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 51
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Lcom/android/server/alarm/AlarmManagerService$2;

    .line 53
    move-object/from16 v16, v3

    .line 55
    const-string v17, "TIME_TICK"

    .line 57
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 60
    move-result v21

    .line 61
    const-string v22, "android"

    .line 63
    const/16 v19, 0x0

    .line 65
    const/16 v20, 0x0

    .line 67
    const/4 v8, 0x3

    .line 68
    const-wide/16 v11, 0x0

    .line 70
    const-wide/16 v13, 0x0

    .line 72
    const/4 v15, 0x0

    .line 73
    const/16 v23, 0x0

    .line 75
    const/16 v24, 0x1

    .line 77
    invoke-virtual/range {v7 .. v24}, Lcom/android/server/alarm/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 80
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 82
    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 84
    monitor-enter v3

    .line 85
    :try_start_0
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 87
    iput-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickSet:J

    .line 89
    monitor-exit v3

    .line 90
    return-void

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw v0
.end method
